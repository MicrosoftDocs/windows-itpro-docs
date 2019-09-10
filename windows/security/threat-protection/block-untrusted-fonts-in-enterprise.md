---
title: Block untrusted fonts in an enterprise (Windows 10)
description: To help protect your company from attacks which may originate from untrusted or attacker controlled font files, we’ve created the Blocking Untrusted Fonts feature.
ms.assetid: a3354c8e-4208-4be6-bc19-56a572c361b4
ms.reviewer: 
manager: dansimp
keywords: font blocking, untrusted font blocking, block fonts, untrusted fonts
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: security
ms.sitesec: library
author: dulcemontemayor
ms.author: dolmont
ms.date: 08/14/2017
ms.localizationpriority: medium
---

# Block untrusted fonts in an enterprise

**Applies to:**

-   Windows 10

>Learn more about what features and functionality are supported in each Windows edition at [Compare Windows 10 Editions](https://www.microsoft.com/WindowsForBusiness/Compare).

To help protect your company from attacks which may originate from untrusted or attacker controlled font files, we’ve created the Blocking Untrusted Fonts feature. Using this feature, you can turn on a global setting that stops your employees from loading untrusted fonts processed using the Graphics Device Interface (GDI) onto your network. Untrusted fonts are any font installed outside of the `%windir%/Fonts` directory. Blocking untrusted fonts helps prevent both remote (web-based or email-based) and local EOP attacks that can happen during the font file-parsing process.

## What does this mean for me?
Blocking untrusted fonts helps improve your network and employee protection against font-processing-related attacks. By default, this feature is not turned on.

## How does this feature work?
There are 3 ways to use this feature:

-   **On.** Helps stop any font processed using GDI from loading outside of the `%windir%/Fonts` directory. It also turns on event logging.

-   **Audit.** Turns on event logging, but doesn’t block fonts from loading, regardless of location. The name of the apps that use untrusted fonts appear in your event log.<p>**Note**<br>If you aren’t quite ready to deploy this feature into your organization, you can run it in Audit mode to see if not loading untrusted fonts causes any usability or compatibility issues.

-   **Exclude apps to load untrusted fonts.** You can exclude specific apps, allowing them to load untrusted fonts, even while this feature is turned on. For instructions, see [Fix apps having problems because of blocked fonts](#fix-apps-having-problems-because-of-blocked-fonts).

## Potential reductions in functionality
After you turn this feature on, your employees might experience reduced functionality when:

-   Sending a print job to a remote printer server that uses this feature and where the spooler process hasn’t been specifically excluded. In this situation, any fonts that aren’t already available in the server’s %windir%/Fonts folder won’t be used.

-   Printing using fonts provided by the installed printer’s graphics .dll file, outside of the %windir%/Fonts folder. For more information, see [Introduction to Printer Graphics DLLs](https://go.microsoft.com/fwlink/p/?LinkId=522302).

-   Using first or third-party apps that use memory-based fonts.

-   Using Internet Explorer to look at websites that use embedded fonts. In this situation, the feature blocks the embedded font, causing the website to use a default font. However, not all fonts have all of the characters, so the website might render differently.

-   Using desktop Office to look at documents with embedded fonts. In this situation, content shows up using a default font picked by Office.

## Turn on and use the Blocking Untrusted Fonts feature
Use Group Policy or the registry to turn this feature on, off, or to use audit mode.

**To turn on and use the Blocking Untrusted Fonts feature through Group Policy**
1. Open the Group Policy editor (gpedit.msc) and go to `Computer Configuration\Administrative Templates\System\Mitigation Options\Untrusted Font Blocking`.

2. Click **Enabled** to turn the feature on, and then click one of the following **Migitation Options**:

    - **Block untrusted fonts and log events.** Turns the feature on, blocking untrusted fonts and logging installation attempts to the event log. 

    - **Do not block untrusted fonts.** Turns the feature on, but doesn't block untrusted fonts nor does it log installation attempts to the event log.

    - **Log events without blocking untrusted fonts**. Turns the feature on, logging installation attempts to the event log, but not blocking untrusted fonts.

3. Click **OK**.

**To turn on and use the Blocking Untrusted Fonts feature through the registry**
To turn this feature on, off, or to use audit mode:

1. Open the registry editor (regedit.exe) and go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel\`.

2. If the **MitigationOptions** key isn't there, right-click and add a new **QWORD (64-bit) Value**, renaming it to **MitigationOptions**.

3. Right click on the **MitigationOptions** key, and then click **Modify**. 

    The **Edit QWORD (64-bit) Value** box opens.

4. Make sure the **Base** option is **Hexadecimal**, and then update the **Value data**, making sure you keep your existing value, like in the important note below:

   - **To turn this feature on.** Type **1000000000000**.

   - **To turn this feature off.** Type **2000000000000**.

   - **To audit with this feature.** Type **3000000000000**.

     >[!Important]
     >Your existing **MitigationOptions** values should be saved during your update. For example, if the current value is *1000*, your updated value should be *1000000001000*. 

5. Restart your computer.

## View the event log
After you turn this feature on, or start using Audit mode, you can look at your event logs for details.

**To look at your event log**

1. Open the event viewer (eventvwr.exe) and go to **Application and Service Logs/Microsoft/Windows/Win32k/Operational**.

2. Scroll down to **EventID: 260** and review the relevant events.

    **Event Example 1 - MS Word**<br>
    WINWORD.EXE attempted loading a font that is restricted by font-loading policy.<br>
    FontType: Memory<br>
    FontPath:<br>
    Blocked: true
    
    >[!NOTE]
    >Because the **FontType** is *Memory*, there’s no associated **FontPath**.

    **Event Example 2 - Winlogon**<br>
    Winlogon.exe attempted loading a font that is restricted by font-loading policy.<br>
    FontType: File<br>
    FontPath: `\??\C:\PROGRAM FILES (X86)\COMMON FILES\MICROSOFT SHARED\EQUATION\MTEXTRA.TTF`<br>
    Blocked: true
    
    >[!NOTE]
    >Because the **FontType** is *File*, there’s also an associated **FontPath**.

    **Event Example 3 - Internet Explorer running in Audit mode**<br>
    Iexplore.exe attempted loading a font that is restricted by font-loading policy.<br>
    FontType: Memory<br>
    FontPath:<br>
    Blocked: false
    
    >[!NOTE]
    >In Audit mode, the problem is recorded, but the font isn’t blocked.

## Fix apps having problems because of blocked fonts
Your company may still need apps that are having problems because of blocked fonts, so we suggest that you first run this feature in Audit mode to determine which fonts are causing the problems.

After you figure out the problematic fonts, you can try to fix your apps in 2 ways: by directly installing the fonts into the %windir%/Fonts directory or by excluding the underlying processes and letting the fonts load. As the default solution, we highly recommend that you install the problematic font. Installing fonts is safer than excluding apps because excluded apps can load any font, trusted or untrusted.

**To fix your apps by installing the problematic fonts (recommended)**

-   On each computer with the app installed, right-click on the font name and click **Install**.<p>The font should automatically install into your `%windir%/Fonts` directory. If it doesn’t, you’ll need to manually copy the font files into the **Fonts** directory and run the installation from there.

**To fix your apps by excluding processes**

1.  On each computer with the app installed, open regedit.exe and go to `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\<process_image_name>`.<br><br>For example, if you want to exclude Microsoft Word processes, you’d use `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Winword.exe`.

2.  Add any additional processes that need to be excluded here, and then turn the Blocking untrusted fonts feature on, using the steps in the [Turn on and use the Blocking Untrusted Fonts feature](#turn-on-and-use-the-blocking-untrusted-fonts-feature) section of this topic.

 
## Related content

- [Dropping the “Untrusted Font Blocking” setting](https://blogs.technet.microsoft.com/secguide/2017/06/15/dropping-the-untrusted-font-blocking-setting/)
 





