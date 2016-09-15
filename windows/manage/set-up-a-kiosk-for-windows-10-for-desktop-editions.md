---
title: Set up a kiosk on Windows 10 Pro, Enterprise, or Education (Windows 10)
description: A single-use device is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education).
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
keywords: ["assigned access", "kiosk", "lockdown"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerMS
localizationpriority: high
---

# Set up a kiosk on Windows 10 Pro, Enterprise, or Education


**Applies to**

-   Windows 10

>  **Looking for Windows Embedded 8.1 Industry information?** See [Assigned Access]( https://go.microsoft.com/fwlink/p/?LinkId=613653)

A single-use or *kiosk* device is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education). For a kiosk device to run a Universal Windows app, use the **assigned access** feature. For a kiosk device (Windows 10 Enterprise or Education) to run a Classic Windows application, use **Shell Launcher** to set a custom user interface as the shell. To return the device to the regular shell, see [Sign out of assigned access](#sign-out-of-assigned-access).

**Note**  
A Universal Windows app is built on the Universal Windows Platform (UWP), which was first introduced in Windows 8 as the Windows Runtime. A Classic Windows application uses the Classic Windows Platform (CWP) (e.g., COM, Win32, WPF, WinForms, etc.) and is typically launched using an .EXE or .DLL file.

 

## Other settings to lock down


For a more secure kiosk experience, we recommend that you make the following configuration changes to the device:

-   Put device in **Tablet mode**.

    If you want users to be able to use the touch (on screen) keyboard, go to **Settings** &gt; **System** &gt; **Tablet mode** and choose **On.**

-   Hide **Ease of access** feature on the logon screen.

    Go to **Control Panel** &gt; **Ease of Access** &gt; **Ease of Access Center**, and turn off all accessibility tools.

-   Disable the hardware power button.

    Go to **Power Options** &gt; **Choose what the power button does**, change the setting to **Do nothing**, and then **Save changes**.

-   Remove the power button from the sign-in screen.

    Go to **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Local Policies** &gt;**Security Options** &gt; **Shutdown: Allow system to be shut down without having to log on** and select **Disabled.**

-   Disable the camera.

    Go to **Settings** &gt; **Privacy** &gt; **Camera**, and turn off **Let apps use my camera**.

-   Turn off app notifications on the lock screen.

    Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Logon\\Turn off app notifications on the lock screen**.

-   Disable removable media.

    Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Device Installation\\Device Installation Restrictions**. Review the policy settings available in **Device Installation Restrictions** for the settings applicable to your situation.

    **Note**  
    To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**.

     

## <a href="" id="assigned-access-method"></a>Assigned access method for Universal Windows apps


Using assigned access, Windows 10 runs the designated Universal Windows app above the lockscreen, so that the assigned access account has no access to any other functionality on the device. You have these choices for setting up assigned access:

| Method | Account type | Windows 10 edition |
| --- | --- | --- |
| [Use Settings on the PC](#set-up-assigned-access-in-pc-settings) | Local standard | Pro, Enterprise, Education |
| [Apply a mobile device management (MDM) policy](#set-up-assigned-access-in-mdm) | All (domain, local standard, local administrator, etc) | Enterprise, Education |
| [Create a provisioning package using Windows Imaging and Configuration Designer (ICD)](#icd) | All (domain, local standard, local administrator, etc) | Enterprise, Education |
| [Run a PowerShell script](#set-up-assigned-access-using-windows-powershell) | Local standard | Pro, Enterprise, Education |



### Requirements

-   A domain or local user account. 
    
-   A Universal Windows app that is installed or provisioned for that account and is an above lock screen app. For more information, see [Guidelines for choosing an app for assigned access](guidelines-for-assigned-access-app.md). For details on building an above lock screen app, see [Kiosk apps for assigned access: Best practices](https://go.microsoft.com/fwlink/p/?LinkId=708386).

    The app can be your own company app that you have made available in your own app Store. To set up assigned access using MDM or PowerShell, you also need the Application User Model ID (AUMID) for the app. [Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867).

    The Universal Windows app must be able to handle multiple views and cannot launch other apps or dialogs.

**Note**  
Assigned access does not work on a device that is connected to more than one monitor.

 

### Set up assigned access in PC settings

1.  Go to **Start** &gt; **Settings** &gt; **Accounts** &gt; **Other users**.

2.  Choose **Set up assigned access**.

3.  Choose an account.

4.  Choose an app. Only apps that can run above the lock screen will be displayed. For more information, see [Guidelines for choosing an app for assigned access](guidelines-for-assigned-access-app.md).

5.  Close **Settings** – your choices are saved automatically, and will be applied the next time that user account logs on.

To remove assigned access, in step 3, choose **Don't use assigned access**.

### Set up assigned access in MDM

Assigned Access has one setting, KioskModeApp. In the KioskModeApp setting, you enter the user account name and AUMID for the app to run in kiosk mode.

[Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867).

[See the technical reference for the Assigned Access configuration service provider.](https://go.microsoft.com/fwlink/p/?LinkId=626608)

### <a href="" id="icd"></a>Set up assigned access using Windows Imaging and Configuration Designer (ICD)

Use the Windows Imaging and Configuration Designer (ICD) tool included in the Windows Assessment and Deployment Kit (ADK) for Windows 10 to create a provisioning package that configures a device as a kiosk. [Install the ADK.](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

> **Important**
When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.

**Create a provisioning package for a kiosk device**

1.  Open Windows ICD (by default, %windir%\\Program Files (x86)\\Windows Kits\\10\\Assessment and Deployment Kit\\Imaging and Configuration Designer\\x86\\ICD.exe).

2.  Choose **Advanced provisioning**.

3.  Name your project, and click **Next**.

4.  Choose **All Windows desktop editions** and click **Next**.

5.  On **New project**, click **Finish**. The workspace for your package opens.

6.  Expand **Runtime settings** &gt; **AssignedAccess**, and click **AssignedAccessSettings**.

7.  Enter a string to specify the user account and app (by AUMID). For example:

    "Account":"contoso\\\\kiosk","AUMID":"8f82d991-f842-44c3-9a95-521b58fc2084"

8.  On the **File** menu, select **Save.**

9.  On the **Export** menu, select **Provisioning package**.

10. Change **Owner** to **IT Admin**, which will set the precedence of this provisioning package higher than provisioning packages applied to this device from other sources, and then select **Next.**

11. Optional. In the **Provisioning package security** window, you can choose to encrypt the package and enable package signing.

    -   **Enable package encryption** - If you select this option, an auto-generated password will be shown on the screen.

    -   **Enable package signing** - If you select this option, you must select a valid certificate to use for signing the package. You can specify the certificate by clicking **Select** and choosing the certificate you want to use to sign the package.

12. Click **Next** to specify the output location where you want the provisioning package to go when it's built. By default, Windows ICD uses the project folder as the output location.

    Optionally, you can click **Browse** to change the default output location.

13. Click **Next**.

14. Click **Build** to start building the package. The provisioning package doesn't take long to build. The project information is displayed in the build page and the progress bar indicates the build status.

    If you need to cancel the build, click **Cancel**. This cancels the current build process, closes the wizard, and takes you back to the **Customizations Page**.

15. If your build fails, an error message will show up that includes a link to the project folder. You can scan the logs to determine what caused the error. Once you fix the issue, try building the package again.

    If your build is successful, the name of the provisioning package, output directory, and project directory will be shown.

    -   If you choose, you can build the provisioning package again and pick a different path for the output package. To do this, click **Back** to change the output package name and path, and then click **Next** to start another build.
    -   If you are done, click **Finish** to close the wizard and go back to the **Customizations Page**.

**Apply the provisioning package**

1.  Select the provisioning package that you want to apply, double-click the file, and then allow admin privileges.

2.  Consent to allow the package to be installed.

    After you allow the package to be installed, the settings will be applied to the device

[Learn how to apply a provisioning package in audit mode or OOBE.](https://go.microsoft.com/fwlink/p/?LinkID=692012)

### Set up assigned access using Windows PowerShell

You can use any of the following PowerShell cmdlets to set up assigned access on multiple devices. 

To open PowerShell on Windows 10, search for PowerShell and find **Windows PowerShell Desktop app** in the results. Run PowerShell as administrator.

```
Set-AssignedAccess -AppUserModelId <AUMID> -UserName <username>
```

```
Set-AssignedAccess -AppUserModelId <AUMID> -UserSID <usersid>
```

```
Set-AssignedAccess -AppName <CustomApp> -UserName <username>
```

```
Set-AssignedAccess -AppName <CustomApp> -UserSID <usersid>
```

> **Note:** To set up assigned access using `-AppName`, the user account that you specify for assigned access must have logged on at least once. 
[Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867).

[Learn how to get the AppName](https://msdn.microsoft.com/library/windows/hardware/mt620046%28v=vs.85%29.aspx) (see **Parameters**).

[Learn how to get the SID](https://go.microsoft.com/fwlink/p/?LinkId=615517).

To remove assigned access, using PowerShell, run the following cmdlet.

```
Clear-AssignedAccess
```


### Set up automatic logon

When your kiosk device restarts, whether from an update or power outage, you can log on the assigned access account manually or you can configure the device to log on to the assigned access account automatically. Make sure that Group Policy settings applied to the device do not prevent automatic logon.

Edit the registry to have an account automatically logged on.

1.  Open Registry Editor (regedit.exe).

    **Note**  
    If you are not familiar with Registry Editor, [learn how to modify the Windows registry](https://go.microsoft.com/fwlink/p/?LinkId=615002).
  

2.  Go to

    **HKEY\_LOCAL\_MACHINE\SOFTWARE\\Microsoft\WindowsNT\CurrentVersion\Winlogon**

3.  Set the values for the following keys.

    -   *AutoAdminLogon*: set value as **1**.

    -   *DefaultUserName*: set value as the account that you want logged in.

    -   *DefaultPassword*: set value as the password for the account.

       > **Note**  If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** &gt; **String Value**.

    -   *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, do not add this key.

4.  Close Registry Editor. The next time the computer restarts, the account will be logged on automatically.

### Sign out of assigned access

To exit the assigned access (kiosk) app, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the assigned access account or wait for the login screen timeout, the kiosk app will be re-launched. The assigned access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, assigned access will resume. The default time is 30 seconds, but you can change that in the following registry key:

**HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI**

To change the default time for assigned access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

## <a href="" id="local-user-policy"></a>Shell Launcher for Classic Windows applications


Using Shell Launcher, you can configure a kiosk device that runs a Classic Windows application as the user interface. The application that you specify replaces the default shell (explorer.exe) that usually runs when a user logs on.

### Requirements

-   A domain or local user account.

-   A Classic Windows application that is installed for that account. The app can be your own company application or a common app like Internet Explorer.

[See the technical reference for the shell launcher component.](https://go.microsoft.com/fwlink/p/?LinkId=618603)

### Configure Shell Launcher

To set a Classic Windows application as the shell, you first turn on the Shell Launcher feature, and then you can set your custom shell as the default using PowerShell.

**To turn on Shell Launcher in Windows features**

1.  Go to Control Panel &gt; **Programs and Features** &gt; **Turn Windows features on or off**.
2.  Select **Embedded Shell Launcher** and **OK**.

Alternatively, you can turn on Shell Launcher using the Deployment Image Servicing and Management (DISM.exe) tool.

**To turn on Shell Launcher using DISM**

1.  Open a command prompt as an administrator.
2.  Enter the following command.

    ```
    Dism /online /Enable-Feature /all /FeatureName:Client-EmbeddedShellLauncher
    ```

**To set your custom shell**

Modify the following PowerShell script as appropriate. The comments in the sample script explain the purpose of each section and tell you where you will want to change the script for your purposes. Save your script with the extension .ps1, open Windows PowerShell as administrator, and run the script on the kiosk device.

```
# Check if shell launcher license is enabled
function Check-ShellLauncherLicenseEnabled
{
    [string]$source = @"
using System;
using System.Runtime.InteropServices;

static class CheckShellLauncherLicense
{
    const int S_OK = 0;

    public static bool IsShellLauncherLicenseEnabled()
    {
        int enabled = 0;

        if (NativeMethods.SLGetWindowsInformationDWORD("EmbeddedFeature-ShellLauncher-Enabled", out enabled) != S_OK) {
            enabled = 0;
        }
        
        return (enabled != 0);
    }

    static class NativeMethods
    {
        [DllImport("Slc.dll")]
        internal static extern int SLGetWindowsInformationDWORD([MarshalAs(UnmanagedType.LPWStr)]string valueName, out int value);
    }

}
"@

    $type = Add-Type -TypeDefinition $source -PassThru

    return $type[0]::IsShellLauncherLicenseEnabled()
}

[bool]$result = $false

$result = Check-ShellLauncherLicenseEnabled
"`nShell Launcher license enabled is set to " + $result
if (-not($result))
{
    "`nThis device doesn't have required license to use Shell Launcher"
    exit
}

$COMPUTER = "localhost"
$NAMESPACE = "root\standardcimv2\embedded"

# Create a handle to the class instance so we can call the static methods.
try {
    $ShellLauncherClass = [wmiclass]"\\$COMPUTER\${NAMESPACE}:WESL_UserSetting"
    } catch [Exception] {
    write-host $_.Exception.Message; 
    write-host "Make sure Shell Launcher feature is enabled"
    exit
    }


# This well-known security identifier (SID) corresponds to the BUILTIN\Administrators group.

$Admins_SID = "S-1-5-32-544"

# Create a function to retrieve the SID for a user account on a machine.

function Get-UsernameSID($AccountName) {

    $NTUserObject = New-Object System.Security.Principal.NTAccount($AccountName)
    $NTUserSID = $NTUserObject.Translate([System.Security.Principal.SecurityIdentifier])

    return $NTUserSID.Value
    
}

# Get the SID for a user account named "Cashier". Rename "Cashier" to an existing account on your system to test this script.

$Cashier_SID = Get-UsernameSID("Cashier")

# Define actions to take when the shell program exits.

$restart_shell = 0
$restart_device = 1
$shutdown_device = 2

# Examples. You can change these examples to use the program that you want to use as the shell.

# This example sets the command prompt as the default shell, and restarts the device if the command prompt is closed. 

$ShellLauncherClass.SetDefaultShell("cmd.exe", $restart_device)

# Display the default shell to verify that it was added correctly.

$DefaultShellObject = $ShellLauncherClass.GetDefaultShell()

"`nDefault Shell is set to " + $DefaultShellObject.Shell + " and the default action is set to " + $DefaultShellObject.defaultaction

# Set Internet Explorer as the shell for "Cashier", and restart the machine if Internet Explorer is closed.

$ShellLauncherClass.SetCustomShell($Cashier_SID, "c:\program files\internet explorer\iexplore.exe www.microsoft.com", ($null), ($null), $restart_shell)

# Set Explorer as the shell for administrators.

$ShellLauncherClass.SetCustomShell($Admins_SID, "explorer.exe")

# View all the custom shells defined.

"`nCurrent settings for custom shells:"
Get-WmiObject -namespace $NAMESPACE -computer $COMPUTER -class WESL_UserSetting | Select Sid, Shell, DefaultAction

# Enable Shell Launcher

$ShellLauncherClass.SetEnabled($TRUE)

$IsShellLauncherEnabled = $ShellLauncherClass.IsEnabled()

"`nEnabled is set to " + $IsShellLauncherEnabled.Enabled

# Remove the new custom shells.

$ShellLauncherClass.RemoveCustomShell($Admins_SID)

$ShellLauncherClass.RemoveCustomShell($Cashier_SID)

# Disable Shell Launcher

$ShellLauncherClass.SetEnabled($FALSE)

$IsShellLauncherEnabled = $ShellLauncherClass.IsEnabled()

"`nEnabled is set to " + $IsShellLauncherEnabled.Enabled
```

## Related topics


[Set up a device for anyone to use](set-up-a-device-for-anyone-to-use.md)

[Set up a kiosk for Windows 10 for mobile edition](set-up-a-kiosk-for-windows-10-for-mobile-edition.md)

[Manage and update Windows 10](index.md)

 

 





