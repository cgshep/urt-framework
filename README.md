# The Unified Randomness Testing (URT) project

This project attempts to unify the various statistical randomness testing frameworks into one place.

Currently, URT analyses random numbers from an external source, which are provided as binary values in an input file. The following statistical batteries are supported:

+ [TestU01](http://simul.iro.umontreal.ca/testu01/tu01.html)
  - Rabbit
  - Alphabit
  - [FIPS 140-2](https://csrc.nist.gov/publications/detail/fips/140/2/final)
+ [ENT](https://manpages.ubuntu.com/manpages/trusty/man1/ent.1.html)
+ [Dieharder](https://webhome.phy.duke.edu/~rgb/General/dieharder.php)

## Usage

1. Clone this repo.
2. Install ENT and Dieharder: `sudo apt install dieharder ent`
3. Clone and install TestU01:
```bash
git submodule init
git submodule update
cd TestU01-2009
./configure
make -j4
(sudo) make install 
```
4. Compile the URT TestU01 program from the repo root using `make`
5. Run URT with your file, e.g. `./run.sh testfile.bin`

## Credit and copyright

Carlton Shepherd (c) 2023. All rights reserved.