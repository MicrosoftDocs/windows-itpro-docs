---
title: SMISettings (Windows 10)
description: This section describes the SMISettings settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 03/30/2018
ms.reviewer: 
manager: dansimp
---

# SMISettings (Windows Configuration Designer reference)

Use SMISettings settings to customize the device with custom shell, suppress Windows UI during boot and sign-in, and block or allow specific keys.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X  |  |  |  |  |

## All settings in SMISettings

The following table describes the settings in SMISettings. Some settings have additional details in sections after the table.

| Setting | Value | Description |
| --- | --- | --- |
| AutoLogon | Enable</br>Domain name</br>Password</br>UserName | Allows automatic sign-in at startup so that the user does not need to enter a user name and password. |
| BrandingNeutral | See [BrandingNeutral values](#brandingneutral-values)  | Specifies which UI elements display on the Welcome screen. |
| CrashDumpEnabled | See [CrashDumpEnabled values](#crashdumpenabled-values)  | Specifies the type of information to be saved in the event of a crash. |
| DisableBootMenu | True or false | Disables the F8 and F10 keys during startup to prevent access to the **Advanced Startup Options** menu. |
| DisplayDisabled | True or false | Configures the device to display a blank screen when the OS encounters an error that it cannot recover from.  |
| HideAllBootUI | True or false | Suppresses all Windows UI elements (logo, status indicator, and status message) during startup. |
| HideAutologonUI | True or false | Hides the Welcome screen when automatic sign-in (AutoLogon) is enabled. |
| HideBootLogo | True or false | Suppresses the default Windows logo that displays during the OS loading phase. |
| HideBootStatusIndicator | True or false | Suppresses the status indicator that displays during the OS loading phase. |
| HideBootStatusMessages | True or false | Suppresses the startup status text that displays during the OS loading phase. |
| HideFirstLogonAnimation | True or false | Disable the animation during the first sign-in.  |
| KeyboardFilter | See [KeyboardFilter settings](#keyboardfilter-settings) | Use these settings to configure devices to suppress key presses or key combinations. |
| NoLockScreen | True or false | Disables the lock screen functionality and UI elements  |
| ShellLauncher | See [ShellLauncher settings](#shelllauncher-settings) | Settings used to specify the application or executable to use as the default custom shell. |
| UIVerbosityLevel | Suppress or do not suppress | Disables the Windows status messages during device startup, sign-in, and shut down. |

## BrandingNeutral values

The following table shows the possible values. You can combine these values using bitwise exclusive-OR logic to disable multiple Welcome screen UI elements.

The default value is **17**, which disables all Welcome screen UI elements and the Switch user button.

| Value | Description |
| --- | --- |
| 1 | Disables all Welcome screen UI elements |
| 2 | Disables the Power button |
| 4 | Disables the Language button |
| 8 | Disables the Ease of access button |
| 16 | Disables the Switch user button |
| 32 | Disables the blocked shutdown resolver (BSDR) screen so that restarting or shutting down the system causes the OS to immediately force close any applications that are blocking system shut down. No UI is displayed and users are not given a chance to cancel the shutdown process. This can result in a loss of data if any open applications have unsaved data. |
 
## CrashDumpEnabled values

Contains an integer that specifies the type of information to capture in a dump (.dmp) file that is generated when the system stops unexpectedly.

The .dmp file is typically saved in %SystemRoot% as Memory.dmp.

Set CrashDumpEnabled to one of the following values:

| Value | Description |
| --- | --- |
| 1 | Records all the contents of system memory. This dump file may contain data from processes that were running when the information was collected. |
| 2 | Records only the kernel memory. This dump file includes only memory that is allocated to the kernel, kernel-mode drivers, and other kernel-mode programs. It does not include unallocated memory or any memory that is allocated to user-mode programs.</br></br>For most purposes, this kind of dump file is the most useful because it is significantly smaller than the complete memory dump file, but it contains information that is most likely to have been involved in the issue.</br></br>If a second problem occurs, the dump file is overwritten with new information. |
| 3 | Records the smallest amount of useful information that may help identify why the device stopped unexpectedly. This type of dump file includes the following information:</br></br>- A list of loaded drivers</br></br>- The processor context (PRCB) for the processor that stopped</br></br>- The process information and kernel context (EPROCESS) for the process that stopped</br></br>- The process information and kernel context (ETHREAD) for the thread that stopped</br></br>- The kernel-mode call stack for the thread that stopped</br></br></br>This kind of dump file can be useful when space is limited. However, because of the limited information included, errors that were not directly caused by the thread that was running at the time of the problem may not be discovered by analyzing this file.</br></br>The date is encoded in the file name. If a second problem occurs, the previous file is preserved and the new file is given a distinct name. A list of all small memory dump files is kept in the %SystemRoot%\Minidump folder. |
| 4 | Records the smallest amount of useful information. This value produces the same results as entering a value of 3. |
| 7 | Records only the kernel memory. This value produces the same results as entering a value of 2. This is the default value. |
| Any other value | Disables crash dump and does not record anything. |
 
## KeyboardFilter settings

You can use KeyboardFilter to suppress undesirable key presses or key combinations. KeyboardFilter works with physical keyboards, the Windows on-screen keyboard, and the touch keyboard. 

When you **enable** KeyboardFilter, a number of other settings become available for configuration.

| Setting | Value | Description |
| --- | --- | --- |
| CustomKeyFilters | Allow or block | Add your own key filters to meet any special requirements that you may have that are not included in the predefined key filters. </br></br>Enter a custom key combination in **CustomKeyFilter**, and then select it to allow or block it. The format to add custom filter combinations is "Alt+F9." This also appears as the CustomKey name, which is specified without "+". For more information, see [WEKF_CustomKey](https://docs.microsoft.com/windows-hardware/customize/enterprise/wekf-customkey). |
| CustomScancodeFilters  | Allow or block | Blocks the list of custom scan codes. When a key is pressed on a physical keyboard, the keyboard sends a scan code to the keyboard driver. The driver then sends the scan code to the OS and the OS converts the scan code into a virtual key based on the current active layout.</br></br>Enter a custom scancode in **CustomScancodeFilter**, and then select it to allow or block it. For more information, see [WEKF_Scancode](https://docs.microsoft.com/windows-hardware/customize/enterprise/wekf-scancode). |
| DisableKeyboardFilterForAdministrators  | True or false | Disables the keyboard filter for administrators. |
| ForceOffAccessibility  | True or false | Disables all Ease of Access features and prevents users from enabling them.  |
| PredefinedKeyFilters  | Allow or block | Specifies the list of predefined keys. For each key, the value will default to **Allow**. Specifying **Block** will suppress the key combination.  |

[Learn more about using keyboard filters.](https://docs.microsoft.com/windows-hardware/customize/enterprise/keyboardfilter)

## ShellLauncher settings

Use ShellLauncher to specify the application or executable to use as the default custom shell. One use of ShellLauncher is to [create a kiosk (fixed-purpose) device running a Windows desktop application](https://docs.microsoft.com/windows/configuration/set-up-a-kiosk-for-windows-10-for-desktop-editions#shell-launcher-for-classic-windows-applications).

>[!WARNING]
>Windows 10 doesn’t support setting a custom shell prior to OOBE. If you do, you won’t be able to deploy the resulting image.

You can also configure ShellLauncher to launch different shell applications for different users or user groups.

>[!IMPORTANT]
>You may specify any executable file to be the default shell except C:\Windows\System32\Eshell.exe. Using Eshell.exe as the default shell will result in a blank screen after a user signs in.
>
>You cannot use ShellLauncher to launch a Windows app as a custom shell. However, you can use Windows 10 application launcher to launch a Windows app at startup.

ShellLauncher processes the Run and RunOnce registry keys before starting the custom shell, so your custom shell doesn't need to handle the automatic startup of other applications or services. ShellLauncher also handles the behavior of the system when your custom shell exits. You can configure the shell exit behavior if the default behavior does not meet your needs.

>[!IMPORTANT]
>A custom shell is launched with the same level of user rights as the account that is signed in. This means that a user with administrator rights can perform any system action that requires administrator rights, including launching other applications with administrator rights, while a user without administrator rights cannot. If your shell application requires administrator rights and needs to be elevated, and User Account Control (UAC) is present on your device, you must disable UAC in order for ShellLauncher to launch the shell application.
