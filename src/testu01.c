#include <stdio.h>

#include "gdef.h"
#include "swrite.h"
#include "bbattery.h"

int main(int argc, char *argv[])
{
    FILE *fp;
    size_t sz;

    if (argc < 2) {
	printf("Usage: ./testu01 <file>");
	return 0;
    }

    fp = fopen(argv[1], "r");
    fseek(fp, 0L, SEEK_END);
    sz = ftell(fp) * 8;
    fclose(fp);
   
    printf("Reading %s (%d bits) \n", argv[1], (int)sz);
    bbattery_RabbitFile(argv[1], sz);
    bbattery_AlphabitFile(argv[1], sz);
    bbattery_FIPS_140_2File(argv[1]);

    return 0;
}
