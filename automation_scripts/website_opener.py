import sys
import subprocess

WEBSITES = {
"w": "https://github.com/qubegubble/caqtdm_opcua",
"q": "https://gpuhub.labservices.ch/",
"e": "https://github.com/tstangenberg/enlab-queue-fs25"
}

if len(sys.argv) < 2:
    print("Please provide an alias as an argument.")
    sys.exit(1)

alias = sys.argv[1]

if alias in WEBSITES:
    url = WEBSITES[alias]
else:
    url = alias


subprocess.run(["open", url])
