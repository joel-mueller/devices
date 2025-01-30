import sys
import subprocess

# Define a mapping of aliases to GitHub repository names
REPO_MAP = {
    "s": "HSLU_SWDA",
    "l": "HSLU_LIOS",
    "u": "HSLU_USAB",
    "d": "DeviceToolKit",
    "a": "HSLU_LIAL"
}

# Check if an alias is provided
if len(sys.argv) < 2:
    print("Please provide an alias as an argument.")
    sys.exit(1)

# Retrieve the full repository name using the alias
alias = sys.argv[1]

if alias in REPO_MAP:
    repo_name = REPO_MAP[alias]
else:
    repo_name = alias


url = f"https://github.com/Joel-Mueller/{repo_name}"

subprocess.run(["open", url])

