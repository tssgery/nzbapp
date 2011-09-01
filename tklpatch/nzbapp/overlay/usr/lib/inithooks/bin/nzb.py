#!/usr/bin/python
"""Set nzb (shell and eXtplorer) password

Arguments:
    username    username of the account to set the password for

Option:
    --pass=     unless provided, will ask interactively

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
    print >> sys.stderr, "Syntax: %s <username> [options]" % sys.argv[0]
    print >> sys.stderr, __doc__
    sys.exit(1)

def main():
    try:
        opts, args = getopt.gnu_getopt(sys.argv[1:], "h", ['help', 'pass=',])
    except getopt.GetoptError, e:
        usage(e)

    username =  args[0]
    password = ""
    for opt, val in opts:
        if opt in ('-h', '--help'):
            usage()
        elif opt == '--pass':
            password = val

    if not password:
        d = Dialog('TurnKey Linux - First boot configuration')
        password = d.get_password(
            "%s Password" % username.capitalize(),
            "Enter password for the %s account." % username)

    command = ["chpasswd"]
    input = ":".join([username, password])

    # ugly hack to support lenny
    if lsb_release.get_distro_information()['CODENAME'] == 'lenny':
        command.append("-m")

    p = subprocess.Popen(command, stdin=PIPE, shell=False)
    p.stdin.write(input)
    p.stdin.close()
    err = p.wait()
    if err:
        fatal(err)

    hashpass = hashlib.md5(password).hexdigest()

    new = []
    htusers = "/var/www/extplorer/config/.htusers.php"
    for s in file(htusers).readlines():
        s = s.rstrip()
        s = re.sub("\"nzb\",\"([a-z0-9]*)\"", "\"admin\",\"%s\"" % hashpass, s)
        new.append(s)

    fh = file(htusers, "w")
    print >> fh, "\n".join(new)
    fh.close()


if __name__ == "__main__":
    main()

