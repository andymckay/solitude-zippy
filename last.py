#/usr/bin/python
from tardy import lib
storage = lib.Storage()
storage.load()
print storage.data['zippy.json']['apps'][-1]
