import textstat
from pathlib import Path
import subprocess

filepath = Path.home().joinpath("gmarti-web.github.io", "_pages", "about.md")

text = subprocess.run(["pandoc", filepath, "-t", "plain"], capture_output=True).stdout.decode()

fre = textstat.flesch_reading_ease(text)
fkg = textstat.flesch_kincaid_grade(text)

print(fkg)
