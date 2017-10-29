def record(path=r'',message=r'error'):
    fd=None
    try:
        lock.access()
        fd=open(path,'r+')
        fd.write(message)
        lock.exit()
        fd.close()
        return true
    except e:
        lock.exit()
        fd.close()
        return false
