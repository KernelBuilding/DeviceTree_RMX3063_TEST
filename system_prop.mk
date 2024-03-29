# Camera
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    vendor.camera.aux.packagelist=org.codeaurora.snapcam,com.android.camera,com.google.camera,org.pixelexperience.faceunlock \
    vendor.camera.aux.packageblacklist=org.telegram.messenger,com.microsoft.teams,com.discord

# Dex2oat
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    dalvik.vm.dex2oat64.enabled=true \
    dalvik.vm.image-dex2oat-filter=quicken \
    dalvik.vm.image-dex2oat-threads=8 \
    dalvik.vm.image-dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.dex2oat-filter=quicken \
    dalvik.vm.dex2oat-threads=8 \
    dalvik.vm.dex2oat-cpu-set=0,1,2,3,4,5,6,7 \
    dalvik.vm.boot-dex2oat-threads=8 \
    dalvik.vm.boot-dex2oat-cpu-set=0,1,2,3,4,5,6,7

# Iorap
PRODUCT_PROPERTY_OVERRIDES += \
   iorapd.perfetto.enable=true \
   iorapd.readahead.enable=true

# Display
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sf.lcd_density=320

# Set system properties identifying the chipset
PRODUCT_PROPERTY_OVERRIDES += \
    ro.soc.manufacturer=MediaTek \
    ro.soc.model=MT6765

# IMS
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.dbg.wfc_avail_ovr=1
	
# Surfaceflinger
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    debug.sf.latch_unsignaled=1 \
    ro.surface_flinger.has_HDR_display=true \
    ro.surface_flinger.has_wide_color_display=true \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.vsync_event_phase_offset_ns=2000000 \
    ro.surface_flinger.vsync_sf_event_phase_offset_ns=6000000 \
    debug.sf.enable_hwc_vds=0

# Tweak the memory management of the device, enable more background apps.. etc..
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.fha_enable=true \
    ro.sys.fw.bg_apps_limit=32 \
    ro.config.dha_cached_max=16 \
    ro.config.dha_empty_max=42 \
    ro.config.dha_empty_init=32 \
    ro.config.dha_lmk_scale=0.545 \
    ro.config.dha_th_rate=2.3 \
    ro.config.sdha_apps_bg_max=64 \
    ro.config.sdha_apps_bg_min=8
