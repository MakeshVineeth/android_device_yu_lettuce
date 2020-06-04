# Audio
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.audio.sdk.fluencetype=fluence \
persist.vendor.audio.fluence.speaker=true \
persist.vendor.audio.fluence.voicecall=true \
persist.vendor.audio.fluence.voicerec=false \
vendor.audio.av.streaming.offload.enable=true \
ro.config.media_vol_steps=25 \
ro.config.vc_call_vol_steps=7 \
vendor.audio_hal.period_size=192 \
vendor.voice.path.for.pcm.voip=true \
vendor.audio.offload.buffer.size.kb=64 \
vendor.audio.offload.gapless.enabled=true \
audio.offload.video=true \
af.fast_track_multiplier=1 \
audio.deep_buffer.media=true \
audio.offload.min.duration.secs=30 \
ro.audio.flinger_standbytime_ms=300 \
ro.af.client_heap_size_kbyte=7168

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
persist.camera.cpp.duplication=false \
persist.camera.hal.debug.mask=0

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
vendor.bluetooth.soc=pronto \
vendor.qcom.bluetooth.soc=pronto \
ro.bluetooth.dun=true \
ro.bluetooth.hfp.ver=1.7 \
ro.bluetooth.sap=true \
ro.qualcomm.bt.hci_transport=smd

# Display
PRODUCT_PROPERTY_OVERRIDES += \
debug.hwui.use_buffer_age=false \
debug.composition.type=c2d \
debug.mdpcomp.idletime=600 \
persist.hwc.mdpcomp.enable=true \
persist.hwc.ptor.enable=true \
debug.enable.sglscale=1 \
ro.opengles.version=196608 \
ro.sf.lcd_density=300

# Healthd
PRODUCT_PROPERTY_OVERRIDES += \
ro.enable_boot_charger_mode=1

# IMS
PRODUCT_PROPERTY_OVERRIDES += \
persist.dbg.volte_avail_ovr=1 \
persist.dbg.vt_avail_ovr=1 \
persist.dbg.wfc_avail_ovr=1 \
persist.ims.disableADBLogs=1 \
persist.ims.disableDebugLogs=1 \
persist.ims.disableIMSLogs=1 \
persist.ims.disableQXDMLogs=1 \
persist.vendor.radio.apm_sim_not_pwdn=1

# Play store
PRODUCT_PROPERTY_OVERRIDES += \
ro.com.google.clientidbase.am=android-micromax \
ro.com.google.clientidbase.gmm=android-micromax \
ro.com.google.clientidbase.ms=android-micromax \
ro.com.google.clientidbase.yt=android-micromax

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
persist.data.netmgrd.qos.enable=true \
persist.data.target=dpm1 \
persist.data.target=dpm1 \
persist.radio.aosp_usr_pref_sel=true \
persist.radio.custom_ecc=1 \
persist.radio.data_con_rprt=1 \
persist.radio.flexmap_type=dds \
persist.radio.mt_sms_ack=20 \
persist.radio.multisim.config=dsds \
persist.radio.no_cons_man_roam=1 \
persist.radio.rat_on=combine \
persist.radio.sib16_support=1 \
ril.ecclist=000,08,100,101,102,110,112,118,119,120,122,911,999 \
ril.ecclist1=000,08,100,101,102,110,112,118,119,120,122,911,999 \
rild.libpath=/system/vendor/lib64/libril-qc-qmi-1.so \
rild.libargs=-d /dev/smd0 \
ro.telephony.default_network=9,9 \
persist.data.qmi.adb_logmask=0 \
ro.telephony.call_ring.multiple=false \
ro.config.always_show_roaming=true \
persist.vendor.data.mode=concurrent

# Media
PRODUCT_PROPERTY_OVERRIDES += \
drm.service.enabled=1 \
vidc.enc.narrow.searchrange=1 \
mm.enable.sec.smoothstreaming=true

# Memory optimizations
PRODUCT_PROPERTY_OVERRIDES += \
ro.vendor.qti.sys.fw.bservice_enable=true

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.max_starting_bg=8 \
ro.vendor.extension_library=libqti-perfd-client.so \
sys.use_fifo_ui=1

# Wi-Fi
PRODUCT_PROPERTY_OVERRIDES += \
wifi.interface=wlan0

# Sensors
PRODUCT_PROPERTY_OVERRIDES += \
ro.fusion.magfield.max=250

# Disable notification while adb is active
PRODUCT_PROPERTY_OVERRIDES += \
persist.adb.notify=0

# Disables sending of usage data
PRODUCT_PROPERTY_OVERRIDES += \
ro.config.nocheckin=1

# Disables error checking.
PRODUCT_PROPERTY_OVERRIDES += \
ro.kernel.android.checkjni=0 \
ro.kernel.checkjni=0

# Instant Calling
PRODUCT_PROPERTY_OVERRIDES += \
ro.telephony.call_ring.delay = 0 \
ring.delay = 0

# Defaults
PRODUCT_PROPERTY_OVERRIDES += \
net.hostname=yuphoria \
net.bt.name=Yuphoria \
persist.sys.timezone=Asia/Kolkata
