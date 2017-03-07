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

A single-use or *kiosk* device is easy to set up in Windows 10 for desktop editions. 

- Use the [Provision kiosk devices wizard](#wizard) in Windows Configuration Designer to create a provisioning package that configures a kiosk device running either a Universal Windows app or a Classic Windows application (Windows 10 Enterprise or Education only).

    or
    
- For a kiosk device to run a Universal Windows app, use the [assigned access](#assigned-access) feature (Windows 10 Pro, Enterprise, or Education). 

    or
    
- For a kiosk device to run a Classic Windows application, use [Shell Launcher](#shell-launcher) to set a custom user interface as the shell (Windows 10 Enterprise or Education only). 

To return the device to the regular shell, see [Sign out of assigned access](#sign-out-of-assigned-access).

>[!NOTE]
>A Universal Windows app is built on the Universal Windows Platform (UWP), which was first introduced in Windows 8 as the Windows Runtime. A Classic Windows application uses the Classic Windows Platform (CWP) (e.g., COM, Win32, WPF, WinForms, etc.) and is typically launched using an .EXE or .DLL file.

 



<span id="wizard" />
## Set up a kiosk using Windows Configuration Designer

When you use the **Provision kiosk devices** wizard in Windows Configuration Designer, you can configure the kiosk to run either a Universal Windows app or a Classic Windows application.

>[!IMPORTANT]
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.


[Install Windows Configuration Designer](provisioning-install-icd.md), then open Windows Configuration Designer and select **Provision kiosk devices**. After you name your project, and click **Next**, configure the settings as shown in the following table.



<table>
<tr><td valign="top">![step one](images/one.png)![set up device](images/set-up-device.png)</br></br>Enable device setup if you want to configure settings on this page.</br></br>**If enabled:**</br></br>Enter a name for the device.</br></br>(Optional) Select a license file to upgrade Windows 10 to a different edition. [See the permitted upgrades.](https://technet.microsoft.com/itpro/windows/deploy/windows-10-edition-upgrades)</br></br>Toggle **Configure devices for shared use** off. This setting optimizes Windows 10 for shared use scenarios and isn't necessary for a kiosk scenario.</br></br>You can also select to remove pre-installed software from the device. </td><td>![device name, upgrade to enterprise, shared use, remove pre-installed software](images/set-up-device-details.png)</td></tr>
<tr><td valign="top">![step two](images/two.png)  ![set up network](images/set-up-network.png)</br></br>Enable network setup if you want to configure settings on this page.</br></br>**If enabled:**</br></br>Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.</td><td>![Enter network SSID and type](images/set-up-network-details.png)</td></tr>
<tr><td valign="top">![step three](images/three.png)  ![account management](images/account-management.png)</br></br>Enable account management if you want to configure settings on this page. </br></br>**If enabled:**</br></br>You can enroll the device in Active Directory, enroll in Azure Active Directory, or create a local administrator account on the device</br></br>To enroll the device in Active Directory, enter the credentials for a least-privileged user account to join the device to the domain.</br></br>Before you use a Windows Configuration Designer wizard to configure bulk Azure AD enrollment, [set up Azure AD join in your organization](https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup). The **maximum number of devices per user** setting in your Azure AD tenant determines how many times the bulk token that you get in the wizard can be used. To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. Set an expiration date for the token (maximum is 30 days from the date you get the token). Click **Get bulk token** (then what?)</br></br>To create a local administrator account, select that option and enter a user name and password. </br></br>**Important:** If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in.  </td><td>![join Active Directory, Azure AD, or create a local admin account](images/account-management-details.png)</td></tr>
<tr><td valign="top">![step four](images/four.png) ![add applications](images/add-applications.png)</br></br>You can provision the kiosk app in the **Add applications** step. You can install multiple applications, both Classic Windows (Win32) apps and Universal Windows Platform (UWP) apps, in a provisioning package. The settings in this step vary according to the application that you select. For help with the settings, see [Provision PCs with apps](provision-pcs-with-apps.md). </td><td>![add an application](images/add-applications-details.png)</td></tr>
<tr><td valign="top">![step five](images/five.png) ![add certificates](images/add-certificates.png)</br></br>To provision the device with a certificate for the kiosk app, click **Add a certificate**. Enter a name for the certificate, and then browse to and select the certificate to be used.</td><td>![add a certificate](images/add-certificates-details.png)</td></tr> 
<tr><td valign="top">![step six](images/six.png)  ![Configure kiosk account and app](images/kiosk-account.png)</br></br>You can create a local standard user account that will be used to run the kiosk app. If you toggle **No**, make sure that you have an existing user account to run the kiosk app.</br></br>If you want to create an account, enter the user name and password, and then toggle **Yes** or **No** to automatically sign in the account when the device starts.</br></br>In **Configure the kiosk mode app**, enter the name of the user account that will run the kiosk mode app. Select the type of app to run in kiosk mode, and then enter the path or filename (for a Classic Windows app) or the AUMID (for a Universal Windows app).</td><td>![Configure kiosk account and app](images/kiosk-account-details.png)</td></tr>
<tr><td valign="top">![step seven](images/seven.png)  ![configure kiosk common settings](images/kiosk-common.png)</br></br>On this step, select your options for tablet mode, the user experience on the Welcome and shutdown screens, and the timeout settings.</td><td>![set tablet mode and configure welcome and shutdown and turn off timeout settings](images/kiosk-common-details.png)</td></tr>
<tr><td valign="top">  ![finish](images/finish.png)</br></br>You can set a password to protect your provisioning package. You must enter this password when you apply the provisioning package to a device.</td><td>![Protect your package](images/finish-details.png)</td></tr>
</table>


>[!NOTE]
>If you want to use the advanced editor in Windows Configuration Designer, specify the user account and app (by AUMID) in **Runtime settings** &gt; **AssignedAccess** &gt; **AssignedAccessSettings**





[Learn how to apply a provisioning package.](provisioning-apply-package.md)


     
<span id="assigned-access" />
## Assigned access method for Universal Windows apps


Using assigned access, Windows 10 runs the designated Universal Windows app above the lockscreen, so that the assigned access account has no access to any other functionality on the device. You have these choices for setting up assigned access:

| Method | Account type | Windows 10 edition |
| --- | --- | --- |
| [Use Settings on the PC](#set-up-assigned-access-in-pc-settings) | Local standard | Pro, Enterprise, Education |
| [Apply a mobile device management (MDM) policy](#set-up-assigned-access-in-mdm) | All (domain, local standard, local administrator, etc) | Enterprise, Education |
| [Create a provisioning package using Windows Configuration Designer](#wizard) | All (domain, local standard, local administrator, etc) | Enterprise, Education |
| [Run a PowerShell script](#set-up-assigned-access-using-windows-powershell) | Local standard | Pro, Enterprise, Education |



### Requirements

-   A domain or local user account. 
    
-   A Universal Windows app that is installed or provisioned for that account and is an above lock screen app. For more information, see [Guidelines for choosing an app for assigned access](guidelines-for-assigned-access-app.md). For details on building an above lock screen app, see [Kiosk apps for assigned access: Best practices](https://go.microsoft.com/fwlink/p/?LinkId=708386).

    The app can be your own company app that you have made available in your own app Store. To set up assigned access using MDM or PowerShell, you also need the Application User Model ID (AUMID) for the app. [Learn how to get the AUMID](https://go.microsoft.com/fwlink/p/?LinkId=614867).

    The Universal Windows app must be able to handle multiple views and cannot launch other apps or dialogs.

>[!NOTE]  
>Assigned access does not work on a device that is connected to more than one monitor.

 

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

<sp id="set-up-assigned-access-wcd" />



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

> [!NOTE]
> To set up assigned access using `-AppName`, the user account that you specify for assigned access must have logged on at least once. 

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

    >[!NOTE]  
    >If you are not familiar with Registry Editor, [learn how to modify the Windows registry](https://go.microsoft.com/fwlink/p/?LinkId=615002).
  

2.  Go to

    **HKEY\_LOCAL\_MACHINE\SOFTWARE\\Microsoft\WindowsNT\CurrentVersion\Winlogon**

3.  Set the values for the following keys.

    -   *AutoAdminLogon*: set value as **1**.

    -   *DefaultUserName*: set value as the account that you want logged in.

    -   *DefaultPassword*: set value as the password for the account.

       > [!NOTE]
       > If *DefaultUserName* and *DefaultPassword* aren't there, add them as **New** &gt; **String Value**.

    -   *DefaultDomainName*: set value for domain, only for domain accounts. For local accounts, do not add this key.

4.  Close Registry Editor. The next time the computer restarts, the account will be logged on automatically.

### Sign out of assigned access

To exit the assigned access (kiosk) app, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the assigned access account or wait for the login screen timeout, the kiosk app will be re-launched. The assigned access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, assigned access will resume. The default time is 30 seconds, but you can change that in the following registry key:

**HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI**

To change the default time for assigned access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

<span id="shell-launcher" />
## Shell Launcher for Classic Windows applications


Using Shell Launcher, you can configure a kiosk device that runs a Classic Windows application as the user interface. The application that you specify replaces the default shell (explorer.exe) that usually runs when a user logs on.

>[!NOTE]
>You can also configure a kiosk device that runs a Classic Windows application by using the [Provision kiosk devices wizard](#wizard).

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

    >[!NOTE]  
    >To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**.

 





