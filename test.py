from cffi import FFI

ffi = FFI()

with open("headers/points.hprep") as f:
    ffi.cdef(f.read())

mylib = ffi.dlopen("lib/libmylib.so")

def print_point(p):
    print "Point({}, {})".format(p.x, p.y)

a = ffi.new("points__point*")
a.x = 1
a.y = 2
print_point(a)
mylib.points__move_point(a, 3, 4)
print_point(a)
