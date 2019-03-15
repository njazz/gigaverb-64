# gigaverb~
---

reverb external for Max/MSP
written by Olaf Matthes <olaf.matthes@gmx.de>
GVerb implementation by Juhana Sadeharju <kouhia@nic.funet.fi>

This software is published under GPL terms, see file LICENSE.txt.

This is software with ABSOLUTELY NO WARRANTY.
Use it at your OWN RISK. It's possible to damage e.g. hardware or your
hearing due to a bug or for other reasons.

Updated for 64-bit versions of Max by Völker Boehm
https://vboehm.net

Original source code:
https://github.com/v7b1/gigaverb

Compiles to Max 7/8 package

-----

Clone this repository and run
```
git submodule update --init --recursive
```

To build:

```
mkdir build
cd build
cmake ..
make
```

or

```
cd scripts
./build.sh
```

To make package / install package:

```
cd scripts
./make-package-osx.sh
```

or

```
./install-package-7-osx.sh
```

or

```
./install-package-8-osx.sh
```
