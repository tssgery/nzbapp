#!/usr/bin/python
"""Set HOSTNAME

Option:
    --hostname=    default hostname

"""

import re
import sys
import getopt
import subprocess
from subprocess import PIPE
import hashlib
import lsb_release


from dialog_wrapper import Dialog

def usage(s=None):
    if s:
        print >> sys.stderr, "Error:", s
    print >> sys.stderr, "Syntax: %s [options]" % sys.argv[0]
    print >> sys.stderr, __doc__
    sys.exit(1)

def main():
    try:
        opts, args = getopt.gnu_getopt(sys.argv[1:], "h", ['help', 'hostname=',])
    except getopt.GetoptError, e:
        usage(e)

    hostname = ""
    for opt, val in opts:
        if opt in ('-h', '--help'):
            usage()
        elif opt == '--hostname':
            hostname = val

    d = Dialog('TurnKey Linux - First boot configuration')
    hostname = d.get_input(
        "Hostname",
        "Enter the hostname for this appliance",
        hostname)

    FILE = open("/etc/hostname", "w")
    FILE.write(hostname)
    FILE.close()

if __name__ == "__main__":
    main()

