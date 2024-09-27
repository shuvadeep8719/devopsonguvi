#!/bin/bash
guvi_url="guvi.in"
guvi_resp=$(curl --write-out '%{response_code}' --head --silent --output /dev/null ${guvi_url})
echo -e "Guvi status code:"
    if (( "$guvi_resp" == "200" )); then
	echo -e ${GREEN_BOLD}$guvi_resp${CLEAR}
	else
	echo -e ${RED_BOLD}$guvi_resp${CLEAR}
    fi
