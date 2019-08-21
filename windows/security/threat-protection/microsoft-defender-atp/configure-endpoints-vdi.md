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
ms.date: 04/24/2018
---

# Onboard non-persistent virtual desktop infrastructure (VDI) machines

**Applies to:**
- Virtual desktop infrastructure (VDI) machines



>Want to experience Microsoft Defender ATP? [Sign up for a free trial.](https://www.microsoft.com/WindowsForBusiness/windows-atp?ocid=docs-wdatp-configvdi-abovefoldlink)

## Onboard non-persistent virtual desktop infrastructure (VDI) machines

Microsoft Defender ATP supports non-persistent VDI session onboarding. There might be associated challenges when onboarding VDIs. The following are typical challenges for this scenario:


- Instant early onboarding of a short living session
    - A session should be onboarded to Microsoft Defender ATP prior to the actual provisioning.

- Machine name persistence
    - The machine names are typically reused for new sessions. One may ask to have them as a single machine entry while others may prefer to have multiple entries per machine name.

You can onboard VDI machines using a single entry or multiple entries for each machine. The following steps will guide you through onboarding VDI machines and will highlight steps for single and multiple entries.

>[!WARNING]
> For environments where there are low resource configurations, the VDI boot proceedure might slow the Microsoft Defender ATP sensor onboarding. 

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

## Related topics
- [Onboard Windows 10 machines using Group Policy](configure-endpoints-gp.md)
- [Onboard Windows 10 machines using System Center Configuration Manager](configure-endpoints-sccm.md)
- [Onboard Windows 10 machines using Mobile Device Management tools](configure-endpoints-mdm.md)
- [Onboard Windows 10 machines using a local script](configure-endpoints-script.md)
- [Troubleshoot Microsoft Defender Advanced Threat Protection onboarding issues](troubleshoot-onboarding.md)


