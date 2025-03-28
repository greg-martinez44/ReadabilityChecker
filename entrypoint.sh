#!/bin/sh -l

python -m pip install --upgrade pip

pip install -r /requirements.txt

FKGL=$(python /check_readability.py -d $1 --stat flesch_kincaid_grade)
FRE=$(python /check_readability.py -d $1 --stat flesch_reading_ease)

echo "FKGL=$FKGL" >> $GITHUB_OUTPUT
echo "FRE=$FRE" >> $GITHUB_OUTPUT
