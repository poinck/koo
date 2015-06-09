# Readme: koo
A Gentoo overlay

**Apllications I wrote**
- lampe: interactive bash-script to control your Philips Hue lights

**Dependencies**
- json.sh: bash-script to parse json *(TODO)*

## Requirements
- Gentoo Linux
- app-portage/layman

## Howto
This is how you add and sync this overlay
```.sh
layman -o https://raw.githubusercontent.com/poinck/koo/master/layman.xml -f -a koo
layman -S
emerge --regen
```
