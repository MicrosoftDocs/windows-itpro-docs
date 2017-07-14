---
title: Test Windows 10 S on existing Windows 10 Pro education devices
description: Provides guidance on downloading and testing Windows 10 S for existing Windows 10 Pro education devices.
keywords: Windows 10 S, download, try, school, education
ms.mktglfcycl: deploy
ms.prod: w10
ms.pagetype: edu
ms.sitesec: library
localizationpriority: high
author: CelesteDG
ms.author: celested
ms.date: 07/27/2017
---

# Test Windows 10 S on existing Windows 10 Pro education devices

**Applies to:**
- Windows 10

Windows 10 S gives schools the familiar, robust, and productive experiences they count on from Windows in an experience streamlined for security and performance in the classroom, built to work with Microsoft Education<sup>[1](#footnote1)</sup>.

Test Windows 10 S on a few existing Windows 10 Pro or Windows 10 Pro Education devices with a genuine, activated license<sup>[2](#footnote2)</sup>.

Windows 10 S is different from other editions of Windows 10 as everything runs on the device is verfied by Microsoft for security and performance. Therefore, Windows 10 S works exclusively with apps from the Windows Store. Some accessories and apps compatible with Windows 10 may not work and performance may vary. Certain default settings, features, and apps cannot be changed. When you install Windows 10 S, your existing applications and settings will be deleted and you will only be able to install apps from the Windows Store.

To install Office applications in a school environment, you must use the free Set up School PCs app, which is available on the Microsoft Store for Education and from the Windows Store. Education customers must configure **SetEduPolicies** for use in K-12 schools. For more information on how to do these, see [Use the Set up School PCs app](use-set-up-school-pcs-app.md) and [Windows 10 configuration recommendations for education customers](configure-windows-for-education.md). If you installed the preview version of Office from the Windows Store, it may occasionally behave in unexpected ways. As we finalize development, your Office install will be updated automatically. 

## Important pre-installation information

Before you install Windows 10 S, be aware that non-Windows Store apps will not work, peripherals that require custom drivers may not work, and other errors may occur. In particular, Windows 10 S:
* May not work well with certain OEM devices, and even if compatible, may cause some hardware incompatibility
* May not be compatible with all peripherals that require custom drivers and, even if compatible, may cause aspects of the peripheral to not function
* Has software and feature limitations compared to Windows 10 Pro or Windows 10 Pro Education, primarily that Windows 10 S is limited to Store apps only
* Will not run current Win32 software and might result in the loss of any data associated with that software, which might include software already purchased
* Is intended for education customers

Due to these reasons, we recommend that you use the installation tool from this page (**TBD** - need link here) and avoid doing a clean install from an ISO media.

Before you install Windows 10 S on your existing Windows 10 Pro or Windows 10 Pro Education device:
* Make sure that you updated your existing device to Windows 10, version 1703 (Creators Update) - See [Download Windows 10](https://www.microsoft.com/en-us/software-download/windows10) and follow the instructions to update your device to Windows 10, version 1703.
* Install the latest Windows Update - To do this, go to **Settings > Update & security > Windows Update**.

## Supported devices

Only devices running Windows 10 Pro and Windows 10 Pro Education are supported for Windows 10 S. Other Windows 10 editions cannot be activated and are not supported. If your device is not running a genuine, activated copy of Windows 10 Pro or Windows 10 Pro Education, do not proceed with using the Windows 10 S installer.

## Preparing your device to install drivers

Make sure all drivers are installed and working properly on your device running Windows 10 Pro or Windows 10 Pro Education before installing Windows 10 S.

### Supported devices and drivers

Check with your device manufacturer before trying Windows 10 S on your Windows 10 Pro or Windows 10 Pro Education device to make sure the drivers are available and supported by the device manufacturer. Visit **TBD - need link** for more information.

If you don't see your manufacturer or device model listed, proceed with caution as you may not be able to get support from your device manufacturer to install Windows 10 S and you may experience limited or incomplete functionality on Windows features, device hardware, peripherals, and others.

## Kept files

Back up all your data before installing Windows 10 S. Only personal files may be kept during installation. Your settings and apps will be deleted.

> [!NOTE]
> All existing Win32 applications and data will be deleted. Save any data or installation files in case you may need to access that data again or need to reinstall these applications later.

## Domain join

Windows 10 S does not support non-Azure Active Directory domain accounts. Before installing Windows 10 S, you must have at least one of these administrator accounts:
- Local administrator
- Microsoft Account (MSA) administrator
- Azure Active Directory administrator 

If you don't have one of these accounts accessible before migration, you will not be able to log in to your device after migrating to Windows 10 S. We recommend [creating a recovery drive](#create-a-recovery-drive) before migrating to Windows 10 S in case you run into this issue.

## Installing Office applications

After installing Windows 10 S, use the free [Set up School PCs app](use-set-up-school-pcs-app.md) to install Microsoft Office. You must have an Office license to activate the applications once they are installed.

## Switch to Windows 10 Pro or Windows 10 Pro Education

If Windows 10 S is not right for you, you can switch to Windows 10 Pro or Windows 10 Pro Education.

| Starting edition (Home, Pro, Pro Education, Enterprise, Education) | Can install Windows 10 S? | Will activate Windows 10 S? | Windows Store switch to Windows 10 Pro? | Works with Microsoft Store for Education switch to Windows 10 Pro Education? | Can utilize Office Store? | Recovery path to original OS? |
| --- | --- | --- | --- | --- | --- | --- |
| Windows 10 Home          | Yes | No  | Paid (will be chaged more) |     | No (click-to-run) | Create a recovery drive or use Media Creation Tool |
| Windows 10 S             | Yes | Yes | Paid for low-end <br/> Discount free for high-end    |   |   |   |
| Windows 10 Pro           | Yes | No  | Not applicable             |     | Yes               | Create a recovery drive or use Media Creation Tool |
| Windows 10 Pro Education | Yes | No  | No                         |     | No                | Create a recovery drive or use Media Creation Tool |
| Windows 10 Enterprise    | Yes | No  | No                         |     | No                | Create a recovery drive or use Media Creation Tool |
| Windows 10 Education     | Yes | No  | No                         |     | No                | Create a recovery drive or use Media Creation Tool |

Education customers can switch devices to Windows 10 Pro Education using the Microsoft Store for Education. For more information, see [Switch to Windows 10 Pro Education from Windows 10 Pro or Windows 10 S](switch-to-pro-education.md).

On individual devices, you can use your existing Windows 10 Pro or Windows 10 Pro Education kley.

## Device recovery

Before installing Windows 10 S, we recommend that you create a system backup in case you would like to return to Windows 10 Pro or Windows 10 Pro Education after trying Windows 10 S.

### Create a recovery drive 
To create a recovery drive, follow these steps.

1. From the taskbar, search for **Create a recovery drive** and then select it. You might be asked to enter an admin password or confirm your choice.
2. In the **Recovery drive** tool, make sure **Back up system files to the recovery drive** is selected and then click **Next**.
3. Connect a USB drive to your PC, select it, and then select **Next > Create**. 

    A lot of files need to be copied to the recovery drive so this might take a while.

4. When it's done, you might see a **Delete the recovery partition from your PC** link on the final screen. If you want to free up drive space on your PC, select the link and then select **Delete**. If not, select **Finish**.

### Go back to your previous edition of Windows 10

Alternatively, for a period of 10 days after you install Windows 10 S, you have the option to go back to your previous edition of Windows 10 from **Settings > Update & security > Recovery**. This will keep your personal files, but it will remove installed apps as well as any changes you made to **Settings**.

To go back, you need to:
* Keep everything in the windows.old and $windows.~bt folders after the upgrade
* Remove any user accounts you added after the upgrade

If going back is not available:
* Check if you can restore your PC to factory settings. This will reinstall the version of Windows that came with your PC and remove personal files, apps, and drivers you installed and any changes you made to **Settings**. Go to **Settings > Update & security > Recovery > Reset this PC > Get started** and look for **Restore factory settings**.
* If you have a product key for your previous version of Windows, use the media creation tool to create installation media of your previous Windows 10 edition and use it to do a clean install.

### Use installation media to reinstall Windows 10

> [!WARNING]
> This will remove all your personal files, apps, and installed drivers. apps and customizations from your PC manufacturer, and changes you made to **Settings**.

To use an installation media to reinstall Windows 10, follow these steps.

1. On a working PC, go to the [Microsoft software download website](https://www.microsoft.com/en-us/software-download/windows10).
2. Download the Media Creation Tool and then run it.
3. Select **Create installation media for another PC**.
4. Choose a language, edition, and architecture (65-bit or 32-bit).
5. Follow the steps to create an installation media and then select **Finish**.
6. Connect the installation media that you created to your non-functional PC, and then turn it on.
7. On the initial setup screen, enter your language and other preferences, and then select **Next**.

    If you're not seeing the setup screen, your PC might not be set up to boot from a drive. Check your PC manufacturer's website for information on how to change your PC's boot order, and then try again.

8. Select **Install now**.
9. On the **Enter the product key to active Windows** page, enter a product key if you have one. If you upgraded to Windows 10 for free, or bought and activated Windows 10 from the Windows Store, select **Skip** and Windows will automatically activate later. For more information, see [Activation in Windows 10](https://support.microsoft.com/en-us/help/12440/windows-10-activation).
10. On the **License terms** page, select **I accept the license terms** if you agree, and then select **Next**.
11. On the **Which type of installation do you want?** page, select **Custom**.
12. On the **where do you want to install Windows?** page, select a partition, select a formatting option (if necessary), and then follow the instructions.
13. When you're done formatting, select **Next**.
14. Follow the rest of the setup instructions to finish installing Windows 10.

## Download Windows 10 S
Ready to test Windows 10 S on your existing Windows 10 Pro or Windows 10 Pro Education device? Make sure you read the [important pre-installation information](#important-pre-installation-information) and all the above information. 

When you're ready, you can download the Windows 10 S installer from here: **TBD - add a link**

## Terms and conditions
**TBD** - CELA to provide written statement on what the product is licensed for that shares anything important in the Windows 10 S installer Terms and Conditions. Is this only for education customers or anyone with Windows 10 Pro or Windows 10 Pro Education?

## Support 
Thank you for testing Windows 10 S. Your best experience will be running on a supported device as mentioned above. If you are having difficulty installing or running Windows 10 S, use the Windows **Feedback Hub** to report your experience to Microsoft. This is the best way to help make Windows 10 S a great OS. Frequently asked technical topics are covered online on our Support website and steps to return to your previous installation of Windows 10 are covered above. If you need to talk to an agent for help with additional online resources, click on the appropriate link below for support options.
* For Volume Licensing Agreement or Shape the Future program customers, go to the [Microsoft Commercial Support](https://support.microsoft.com/gp/commercialsupport) website and select the country/region in which you are seeking commercial support to contact our commercial support team.
* If you do not have a Volume Licensing Agreement, go to the [Microsoft Support](https://support.microsoft.com/en-us/contactus/) website and choose a support option.

<p>
<a name="footnote1"></a><sup>1</sup> <small>Devices must be configured for educational use by applying **[SetEduPolicies](https://docs.microsoft.com/en-us/education/windows/configure-windows-for-education#setedupolicies)** using the Set up School PCs app.</small><br/>
<a name="footnote2"></a><sup>2</sup> <small>Internet access fees may apply.</small>
</p>

