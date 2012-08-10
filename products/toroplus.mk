# Inherit AOSP device configuration for toroplus.
$(call inherit-product, device/samsung/toroplus/full_toroplus.mk)

#... and then make the AOSP device configuration for toro get on its knees and sing the national anthem into our "microphones"
PRODUCT_LOCALES := en_US

# Inherit common product files.
$(call inherit-product, vendor/vanir/products/common.mk)

# Overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/tuna
PRODUCT_PACKAGE_OVERLAYS += vendor/vanir/overlay/toroplus

# Setup device specific product configuration.
PRODUCT_NAME := vanir_toroplus
PRODUCT_BRAND := google
PRODUCT_DEVICE := toroplus
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=mysidspr BUILD_ID=JRO03L BUILD_FINGERPRINT=google/mysidspr/toroplus:4.1.1/JRO03L/336647:user/release-keys PRIVATE_BUILD_DESC="mysidspr-user 4.1.1 JRO03L 336647 release-keys" BUILD_NUMBER=235179

PRODUCT_PROPERTY_OVERRIDES += \
    drm.service.enabled=true

# Blobs necessary for drm
PRODUCT_COPY_FILES +=  \
   vendor/vanir/proprietary/common/lib/libfrsdk.so:system/lib/libfrsdk.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/libwvm.so:system/vendor/lib/libwvm.so \
   vendor/vanir/proprietary/common/vendor/lib/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \
   vendor/vanir/proprietary/common/vendor/lib/drm/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so 

# Copy toroplus specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/vanir/proprietary/common/media/LMprec_508.emd:system/media/LMprec_508.emd \
    vendor/vanir/proprietary/common/media/PFFprec_600.emd:system/media/PFFprec_600.emd

# Copy missing apps
PRODUCT_COPY_FILES +=  \
    vendor/vanir/proprietary/tuna/app/SpeakerProximity.apk:system/app/SpeakerProximity.apk 

# Beats Audio
PRODUCT_COPY_FILES += \
    vendor/vanir/proprietary/tuna/app/AudioEffectService.apk:system/app/AudioEffectService.apk \
    vendor/vanir/proprietary/tuna/app/DSPManager.apk:system/app/DSPManager.apk \
    vendor/vanir/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/vanir/proprietary/tuna/bin/basimage_gec.bin:system/bin/basimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_gec_x.bin:system/bin/basimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats.bin:system/bin/basimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo.bin:system/bin/basimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_solo_x.bin:system/bin/basimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/basimage_ibeats_x.bin:system/bin/basimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_gec.bin:system/bin/dynimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_gec_x.bin:system/bin/dynimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats.bin:system/bin/dynimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo.bin:system/bin/dynimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_solo_x.bin:system/bin/dynimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/dynimage_ibeats_x.bin:system/bin/dynimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/mm-audio-alsa-test:system/bin/mm-audio-alsa-test \
    vendor/vanir/proprietary/tuna/bin/mm-venc-omx-test720p:system/bin/mm-venc-omx-test720p \
    vendor/vanir/proprietary/tuna/bin/mm-video-encdrv-test:system/bin/mm-video-encdrv-test \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec.bin:system/bin/peqimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec.bin:system/bin/peqimage_gec.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_gec_x.bin:system/bin/peqimage_gec_x.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats.bin:system/bin/peqimage_ibeats.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo.bin:system/bin/peqimage_ibeats_solo.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_solo_x.bin:system/bin/peqimage_ibeats_solo_x.bin \
    vendor/vanir/proprietary/tuna/bin/peqimage_ibeats_x.bin:system/bin/peqimage_ibeats_x.bin \
    vendor/vanir/proprietary/tuna/bin/snd:system/bin/snd \
    vendor/vanir/proprietary/tuna/bin/snd8k:system/bin/snd8k \
    vendor/vanir/proprietary/tuna/bin/sound:system/bin/sound \
    vendor/vanir/proprietary/tuna/bin/sound8x60:system/bin/sound8x60 \
    vendor/vanir/proprietary/tuna/bin/spkamp:system/bin/spkamp \
    vendor/vanir/proprietary/tuna/etc/audio/aeqcoe.txt:system/etc/audio/aeqcoe.txt \
    vendor/vanir/proprietary/tuna/etc/audio/eqfilter.txt:system/etc/audio/eqfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/lmfilter.txt:system/etc/audio/lmfilter.txt \
    vendor/vanir/proprietary/tuna/etc/audio/situation.txt:system/etc/audio/situation.txt \
    vendor/vanir/proprietary/tuna/etc/audio/soundbooster.txt:system/etc/audio/soundbooster.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_earpiece.txt:system/etc/audio/stream_earpiece.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_headset.txt:system/etc/audio/stream_headset.txt \
    vendor/vanir/proprietary/tuna/etc/audio/stream_speaker.txt:system/etc/audio/stream_speaker.txt \
    vendor/vanir/proprietary/tuna/etc/permissions/com.google.android.media.effects.xml:system/etc/permissions/com.google.android.media.effects.xml \
    vendor/vanir/proprietary/tuna/etc/permissions/com.sonyericsson.audioeffectif.xml:system/etc/permissions/com.sonyericsson.audioeffectif.xml \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Bass_Booster.txt:system/etc/soundimage/Sound_Bass_Booster.txt \
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
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_New_Age.txt:system/etc/soundimage/Sound_New_Age.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original.txt:system/etc/soundimage/Sound_Original.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_BCLK.txt:system/etc/soundimage/Sound_Original_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Rec_MFG.txt:system/etc/soundimage/Sound_Original_Rec_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_Recording_BCLK.txt:system/etc/soundimage/Sound_Original_Recording_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Original_SPK_MFG.txt:system/etc/soundimage/Sound_Original_SPK_MFG.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_HP_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_HP_WB.txt:system/etc/soundimage/Sound_Phone_Original_HP_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_REC_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_NEL.txt:system/etc/soundimage/Sound_Phone_Original_REC_NEL.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_REC_WB.txt:system/etc/soundimage/Sound_Phone_Original_REC_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt:system/etc/soundimage/Sound_Phone_Original_SPK_BCLK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Phone_Original_SPK_WB.txt:system/etc/soundimage/Sound_Phone_Original_SPK_WB.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Piano.txt:system/etc/soundimage/Sound_Piano.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Pop.txt:system/etc/soundimage/Sound_Pop.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_R_B.txt:system/etc/soundimage/Sound_R_B.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Recording_Mono.txt:system/etc/soundimage/Sound_Recording_Mono.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Rock.txt:system/etc/soundimage/Sound_Rock.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_HP.txt:system/etc/soundimage/Sound_SRS_A_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_A_SPK.txt:system/etc/soundimage/Sound_SRS_A_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_HP.txt:system/etc/soundimage/Sound_SRS_V_HP.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_SRS_V_SPK.txt:system/etc/soundimage/Sound_SRS_V_SPK.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Treble_Booster.txt:system/etc/soundimage/Sound_Treble_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/Sound_Vocal_Booster.txt:system/etc/soundimage/Sound_Vocal_Booster.txt \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_bypass.cfg:system/etc/soundimage/srs_bypass.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_51.cfg:system/etc/soundimage/srsfx_trumedia_51.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_movie.cfg:system/etc/soundimage/srsfx_trumedia_movie.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music.cfg:system/etc/soundimage/srsfx_trumedia_music.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_music_wide.cfg:system/etc/soundimage/srsfx_trumedia_music_wide.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srsfx_trumedia_voice.cfg:system/etc/soundimage/srsfx_trumedia_voice.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_geq10.cfg:system/etc/soundimage/srs_geq10.cfg \
    vendor/vanir/proprietary/tuna/etc/soundimage/srs_global.cfg:system/etc/soundimage/srs_global.cfg \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec.csv:system/etc/AdieHWCodec.csv \
    vendor/vanir/proprietary/tuna/etc/AdieHWCodec_BEATS_HW.csv:system/etc/AdieHWCodec_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG.csv:system/etc/AIC3254_REG.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_DualMic.csv:system/etc/AIC3254_REG_DualMic.csv \
    vendor/vanir/proprietary/tuna/etc/AIC3254_REG_XD.csv:system/etc/AIC3254_REG_XD.csv \
    vendor/vanir/proprietary/tuna/etc/audio_effects.conf:system/etc/audio_effects.conf \
    vendor/vanir/proprietary/tuna/etc/be_movie:system/etc/be_movie \
    vendor/vanir/proprietary/tuna/etc/be_photo:system/etc/be_photo \
    vendor/vanir/proprietary/tuna/etc/CodecDSPID.txt:system/etc/CodecDSPID.txt \
    vendor/vanir/proprietary/tuna/etc/media_profiles.xml:system/etc/media_profiles.xml \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG.csv:system/etc/TPA2051_CFG.csv \
    vendor/vanir/proprietary/tuna/etc/TPA2051_CFG_BEATS_HW.csv:system/etc/TPA2051_CFG_BEATS_HW.csv \
    vendor/vanir/proprietary/tuna/framework/com.google.android.media.effects.jar:system/framework/com.google.android.media.effects.jar \
    vendor/vanir/proprietary/tuna/framework/com.srs.fusion.fx.jar:system/framework/com.srs.fusion.fx.jar \
    vendor/vanir/proprietary/tuna/framework/semc_audioeffectif.jar:system/framework/semc_audioeffectif.jar \
    vendor/vanir/proprietary/tuna/lib/libacdbmapper.so:system/lib/libacdbmapper.so \
    vendor/vanir/proprietary/tuna/lib/libaudcal.so:system/lib/libaudcal.so \
    vendor/vanir/proprietary/tuna/lib/libaudioalsa.so:system/lib/libaudioalsa.so \
    vendor/vanir/proprietary/tuna/lib/libaudioeq.so:system/lib/libaudioeq.so \
    vendor/vanir/proprietary/tuna/lib/libaudio_init.so:system/lib/libaudio_init.so \
    vendor/vanir/proprietary/tuna/lib/libAudioTrimmer.so:system/lib/libAudioTrimmer.so \
    vendor/vanir/proprietary/tuna/lib/libbeatsbass.so:system/lib/libbeatsbass.so \
    vendor/vanir/proprietary/tuna/lib/libbeatscorehtc.so:system/lib/libbeatscorehtc.so \
    vendor/vanir/proprietary/tuna/lib/libbundlewrapper.so:system/lib/libbundlewrapper.so \
    vendor/vanir/proprietary/tuna/lib/libreverbwrapper.so:system/lib/libreverbwrapper.so \
    vendor/vanir/proprietary/tuna/lib/libSR_AudioIn.so:system/lib/libSR_AudioIn.so \
    vendor/vanir/proprietary/tuna/lib/libsrsfx.so:system/lib/libsrsfx.so \
    vendor/vanir/proprietary/tuna/lib/libvisualizer.so:system/lib/libvisualizer.so \
    vendor/vanir/proprietary/tuna/lib/libvoAudioFR.so:system/lib/libvoAudioFR.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libbeatsbass.so:system/lib/soundfx/libbeatsbass.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libcyanogen-dsp.so:system/lib/soundfx/libcyanogen-dsp.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libsrsfx.so:system/lib/soundfx/libsrsfx.so \
    vendor/vanir/proprietary/tuna/lib/soundfx/libxloudwrapper.so:system/lib/soundfx/libxloudwrapper.so \
    vendor/vanir/proprietary/tuna/lib/bluez-plugin/audio.so:system/lib/bluez-plugin/audio.so \
    vendor/vanir/proprietary/tuna/lib/hw/hwcomposer.msm8660.so:system/lib/hw/hwcomposer.msm8660.so \
    vendor/vanir/proprietary/tuna/vendor/etc/audio_effects.conf:system/vendor/etc/audio_effects.conf
