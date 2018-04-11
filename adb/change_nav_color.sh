# for this to work, you must provide the color value in an Android
# compatible format. To get this from an rgba value in the format
#
# r 0 - 255, g 0 - 255, b 0 - 255, a 0 - 255,
#
# do the following:
#
# (a << 24 ) | (r << 16) | (g << 8) | b
#
# obviously replace the value with the value you calculated above

# adb shell
# settings put global navigationbar_color -16731393
# settings put global navigationbar_current_color -16731393
