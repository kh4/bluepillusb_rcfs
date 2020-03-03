#!/bin/bash

if make ; then
    OPENOCD_OPTIONS="-f /usr/share/openocd/scripts/interface/stlink-v2.cfg -f /usr/share/openocd/scripts/target/stm32f1x.cfg"
    TARGET_HEX=$(ls build/*.hex)

    openocd $OPENOCD_OPTIONS -c "program $TARGET_HEX verify reset exit"
fi

