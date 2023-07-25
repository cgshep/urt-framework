import serial
import sys
import binascii

if len(sys.argv) < 3:
    exit("Usage: python data_converter.py <input path> <output path>")

invalid_vals = 0

with open(sys.argv[1], "r") as ifile:
    ilines = ifile.readlines()
    n_vals = len(ilines)

with open(sys.argv[2], "wb") as ofile:
    for iline in ilines:
        try:
            b = bytes.fromhex(iline.strip())
        except ValueError:
            invalid_vals += 1
            continue
        ofile.write(b)

ofile.close()

print(f"Number of values: {n_vals}")
print(f"Invalid values: {invalid_vals}")
print(f"% invalid: {100.*invalid_vals/n_vals}")

