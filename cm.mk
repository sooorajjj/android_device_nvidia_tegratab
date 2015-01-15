$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := NvidiaTegratab

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

# Inherit device configuration
$(call inherit-product, device/nvidia/tegratab/device_tegratab.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := tegratab
PRODUCT_NAME := cm_tegratab
PRODUCT_BRAND := NVIDIA
PRODUCT_MANUFACTURER := nvidia

#Set build fingerprint / ID / Prduct Name ect.  ///copy this from the build.prop
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=corsicadd TARGET_DEVICE=corsica BUILD_FINGERPRINT=samsung/corsicadd/corsica:4.1.2/JZO54K/S5312DDAMG1:user/release-keys PRIVATE_BUILD_DESC="corsicadd-user 4.1.2 JZO54K S5312DDAMG1 release-keys"
