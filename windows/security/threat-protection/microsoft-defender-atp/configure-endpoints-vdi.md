---
title: Onboard non-persistent virtual desktop infrastructure (VDI) devices
description: Deploy the configuration package on virtual desktop infrastructure (VDI) device so that they are onboarded to Microsoft Defender ATP the service.
keywords: configure virtual desktop infrastructure (VDI) device, vdi, device management, configure Windows ATP endpoints, configure Microsoft Defender Advanced Threat Protection endpoints
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 04/16/2020
---

# Onboard non-persistent virtual desktop infrastructure (VDI) devices

**Applies to:**
- Virtual desktop infrastructure (VDI) devices

>[!WARNING]
> Microsoft Defender ATP support for Windows Virtual Desktop multi-user scenarios is currently in Preview and limited up to 25 concurrent sessions per host/VM. However single session scenarios on Windows Virtual Desktop are fully supported.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configvdi-abovefoldlink)

## Onboard non-persistent virtual desktop infrastructure (VDI) devices

Microsoft Defender ATP supports non-persistent VDI session onboarding. 

>[!Note]
>To onboard non-persistent VDI sessions, VDI devices must be on Windows 10.
>
>While other Windows versions might work, only Windows 10 is supported.

There might be associated challenges when onboarding VDIs. The following are typical challenges for this scenario:

- Instant early onboarding of a short-lived sessions, which must be onboarded to Microsoft Defender ATP prior to the actual provisioning.
- The device name is typically reused for new sessions.

VDI devices can appear in Microsoft Defender ATP portal as either:

- Single entry for each device.  
Note that in this case, the *same* device name must be configured when the session is created, for example using an unattended answer file.
- Multiple entries for each device - one for each session.

The following steps will guide you through onboarding VDI devices and will highlight steps for single and multiple entries.

>[!WARNING]
> For environments where there are low resource configurations, the VDI boot procedure might slow the Microsoft Defender ATP sensor onboarding. 

1.  Open the VDI configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    1.  In the navigation pane, select **Settings** > **Onboarding**.

    1. Select Windows 10 as the operating system.

    1.  In the **Deployment method** field, select **VDI onboarding scripts for non-persistent endpoints**.

    1. Click **Download package** and save the .zip file.

2. Copy the files from the WindowsDefenderATPOnboardingPackage folder extracted from the .zip file into the `golden/master` image under the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`. 

    1. If you are not implementing a single entry for each device, copy WindowsDefenderATPOnboardingScript.cmd.

    1. If you are implementing a single entry for each device, copy both Onboard-NonPersistentMachine.ps1 and WindowsDefenderATPOnboardingScript.cmd.
    
    > [!NOTE]
    > If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose the **Show hidden files and folders** option from File Explorer.

3. Open a Local Group Policy Editor window and navigate to **Computer Configuration** > **Windows Settings** > **Scripts** > **Startup**.

   > [!NOTE]
   > Domain Group Policy may also be used for onboarding non-persistent VDI devices.

4. Depending on the method you'd like to implement, follow the appropriate steps: <br>
   **For single entry for each device**:<br>
   
   Select the **PowerShell Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to onboarding PowerShell script `Onboard-NonPersistentMachine.ps1`.
   
   **For multiple entries for each device**:
   
   Select the **Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to the onboarding bash script `WindowsDefenderATPOnboardingScript.cmd`.

5. Test your solution:

   1. Create a pool with one device.
      
   1. Logon to device.
      
   1. Logoff from device.

   1. Logon to device with another user.
      
   1. **For single entry for each device**: Check only one entry in Microsoft Defender Security Center.<br>
      **For multiple entries for each device**: Check multiple entries in Microsoft Defender Security Center.

6. Click **Devices list** on the Navigation pane.

7. Use the search function by entering the device name and select **Device** as search type.

## Updating non-persistent virtual desktop infrastructure (VDI) images
As a best practice, we recommend using offline servicing tools to patch golden/master images.<br>
For example, you can use the below commands to install an update while the image remains offline:

```console
DISM /Mount-image /ImageFile:"D:\Win10-1909.vhdx" /index:1 /MountDir:"C:\Temp\OfflineServicing" 
DISM /Image:"C:\Temp\OfflineServicing" /Add-Package /Packagepath:"C:\temp\patch\windows10.0-kb4541338-x64.msu"
DISM /Unmount-Image /MountDir:"C:\Temp\OfflineServicing" /commit
```

For more information on DISM commands and offline servicing, please refer to the articles below:
- [Modify a Windows image using DISM](https://docs.microsoft.com/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism)
- [DISM Image Management Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14)
- [Reduce the Size of the Component Store in an Offline Windows Image](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reduce-the-size-of-the-component-store-in-an-offline-windows-image)

If offline servicing is not a viable option for your non-persistent VDI environment, the following steps should be taken to ensure consistency and sensor health:

1. After booting the master image for online servicing or patching, run an offboarding script to turn off the Microsoft Defender ATP sensor. For more information, see [Offboard devices using a local script](configure-endpoints-script.md#offboard-devices-using-a-local-script).

2. Ensure the sensor is stopped by running the command below in a CMD window:

   ```console
   sc query sense
   ```

3. Service the image as needed.

4. Run the below commands using PsExec.exe (which can be downloaded from https://download.sysinternals.com/files/PSTools.zip) to cleanup the cyber folder contents that the sensor may have accumulated since boot:

    ```console
    PsExec.exe -s cmd.exe
    cd "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Cyber"
    del *.* /f /s /q
    REG DELETE “HKLM\SOFTWARE\Microsoft\Windows Advanced Threat Protection" /v senseGuid /f
    exit
    ```

5. Re-seal the golden/master image as you normally would.

## Related topics
- [Onboard Windows 10 devices using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 devices using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 devices using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows 10 devices using a local script](configure-endpoints-script.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
