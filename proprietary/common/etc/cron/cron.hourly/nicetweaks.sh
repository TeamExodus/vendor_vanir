#!/system/bin/sh
# Nice Tweaks
# PrimeDirective and Sonicxml

#
# Nice Tweaks
#
renice -15 $(pidof com.android.launcher)
renice -12 $(pidof com.android.chrome)
renice -12 $(pidof com.google.android.browser)
renice -10 $(pidof com.android.phone)
renice -10 $(pidof com.android.systemui)
renice -7 $(pidof com.google.android.inputmethod.latin)
ionice -c2 -n0 $(pidof com.android.camera)
ionice -c1 -n1 $(pidof com.google.android.music)
