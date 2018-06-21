---
title: Set up a kiosk or digital signage on Windows 10 Pro, Enterprise, or Education (Windows 10)
description: A single-use device such as a digital sign is easy to set up in Windows 10 for desktop editions (Pro, Enterprise, and Education).
ms.assetid: 428680AE-A05F-43ED-BD59-088024D1BFCC
keywords: ["assigned access", "kiosk", "lockdown", "digital sign", "digital signage"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
author: jdeckerms
ms.author: jdecker
ms.topic: article
ms.localizationpriority: high
ms.date: 06/05/2018
---

# Set up a kiosk or digital signage on Windows 10 Pro, Enterprise, or Education


**Applies to**

-   Windows 10 Pro, Enterprise, and Education



Some desktop devices in an enterprise serve a special purpose, such as a PC in the lobby that customers can use to view your product catalog or a PC displaying visual content as a digital sign. A single-use, kiosk device is easy to set up in Windows 10. (For kiosks that run more than one more app, see [Create a Windows 10 kiosk that runs multiple apps.](lock-down-windows-10-to-specific-apps.md).)



## Choose a method for configuring your kiosks and digitals signs

**Which type of app will your kiosk run?** Your kiosk can run a Universal Windows Platform (UWP) app or a Classic Windows desktop application. When the kiosk account signs in, the kiosk app will launch automatically. If the kiosk app is closed, it will automatically restart.

>[!TIP]
>For **digital signage**, simply select a digital sign player as your kiosk app. You can also use the **Kiosk Browser** app ([new in Windows 10, version 1803)](guidelines-for-assigned-access-app.md#guidelines-for-web-browsers) and configure it to show your online content.

**Which type of user account will be the kiosk account?** The kiosk account can be a local standard user account, a local administrator account, a domain account, or an Azure Active Directory (Azure AD) account, depending on the method that you use to configure the kiosk. 

>[!WARNING]
>For kiosks in public-facing environments with auto sign-in enabled, you should use a user account with least privilege, such as a local standard user account.
>
>Assigned access can be configured via Windows Management Instrumentation (WMI) or configuration service provider (CSP) to run its applications under a domain user or service account, rather than a local account. However, use of domain user or service accounts introduces risks that an attacker subverting the assigned access application might gain access to sensitive domain resources that have been inadvertently left accessible to any domain account. We recommend that customers proceed with caution when using domain accounts with assigned access, and consider the domain resources potentially exposed by the decision to do so.

**Which edition of Windows 10 will the kiosk run?** All of the configuration methods work for Windows 10 Enterprise and Education; some of the methods work for Windows 10 Pro. Kiosk mode is not available on Windows 10 Home. 

### Methods for kiosks and digital signs running a UWP app

Choose this method | For this edition | For this kiosk account type 
--- | --- | ---
[Local settings](#local) (for 1 or a few devices) | Pro, Ent, Edu | Local standard user
[PowerShell](#powershell)  | Pro, Ent, Edu | Local standard user
[Provisioning](#wizard)  | Pro (version 1709), Ent, Edu | Local standard user, Active Directory 
[Intune or other mobile device management (MDM)](#set-up-assigned-access-in-mdm)  | Pro (version 1709), Ent, Edu | Local standard user, Azure AD

### Methods for kiosks and digital signs running a Classic Windows app

Choose this method | For this edition | For this kiosk account type 
--- | --- | ---
[Provisioning](#wizard) | Ent, Edu | Local standard user, Active Directory 
[ShellLauncher](#shelllauncher) | Ent, Edu | Local standard user or administrator, Active Directory, Azure AD





### Other settings to lock down

For a more secure kiosk experience, we recommend that you make the following configuration changes to the device before you configure it as a kiosk:

Recommendation | How to
--- | ---
Replace "blue screen" with blank screen for OS errors   | Add the following registry key as DWORD (32-bit) type with a value of `1`:</br></br>`HKLM\SYSTEM\CurrentControlSet\Control\CrashControl\DisplayDisabled`</br></br>[Learn how to modify the Windows registry](https://go.microsoft.com/fwlink/p/?LinkId=615002)</br></br>You must restart the device after changing the registry.
Put device in **Tablet mode**. | If you want users to be able to use the touch (on screen) keyboard, go to **Settings** &gt; **System** &gt; **Tablet mode** and choose **On.** Do not turn on this setting if users will not interact with the kiosk, such as for a digital sign.
Hide **Ease of access** feature on the logon screen. |     Go to **Control Panel** &gt; **Ease of Access** &gt; **Ease of Access Center**, and turn off all accessibility tools.
Disable the hardware power button. |     Go to **Power Options** &gt; **Choose what the power button does**, change the setting to **Do nothing**, and then **Save changes**.
Remove the power button from the sign-in screen. |     Go to **Computer Configuration** &gt; **Windows Settings** &gt; **Security Settings** &gt; **Local Policies** &gt;**Security Options** &gt; **Shutdown: Allow system to be shut down without having to log on** and select **Disabled.**
Disable the camera. |     Go to **Settings** &gt; **Privacy** &gt; **Camera**, and turn off **Let apps use my camera**.
Turn off app notifications on the lock screen. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Logon\\Turn off app notifications on the lock screen**.
Disable removable media. |     Go to **Group Policy Editor** &gt; **Computer Configuration** &gt; **Administrative Templates\\System\\Device Installation\\Device Installation Restrictions**. Review the policy settings available in **Device Installation Restrictions** for the settings applicable to your situation.</br></br>**NOTE**: To prevent this policy from affecting a member of the Administrators group, in **Device Installation Restrictions**, enable **Allow administrators to override Device Installation Restriction policies**.

In addition to the settings in the table, you may want to set up **automatic logon** for your kiosk device. When your kiosk device restarts, whether from an update or power outage, you can log on the assigned access account manually or you can configure the device to log on to the assigned access account automatically. Make sure that Group Policy settings applied to the device do not prevent automatic logon.


**How to edit the registry to have an account automatically logged on**

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

>[!TIP]
>You can also configure automatic logon [using the Autologon tool from Sysinternals](https://docs.microsoft.com/sysinternals/downloads/autologon).


<span id="local"/>
## Set up a kiosk or digital sign in local Settings

>App type: UWP
>
>OS edition: Windows 10 Pro, Ent, Edu
>
>Account type: Local standard user

You can use **Settings** to quickly configure one or a few devices as a kiosk. (Using **Settings** isn't practical for configuring a lot of devices, but it would work.) When you set up a kiosk (also known as *assigned access*) in **Settings**, you must select a local standard user account. [Learn how to create a local standard user account.](https://support.microsoft.com/help/4026923/windows-create-a-local-user-or-administrator-account-in-windows-10)

When your kiosk is a local device that is not managed by Active Directory or Azure Active Directory, there is a default setting that enables automatic sign-in after a restart. That means that when the device restarts, the last signed-in user will be signed in automatically. If the last signed-in user is the kiosk account, the kiosk app will be launched automatically after the device restarts.

If you want the kiosk account signed in automatically and the kiosk app launched when the device restarts, there is nothing you need to do.

If you do not want the kiosk account signed in automatically when the device restarts, you must change the default setting before you configure the device as a kiosk. Sign in with the account that you will assign as the kiosk account, go to **Settings** > **Accounts** > **Sign-in options**, and toggle the **Use my sign-in info to automatically finish setting up my device after an update or restart** setting to **Off**. After you change the setting, you can apply the kiosk configuration to the device.

![Screenshot of automatic sign-in setting](images/auto-signin.png)

**To set up assigned access in PC settings**

1.  Go to **Start** &gt; **Settings** &gt; **Accounts** &gt; **Other people**.

2.  Choose **Set up assigned access**.

3.  Choose an account.

4.  Choose an app. Only apps that can run above the lock screen will be available in the list of apps to choose from. For more information, see [Guidelines for choosing an app for assigned access](guidelines-for-assigned-access-app.md).

5.  Close **Settings** – your choices are saved automatically, and will be applied the next time that user account logs on.

To remove assigned access, choose **Turn off assigned access and sign out of the selected account**.




<span id="powershell"/>
## Set up a kiosk or digital sign using Windows PowerShell

 
>App type: UWP
>
>OS edition: Windows 10 Pro, Ent, Edu
>
>Account type: Local standard user

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


<span id="wizard" />
## Set up a kiosk or digital sign using a provisioning package

>App type: UWP or Classic Windows
>
>OS edition: Windows 10 Pro (version 1709) for UWP only; Ent, Edu for both app types
>
>Account type: Local standard user, Active Directory 

>[!IMPORTANT]
>When Exchange Active Sync (EAS) password restrictions are active on the device, the autologon feature does not work. This behavior is by design. For more informations, see [How to turn on automatic logon in Windows](https://support.microsoft.com/help/324737/how-to-turn-on-automatic-logon-in-windows).


When you use the **Provision kiosk devices** wizard in Windows Configuration Designer, you can configure the kiosk to run either a Universal Windows app or a Classic Windows application.




[Install Windows Configuration Designer](provisioning-packages/provisioning-install-icd.md), then open Windows Configuration Designer and select **Provision kiosk devices**. After you name your project, and click **Next**, configure the settings as shown in the following table.



<table>
<tr><td  style="width:45%" valign="top">![step one](images/one.png)![set up device](images/set-up-device.png)</br></br>Enable device setup if you want to configure settings on this page.</br></br>**If enabled:**</br></br>Enter a name for the device.</br></br>(Optional) Select a license file to upgrade Windows 10 to a different edition. [See the permitted upgrades.](https://technet.microsoft.com/itpro/windows/deploy/windows-10-edition-upgrades)</br></br>Toggle **Configure devices for shared use** off. This setting optimizes Windows 10 for shared use scenarios and isn't necessary for a kiosk scenario.</br></br>You can also select to remove pre-installed software from the device. </td><td>![device name, upgrade to enterprise, shared use, remove pre-installed software](images/set-up-device-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">![step two](images/two.png)  ![set up network](images/set-up-network.png)</br></br>Enable network setup if you want to configure settings on this page.</br></br>**If enabled:**</br></br>Toggle **On** or **Off** for wireless network connectivity. If you select **On**, enter the SSID, the network type (**Open** or **WPA2-Personal**), and (if **WPA2-Personal**) the password for the wireless network.</td><td>![Enter network SSID and type](images/set-up-network-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">![step three](images/three.png)  ![account management](images/account-management.png)</br></br>Enable account management if you want to configure settings on this page. </br></br>**If enabled:**</br></br>You can enroll the device in Active Directory, enroll in Azure Active Directory, or create a local administrator account on the device</br></br>To enroll the device in Active Directory, enter the credentials for a least-privileged user account to join the device to the domain.</br></br>Before you use a Windows Configuration Designer wizard to configure bulk Azure AD enrollment, [set up Azure AD join in your organization](https://docs.microsoft.com/azure/active-directory/active-directory-azureadjoin-setup). The **maximum number of devices per user** setting in your Azure AD tenant determines how many times the bulk token that you get in the wizard can be used. To enroll the device in Azure AD, select that option and enter a friendly name for the bulk token you will get using the wizard. Set an expiration date for the token (maximum is 30 days from the date you get the token). Click **Get bulk token**. In the **Let's get you signed in** window, enter an account that has permissions to join a device to Azure AD, and then the password. Click **Accept** to give Windows Configuration Designer the necessary permissions.</br></br>**Warning:** You must run Windows Configuration Designer on Windows 10 to configure Azure Active Directory enrollment using any of the wizards.</br></br>To create a local administrator account, select that option and enter a user name and password. </br></br>**Important:** If you create a local account in the provisioning package, you must change the password using the **Settings** app every 42 days. If the password is not changed during that period, the account might be locked out and unable to sign in.  </td><td>![join Active Directory, Azure AD, or create a local admin account](images/account-management-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">![step four](images/four.png) ![add applications](images/add-applications.png)</br></br>You can provision the kiosk app in the **Add applications** step. You can install multiple applications, both Classic Windows (Win32) apps and Universal Windows Platform (UWP) apps, in a provisioning package. The settings in this step vary according to the application that you select. For help with the settings, see [Provision PCs with apps](provisioning-packages/provision-pcs-with-apps.md)</br></br>**Warning:** If you click the plus button to add an application, you must specify an application for the provisioning package to validate. If you click the plus button in error, select any executable file in **Installer Path**, and then a **Cancel** button becomes available, allowing you to complete the provisioning package without an application. </td><td>![add an application](images/add-applications-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">![step five](images/five.png) ![add certificates](images/add-certificates.png)</br></br>To provision the device with a certificate for the kiosk app, click **Add a certificate**. Enter a name for the certificate, and then browse to and select the certificate to be used.</td><td>![add a certificate](images/add-certificates-details.png)</td></tr> 
<tr><td  style="width:45%" valign="top">![step six](images/six.png)  ![Configure kiosk account and app](images/kiosk-account.png)</br></br>You can create a local standard user account that will be used to run the kiosk app. If you toggle **No**, make sure that you have an existing user account to run the kiosk app.</br></br>If you want to create an account, enter the user name and password, and then toggle **Yes** or **No** to automatically sign in the account when the device starts.</br></br>In **Configure the kiosk mode app**, enter the name of the user account that will run the kiosk mode app. Select the type of app to run in kiosk mode, and then enter the path or filename (for a Classic Windows app) or the AUMID (for a Universal Windows app). For a Classic Windows app, you can use the filename if the path to the file is in the PATH environment variable, otherwise the full path is required.</td><td>![Configure kiosk account and app](images/kiosk-account-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">![step seven](images/seven.png)  ![configure kiosk common settings](images/kiosk-common.png)</br></br>On this step, select your options for tablet mode, the user experience on the Welcome and shutdown screens, and the timeout settings.</td><td>![set tablet mode and configure welcome and shutdown and turn off timeout settings](images/kiosk-common-details.png)</td></tr>
<tr><td  style="width:45%" valign="top">  ![finish](images/finish.png)</br></br>You can set a password to protect your provisioning package. You must enter this password when you apply the provisioning package to a device.</td><td>![Protect your package](images/finish-details.png)</td></tr>
</table>


>[!NOTE]
>If you want to use [the advanced editor in Windows Configuration Designer](provisioning-packages/provisioning-create-package.md#configure-settings), specify the user account and app (by AUMID) in **Runtime settings** &gt; **AssignedAccess** &gt; **AssignedAccessSettings**

>[!TIP]
>You can also use [an XML file to configure both multi-app and single-app kiosks.](lock-down-windows-10-to-specific-apps.md)

>[!IMPORTANT]
>When you build a provisioning package, you may include sensitive information in the project files and in the provisioning package (.ppkg) file. Although you have the option to encrypt the .ppkg file, project files are not encrypted. You should store the project files in a secure location and delete the project files when they are no longer needed.



[Learn how to apply a provisioning package.](provisioning-packages/provisioning-apply-package.md)





 



## Set up a kiosk or digital sign in Intune or other MDM service

>App type: UWP 
>
>OS edition: Windows 10 Pro (version 1709), Ent, Edu
>
>Account type: Local standard user, Azure AD

Microsoft Intune and other MDM services enable kiosk configuration through the [AssignedAccess configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/assignedaccess-csp). Assigned Access has a KioskModeApp setting. In the KioskModeApp setting, you enter the user account name and [AUMID](https://docs.microsoft.com/windows-hardware/customize/enterprise/find-the-application-user-model-id-of-an-installed-app) for the app to run in kiosk mode.

The following steps explain how to configure a kiosk in Microsoft Intune. For other MDM services, see the documentation for your provider.

**To configure kiosk in Microsoft Intune**

2. In the Microsoft Azure portal, search for **Intune** or go to **More services** > **Intune**.
3. Select **Device configuration**.
4. Select **Profiles**.
5. Select **Create profile**.
6. Enter a friendly name for the profile.
7. Select **Windows 10 and later** for the platform.
8. Select **Kiosk (Preview)** for the profile type.
9. Enter a friendly name for the kiosk configuration.
10. Select **Kiosk - 1 setting available**.
10. Select **Add** to add a kiosk configuration.
10. Enter a friendly name for the kiosk configuration, and then in **Kiosk Mode**, select **Single full-screen app kiosk**.
10. Select either **Select a managed app** to choose a kiosk app that is managed by Intune, or **Enter UWP app AUMID** to specify the kiosk app by AUMID, and then select the app or enter the AUMID as appropriate.
1. For the user account, select either **Autologon** to create a user account for the kiosk that will sign in automatically, or **Local user account** to configure an existing user account to run the kiosk. **Local user account** can be a local standard user account on the device or an Azure Active Directory account.
14. Select **OK**, and then select **Create**.
18. Assign the profile to a device group to configure the devices in that group as kiosks.


<span id="shelllauncher" />
## Set up a kiosk or digital sign using Shell Launcher 

>App type: Classic Windows
>
>OS edition: Windows 10 Ent, Edu
>
>Account type: Local standard user or administrator, Active Directory, Azure AD

Using Shell Launcher, you can configure a kiosk device that runs a Classic Windows application as the user interface. The application that you specify replaces the default shell (explorer.exe) that usually runs when a user logs on.

>[!NOTE]
>In Windows 10, version 1803, you can configure Shell Launcher using the **ShellLauncher** node of the [Assigned Access CSP](https://docs.microsoft.com/en-us/windows/client-management/mdm/assignedaccess-csp).
>
>You can also configure a kiosk device that runs a Classic Windows application by using the [Provision kiosk devices wizard](#wizard).

>[!WARNING]
>- Windows 10 doesn’t support setting a custom shell prior to OOBE. If you do, you won’t be able to deploy the resulting image.
>- Shell Launcher doesn't support a custom shell with an application that launches a different process and exits. For example, you cannot specify **write.exe** in Shell Launcher. Shell Launcher launches a custom shell and monitors the process to identify when the custom shell exits. **Write.exe** creates a 32-bit wordpad.exe process and exits. Because Shell Launcher is not aware of the newly created wordpad.exe process, Shell Launcher will take action based on the exit code of **Write.exe**, such as restarting the custom shell.  

### Requirements

-   A domain or local user account.

-   A Classic Windows application that is installed for that account. The app can be your own company application or a common app like Internet Explorer.

[See the technical reference for the shell launcher component.](https://go.microsoft.com/fwlink/p/?LinkId=618603)


### Configure Shell Launcher

To set a Classic Windows application as the shell, you first turn on the Shell Launcher feature, and then you can set your custom shell as the default using PowerShell.

**To turn on Shell Launcher in Windows features**

1. Go to Control Panel &gt; **Programs and features** &gt; **Turn Windows features on or off**.

2. Expand **Device Lockdown**.

2. Select **Shell Launcher** and **OK**.

Alternatively, you can turn on Shell Launcher using Windows Configuration Designer in a provisioning package, using `SMISettings > ShellLauncher`, or the Deployment Image Servicing and Management (DISM.exe) tool.

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

## Sign out of assigned access

To exit the assigned access (kiosk) app, press **Ctrl + Alt + Del**, and then sign in using another account. When you press **Ctrl + Alt + Del** to sign out of assigned access, the kiosk app will exit automatically. If you sign in again as the assigned access account or wait for the login screen timeout, the kiosk app will be re-launched. The assigned access user will remain signed in until an admin account opens **Task Manager** > **Users** and signs out the user account.

If you press **Ctrl + Alt + Del** and do not sign in to another account, after a set time, assigned access will resume. The default time is 30 seconds, but you can change that in the following registry key:

**HKEY\_LOCAL\_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Authentication\LogonUI**

To change the default time for assigned access to resume, add *IdleTimeOut* (DWORD) and enter the value data as milliseconds in hexadecimal.

 
## Related topics

- [Set up a kiosk on Windows 10 Mobile or Windows 10 Mobile Enterprise](mobile-devices/set-up-a-kiosk-for-windows-10-for-mobile-edition.md)



