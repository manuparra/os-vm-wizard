#!/bin/bash

OUTPUT=".tmp_output"
# create empty file
>$OUTPUT

dialog --title "Welcome to the SPSRC OpenStack VM script Wizard" --msgbox 'Lets start' 6 20


dialog --backtitle "SPSRC OpenStack" \
    --title "OS Wizard" \
    --msgbox 'Welcome to the SPSRC OpenStack VM script Wizard' 10 30


dialog --backtitle "SPSRC OpenStack" \
    --title "Virtual Machine name on OpenStack" \
    --inputbox "Enter VM name" 8 60 2>$OUTPUT

# Get respose
respose=$?

# Get data stored in $OUPUT using input redirection
name=$(<$OUTPUT)

dialog --backtitle "SPSRC OpenStack" \
    --radiolist "Select flavor:" 20 40 15 \
        1 spsrc.c40m1000 off \
        2 spsrc.c32m230 off \
        3 spsrc.c32m128 off \
        4 spsrc.c24m190 off \
        5 spsrc.c24m230 off \
        6 spsrc.c16m64 off \
        7 spsrc.c8m32 off \
        8 spsrc.c4m8 off \
        9 spsrc.c2m4 off \
        10 multihub.c10m24 off \
        11 multihub.c16m32 off \
        12 sdc2.c32m128 off \
        13 sdc2.c4m32 off  \
        14 sdc2.c16m64 off  \
        15 test-flavor off 2>$OUTPUT

  
# Get respose
respose=$?
# Get data stored in $OUPUT using input redirection
flavor_id=$(<$OUTPUT)

echo $flavor_id


