import textstat
from pathlib import Path
import subprocess
import argparse

parser = argparse.ArgumentParser()

parser.add_argument("--document", "-d", help="The path to the Markdown document.", required=True)
parser.add_argument("--stat", help="The name of the textstat function to run.", default="flesch_kincaid_grade")

args = parser.parse_args()

filepath = Path(args.document).as_posix()

text = subprocess.run(["pandoc", filepath, "-t", "plain"], capture_output=True).stdout.decode()

if args.stat == "flesch_kincaid_grade":
    stdout = textstat.flesch_kincaid_grade(text)

if args.stat == "flesch_reading_ease":
    stdout = textstat.flesch_reading_ease(text)

print(stdout)

