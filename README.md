# background-changer

## Uses
You need to have xwallpaper (and therefore also some version of the X window manager) and bash installed.

## Usage
>background-changer.sh \<directory> \<time>

It takes the images to from `<directory>` and displays them in order, waiting `<time>` in between.
`<time>` can be any time in the format used by the `sleep` function on your system takes.
It skips images that are removed from the directory and adds images that are moved into the directory to its cycle.

## Example
>$ ./background-changer.sh Pictures/background/ 1m

This uses the pictures located in `Pictures/background` and changes the background every minute.
