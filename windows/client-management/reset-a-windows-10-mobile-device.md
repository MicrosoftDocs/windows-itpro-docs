---
title: Reset a Windows 10 Mobile device (Windows 10)
description: There are two methods for resetting a Windows 10 Mobile device factory reset and \ 0034;wipe and persist \ 0034; reset.
ms.assetid: B42A71F4-DFEE-4D6E-A904-7942D1AAB73F
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: mobile
author: dansimp
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.topic: article
---

# Reset a Windows 10 Mobile device


**Applies to**

-   Windows 10 Mobile

There are two methods for resetting a Windows 10 Mobile device: factory reset and "wipe and persist" reset.

-   **Factory reset** restores the state of the device back to its first-boot state plus any update packages. The reset will not return device to the original factory state. To return the device to the original factory state, you must flash it with the original factory image by using the [Windows Device Recovery Tool](https://support.microsoft.com/help/12379/windows-10-mobile-device-recovery-tool-faq). All the provisioning applied to the device by the enterprise will be lost and will need to be re-applied if needed. For details on what is removed or persists, see [Resetting a mobile device](https://go.microsoft.com/fwlink/p/?LinkID=703715).
-   **"Wipe and persist" reset** preserves all the provisioning applied to the device before the reset. After the "wipe and persist" reset, all the preserved provisioning packages are automatically applied on the device and the data in the enterprise shared storage folder \\Data\\SharedData\\Enterprise\\Persistent is restored in that folder. For more information on the enterprise shared storage folder, see [EnterpriseExtFileSystem CSP](https://go.microsoft.com/fwlink/p/?LinkId=703716).

You can trigger a reset using your mobile device management (MDM) service, or a user can trigger a reset in the user interface (UI) or by using hardware buttons.

## Reset using MDM


The remote wipe command is sent as an XML provisioning file to the device. Since the [RemoteWipe configuration service provider (CSP)](https://go.microsoft.com/fwlink/p/?LinkId=703714) uses OMA DM and WAP, authentication between client and server and delivery of the XML provisioning file is handled by provisioning. The remote wipe command is implemented on the device by using the **ResetPhone** function. For more information about the data that is removed as a result of the remote wipe command, see [Resetting a mobile device](https://go.microsoft.com/fwlink/p/?LinkId=703715).

To perform a factory reset, restoring the device back to its out-of-box state, use the following syncML.

```
<SyncML xmlns="SYNCML:SYNCML1.2">
 <SyncBody>
  <Exec>
   <CmdID>3</CmdID>
   <Item>
    <Target><LocURI>./Vendor/MSFT/RemoteWipe/DoWipe</LocURI></Target>
   </Item>
  </Exec> 
  <Final/>
 </SyncBody>
</SyncML>
```

To perform a "wipe and persist" reset, preserving the provisioning applied to the device before the reset and persisting data files locally, use the following syncML.

```
<SyncML xmlns="SYNCML:SYNCML1.2">
    <SyncBody>
        <Exec>
            <CmdID>3</CmdID>
            <Item>                
                 <Target><LocURI>./Vendor/MSFT/RemoteWipe/DoWipePersistProvisionedData</LocURI></Target>
            </Item>
        </Exec>        
        <Final/>
 </SyncBody>
</SyncML>
```

##  Reset using the UI


1.  On your mobile device, go to **Settings** > **System** > **About** > **Reset your Phone**

2.  When you tap **Reset your phone**, the dialog box will present an option to **Also remove provisioned content** if:

    -   At least one provisioning package has been applied, or
    -   A file is present in the enterprise shared storage folder \\Data\\SharedData\\Enterprise\\Persistent.

    If the option to **Also remove provisioned content** is selected, the reset that ensues is a regular factory reset. If the option is not selected, a "wipe and persist" reset is performed.

## Reset using hardware buttons


If your phone is unresponsive and you can't reach **Settings**, you may be able to reset your phone using the hardware buttons. Reset using hardware buttons does not give you the option to persist provisioned content. On Lumia phones (and some others), do the following to reset your phone:

1.  Press and hold the **Volume down** and **Power** buttons at the same time until you feel a vibration (about 10–15 seconds).

2.  When you feel the vibration, release the buttons, and then immediately press and hold the **Volume down** button until you see a large exclamation mark.

3.  When the exclamation mark appears, press the following four buttons in this order: **Volume up**, **Volume down**, **Power**, **Volume down**. Your phone should now reset and restart itself. (It might take a while for the reset to finish.)

 

 





