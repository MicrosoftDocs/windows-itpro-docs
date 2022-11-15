---
title: Test Windows 10 in S mode on existing Windows 10 education devices
description: Provides guidance on downloading and testing Windows 10 in S mode for existing Windows 10 education devices.
ms.topic: guide
ms.date: 08/10/2022
appliesto:
  - ✅ <a href="https://learn.microsoft.com/windows/release-health/supported-versions-windows-client" target="_blank">Windows 10</a>
ms.collection:
  - highpri
  - education
---

# Test Windows 10 in S mode on existing Windows 10 education devices

The Windows 10 in S mode self-installer will allow you to test Windows 10 in S mode on various individual Windows 10 devices (except Windows 10 Home) with a genuine, activated license<sup>[1](#footnote1)</sup>. Test Windows 10 in S mode on various devices in your school and share your feedback with us.

Windows 10 in S mode is built to give schools the familiar, robust, and productive experiences you count on from Windows in an experience that's been streamlined for security and performance in the classroom, and built to work with Microsoft Education<sup>[2](#footnote2)</sup>.

Windows 10 in S mode is different from other editions of Windows 10 as everything that runs on the device is verified by Microsoft for security and performance. Therefore, Windows 10 in S mode works exclusively with apps from the Microsoft Store. Some accessories and apps compatible with Windows 10 may not work and performance may vary. Certain default settings, features, and apps can't be changed. When you install Windows 10 in S mode, your existing applications and settings will be deleted, and you'll only be able to install apps from the Microsoft Store.

**Configuring Windows 10 in S mode for school use is easy:** Education customers must configure **SetEduPolicies** for use in K-12 schools. For more information on how to do these configurations, see [Use the Set up School PCs app](use-set-up-school-pcs-app.md) and [Windows 10 configuration recommendations for education customers](configure-windows-for-education.md).

**Installing Office 365 for Windows 10 in S mode (Education preview)**: To install the Office applications in a school environment, you must use the free Setup School PCs app, which is available on the Microsoft Store for Education and from the Microsoft Store.

As we finalize development of Office 365 for Windows 10 in S mode (Education preview), the applications will be updated automatically. You must have an Office license to activate the applications once they're installed. For more information about Office 365 for Education plans, see [Office on Windows 10 in S mode](https://support.microsoft.com/office/office-on-windows-10-in-s-mode-717193b5-ff9f-4388-84c0-277ddf07fe3f?ui=en-us&rs=en-us&ad=us).

## Before you install Windows 10 in S mode

### Important information

Before you install Windows 10 in S mode, understand that non-Microsoft Store apps won't work, peripherals that require custom drivers may not work, and other errors may occur. In particular, this release of Windows 10 in S mode:

- Is intended for education customers to test compatibility with existing hardware
- May not work with some device drivers, which may not yet be ready for Windows 10 in S mode and may cause some loss in functionality
- May not be compatible with all peripherals that require custom drivers and, even if compatible, may cause aspects of the peripheral to not function
- Has software and feature limitations compared to other Windows 10 editions, primarily that Windows 10 in S mode is limited to Store apps only

    > [!WARNING]
    > You can install Windows 10 in S mode on devices running other editions of Windows 10. For more information, see [Supported devices](#supported-devices). However, we don't recommend installing Windows 10 in S mode on Windows 10 Home devices as you won't be able to activate it.

- Won't run current Win32 software and might result in the loss of any data associated with that software, which might include software already purchased

Due to these reasons, we recommend that you use the installation tool and avoid doing a clean install from an ISO media.

Before you install Windows 10 in S mode on your existing Windows 10 Pro, Windows 10 Pro Education, Windows 10 Education, or Windows 10 Enterprise device:

- Make sure that you updated your existing device to Windows 10, version 1703.

    To update your device to Windows 10, version 1703, see [Download Windows 10](https://www.microsoft.com/software-download/windows10). You can verify your current version in **Settings > System > About**.

- Install the latest Windows Update.

    To do this task, go to **Settings > Update & security > Windows Update**.

- Create a system backup in case you would like to return to your previously installed version of Windows 10 after trying Windows 10 in S mode.

  For more information on how to create the system backup, see [Create a recovery drive](#create-a-recovery-drive).

## Supported devices

The Windows 10 in S mode install will install and activate on the following editions of Windows 10 in use by schools:

- Windows 10 Pro
- Windows 10 Pro Education
- Windows 10 Education
- Windows 10 Enterprise

Other Windows 10 editions can't be activated and aren't supported. If your device isn't running one of these supported Windows 10 editions, don't proceed with using the Windows 10 in S mode installer. Windows 10-N editions and running in virtual machines aren't supported by the Windows 10 in S mode installer.

### Preparing your device to install drivers

Make sure all drivers are installed and working properly on your device running Windows 10 Pro, Windows 10 Pro Education, Windows 10 Education, or Windows 10 Enterprise before installing Windows 10 in S mode.

### Supported devices and drivers

Check with your device manufacturer before trying Windows 10 in S mode on your device to see if the drivers are available and supported by the device manufacturer.

## Kept files

Back up all your data before installing Windows 10 in S mode. Only personal files may be kept during installation. Your settings and apps will be deleted.

> [!NOTE]
> All existing Win32 applications and data will be deleted. Save any data or installation files in case you may need to access that data again or need to reinstall these applications later.

## Domain join

Windows 10 in S mode doesn't support non-Azure Active Directory domain accounts. Before installing Windows 10 in S mode, you must have at least one of these administrator accounts:

- Local administrator
- Microsoft account administrator
- Azure Active Directory administrator

> [!WARNING]
> If you don't have one of these administrator accounts accessible before migration, you'll not be able to sign in to your device after migrating to Windows 10 in S mode.

We recommend [creating a recovery drive](#create-a-recovery-drive) before migrating to Windows 10 in S mode in case you run into this issue.

## Installing Office applications

After installing Windows 10 in S mode, use the free [Set up School PCs app](use-set-up-school-pcs-app.md) to install Office 365 for Windows 10 in S mode (Education preview). You must have an Office license to activate the applications once they're installed.

## Switch to previously installed Windows 10 editions

If Windows 10 in S mode isn't right for you, you can switch to the Windows 10 edition previously installed on your device(s).

- Education customers can switch devices to Windows 10 Pro Education using the Microsoft Store for Education. For more information, see [Switch to Windows 10 Pro Education from Windows 10 Pro or Windows 10 in S mode](change-to-pro-education.md).
- If you try Windows 10 in S mode and decide to switch back to the previously installed edition within 10 days, you can go back to the previously installed edition using the Windows Recovery option in Settings. For more info, see [Go back to your previous edition of Windows 10](#go-back-to-your-previous-edition-of-windows-10).

## Device recovery

Before installing Windows 10 in S mode, we recommend that you create a system backup in case you would like to return to Windows 10 Pro or Windows 10 Pro Education after trying Windows 10 in S mode.

### Create a recovery drive

To create a recovery drive, follow these steps.

1. From the taskbar, search for **Create a recovery drive** and then select it. You might be asked to enter an admin password or confirm your choice.
2. In the **Recovery drive** tool, make sure **Back up system files to the recovery drive** is selected and then select **Next**.
3. Connect a USB drive to your PC, select it, and then select **Next > Create**.

    Many files need to be copied to the recovery drive; so this process might take a while.

4. When it's done, you might see a **Delete the recovery partition from your PC** link on the final screen. If you want to free up drive space on your PC, select the link, and then select **Delete**. If not, select **Finish**.

### Go back to your previous edition of Windows 10

Alternatively, for 10 days after you install Windows 10 in S mode, you can go back to your previous edition of Windows 10 from **Settings > Update & security > Recovery**. This revert operation will keep your personal files, but it will remove installed apps and any changes you made to **Settings**.

To go back, you need to:

- Keep everything in the `windows.old` and `$windows.~bt` folders after the upgrade.
- Remove any user accounts you added after the upgrade.

If going back isn't available:

- Check if you can restore your PC to factory settings. This restoration will reinstall the version of Windows that came with your PC and remove personal files, apps, and drivers you installed and any changes you made to **Settings**. Go to **Settings > Update & security > Recovery > Reset this PC > Get started** and look for **Restore factory settings**.
- If you've a product key for your previous version of Windows, use the media creation tool. It can create installation media of your previous Windows 10 edition, and do a clean install.

After going back to your previous edition of Windows 10, you may receive the following message when launching Win32 apps:

> For security and performance, this mode of Windows only runs verified apps from the Store.

If you see this message, follow these steps to stop receiving the message:

1. If you've BitLocker enabled, disable it first in the Control Panel. Go to **Manage BitLocker** and select **Turn off BitLocker**.
2. Open Windows **Settings** and go to **Update & security > Recovery**.
3. In the **Recovery** page, find **Advanced startup** and select **Restart now** to start your PC.
4. After restarting, in the **Choose an option** page, select **Troubleshoot**.
5. In the **Troubleshoot** page, select **Advanced options**, and in the **Advanced options** page select **UEFI Firmware Settings**.
6. In the **UEFI Firmware Settings** page, select **Restart** to get to the device-specific UEFI/BIOS menu.
7. Once you've accessed UEFI, look for the menu item labeled **Security** or **Security Settings**, and navigate to it.
8. Look for an option called **Secure boot configuration**, **Secure boot**, or **UEFI Boot**. If you can't find one of these options, check the **Boot** menu.
9. Disable the secure boot/UEFI boot option.
10. Save your settings and then exit UEFI. This exit action will restart your PC.
11. After Windows is done booting up, confirm that you no longer see the message.

    > [!NOTE]
    > We recommend following these steps again to re-enable the **Secure boot configuration**, **Secure boot**, or **UEFI Boot** option, which you disabled in step 9, and then subsequently re-enable BitLocker (if you previously had this enabled).

### Use installation media to reinstall Windows 10

> [!WARNING]
> This will remove all your personal files, apps, and installed drivers. apps and customizations from your PC manufacturer, and changes you made to **Settings**.

To use an installation media to reinstall Windows 10, follow these steps.

1. On a working PC, go to the [Microsoft software download website](https://www.microsoft.com/software-download/windows10).
2. Download the Media Creation Tool and then run it.
3. Select **Create installation media for another PC**.
4. Choose a language, edition, and architecture (64-bit or 32-bit).
5. Follow the steps to create an installation media and then select **Finish**.
6. Connect the installation media that you created to your non-functional PC, and then turn it on.
7. On the initial setup screen, enter your language and other preferences, and then select **Next**.

    If you're not seeing the setup screen, your PC might not be set up to boot from a drive. Check your PC manufacturer's website for information on how to change your PC's boot order, and then try again.

8. Select **Install now**.
9. On the **Enter the product key to active Windows** page, enter a product key if you've one. If you upgraded to Windows 10 for free, or bought and activated Windows 10 from the Microsoft Store, select **Skip** and Windows will automatically activate later. For more information, see [Activate Windows](https://support.microsoft.com/windows/activate-windows-c39005d4-95ee-b91e-b399-2820fda32227).
10. On the **License terms** page, select **I accept the license terms** if you agree, and then select **Next**.
11. On the **Which type of installation do you want?** page, select **Custom**.
12. On the **where do you want to install Windows?** page, select a partition, select a formatting option (if necessary), and then follow the instructions.
13. When you're done formatting, select **Next**.
14. Follow the rest of the setup instructions to finish installing Windows 10.

## Download Windows 10 in S mode

Ready to test Windows 10 in S mode on your existing Windows 10 Pro or Windows 10 Pro Education device? Make sure you read the [important pre-installation information](#important-information) and all the above information.

When you're ready, you can download the Windows 10 in S mode installer by clicking the **Download installer** button below:

> [!div class="nextstepaction" style="center"]
> [Download installer](https://go.microsoft.com/fwlink/?linkid=853240)

After you install Windows 10 in S mode, the OS defaults to the English version. To change the UI and show the localized UI, go to **Settings > Time & language > Region & language >** in **Languages**, select **Add a language** to add a new language or select an existing language, and set it as the default.

## Terms and Conditions

Because you're installing Windows 10 in S mode on a running version of Windows 10, you've already accepted the Windows 10 Terms and Conditions. you'ren't required to accept it again and the Windows 10 installer doesn't show a Terms and Conditions page during installation.

## Support

Thank you for testing Windows 10 in S mode. Your best experience will be running on a supported device as mentioned above. However, we invite you to try Windows 10 in S mode on existing devices with an eligible operating system. If you're having difficulty installing or running Windows 10 in S mode, use the Windows **Feedback Hub** to report your experience to Microsoft. This feedback is the best way to help improve Windows 10 in S mode with your feedback.

Common support questions for the Windows 10 in S mode test program:

### How do I activate if I don't have a Windows 10 in S mode product key?

As stated above, devices running Windows 10 Pro, Windows 10 Pro Education, Windows 10 Education, or Windows 10 Enterprise can install and run Windows 10 in S mode and it will automatically activate. Testing Windows 10 in S mode on a device running Windows 10 Home isn't recommended and supported at this time.

### Will my OEM help me run Windows 10 in S mode?

OEMs typically only support their devices with the operating system that was pre-installed. See [Supported devices](#supported-devices) for OEM devices that are best suited for testing Windows 10 in S mode. When testing Windows 10 in S mode, be ready to restore your own PC back to factory settings without assistance. Steps to return to your previous installation of Windows 10 are covered above.

### What happens when I run Reset or Fresh Start on Windows 10 in S mode?

**Reset** or **Fresh Start** will operate correctly and keep you on Windows 10 in S mode. They also remove the 10-day go back ability. See [Switch to previously installed Windows 10 editions](#switch-to-previously-installed-windows-10-editions) to return to your previous installation of Windows 10 if you wish to discontinue using Windows 10 in S mode.

### What if I want to move from Windows 10 in S mode to Windows 10 Pro?

If you want to discontinue using Windows 10 in S mode, follow the instructions to return to your previous installation of Windows 10. If you already had Windows 10 Pro or Windows 10 Pro Education on the device you're testing on, you should be able to move to Windows 10 Pro or Windows 10 Pro Education at no charge with the instructions in this document. Otherwise, there may be a cost to acquire a Windows 10 Pro license in the Store.

For help with activation issues, select the appropriate link below for support options.

- For Volume Licensing Agreement or Shape the Future program customers, go to the [Microsoft Commercial Support](https://support.microsoft.com/gp/commercialsupport) website and select the country/region in which you're seeking commercial support to contact our commercial support team.
- If you don't have a Volume Licensing Agreement, go to the [Microsoft Support](https://support.microsoft.com/contactus/) website and choose a support option.

<p>
<a name="footnote1"></a><sup>1</sup> <small>Internet access fees may apply.</small><br/>
<a name="footnote2"></a><sup>2</sup> <small>Devices must be configured for educational use by applying <strong><a href="/education/windows/configure-windows-for-education#setedupolicies" data-raw-source="[SetEduPolicies](./configure-windows-for-education.md#setedupolicies)">SetEduPolicies</a></strong> using the Setup School PCs app.</small><br/>

</p>