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
	cp bddefai.bcs bddynac.bcs
	cp bddefai.bcs bdkhalic.bcs
	cp bddefai.bcs bdajantc.bcs
	cp bddefai.bcs bdalorac.bcs
	cp bddefai.bcs bdbranwc.bcs
	cp bddefai.bcs bdcoranc.bcs
	cp bddefai.bcs bdeldotc.bcs
	cp bddefai.bcs bdfaldoc.bcs
	cp bddefai.bcs bdgarric.bcs
	cp bddefai.bcs bdkagaic.bcs
	cp bddefai.bcs bdkivanc.bcs
	cp bddefai.bcs bdmontac.bcs
	cp bddefai.bcs bdquaylc.bcs
	cp bddefai.bcs bdsafanc.bcs
	cp bddefai.bcs bdshartc.bcs
	cp bddefai.bcs bdskiec.bcs
	cp bddefai.bcs bdtiaxc.bcs
	cp bddefai.bcs bdxanc.bcs
	cp bddefai.bcs bdxzarc.bcs
	cp bddefai.bcs bdyeslic.bcs
	cp bddefai.bcs bddornc.bcs
	cp bddefai.bcs bdneerac.bcs
	cp bddefai.bcs bdrasaac.bcs
	cp bddefai.bcs bdbaeloc.bcs
	cp bddefai.bcs bdcorwic.bcs
	cp bddefai.bcs bdglintc.bcs
	cp bddefai.bcs bdmkhiic.bcs
	cp bddefai.bcs bdvoghic.bcs
	echo -e "${GREEN}Created all companion scripts${NC}"
else
	echo -e "${RED}$FILE not created yet${NC}"
fi

