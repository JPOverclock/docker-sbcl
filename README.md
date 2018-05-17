# SBCL Dockerfile

A very naive [SBCL](http://www.sbcl.org/) (Steel Bank Common Lisp) Dockerfile based on `debian:stretch-slim`.

## Usage

Build with docker:

```
docker build -t sbcl:1.4.7 .
```

Run it:

```
docker run -i -t sbcl:1.4.7
```

And presto! You have a SBCL REPl ;)

## Arguments 

`version` (default `1.4.7`) - Specify the version of SBCL to use.
