import sys
import subprocess

# Define a mapping of aliases to GitHub repository names
REPO_MAP = {
"q": "hslu-intro-qc",
"d": "devices",
"s": "hslu-swat",
"p": "hslu-pcp",
"w": "hslu-wipro",
"n": "notes"
}

if len(sys.argv) < 2:
    print("Please provide an alias as an argument.")
    sys.exit(1)

alias = sys.argv[1]

if alias in REPO_MAP:
    repo_name = REPO_MAP[alias]
    url = f"https://github.com/joel-mueller/{repo_name}"
else:
    url = f"https://github.com/joel-mueller/{alias}"

subprocess.run(["open", url])
