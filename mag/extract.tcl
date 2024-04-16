# Based on https://github.com/mattvenn/magic-inverter/blob/main/README.md

set project [lindex $argv $argc-1]
load $project.mag
extract
ext2spice lvs
ext2spice cthresh 0
# ext2spice
ext2spice -o $project.spice
quit -noprompt
