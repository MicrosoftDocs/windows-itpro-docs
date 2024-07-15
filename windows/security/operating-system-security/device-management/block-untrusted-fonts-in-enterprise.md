---
title: Block untrusted fonts in an enterprise
description: To help protect your company from attacks that may originate from untrusted or attacker controlled font files, we've created the Blocking Untrusted Fonts feature.
ms.localizationpriority: medium
ms.topic: how-to
ms.date: 07/10/2024
---

# Block untrusted fonts in an enterprise

To help protect your company from attacks that may originate from untrusted or attacker-controlled font files, you can block untrusted fonts. Using this feature, you can turn on a global setting that stops your employees from loading untrusted fonts processed using the Graphics Device Interface (GDI) onto your network. Untrusted fonts are any font installed outside of the `%windir%\Fonts` directory. Blocking untrusted fonts helps prevent both remote (web-based or email-based) and local EOP attacks that can happen during the font file-parsing process.

## What does this mean for me?

Blocking untrusted fonts helps improve your network and employee protection against font-processing-related attacks. By default, this feature isn't turned on.

## How does this feature work?

There are three ways to use this feature:

- **On.** Helps stop any font processed using GDI from loading outside of the `%windir%\Fonts` directory. It also turns on event logging.

- **Audit.** Turns on event logging, but doesn't block fonts from loading, regardless of location. The name of the apps that use untrusted fonts appear in your event log.

  > [!NOTE]
  > If you aren't quite ready to deploy this feature into your organization, you can run it in Audit mode to see if not loading untrusted fonts causes any usability or compatibility issues.

- **Exclude apps to load untrusted fonts.** You can exclude specific apps, allowing them to load untrusted fonts, even while this feature is turned on. For instructions, see [Fix apps having problems because of blocked fonts](#fix-apps-having-problems-because-of-blocked-fonts).

## Potential reductions in functionality

After you turn on this feature, your employees might experience reduced functionality when:

- Sending a print job to a remote printer server that uses this feature and where the spooler process hasn't been excluded. In this situation, any fonts that aren't already available in the server's %windir%/Fonts folder won't be used.
- Printing using fonts provided by the installed printer's graphics .dll file, outside of the %windir%/Fonts folder. For more information, see [Introduction to Printer Graphics DLLs](/windows-hardware/drivers/print/introduction-to-printer-graphics-dlls).
- Using first or non-Microsoft apps that use memory-based fonts.
- Using Internet Explorer to look at websites that use embedded fonts. In this situation, the feature blocks the embedded font, causing the website to use a default font. However, not all fonts have all of the characters, so the website might render differently.
- Using desktop Office to look at documents with embedded fonts. In this situation, content shows up using a default font picked by Office.

## Turn on and use the Blocking Untrusted Fonts feature

Use Group Policy or the registry to turn this feature on, off, or to use audit mode.

**To turn on and use the Blocking Untrusted Fonts feature through Group Policy**

1. Open the Group Policy editor (gpedit.msc) and go to `Computer Configuration\Administrative Templates\System\Mitigation Options\Untrusted Font Blocking`.
2. Select **Enabled** to turn on the feature, and then select one of the following **Mitigation Options**:
    - **Block untrusted fonts and log events.** Turns on the feature, blocking untrusted fonts and logging installation attempts to the event log.
    - **Do not block untrusted fonts.** Turns on the feature, but doesn't block untrusted fonts nor does it log installation attempts to the event log.
    - **Log events without blocking untrusted fonts**. Turns on the feature, logging installation attempts to the event log, but not blocking untrusted fonts.
3. Select **OK**.

**To turn on and use the Blocking Untrusted Fonts feature through the registry**

To turn this feature on, off, or to use audit mode:

1. Open the registry editor (regedit.exe) and go to `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Kernel\`.
2. If the **MitigationOptions** key isn't there, right-click and add a new **QWORD (64-bit) Value**, renaming it to **MitigationOptions**.
3. Right select on the **MitigationOptions** key, and then select **Modify**. The **Edit QWORD (64-bit) Value** box opens.
4. Make sure the **Base** option is **Hexadecimal**, and then update the **Value data**, making sure you keep your existing value, like in the important note below:
   - **To turn this feature on.** Type **1000000000000**.
   - **To turn this feature off.** Type **2000000000000**.
   - **To audit with this feature.** Type **3000000000000**.

     > [!IMPORTANT]
     > Your existing **MitigationOptions** values should be saved during your update. For example, if the current value is *1000*, your updated value should be *1000000001000*.

5. Restart your computer.

## View the event log

After you turn on this feature, or start using Audit mode, you can look at your event logs for details.

**To look at your event log**

1. Open the event viewer (eventvwr.exe) and go to **Application and Service Logs/Microsoft/Windows/Win32k/Operational**.
2. Scroll down to **EventID: 260** and review the relevant events.

  **Event Example 1 - MS Word**

  > WINWORD.EXE attempted loading a font that is restricted by font-loading policy.<br>
  > FontType: Memory<br>
  > FontPath:<br>
  > Blocked: true<br>

  > [!NOTE]
  > Because the **FontType** is *Memory*, there's no associated **FontPath**.

  **Event Example 2 - Winlogon**

  > Winlogon.exe attempted loading a font that is restricted by font-loading policy.<br>
  > FontType: File<br>
  > FontPath: `\??\C:\PROGRAM FILES (X86)\COMMON FILES\MICROSOFT SHARED\EQUATION\MTEXTRA.TTF`<br>
  > Blocked: true<br>

  > [!NOTE]
  > Because the **FontType** is *File*, there's also an associated **FontPath**.

  **Event Example 3 - Internet Explorer running in Audit mode**

  > Iexplore.exe attempted loading a font that is restricted by font-loading policy.<br>
  > FontType: Memory<br>
  > FontPath:<br>
  > Blocked: false<br>

  > [!NOTE]
  > In Audit mode, the problem is recorded, but the font isn't blocked.

## Fix apps having problems because of blocked fonts

Your company may still need apps that are having problems because of blocked fonts, so we suggest that you first run this feature in Audit mode to determine which fonts are causing the problems.

After you figure out the problematic fonts, you can try to fix your apps in two ways: by directly installing the fonts into the %windir%/Fonts directory or by excluding the underlying processes and letting the fonts load. As the default solution, we highly recommend that you install the problematic font. Installing fonts is safer than excluding apps because excluded apps can load any font, trusted or untrusted.

**To fix your apps by installing the problematic fonts (recommended)**

On each computer with the app installed, right-click on the font name and select **Install**. The font should automatically install into your `%windir%\Fonts` directory. If it doesn't, you need to manually copy the font files into the **Fonts** directory and run the installation from there.

**To fix your apps by excluding processes**

1.  On each computer with the app installed, open regedit.exe and go to `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\<process_image_name>`. For example, if you want to exclude Microsoft Word processes, you'd use `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\Winword.exe`.
2.  Add other processes that need to be excluded here, and then turn on the Blocking untrusted fonts feature, using the steps in [Turn on and use the Blocking Untrusted Fonts feature](#turn-on-and-use-the-blocking-untrusted-fonts-feature), earlier in this article.
