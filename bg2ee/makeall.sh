#!/bin/bash
RED='\033[0;31m'
GREEN='\033[0;32m'
NC='\033[0m'


FILE=bdsum00.bcs
if [ -f "$FILE" ]; then
	mv bdsum00.bcs bdsum00.bak
	echo -e "${GREEN}Protected $FILE${NC}"
else
	echo -e "${RED}No $FILE found${NC}"
fi

FILE=bddefai.bcs
if [ -f "$FILE" ]; then
	rm *.bcs
	echo -e "${GREEN}Deleted *.bsc files${NC}"
else
	echo -e "${RED}No *.bcs files found${NC}"
fi

FILE=bdsum00.bak
if [ -f "$FILE" ]; then
	mv bdsum00.bak bdsum00.bcs
	echo -e "${GREEN}Restored bssumm00.bcs${NC}"
else
	echo -e "${RED}No $FILE found${NC}"
fi

FILE=bddefai.BCS
if [ -f "$FILE" ]; then
	mv bddefai.BCS bddefai.bcs
	cp bddefai.bcs bdimoenc.bcs
	cp bddefai.bcs bdjaheic.bcs
	cp bddefai.bcs bdminscc.bcs
	cp bddefai.bcs bdviconc.bcs
	cp bddefai.bcs bdedwinc.bcs
	cp bddefai.bcs bdaeriec.bcs
	cp bddefai.bcs bdanomec.bcs
	cp bddefai.bcs bdcerndc.bcs
	cp bddefai.bcs bdhaerc.bcs
	cp bddefai.bcs bdjanc.bcs
	cp bddefai.bcs bdkeldoc.bcs
	cp bddefai.bcs bdkorgac.bcs
	cp bddefai.bcs bdmazzyc.bcs
	cp bddefai.bcs bdnaliac.bcs
	cp bddefai.bcs bdvalygc.bcs
	cp bddefai.bcs bdyoshic.bcs
	cp bddefai.bcs bdsarevc.bcs
	cp bddefai.bcs bddornc.bcs
	cp bddefai.bcs bdneerac.bcs
	cp bddefai.bcs bdrasaac.bcs
	cp bddefai.bcs bdhexxac.bcs
	cp bddefai.bcs bdwilsoc.bcs
	echo -e "${GREEN}Created all companion scripts${NC}"
else
	echo -e "${RED}$FILE not created yet${NC}"
fi

