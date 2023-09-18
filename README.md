## mobile nixos


## oneplus6-enchilada

### Unlock the Bootloader on Your OnePlus 6

see: https://oneplus.gadgethacks.com/how-to/unlock-bootloader-your-oneplus-6-0185473/

- Step 1: Back Up Important Data
- Step 2: Enable Developer Options
  Now you'll need to enable the Developer Options menu on your phone to access a setting that lets you unlock your bootloader. Head to Settings –> About Phone, then scroll down to the bottom and tap "Build Number" seven times in rapid succession. When done right, you'll see a toast message stating "You are now a developer."
- Step 3: Enable OEM Unlocking
  From here, tap your back button once to head back out to the main settings page. Scroll down and you'll find the newly-unlocked Developer Options menu. Select it, then scroll down and enable the switch next to "OEM unlocking" on the following page. Tap "Enable" on the popup and enter your phone's PIN if prompted.
- Step 4: Enable USB Debugging
  In the same page click USB Debugging Options
- Step 5: Install Fastboot on Your Computer
- Step 6: Reboot your phone to fastboot mode
  ```fish
  adb reboot fastboot
  ```
- Step 7: Unlock Your Bootloader
  ```fish
   fastboot oem unlock
  ```
  At this point, a new screen should appear on your phone asking you to verify that you want to unlock your bootloader. Use the volume keys to highlight "Unlock the bootloader," then press your power button to select it. At this point, your phone will automatically reboot and wipe itself, then your bootloader will be unlocked.

### Installing the OTA update on the OnePlus 6 using the Local upgrade option

1. Download the official OTA update for your device.
2. Transfer the downloaded Zip file to the phone’s internal storage.
3. Go to Settings > System updates and tap on the gear icon at the top right corner.
4. Select “Local upgrade” and choose the OTA zip file that you downloaded in step #2.
5. Tap on “Upgrade now”.
6. The process will begin and the phone will automatically reboot after updating.


### HydrogenOS to OxygenOS

1. Installing the HydrogenOS Android P (Android 9) OTA update on the OnePlus 6: OnePlus6Hydrogen_22_OTA_034_all_1909041314_0edfbb2dfaa34e94.zip using the local upgrade option
2. Installing the OxygenOS Android 10 OTA update on the OnePlus 6:  OnePlus6Oxygen_22_OTA_041_all_1911142043_dde113e53cd0f9.zip using the local upgrade option
3. Just Open OnePlus6 Setting then click System Update to get the laster OxygenOS 11.1.2.2

### Install magisk on OnePlus6 to get root
1. Unlock the Bootloader on Your OnePlus 6
2. Download OxygenOS 11.1.2.2 ROM (OnePlus6Oxygen_22.J.62_OTA_0620_all_2111252336_14afec75dd6fa.zip)
3. use the [payload-dumper-go-boot](https://github.com/ssut/payload-dumper-go) to get boot.img in OxygenOS 11.1.2.2
  ```fish
  payload-dumper-go -partitions boot ./payload.bin
  ```
4. Copy boot.img to your OnePlus6
5. Open Developer Mode, copy OxygenOS 11.1.2.2 to your OnePlus6
6. Installing the OxygenOS Android 10 OTA update on the OnePlus 6:  OxygenOS 11.1.2.2 using the local upgrade option (you can omit this, if your oneplus6 already is OxygenOS 11.1.2.2)
7. Installing [Magisk](https://github.com/topjohnwu/Magisk/releases/) App to your OnePlus6
8. Open Magisk App, Tap install, Select and Patch a File, Choose boot.img , Let's go
9. Copy /storage/emulated/0/Download/maisk_patched-26300_lHwGc.img to your Computer.
10. adb reboot fastboot
11. fastboot flash boot ./maisk_patched-26300_lHwGc.img
12. fastboot reboot

### BackUp System
see: https://www.coolapk.com/apk/com.example.ourom

### TWRP for OnePlus 6 (enchilada)
see: https://twrp.me/oneplus/oneplus6.html

### ADB Sideload
see: https://ihax.io/adb-sideload-guide/
see: https://wiki.lineageos.org/devices/enchilada/install#ensuring-all-firmware-partitions-are-consistent
see: https://mobile.nixos.org/devices/oneplus-enchilada.html

## Refs
1. https://yun.daxiaamu.com/OnePlus_Roms_2/%E4%B8%80%E5%8A%A06/
2. https://keesenz.com/2021/1308.html
3. https://webtrickz.com/how-to-manually-install-ota-update-on-oneplus-5
4. https://magiskcn.com/oneplus-magisk
5. https://twrp.me/oneplus/oneplus6.html
6. https://ihax.io/adb-sideload-guide/

