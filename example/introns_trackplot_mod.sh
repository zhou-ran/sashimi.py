#!/bin/bash

# This script only outputs commands. To execute them, pipe them throuh `sh`.

# Unless you're already a Trackplot expert user, check out the excellent documentation provided by the authors of Trackplot:
# https://trackplot.readthedocs.io/en/latest/command/#6-the-intron-shrinkage

intronscale=250
exonscale=1
# intronscale=0.10
# exonscale=20

opts="-e 9:112225716-112333664 -r ptbp3_ext.gtf.gz --density bam_files.tsv --raster --height 2 --show-junction-num --width 20 --font-size 14"
rnaIDs="PTBP3-201,PTBP3-202,PTBP3-203,PTBP3-204,PTBP3-205,PTBP3-206,PTBP3-207,PTBP3-208"
opts="$opts --exon-scale $exonscale --intron-scale $intronscale " 
output=PTBP3_mod_all_transcipts.png
if [[ ! -e $output ]]; then echo "trackplot $opts -o $output 2> $output.log &" ; fi

opts="$opts --transcripts-to-show $rnaIDs"
output=PTBP3_mod_specific_transcipts.introns.$intronscale.exons.$exonscale.png
if [[ ! -e $output ]]; then echo "trackplot $opts -o $output 2> $output.log &" ; fi

opts="$opts --log 10"
output=PTBP3_mod_specific_transcipts.log10.png
if [[ ! -e $output ]]; then echo "trackplot $opts -o $output 2> $output.log &" ; fi

