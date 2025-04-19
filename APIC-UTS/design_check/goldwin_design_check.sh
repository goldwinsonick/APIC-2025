# This is a script to do DRC, LVS, and PEX to a cell.
#
# Parameter:
# - "-rf" : root folder path
# - "-cl" : cell list path
#
# The folder structure should look like this:
# <root_folder>
# ├── <cell_list>.txt
# ├── layout/
# │   ├── cell1/
# │   │   └── cell1.mag
# │   └── cell2/
# │       └── cell2.mag
# └── schematic/
#     ├── cell1/
#     │   └── cell1.sch
#     └── cell2/
#         └── cell2.sch

#!/bin/bash
set -euo pipefail

# Default parameters
ROOT_DIR="$(pwd)"
CELL_LIST="cell_list.txt"

# Parse input parameters
usage() {
    echo "Usage: $0 -rf <root_folder> -cl <cell_list.txt>"
    exit 1
}
while [[ $# -gt 0 ]]; do
    case "$1" in
        -rf)
            ROOT_DIR="$2"
            shift 2
            ;;
        -cl)
            CELL_LIST="$2"
            shift 2
            ;;
        *)
            usage
            ;;
    esac
done

ROOT_DIR="$(realpath "$ROOT_DIR")"

# Check parameters
# Check if root directory exists
if [[ ! -d "$ROOT_DIR" ]]; then
    echo "Error: Root directory '$ROOT_DIR' does not exist."
    exit 2
fi

# Check if cell list file exists
if [[ ! -f "$CELL_LIST" ]]; then
    # Try relative to root dir
    if [[ -f "$ROOT_DIR/$CELL_LIST" ]]; then
        CELL_LIST="$ROOT_DIR/$CELL_LIST"
    else
        echo "Error: Cell list file '$CELL_LIST' does not exist."
        exit 3
    fi
fi

# Make folder if doesn't exist
mkdir -p check_output
(cd check_output && mkdir -p lvs pex drc)

# Function to do DRC, LVS and PEX
check_cell(){
    local cell="$1"
    local layout_path="$ROOT_DIR/layout/$cell/${cell}.mag"
    local schematic_path="$ROOT_DIR/schematic/$cell/${cell}.sch"
    local cell_name="$cell"

    # Check if files exist
    if [ ! -f "$layout_path" ]; then
        echo "Layout file '$layout_path' not found, skipping $cell."
        return
    fi
    if [ ! -f "$schematic_path" ]; then
        echo "Schematic file '$schematic_path' not found, skipping $cell."
        return
    fi

    echo "Processing cell: $cell"

    # Run LVS in lvs folder
    (mkdir -p check_output/lvs/$cell)
    (cd check_output/lvs/$cell && iic-lvs.sh -l "$layout_path" -s "$schematic_path" -c "$cell_name")

    # Run PEX in pex folder
    (mkdir -p check_output/pex/$cell)
    (cd check_output/pex/$cell && iic-pex.sh "$layout_path" 3)

    # Run DRC in drc folder
    (mkdir -p check_output/drc/$cell)
    (cd check_output/drc/$cell && iic-drc.sh -m "$layout_path")
}

while IFS= read -r cell || [[ -n "$cell" ]]; do
    # Skip empty lines and comments
    [[ -z "$cell" || "$cell" =~ ^# ]] && continue
    check_cell "$cell"
done < "$CELL_LIST"
