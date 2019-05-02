---
title: Microsoft Defender ATP for Mac
description: Describes how to install and use Microsoft Defender ATP for Mac.
keywords: microsoft, defender, atp, mac, installation, deploy, uninstallation, intune, jamf, macos, mojave, high sierra, sierra
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
ms.topic: conceptual
---

# Microsoft Defender ATP for Mac

>[!IMPORTANT]
>Some information relates to prereleased product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.

This topic describes how to install and use Microsoft Defender ATP for Mac. It supports the preview program and the information here is subject to change. 
Microsoft Defender ATP for Mac is not yet widely available, and this topic only applies to enterprise customers who have been accepted into the preview program. 

## What’s new in the public preview

- Fully accessible
- Various bug fixes
- Improved performance
- Improved user experience
- Improved threat handling
- Localized for 37 languages
- Improved anti-tampering protections
- Feedback and samples can be submitted via the GUI.
- Product health can be queried via Jamf or the command line.
- Reduced delay for Mac devices to appear in the ATP console, following deployment.
- Admins can set their cloud preference for any location, not just those in the US.


## Prerequisites
You should have beginner-level experience in macOS and BASH scripting. You must have administrative privileges on the machine.

You should also have access to Windows Defender Security Center.

### System Requirements
Microsoft Defender ATP for Mac system requirements:
- macOS version: 10.14 (Mojave), 10.13 (High Sierra), 10.12 (Sierra)
- Disk space during preview: 1GB 

After you've enabled the service, you may need to configure your network or firewall to allow outbound connections between it and your endpoints.

The following table lists the services and their associated URLs that your network must be able to connect to. You should ensure there are no firewall or network filtering rules that would deny access to these URLs, or you may need to create an **allow** rule specifically for them:

| Service        | Description                          | URL                                                                  |
| -------------- |:------------------------------------:| --------------------------------------------------------------------:|
| ATP            | Advanced threat protection service   | `https://x.cp.wd.microsoft.com/`, `https://*.x.cp.wd.microsoft.com/` |

To test that a connection is not blocked, open `https://x.cp.wd.microsoft.com/api/report` and `https://wu-cdn.x.cp.wd.microsoft.com/` in a browser, or run the following command in Terminal:

```
    mavel-mojave:~ testuser$ curl 'https://x.cp.wd.microsoft.com/api/report'
    OK
```

We recommend to keep [System Integrity Protection](https://support.apple.com/en-us/HT204899) ([Wiki](https://en.wikipedia.org/wiki/System_Integrity_Protection)) enabled (default setting) on client machines. 
SIP is a built-in macOS security feature that prevents low-level tampering with the OS.

## Installation and configuration overview
There are various methods and deployment tools that you can use to install and configure Microsoft Defender ATP for Mac. 
In general you'll need to take the following steps:
  - Ensure you have a Windows Defender ATP subscription and have access to the Windows Defender ATP Portal
  - Deploy Microsoft Defender ATP for Mac using one of the following deployment methods:
    * [Microsoft Intune based deployment](#microsoft-intune-based-deployment)
    * [JAMF based deployment](#jamf-based-deployment)
    * [Manual deployment](#manual-deployment)

## Microsoft Intune based deployment

### Download installation and onboarding packages
Download the installation and onboarding packages from Windows Defender Security Center:
1.  In Windows Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2.  In Section 1 of the page, set operating system to **Linux, macOS, iOS or Android** and Deployment method to **Mobile Device Management / Microsoft Intune**.
3.  In Section 2 of the page, select **Download installation package**. Save it as wdav.pkg to a local directory.
4.  In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.
5.  Download IntuneAppUtil from https://docs.microsoft.com/en-us/intune/lob-apps-macos.

    ![Windows Defender Security Center screenshot](images/MDATP_2_IntuneAppUtil.png)

6. From a command prompt, verify that you have the three files. 
    Extract the contents of the .zip files:
    
    ```
    mavel-macmini:Downloads test$ ls -l
    total 721688
    -rw-r--r--  1 test  staff     269280 Mar 15 11:25 IntuneAppUtil
    -rw-r--r--  1 test  staff      11821 Mar 15 09:23 WindowsDefenderATPOnboardingPackage.zip
    -rw-r--r--  1 test  staff  354531845 Mar 13 08:57 wdav.pkg
    mavel-macmini:Downloads test$ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    warning:  WindowsDefenderATPOnboardingPackage.zip appears to use backslashes as path separators
      inflating: intune/kext.xml
      inflating: intune/WindowsDefenderATPOnboarding.xml
      inflating: jamf/WindowsDefenderATPOnboarding.plist
    mavel-macmini:Downloads test$
    ```
7.  Make IntuneAppUtil an executable:

    ```mavel-macmini:Downloads test$ chmod +x IntuneAppUtil```

8. Create the wdav.pkg.intunemac package from wdav.pkg:

    ```
    mavel-macmini:Downloads test$ ./IntuneAppUtil -c wdav.pkg -o . -i "com.microsoft.wdav" -n "1.0.0"
    Microsoft Intune Application Utility for Mac OS X
    Version: 1.0.0.0
    Copyright 2018 Microsoft Corporation

    Creating intunemac file for /Users/test/Downloads/wdav.pkg
    Composing the intunemac file output
    Output written to ./wdav.pkg.intunemac.

    IntuneAppUtil successfully processed "wdav.pkg",
    to deploy refer to the product documentation.
    ```

### Client Machine Setup
You need no special provisioning for a Mac machine beyond a standard [Company Portal installation](https://docs.microsoft.com/en-us/intune-user-help/enroll-your-device-in-intune-macos-cp).

1. You'll be asked to confirm device management.

![Confirm device management screenshot](images/MDATP_3_ConfirmDeviceMgmt.png)

Select Open System Preferences, locate Management Profile on the list and select the **Approve...** button. Your Management Profile would be displayed as **Verified**:

![Management profile screenshot](images/MDATP_4_ManagementProfile.png)

2. Select the **Continue** button and complete the enrollment.

You can enroll additional machines. Optionally, you can do it later, after system configuration and application package are provisioned.

3. In Intune, open the **Manage > Devices > All devices** blade. You'll see your machine:

![Add Devices screenshot](images/MDATP_5_allDevices.png)

### Create System Configuration profiles
1.  In Intune open the **Manage > Device configuration** blade. Select **Manage > Profiles > Create Profile**.
2.  Choose a name for the profile. Change **Platform=macOS**, **Profile type=Custom**. Select **Configure**.
3.  Open the configuration profile and upload intune/kext.xml. This file was created during the Generate settings step above.
4.  Select **OK**.

    ![System configuration profiles screenshot](images/MDATP_6_SystemConfigurationProfiles.png)

5.  Select **Manage > Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.
7.  Repeat these steps with the second profile.  
8.  Create Profile one more time, give it a name, upload the intune/WindowsDefenderATPOnboarding.xml file. 
9.  Select **Manage > Assignments**.  In the Include tab, select **Assign to All Users & All devices**.

After Intune changes are propagated to the enrolled machines, you'll see it on the **Monitor > Device status** blade:

![System configuration profiles screenshot](images/MDATP_7_DeviceStatusBlade.png)

### Publish application

1.  In Intune, open the **Manage > Client apps** blade. Select **Apps > Add**.
2.  Select **App type=Other/Line-of-business app**.
3.  Select **file=wdav.pkg.intunemac**. Select **OK** to upload.
4.  Select **Configure** and add the required information.
5.  Use **macOS Sierra 10.12** as the minimum OS. Other settings can be any other value.

    ![Device status blade screenshot](images/MDATP_8_IntuneAppInfo.png)

6. Select **OK** and **Add**.
 
    ![Device status blade screenshot](images/MDATP_9_IntunePkgInfo.png)

7. It will take a while to upload the package. After it's done, select the name and then go to **Assignments** and **Add group**.

    ![Client apps screenshot](images/MDATP_10_ClientApps.png)

8. Change **Assignment type=Required**.
9. Select **Included Groups**. Select **Make this app required for all devices=Yes**. Select **Select group to include** and add a group that contains the users you want to target. Select **OK** and **Save**.

    ![Intune assignments info screenshot](images/MDATP_11_Assignments.png)

10. After some time the application will be published to all enrolled machines. You'll see it on the **Monitor > Device** install status blade:

    ![Intune device status screenshot](images/MDATP_12_DeviceInstall.png)

### Verify client machine state
1.  After the configuration profiles are deployed to your machines, on your Mac device, open **System Preferences  > Profiles**.

    ![System Preferences screenshot](images/MDATP_13_SystemPreferences.png)
    ![System Preferences Profiles screenshot](images/MDATP_14_SystemPreferencesProfiles.png)

2. Verify the three profiles listed there:
    ![Profiles screenshot](images/MDATP_15_ManagementProfileConfig.png)

3.  The **Management Profile** should be the Intune system profile.
4.  wdav-config and wdav-kext are system configuration profiles that we added in Intune.
5.  You should also see the Microsoft Defender icon in the top-right corner:

    ![Microsoft Defender icon in status bar screenshot](images/MDATP_Icon_Bar.png)

## JAMF based deployment
### Prerequsites
You need to be familiar with JAMF administration tasks, have a JAMF tenant, and know how to deploy packages. This includes a properly configured distribution point. JAMF has many alternative ways to complete the same task. These instructions provide you an example for most common processes. Your organization might use a different workflow. 


### Download installation and onboarding packages
Download the installation and onboarding packages from Windows Defender Security Center:
1.  In Windows Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2.  In Section 1 of the page, set operating system to **Linux, macOS, iOS or Android** and Deployment method to **Mobile Device Management / Microsoft Intune**.
3.  In Section 2 of the page, select **Download installation package**. Save it as wdav.pkg to a local directory.
4.  In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.

    ![Windows Defender Security Center screenshot](images/MDATP_2_IntuneAppUtil.png)

5. From a command prompt, verify that you have the two files. 
    Extract the contents of the .zip files:
    
    ```
    mavel-macmini:Downloads test$ ls -l
    total 721160
    -rw-r--r--  1 test  staff      11821 Mar 15 09:23 WindowsDefenderATPOnboardingPackage.zip
    -rw-r--r--  1 test  staff  354531845 Mar 13 08:57 wdav.pkg
    mavel-macmini:Downloads test$ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    warning:  WindowsDefenderATPOnboardingPackage.zip appears to use backslashes as path separators
    inflating: intune/kext.xml
     inflating: intune/WindowsDefenderATPOnboarding.xml
     inflating: jamf/WindowsDefenderATPOnboarding.plist
    mavel-macmini:Downloads test$
    ``` 

### Create JAMF Policies
You need to create a configuration profile and a policy to start deploying Microsoft Defender ATP for Mac to client machines.

#### Configuration Profile
The configuration profile contains one custom settings payload that includes:

- Microsoft Defender ATP for Mac onboarding information 
- Approved Kernel Extensions payload to enable the Microsoft kernel driver to run


1. Upload jamf/WindowsDefenderATPOnboarding.plist as the Property List File.

    >[!NOTE]
    > You must use exactly "com.microsoft.wdav.atp" as the Preference Domain.

    ![Configuration profile screenshot](images/MDATP_16_PreferenceDomain.png)

#### Approved Kernel Extension

To approve the kernel extension:
1.  In **Computers > Configuration Profiles** select **Options > Approved Kernel Extensions**.
2.  Use **UBF8T346G9** for Team Id.

![Approved kernel extensions screenshot](images/MDATP_17_approvedKernelExtensions.png)

#### Configuration Profile's Scope 
Configure the appropriate scope to specify the machines that will receive this configuration profile.

Open Computers -> Configuration Profiles, select **Scope > Targets**. Select the appropriate Target computers. 

![Configuration profile scope screenshot](images/MDATP_18_ConfigurationProfilesScope.png)

Save the **Configuration Profile**.

Use the **Logs** tab to monitor deployment status for each enrolled machine.

#### Package
1. Create a package in **Settings > Computer Management > Packages**.

    ![Computer management packages screenshot](images/MDATP_19_MicrosoftDefenderWDAVPKG.png)

2. Upload wdav.pkg to the Distribution Point. 
3. In the **filename** field, enter the name of the package. For example, wdav.pkg.

#### Policy
Your policy should contain a single package for Microsoft Defender.

![Microsoft Defender packages screenshot](images/MDATP_20_MicrosoftDefenderPackages.png)

Configure the appropriate scope to specify the computers that will receive this policy.

After you save the Configuration Profile, you can use the Logs tab to monitor the deployment status for each enrolled machine.

### Client machine setup
You need no special provisioning for a macOS computer beyond the standard JAMF Enrollment.

> [!NOTE]
>  After a computer is enrolled, it will show up in the Computers inventory (All Computers). 

1.  Open the machine details, from **General** tab, and make sure that **User Approved MDM** is set to **Yes**. If it's set to No, the user needs to open **System Preferences > Profiles** and select **Approve** on the MDM Profile.

![MDM approve button screenshot](images/MDATP_21_MDMProfile1.png)
![MDM screenshot](images/MDATP_22_MDMProfileApproved.png)

After some time, the machine's User Approved MDM status will change to Yes. 

![MDM status screenshot](images/MDATP_23_MDMStatus.png)

You can enroll additional machines now. Optionally, can do it after system configuration and application packages are provisioned.

### Deployment
Enrolled client machines periodically poll the JAMF Server and install new configuration profiles and policies as soon as they are detected.

#### Status on server
You can monitor the deployment status in the Logs tab:
 - **Pending** means that the deployment is scheduled but has not yet happened 
 - **Completed** means that the deployment succeeded and is no longer scheduled

![Status on server screenshot](images/MDATP_24_StatusOnServer.png)


#### Status on client machine
After the Configuration Profile is deployed, you'll see the profile on the machine in the **System Preferences > Profiles >** Name of Configuration Profile.

![Status on client screenshot](images/MDATP_25_StatusOnClient.png)

After the policy is applied, you'll see the Microsoft Defender icon in the macOS status bar in the top-right corner.

![Microsoft Defender icon in status bar screenshot](images/MDATP_Icon_Bar.png)

You can monitor policy installation on a machine by following the JAMF's log file:

```
mavel-mojave:~ testuser$ tail -f /var/log/jamf.log
Thu Feb 21 11:11:41 mavel-mojave jamf[7960]: No patch policies were found.
Thu Feb 21 11:16:41 mavel-mojave jamf[8051]: Checking for policies triggered by "recurring check-in" for user "testuser"...
Thu Feb 21 11:16:43 mavel-mojave jamf[8051]: Executing Policy WDAV
Thu Feb 21 11:17:02 mavel-mojave jamf[8051]: Installing Microsoft Defender...
Thu Feb 21 11:17:23 mavel-mojave jamf[8051]: Successfully installed Microsoft Defender.
Thu Feb 21 11:17:23 mavel-mojave jamf[8051]: Checking for patches...
Thu Feb 21 11:17:23 mavel-mojave jamf[8051]: No patch policies were found.
```

You can also check the onboarding status:
```
mavel-mojave:~ testuser$ sudo /Library/Extensions/wdavkext.kext/Contents/Resources/Tools/wdavconfig.py
uuid            : 69EDB575-22E1-53E1-83B8-2E1AB1E410A6
orgid           : 79109c9d-83bb-4f3e-9152-8d75ee59ae22
orgid managed   : 79109c9d-83bb-4f3e-9152-8d75ee59ae22
orgid effective : 79109c9d-83bb-4f3e-9152-8d75ee59ae22
```

- **orgid/orgid managed**: This is the Microsoft Defender ATP org id specified in the configuration profile. If this value is blank, then the Configuration Profile was not properly set.

- **orgid effective**: This is the Microsoft Defender ATP org id currently in use. If it does not match the value in the Configuration Profile, then the configuration has not been refreshed.

### Uninstalling Microsoft Defender ATP for Mac
#### Uninstalling with a script

Create a script in **Settings > Computer Management > Scripts**.

![Microsoft Defender uninstall screenshot](images/MDATP_26_Uninstall.png)

For example, this script removes Microsoft Defender ATP from the /Applications directory:

```
echo "Is WDAV installed?"
ls -ld '/Applications/Microsoft Defender ATP.app' 2>/dev/null

echo "Uninstalling WDAV..."
rm -rf '/Applications/Microsoft Defender ATP.app'

echo "Is WDAV still installed?"
ls -ld '/Applications/Microsoft Defender ATP.app' 2>/dev/null

echo "Done!"
```

#### Uninstalling with a policy
Your policy should contain a single script:

![Microsoft Defender uninstall script screenshot](images/MDATP_27_UninstallScript.png)

Configure the appropriate scope in the **Scope** tab to specify the machines that will receive this policy.

### Check onboarding status

You can check that machines are correctly onboarded by creating a script. For example, the following script checks that enrolled machines are onboarded:

```
sudo /Library/Extensions/wdavkext.kext/Contents/Resources/Tools/wdavconfig.py | grep -E 'orgid effective : [-a-zA-Z0-9]+'
```

This script returns 0 if Microsoft Defender ATP is registered with the Windows Defender ATP service, and another exit code if it is not installed or registered.

## Manual deployment

### Download installation and onboarding packages
Download the installation and onboarding packages from Windows Defender Security Center:
1.  In Windows Defender Security Center, go to **Settings > Machine Management > Onboarding**.
2.  In Section 1 of the page, set operating system to **Linux, macOS, iOS or Android** and Deployment method to **Local script**.
3.  In Section 2 of the page, select **Download installation package**. Save it as wdav.pkg to a local directory.
4.  In Section 2 of the page, select **Download onboarding package**. Save it as WindowsDefenderATPOnboardingPackage.zip to the same directory.

    ![Windows Defender Security Center screenshot](images/MDATP_2_IntuneAppUtil.png)

5. From a command prompt, verify that you have the two files. 
    Extract the contents of the .zip files:
    
    ```
   mavel-macmini:Downloads test$ ls -l
    total 721152
    -rw-r--r--  1 test  staff       6185 Mar 15 10:45 WindowsDefenderATPOnboardingPackage.zip
    -rw-r--r--  1 test  staff  354531845 Mar 13 08:57 wdav.pkg
    mavel-macmini:Downloads test$ unzip WindowsDefenderATPOnboardingPackage.zip
    Archive:  WindowsDefenderATPOnboardingPackage.zip
    inflating: WindowsDefenderATPOnboarding.py
    ``` 

### Application installation
To complete this process, you must have admin privileges on the machine.

1. Navigate to the downloaded wdav.pkg in Finder and open it.

    ![App install screenshot](images/MDATP_28_AppInstall.png)

2. Select **Continue**, agree with the License terms, and enter the password when prompted.

    ![App install screenshot](images/MDATP_29_AppInstallLogin.png)

   > [!IMPORTANT]
   > You will be prompted to allow a driver from Microsoft to be installed (either "System Exception Blocked" or "Installation is on hold" or both. The driver must be allowed to be installed.

   ![App install screenshot](images/MDATP_30_SystemExtension.png)

3. Select **Open Security Preferences**  or **Open System Preferences > Security & Privacy**. Select **Allow**:

    ![Security and privacy window screenshot](images/MDATP_31_SecurityPrivacySettings.png)


The installation will proceed.

> [!NOTE]
> If you don't select **Allow**, the installation will fail after 5 minutes. You can restart it again at any time.

### Client configuration
1.  Copy wdav.pkg and WindowsDefenderATPOnboarding.py to the machine where you deploy Microsoft Defender ATP for Mac.

    The client machine is not associated with orgId.  Note that the orgid is blank.

    ```
    mavel-mojave:wdavconfig testuser$ sudo /Library/Extensions/wdavkext.kext/Contents/Resources/Tools/wdavconfig.py
    uuid  : 69EDB575-22E1-53E1-83B8-2E1AB1E410A6
    orgid :
    ```
2.  Install the configuration file on a client machine:

    ```
    mavel-mojave:wdavconfig testuser$ python WindowsDefenderATPOnboarding.py
    Generating /Library/Application Support/Microsoft/Defender/com.microsoft.wdav.atp.plist ... (You may be required to enter sudos password)
    ```

3.  Verify that the machine is now associated with orgId:

    ```
    mavel-mojave:wdavconfig testuser$ sudo /Library/Extensions/wdavkext.kext/Contents/Resources/Tools/wdavconfig.py
    uuid  : 69EDB575-22E1-53E1-83B8-2E1AB1E410A6
    orgid : E6875323-A6C0-4C60-87AD-114BBE7439B8
    ```
After installation, you'll see the Microsoft Defender icon in the macOS status bar in the top-right corner.

   ![Microsoft Defender icon in status bar screenshot](images/MDATP_Icon_Bar.png)

## Configuring with the command line

Controlling product settings, triggering on-demand scans, and several other important tasks can be done via the following CLI commands:

|Group        |Scenario                                   |Command                                                                |
|-------------|-------------------------------------------|-----------------------------------------------------------------------|
|Configuration|Turn on/off real-time protection           |`mdatp config --rtp [true/false]`                                      |
|Configuration|Turn on/off cloud protection               |`mdatp config --cloud [true/false]`                                    |
|Configuration|Turn on/off product diagnostics            |`mdatp config --diagnostic [true/false]`                               |
|Configuration|Turn on/off automatic sample submission    |`mdatp config --sample-submission [true/false]`                        |
|Configuration|Turn on PUA protection                     |`mdatp threat --type-handling --potentially_unwanted_application block`|
|Configuration|Turn off PUA protection                    |`mdatp threat --type-handling --potentially_unwanted_application off`  |
|Configuration|Turn on audit mode for PUA protection      |`mdatp threat --type-handling --potentially_unwanted_application audit`|
|Diagnostics  |Change the log level                       |`mdatp log-level --[error/warning/info/verbose]`                       |
|Diagnostics  |Generate diagnostic logs                   |`mdatp --diagnostic`                                                   |
|Health       |Check the product's health                 |`mdatp --health`                                                       |
|Protection   |Scan a path                                |`mdatp scan --path [path]`                                             |
|Protection   |Do a quick scan                            |`mdatp scan --quick`                                                   |
|Protection   |Do a full scan                             |`mdatp scan --full`                                                    |
|Protection   |Cancel an ongoing on-demand scan           |`mdatp scan --cancel`                                                  |
|Protection   |Request a definition update                |`mdatp --signature-update`                                             |

## What to expect in the ATP portal

- Severity
- Scan type
- Antivirus alerts
- Device information:
  - Machine identifier
  - Tenant identifier
  - App version
  - Hostname
  - OS type
  - OS version
  - Computer model
  - Processor architecture
  - Whether the device is a virtual machine
- File information:
  - Hashes
  - Size
  - Path
  - Name
- Threat information:
  - Type
  - State
  - Name


## Uninstallation
### Removing Microsoft Defender ATP from Mac devices
To remove Microsoft Defender ATP from your macOS devices:

- Open **Finder > Applications**. Right click on **Microsoft Defender ATP > Move to Trash**.

Or, from a command line:

- ```sudo rm -rf '/Applications/Microsoft Defender ATP'```

## Known issues

- Not localized yet.
- There might be accessibility issues.
- Not optimized for performance or disk space yet.
- Full Windows Defender ATP integration is not available yet.
- Mac devices that switch networks may appear multiple times in the APT portal.
- Geo preference for telemetry traffic is not supported yet. Cloud traffic is routed to the US only.
- Centrally managed uninstall is still being developed. As a workaround, a manual uninstall must be performed on each client device.


## Collecting diagnostic information
If you can reproduce a problem, please increase the logging level, run the system for some time, and restore the logging level to the default.

1) Increase logging level:
```
    mavel-mojave:~ testuser$ mdatp log-level --verbose
    Creating connection to daemon
    Connection established
    Operation succeeded
```

2) Reproduce the problem

3) Run `mdatp --diagnostic` to backup Defender ATP's logs. The command will print out location with generated zip file.

    ```
    mavel-mojave:~ testuser$ mdatp --diagnostic
    Creating connection to daemon
    Connection established
    "/Library/Application Support/Microsoft/Defender/wdavdiag/d85e7032-adf8-434a-95aa-ad1d450b9a2f.zip"
    ```    
   
4) Restore logging level:
```
    mavel-mojave:~ testuser$ mdatp log-level --info
    Creating connection to daemon
    Connection established
    Operation succeeded
```

   
### Installation issues
If an error occurs during installation, the installer will only report a general failure. The detailed log is saved to /Library/Logs/Microsoft/wdav.install.log. If you experience issues during installation, send us this file so we can help diagnose the cause.
