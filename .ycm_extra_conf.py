'''
.ycm_extra_conf.py - YouCompleteMe customizing options.

Written by lyazj <lyazj@github.com>.
'''
import os

# Split path of current file.
filename = os.path.abspath(__file__)
basename = os.path.basename(filename)
dirname = os.path.dirname(filename)
assert dirname != '/'

# Find next configuration script in higher level directories.
dirname_org = dirname
dirname = os.path.dirname(dirname)
while dirname != '/':
    if os.path.exists(os.path.join(dirname, basename)): break
    dirname = os.path.dirname(dirname)
filename = os.path.join(dirname, basename)

# Execute parent configuration script.
exec(open(filename).read())

# Add include paths for this project.
#for dirpath, _, _ in os.walk(dirname_org):
#    if os.path.basename(dirpath) == 'include':
#        flags.append('-I' + dirpath)
flags.append('-I' + dirname_org)
