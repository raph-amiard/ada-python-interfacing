Ada to Python automatic interfacing
===================================

This repo shows a very basic example of Ada to Python automatic interfacing, using [The -gnatceg switch](https://gcc.gnu.org/onlinedocs/gcc-7.2.0/gnat_ugn/Running-the-C-Header-Generator.html) along with [Python's cffi library](https://cffi.readthedocs.io/en/latest/).

The limitations are mainly due to what -gnatceg is able to handle, mostly:

1. Simple Ada types that maps to C types straightforwardly (so no discriminated records, unconstrained arrays, ect)
2. Functions and procedures using the `C` convention.

How to run
----------

Steps are:

1. Install python and the cffi library, using `pip` for example
2. Install a GNAT toolchain
3. Run `$ make`, and then `$ python test.py`. You should see:

```sh
$ python test.py
  Point(1, 2)
  Point(3, 4)
``
