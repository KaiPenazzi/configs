#!/bin/bash

if hyprctl monitors | grep -q "DP-1"; then
    hyprctl keyword monitor "eDP-1,disable"
else
    hyprctl keyword monitor "eDP-1,1920x1080@60,0x0,1.25"
fi
