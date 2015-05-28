# Readme: koo
A Gentoo overlay with applications I wrote:
- lampe: interactive bash-script to control Philips Hue lights 

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
