#Squisher Choosing
DHO_VENDOR := vanir

KERNEL_SPAM := Faux Kernel v013u IN THE H1ZNOUSE

PRODUCT_PACKAGES += \
    Camera \
    LiveWallpapersPicker

# Run these first or they will not stick
PRODUCT_PROPERTY_OVERRIDES += \
    ro.goo.rom=vanir-GROUPER

# Blobs necessary for drm
PRODUCT_COPY_FILES += \
   vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so

# Bravia 2 engine
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/tuna/etc/be_movie_setting:system/etc/be_movie_setting \
    vendor/vanir/proprietary/tuna/etc/be2_album:system/etc/be2_album \
    vendor/vanir/proprietary/tuna/etc/be_album:system/etc/be_album \
    vendor/vanir/proprietary/tuna/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml:system/etc/permissions/com.sonyericsson.android.SwIqiBmp.xml \
    vendor/vanir/proprietary/tuna/lib/libiwi.so:system/lib/libiwi.so \
    vendor/vanir/proprietary/tuna/lib/libiwiOmx.so:system/lib/libiwiOmx.so \
    vendor/vanir/proprietary/tuna/lib/libiwiOmxUtil.so:system/lib/libiwiOmxUtil.so \
    vendor/vanir/proprietary/tuna/lib/libmbe.so:system/lib/libmbe.so \
    vendor/vanir/proprietary/tuna/lib/libmbe_paramselector.so:system/lib/libmbe_paramselector.so \
    vendor/vanir/proprietary/tuna/lib/libSwiqiController.so:system/lib/libSwiqiController.so \
    vendor/vanir/proprietary/tuna/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    vendor/vanir/proprietary/tuna/framework/com.sonyericsson.android.SwIqiBmp.jar:system/framework/com.sonyericsson.android.SwIqiBmp.jar

# Beats Audio mostly based on NexusLouderV6B5, and some other cherry-picks
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/app/DolbyMobile.apk:system/app/DolbyMobile.apk \
    vendor/vanir/proprietary/tuna/app/SwiqiSettingsService.apk:system/app/SwiqiSettingsService.apk \
    vendor/vanir/proprietary/tuna/bin/alsa_amixer:system/bin/alsa_amixer \
    vendor/vanir/proprietary/tuna/bin/alsa_aplay:system/bin/alsa_aplay \
    vendor/vanir/proprietary/tuna/bin/alsa_ctl:system/bin/alsa_ctl \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/beatsbass:system/bin/beatsbass \
    vendor/vanir/proprietary/tuna/bin/beatsnormal:system/bin/beatsnormal \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/mm-audio-acdb-test:system/bin/mm-audio-acdb-test \
    vendor/vanir/proprietary/tuna/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    vendor/vanir/proprietary/tuna/bin/mm-jpeg-dec-test-client:system/bin/mm-jpeg-dec-test-client \
    vendor/vanir/proprietary/tuna/bin/mm-jpeg-enc-test-client:system/bin/mm-jpeg-enc-test-client \
    vendor/vanir/proprietary/tuna/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    vendor/vanir/proprietary/tuna/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/snd:system/bin/snd \
    vendor/vanir/proprietary/tuna/bin/snd:system/bin/snd \
    vendor/vanir/proprietary/tuna/bin/snd3254:system/bin/snd3254 \
    vendor/vanir/proprietary/tuna/bin/sound:system/bin/sound \
    vendor/vanir/proprietary/tuna/bin/sound8960:system/bin/sound8960 \
    vendor/vanir/proprietary/tuna/bin/sound8x60:system/bin/sound8x60 \
    vendor/vanir/proprietary/tuna/bin/spkamp:system/bin/spkamp \
    vendor/vanir/proprietary/tuna/bin/alsa_ctl:system/bin/vanirbeats \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/etc/aeqcoe.txt:system/etc/aeqcoe.txt \
    vendor/vanir/proprietary/tuna/etc/AIC3008_REG_DualMic.csv:system/etc/AIC3008_REG_DualMic.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3008_REG_DualMic_XC.csv:system/etc/AIC3008_REG_DualMic_XC.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    vendor/vanir/proprietary/tuna/etc/asound.conf:system/etc/asound.conf \
    vendor/vanir/proprietary/tuna/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/vanir/proprietary/tuna/etc/AudioBTID.csv:system/etc/AudioBTID.csv \
    vendor/vanir/proprietary/tuna/etc/AudioFilter.csv:system/etc/AudioFilter.csv \
    vendor/vanir/proprietary/tuna/etc/AudioFilterPlatform.csv:system/etc/AudioFilterPlatform.csv \
    vendor/vanir/proprietary/tuna/etc/AudioFilterProduct.csv:system/etc/AudioFilterProduct.csv \
    vendor/vanir/proprietary/tuna/etc/AudioPreProcess.csv:system/etc/AudioPreProcess.csv \
    vendor/vanir/proprietary/tuna/etc/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    vendor/vanir/proprietary/tuna/etc/basimage_gec.bin:system/etc/basimage_gec.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_gec_bt.bin:system/etc/basimage_gec_bt.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_gec_x.bin:system/etc/basimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats.bin:system/etc/basimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats_pro.bin:system/etc/basimage_ibeats_pro.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats_solo.bin:system/etc/basimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats_solo_x.bin:system/etc/basimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats_studio.bin:system/etc/basimage_ibeats_studio.bin \
    vendor/vanir/proprietary/tuna/etc/basimage_ibeats_x.bin:system/etc/basimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    vendor/vanir/proprietary/tuna/etc/CodecDSPID_WB.txt:system/etc/CodecDSPID_WB.txt \
    vendor/vanir/proprietary/tuna/etc/dynimage_gec.bin:system/etc/dynimage_gec.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_gec_bt.bin:system/etc/dynimage_gec_bt.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_gec_x.bin:system/etc/dynimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats.bin:system/etc/dynimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats_pro.bin:system/etc/dynimage_ibeats_pro.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats_solo.bin:system/etc/dynimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats_solo_x.bin:system/etc/dynimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats_studio.bin:system/dynimage_ibeats_x.bin/dynimage_ibeats_studio.bin \
    vendor/vanir/proprietary/tuna/etc/dynimage_ibeats_x.bin:system/etc/CodecDSPID_WB \
    vendor/vanir/proprietary/tuna/etc/eqfilter.txt:system/etc/eqfilter.txt \
    vendor/vanir/proprietary/tuna/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/vanir/proprietary/tuna/etc/HP_Audio.csv:system/etc/HP_Audio.csv \
    vendor/vanir/proprietary/tuna/etc/lmfilter.txt:system/etc/lmfilter.txt \
    vendor/vanir/proprietary/tuna/etc/mixer_paths.xml:system/etc/mixer_paths.xml \
    vendor/vanir/proprietary/tuna/etc/peqimage_gec.bin:system/etc/peqimage_gec.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_gec_bt.bin:system/etc/peqimage_gec_bt.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_gec_x.bin:system/etc/peqimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats.bin:system/etc/peqimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats_pro.bin:system/etc/peqimage_ibeats_pro.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats_solo.bin:system/etc/peqimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats_solo_x.bin:system/etc/peqimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats_studio.bin:system/etc/peqimage_ibeats_studio.bin \
    vendor/vanir/proprietary/tuna/etc/peqimage_ibeats_x.bin:system/etc/peqimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/etc/situation.txt:system/etc/situation.txt \
    vendor/vanir/proprietary/tuna/etc/Sound_Original.txt:system/etc/Sound_Original.txt \
    vendor/vanir/proprietary/tuna/etc/soundbooster.txt:system/etc/soundbooster.txt \
    vendor/vanir/proprietary/tuna/etc/SRSAudioFilter.csv:system/etc/SRSAudioFilter.csv \
    vendor/vanir/proprietary/tuna/etc/stream_earpiece.txt:system/etc/stream_earpiece.txt \
    vendor/vanir/proprietary/tuna/etc/stream_headset.txt:system/etc/stream_headset.txt \
    vendor/vanir/proprietary/tuna/etc/stream_speaker.txt:system/etc/stream_speaker.txt \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG_XC.csv:system/etc/TPA2051_CFG_XC.csv \
    vendor/vanir/proprietary/tuna/etc/Volume.db:system/etc/Volume.db \
    vendor/vanir/proprietary/tuna/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/situation.txt:system/etc/audio/situation.txt \
    vendor/vanir/proprietary/tuna/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    vendor/vanir/proprietary/tuna/etc/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Beats.txt:system/etc/soundimage/Sound_Beats.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Blues.txt:system/etc/soundimage/Sound_Blues.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Classical.txt:system/etc/soundimage/Sound_Classical.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Country.txt:system/etc/soundimage/Sound_Country.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_A_HP.txt:system/etc/soundimage/Sound_Dolby_A_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_A_SPK.txt:system/etc/soundimage/Sound_Dolby_A_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_V_HP.txt:system/etc/soundimage/Sound_Dolby_V_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dolby_V_SPK.txt:system/etc/soundimage/Sound_Dolby_V_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic.txt:system/etc/soundimage/Sound_Dualmic.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic_EP.txt:system/etc/soundimage/Sound_Dualmic_EP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Dualmic_SPK.txt:system/etc/soundimage/Sound_Dualmic_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Jazz.txt:system/etc/soundimage/Sound_Jazz.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Latin.txt:system/etc/soundimage/Sound_Latin.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_MFG.txt:system/etc/soundimage/Sound_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Rec_MFG.txt:system/etc/soundimage/Sound_Original_Rec_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Recording.txt:system/etc/soundimage/Sound_Original_Recording.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK.txt:system/etc/soundimage/Sound_Original_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP.txt:system/etc/soundimage/Sound_Phone_Original_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC.txt:system/etc/soundimage/Sound_Phone_Original_REC.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK.txt:system/etc/soundimage/Sound_Phone_Original_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Rec_Landscape.txt:system/etc/soundimage/Sound_Rec_Landscape.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Rec_Portrait.txt:system/etc/soundimage/Sound_Rec_Portrait.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Recording.txt:system/etc/soundimage/Sound_Recording.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_global.cfg:system/etc/srs_global.cfg/srs_bypass \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    vendor/vanir/proprietary/tuna/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar \
    vendor/vanir/proprietary/tuna/lib/libaudioeffect_jni.so:system/lib/libaudioeffect_jni.so \
    vendor/vanir/proprietary/tuna/lib/libbeatscorehtc.so:system/lib/libbeatscorehtc.so \
    vendor/vanir/proprietary/tuna/lib/libsrscorehtc.so:system/lib/libsrscorehtc.so \
    vendor/vanir/proprietary/tuna/lib/libsrsprocessing.so:system/lib/libsrsprocessing.so \
    vendor/vanir/proprietary/tuna/lib/libswiqisettinghelper.so:system/lib/libswiqisettinghelper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libaudiopreprocessing.so:system/lib/soundfx/libaudiopreprocessing.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libbundlewrapper.so:system/lib/soundfx/libbundlewrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libclearaudiowrapper.so:system/lib/soundfx/libclearaudiowrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libdownmix.so:system/lib/soundfx/libdownmix.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libhearingprotection.so:system/lib/soundfx/libhearingprotection.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libposteffectwrapper.so:system/lib/soundfx/libposteffectwrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libpreeffectwrapper.so:system/lib/soundfx/libpreeffectwrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libreverbwrapper.so:system/lib/soundfx/libreverbwrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsoundaurawrapper.so:system/lib/soundfx/libsoundaurawrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsrscore.so:system/lib/soundfx/libsrscore.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsrstb.so:system/lib/soundfx/libsrstb.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libvisualizer.so:system/lib/soundfx/libvisualizer.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libvptwrapper.so:system/lib/soundfx/libvptwrapper.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libxloudwrapper.so:system/lib/soundfx/libxloudwrapper.so \
    vendor/vanir/proprietary/tuna/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf

# Beats Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    persist.service.clearaudio.enable=1 \
    persist.service.clearphase.enable=1 \
    persist.service.enhance.enable=1 \
    persist.service.swiqi2.enable=1 \
    persist.service.xloud.enable=1 \
    ro.semc.clearaudio.supported=true \
    ro.semc.sound_effects_enabled=true \
    ro.service.swiqi2.supported=true \
    ro.semc.xloud.supported=true \
    ro.somc.clearphase.supported=true \
    ro.sony.walkman.logger=1 \
    htc.audio.alc.enable=1 \
    htc.audio.swalt.enable=1 \
    htc.audio.swalt.mingain=14512
    
# Tablet Overlays no radios
    PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tab_no_radio

# Copy grouper specific prebuilt files
## FIX ME: bootanimation
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/smalltab/media/bootanimation.zip:system/media/bootanimation.zip

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common_tabs.mk)

# Inherit AOSP device configuration for grouper
$(call inherit-product, device/asus/grouper/full_grouper.mk)

# Setup device specific product configuration.
PRODUCT_NAME := vanir_grouper
PRODUCT_BRAND := google
PRODUCT_DEVICE := grouper
PRODUCT_MODEL := Nexus 7
PRODUCT_MANUFACTURER := asus

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=nakasi BUILD_FINGERPRINT=google/nakasi/grouper:4.2.2/JDQ39E/405518:user/release-keys PRIVATE_BUILD_DESC="nakasi-user 4.2.2 JDQ39E 405518 release-keys" BUILD_NUMBER=405518
