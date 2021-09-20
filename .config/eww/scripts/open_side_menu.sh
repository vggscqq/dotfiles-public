#!/bin/bash

CHECK_FILE=/tmp/is_side_bar_open

if test -f "$CHECK_FILE"; then
	eww close-all
	rm "$CHECK_FILE"
else
	eww open-many weather_side time_side smol_calendar sys_side sliders_side
	touch "$CHECK_FILE"
fi
