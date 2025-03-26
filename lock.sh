#!/bin/sh

BLANK='#00000000'
CLEAR='#ffffffcc'
DEFAULT='#ffffffcc'
KEY_PRESS='#ffffffcc'
TEXT='#ffffffcc'
WRONG='#880000bb'
VERIFYING='#ffffffcc'

i3lock \
--insidever-color=$CLEAR     \
--ringver-color=$VERIFYING   \
\
--insidewrong-color=$CLEAR   \
--ringwrong-color=$WRONG     \
\
--inside-color=$BLANK        \
--ring-color=$DEFAULT        \
--line-color=$BLANK          \
--separator-color=$DEFAULT   \
\
--verif-color=$TEXT          \
--wrong-color=$TEXT          \
--time-color=$TEXT           \
--date-color=$TEXT           \
--layout-color=$TEXT         \
--keyhl-color=$KEY_PRESS         \
--bshl-color=$WRONG          \
\
--clock                      \
--indicator                  \
--time-str="%H:%M"        \
--date-str="%d-%m-%Y"       \
--keylayout 1                \
-i ~/Downloads/download.png  \
