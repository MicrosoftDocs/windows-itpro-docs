---
title: Enable S mode on Surface Go devices for Education
description: Steps that an education customer can perform to enable S mode on Surface Go devices
keywords: Surface Go for Education, S mode
ms.prod: w10
ms.technology: Windows
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: edu
ms.localizationpriority: medium
author: kaushika-msft
ms.author: 
ms.date: 07/30/2018
---

# Enabling S mode on Surface Go devices with Windows 10 Pro for education

Surface Go devices are available with both Windows 10 Home in S mode and Windows 10 Pro configurations. Education customers who purchase Surface Go devices with Windows 10 Pro may wish to take advantage of S mode on their Pro devices. These customers can create their own S mode image for Surface Go or enable S mode on a per-device basis.

### Prerequisites

Here are some things you’ll need before attempting any of these procedures:

-   A Surface Go device or Surface Go device image based on Windows 10 Pro
    (1803)
-   General understanding of [Windows deployment scenarios and related
    tools](https://docs.microsoft.com/windows/deployment/windows-deployment-scenarios-and-tools)
-   [Windows ADK for Windows 10
    1803](https://docs.microsoft.com/windows/deployment/windows-adk-scenarios-for-it-pros)
-   [Bootable Windows Preinstall Environment
    (WinPE)](https://docs.microsoft.com/windows-hardware/manufacture/desktop/winpe-create-usb-bootable-drive)

### Enabling S Mode – Windows Image (WIM)

Like enterprise administrators performing large-scale deployment of customized Windows images, education customers can create their own customized Windows images for deployment to multiple classroom devices. An education customer who plans to follow [a traditional image-based deployment
process](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios#traditional-deployment) using a Windows 10 Pro (1803) image for Surface Go devices can enable S mode as follows:

1.  Use DISM to mount your offline Windows 10 Pro (1803) image.

```
dism /Mount-image /imagefile:\<path_to_Image_file\> {/Index:\<image_index\> | /Name:\<image_name\>} /MountDir:\<local_target_directory\>
```

1.  Create an unattend.xml answer file, adding the
    amd64_Microsoft_Windows_CodeIntegrity component to Pass 2 offline Servicing
    and setting amd64_Microsoft_Windows_CodeIntegrity\\SkuPolicyRequired to “1”.
    The resulting xml should look like this…

XML Copy
``` 
<settings pass=”offlineServicing”>
  <component name=”Microsoft-Windows-CodeIntegrity” 
           processorArchitecture=”amd64” 
           publicKeyToken=”31bf3856ad364e35” 
           language=”neutral” 
           versionScope=”nonSxS”
           xmlns:wcm=”http://schemas.microsoft.com/WMIConfig/2002/State” 
           xmlns:xsi=”http://www.w3.org/2001/XMLSchema-instance”>
      <SkuPolicyRequired>1</SkuPolicyRequired>
  </component>
</settings>
```

1.  Save the answer file in the **Windows\Panther** folder of your mounted image as unattend.xml.
2.  Use DISM to apply the unattend.xml file and enable S Mode:

Copy
```
dism /image:C:\mount\windows /apply-unattend:C:\mount\windows\windows\panther\unattend.xml
```
>   Note: in the above example, C:\\mount\\ is the local directory used to mount
>   the offline image.

1.  Commit the image changes and unmount the image

Copy
```
dism /Unmount-image /MountDir:C:\\mount /Commit
```
>Note: don’t forget the /Commit parameter to ensure you don’t lose your
    changes.

Your Windows 10 Pro (1803) image now has S mode enabled and is ready to deploy to Surface Go devices.

### Enabling S Mode – Per Device

Education customers who wish to avoid the additional overhead associated with Windows image creation, customization, and deployment can enable S mode on a per-device basis. Performing the following steps on a Surface Go device will enable S mode on an existing installation of Windows 10 Pro (1803).

1.  Create a bootable WinPE media. See [Create a bootable Windows PE USB
    drive](http://msdn.microsoft.com/library/windows/hardware/dn938386.aspx) for
    details.

1.  Create an unattend.xml answer file, adding the
    amd64_Microsoft_Windows_CodeIntegrity component to Pass 2 offline Servicing
    and setting amd64_Microsoft_Windows_CodeIntegrity\\SkuPolicyRequired to “1”. The resulting xml should look like this…

XML Copy
```
<settings pass=”offlineServicing”>
  <component name=”Microsoft-Windows-CodeIntegrity” 
           processorArchitecture=”amd64” 
           publicKeyToken=”31bf3856ad364e35” 
           language=”neutral” 
           versionScope=”nonSxS”
           xmlns:wcm=”http://schemas.microsoft.com/WMIConfig/2002/State” 
           xmlns:xsi=”http://www.w3.org/2001/XMLSchema-instance”>
      <SkuPolicyRequired>1</SkuPolicyRequired>
  </component>
</settings>
```

1.  Attach your bootable WinPE USB drive to a Surface Go device and perform a USB boot (hold the **volume down** button while powering on the device… continue to hold until the Surface logo appears)
2.  Wait for WinPE to launch a command window     (*X:\\windows\\system32\\cmd.exe*).
3.  Apply the unattend.xml created in step 2 using DISM.

Copy
```
dism /image:C:\ /apply-unattend:D:\unattend.xml
```
>   Note: in the above example, C:\\ is the local OS drive (offline). D:\ is where the S mode unattend.xml file (from Step 2) resides.

1.  Once DISM has successfully applied the unattend.xml, reboot the Surface Go device.
Upon reboot, you should find your Surface Go device now is now in S mode.

### Troubleshooting

|ISSUE | RESOLUTION |
|------------------------ |-----------------------|
|DISM fails to apply the unattend.xml because the OS drive is encrypted. | This is one reason why it’s best to enable S mode before setting up and configuring a device. If the OS drive has already been encrypted, you’ll need to fully decrypt the drive before you can enable S mode. |
|Unattend.xml has been applied and dism reports success. However, when I boot the device, it’s not in S mode. This can happen when a device was booted to Windows 10 Pro before S mode was enabled. To resolve this issue, do the following:
1.  **Run** “shutdown.exe -p -f” to force a complete shutdown.
2.  Hold the **vol-up** button while pressing the **power** button to power on the
    device. Continue to hold **vol-up** until you see the Surface UEFI settings.
3.  Under **Security** find the **Secure Boot** option and disable it.
4.  With SecureBoot disabled choose **exit** -\> **restart now** to exit UEFI
    settings and reboot the device back to Windows.
5.  Confirm that S mode is now properly enabled.
6.  Once you’ve confirmed S mode, you should re-enable Secure Boot… repeat the above steps, choosing to **Enable** Secure Boot from the UEFI security
    settings. |
    
### Additional Info

[Service a Windows image using DISM](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/mount-and-modify-a-windows-image-using-dism)

[Service a Windows Image Using DISM](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/service-a-windows-image-using-dism)

[Deployment Image Servicing and Management (DISM.exe)](https://docs.microsoft.com/en-us/windows-hardware/manufacture/desktop/dism-image-management-command-line-options-s14)

[Windows Assessment and Deployment Kit ](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit#winADK)

[Windows Deployment scenarios and tools](https://docs.microsoft.com/en-us/windows/deployment/windows-deployment-scenarios-and-tools)

[Windows 10 Deployment scenarios](https://docs.microsoft.com/windows/deployment/windows-10-deployment-scenarios)
