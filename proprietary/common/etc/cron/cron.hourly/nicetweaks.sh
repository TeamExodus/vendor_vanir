#!/system/bin/sh
# Nice Tweaks
# PrimeDirective and Sonicxml

#
# Nice Tweaks
#
busybox renice -15 $(pidof com.android.launcher)
busybox renice -12 $(pidof com.android.chrome)
busybox renice -12 $(pidof com.google.android.browser)
busybox renice -11 $(pidof com.google.android.googlequicksearchbox)
busybox renice -10 $(pidof com.android.phone)
busybox renice -10 $(pidof com.android.systemui)
busybox renice -7 $(pidof com.google.android.inputmethod.latin)
busybox ionice -c2 -n0 $(pidof com.android.camera)
busybox ionice -c1 -n1 $(pidof com.google.android.music)
