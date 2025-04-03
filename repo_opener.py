import sys
import subprocess

# Define a mapping of aliases to GitHub repository names
REPO_MAP = {
"q": "hslu-intro-qc",
"d": "devices",
"s": "hslu-swat",
"p": "hslu-pcp"
}

OTHER_WEBSITES = {
"w": "https://github.com/qubegubble/caqtdm_opcua",
"i": "https://gpuhub.labservices.ch/"
}

if len(sys.argv) < 2:
    print("Please provide an alias as an argument.")
    sys.exit(1)

alias = sys.argv[1]

if alias in REPO_MAP:
    repo_name = REPO_MAP[alias]
    url = f"https://github.com/joel-mueller/{repo_name}"
elif alias in OTHER_WEBSITES:
    url = OTHER_WEBSITES[alias]
else:
    url = f"https://github.com/joel-mueller/{alias}"


subprocess.run(["open", url])