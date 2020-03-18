## Getting Started ##
----------------------------------

To get started with OMNI sources to build TWRP, you'll need to get
familiar with [Git and Repo](https://source.android.com/source/using-repo.html).

To initialize your local repository using the OMNIROM trees to build TWRP, use a command like this:

    repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-9.0

Then to sync up:

    repo sync --current-branch --no-tags --no-clone-bundle --optimized-fetch --force-broken --force-sync

Clone device tree:

    git clone https://github.com/legendstarspro/device_sony_honami -b omni-9.0 device/sony/honami

Then to build:

     . build/envsetup.sh
     lunch
     Choose omni_honami-eng
     mka recoveryimage
