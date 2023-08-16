#!/bin/bash -eux

# $1 input tex file

# assume all tex source files are located at the same directory as the input tex file.
FILE_NAME=$(basename $1)
FILE_NAME_NO_EXT=$(basename $1 .tex)
TEX_DIR=$(dirname $1)
OUT_DIR=${2:-"/workdir/out"}
REVISION=${3:-HEAD}

cd $TEX_DIR
latexdiff-vc --git --force --flatten -r $REVISION $FILE_NAME

# complile output diff.tex by latexmk
if [ ! -d $OUT_DIR ]; then
	mkdir $OUT_DIR
fi
OUTPUT_FILE_NAME="${FILE_NAME_NO_EXT}-diff${REVISION}.tex"
latexmk -cd -lualatex -gg -outdir=$OUT_DIR $OUTPUT_FILE_NAME

# remove remaining intermediate files except pdf, log
OUTPUT_FILE_NAME_NO_EXT=$(basename $OUTPUT_FILE_NAME .tex)
find $OUT_DIR -type f -name "$OUTPUT_FILE_NAME_NO_EXT.*" -not -name "*.pdf" -not -name "*.synctex.gz" -not -name "*.log" -delete