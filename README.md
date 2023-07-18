# The Unified Randomness Testing (URT) project

This project attempts to unify the numerous statistical randomness testing libraries into a single framework.

Currently, URT analyses random numbers provided as binary values in an input file. The following statistical batteries are supported:

+ [TestU01](http://simul.iro.umontreal.ca/testu01/tu01.html)
  - Rabbit
  - Alphabit
  - [FIPS 140-2](https://csrc.nist.gov/publications/detail/fips/140/2/final)
+ [ENT](https://manpages.ubuntu.com/manpages/trusty/man1/ent.1.html)
+ [Dieharder](https://webhome.phy.duke.edu/~rgb/General/dieharder.php)

## Installation and Usage

1. Clone this repository
2. Install ENT and Dieharder: `sudo apt install dieharder ent`
3. Optional: Clone and install TestU01 (alternatively, pre-built libraries are in `lib/`, compiled and tested for X86-64 using Ubuntu 22.10):
```bash
git submodule init
git submodule update
cd TestU01-2009
./configure
make -j4
(sudo) make install 
```
4. Compile the URT TestU01 program from the repo root using `make`
5. Run URT with your file of random numbers using `chmod +x run.sh ; ./run.sh <your file>` Results are put to STDOUT
6. Optional: Try the test file using `./run.sh testfile.bin`, comprising 1M bytes from `/dev/random`

## Credit

```bibtex
@software{shepherd:urt,
      title={The Unified Randomness Testing (URT) framework},
      version={0.1},
      author={Carlton Shepherd},
      year={2023},
      url={https://github.com/cgshep/urt-framework}
}
```
