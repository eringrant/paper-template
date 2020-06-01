#!/bin/bash
# Adapted from https://github.com/egrefen/splitappendix.

if [ $# -ne 2 ]
  then
  	SCRIPT=$(basename "$0")
    echo >&2 "Usage: $SCRIPT path_to_paper.pdf first_page_of_appendix"
    exit 1
fi

cd "`dirname "${1}"`"

PAPER=`basename "${1}"`
BEGINAPP=$2
ENDMAIN=$((${BEGINAPP}-1))
LASTPAGE=$(pdfinfo "$PAPER" | grep Pages | awk '{print $2}')
SUBMISSION=${PAPER}_submission.pdf
APPENDIX=${PAPER}_appendix.pdf

qpdf "${PAPER}" --pages . 1-${ENDMAIN} -- ./${SUBMISSION}
qpdf "${PAPER}" --pages . ${BEGINAPP}-${LASTPAGE} -- ./${APPENDIX}

echo "Wrote main submission to ${SUBMISSION} and appendix to ${APPENDIX}."
