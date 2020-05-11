---
title: Onboard non-persistent virtual desktop infrastructure (VDI) machines
description: Deploy the configuration package on virtual desktop infrastructure (VDI) machine so that they are onboarded to Microsoft Defender ATP the service.
keywords: configure virtual desktop infrastructure (VDI) machine, vdi, machine management, configure Windows ATP endpoints, configure Microsoft Defender Advanced Threat Protection endpoints
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

# Onboard non-persistent virtual desktop infrastructure (VDI) machines

**Applies to:**
- Virtual desktop infrastructure (VDI) machines

>[!WARNING]
> Micrsosoft Defender ATP currently does not support Windows Virtual Desktop multi-user session.

>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-configvdi-abovefoldlink)

## Onboard non-persistent virtual desktop infrastructure (VDI) machines

Microsoft Defender ATP supports non-persistent VDI session onboarding. There might be associated challenges when onboarding VDIs. The following are typical challenges for this scenario:

- Instant early onboarding of a short-lived sessions, which must be onboarded to Microsoft Defender ATP prior to the actual provisioning.
- The machine name is typically reused for new sessions.

VDI machines can appear in Microsoft Defender ATP portal as either:

- Single entry for each machine.  
Note that in this case, the *same* machine name must be configured when the session is created, for example using an unattended answer file.
- Multiple entries for each machine - one for each session.

The following steps will guide you through onboarding VDI machines and will highlight steps for single and multiple entries.

>[!WARNING]
> For environments where there are low resource configurations, the VDI boot procedure might slow the Microsoft Defender ATP sensor onboarding. 

1.  Open the VDI configuration package .zip file (*WindowsDefenderATPOnboardingPackage.zip*) that you downloaded from the service onboarding wizard. You can also get the package from [Microsoft Defender Security Center](https://securitycenter.windows.com/):

    a.  In the navigation pane, select **Settings** > **Onboarding**.

    b. Select Windows 10 as the operating system.

    c.  In the **Deployment method** field, select **VDI onboarding scripts for non-persistent endpoints**.

    d. Click **Download package** and save the .zip file.

2. Copy the extracted files from the .zip into `golden/master` image under the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`. You should have a folder called `WindowsDefenderATPOnboardingPackage` containing the file `WindowsDefenderATPOnboardingScript.cmd`.

    >[!NOTE]
    >If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose the **Show hidden files and folders** option from file explorer.

3. The following step is only applicable if you're implementing a single entry for each machine: <br>
    **For single entry for each machine**:<br>
        a. From the `WindowsDefenderATPOnboardingPackage`, copy the `Onboard-NonPersistentMachine.ps1` file to `golden/master` image to the path `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup`. <br>

    >[!NOTE]
    >If you don't see the `C:\WINDOWS\System32\GroupPolicy\Machine\Scripts\Startup` folder, it might be hidden. You'll need to choose the **Show hidden files and folders** option from file explorer.

4. Open a Local Group Policy Editor window and navigate to **Computer Configuration** > **Windows Settings** > **Scripts** > **Startup**.

    >[!NOTE]
    >Domain Group Policy may also be used for onboarding non-persistent VDI machines.

5. Depending on the method you'd like to implement, follow the appropriate steps: <br>
  **For single entry for each machine**:<br>
  Select the **PowerShell Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to onboarding PowerShell script `Onboard-NonPersistentMachine.ps1`. <br><br>
  **For multiple entries for each machine**:<br>
  Select the **Scripts** tab, then click **Add** (Windows Explorer will open directly in the path where you copied the onboarding script earlier). Navigate to the onboarding bash script `WindowsDefenderATPOnboardingScript.cmd`.

6. Test your solution:

    a. Create a pool with one machine.
      
    b. Logon to machine.
      
    c. Logoff from machine.

    d. Logon to machine with another user.
      
    e. **For single entry for each machine**: Check only one entry in Microsoft Defender Security Center.<br>
    **For multiple entries for each machine**: Check multiple entries in Microsoft Defender Security Center.

7. Click **Machines list** on the Navigation pane.

8. Use the search function by entering the machine name and select **Machine** as search type.

## Updating non-persistent virtual desktop infrastructure (VDI) images
As a best practice, we recommend using offline servicing tools to patch golden/master images.<br>
For example, you can use the below commands to install an update while the image remains offline:

```
DISM /Mount-image /ImageFile:"D:\Win10-1909.vhdx" /index:1 /MountDir:"C:\Temp\OfflineServicing" 
DISM /Image:"C:\Temp\OfflineServicing" /Add-Package /Packagepath:"C:\temp\patch\windows10.0-kb4541338-x64.msu"
DISM /Unmount-Image /MountDir:"C:\Temp\OfflineServicing" /commit
```

For more information on DISM commands and offline servicing, please refer to the articles below:
- [Modify a Windows image using DISM](https://docs.microsoft.com/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism)
- [DISM Image Management Command-Line Options](https://docs.microsoft.com/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14)
- [Reduce the Size of the Component Store in an Offline Windows Image](https://docs.microsoft.com/windows-hardware/manufacture/desktop/reduce-the-size-of-the-component-store-in-an-offline-windows-image)

If offline servicing is not a viable option for your non-persistent VDI environment, the following steps should be taken to ensure consistency and sensor health:

1. After booting the master image for online servicing or patching, run an offboarding script to turn off the Microsoft Defender ATP sensor. For more information, see [Offboard machines using a local script](configure-endpoints-script.md#offboard-machines-using-a-local-script).

2. Ensure the sensor is stopped by running the command below in a CMD window:

    ```
    sc query sense
    ```

3. Service the image as needed.

4. Run the below commands using PsExec.exe (which can be downloaded from https://download.sysinternals.com/files/PSTools.zip) to cleanup the cyber folder contents that the sensor may have accumulated since boot:

    ```
    PsExec.exe -s cmd.exe
    cd "C:\ProgramData\Microsoft\Windows Defender Advanced Threat Protection\Cyber"
    del *.* /f /s /q
    exit
    ```

5. Re-seal the golden/master image as you normally would.

## Related topics
- [Onboard Windows 10 machines using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 machines using Microsoft Endpoint Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows 10 machines using a local script](configure-endpoints-script.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)
