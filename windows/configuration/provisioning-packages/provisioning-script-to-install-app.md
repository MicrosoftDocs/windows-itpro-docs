---
title: Use a script to install a desktop app in provisioning packages (Windows 10)
description: With Windows 10, you can create provisioning packages that let you quickly and efficiently configure a device without having to install a new image.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.author: dansimp
ms.topic: article
ms.localizationpriority: medium
ms.date: 07/27/2017
ms.reviewer: 
manager: dansimp
---

# Use a script to install a desktop app in provisioning packages


**Applies to**

-   Windows 10
-   Windows 10 Mobile

This walkthrough describes how to leverage the ability to include scripts in a Windows 10 provisioning package to install Win32 applications. Scripted operations other than installing apps can also be performed, however, some care is needed in order to avoid unintended behavior during script execution (see [Remarks](#remarks) below). 

>**Prerequisite**: [Windows Assessment and Deployment Kit (ADK) for Windows 10](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit), version 1511 or higher 

>[!NOTE]
>This scenario is only supported for installing applications on Windows 10 for desktop, version 1511 or higher.

## Assemble the application assets

1. On the device where you’re authoring the package, place all of your assets in a known location. Each asset must have a unique filename, because all files will be copied to the same temp directory on the device. It’s common for many apps to have an installer called ‘install.exe’ or similar, and there may be name overlap because of that. To fix this, you can use the technique described in the next step to include a complete directory structure that is then expanded into the temp directory on the device. The most common use for this would be to include a subdirectory for each application. 

2. If you need to include a directory structure of files, you will need to cab the assets for easy inclusion in the provisioning packages.

<span id="cab" />
## Cab the application assets

1. Create a .DDF file as below, replacing *file1* and *file2* with the files you want to package, and adding the name of file/directory.

    ```
    ;*** MSDN Sample Source Code MakeCAB Directive file example
    
    ;
    
    .OPTION EXPLICIT  ; Generate errors on variable typos
    
    .set DiskDirectoryTemplate=CDROM  ; All cabinets go in a single directory
    
    .Set MaxDiskFileCount=1000; Limit file count per cabinet, so that
    
    ; scanning is not too slow
    
    .Set FolderSizeThreshold=200000   ; Aim for ~200K per folder
    
    .Set CompressionType=MSZIP
    
    ;** All files are compressed in cabinet files
    
    .Set Cabinet=on
    
    .Set Compress=on
    
    ;-------------------------------------------------------------------
    
    ;** CabinetNameTemplate = name of cab
    
    ;** DiskDirectory1 = output directory where cab will be created
    
    ;-------------------------------------------------------------------
    
    .Set CabinetNameTemplate=tt.cab
    
    .Set DiskDirectory1=.
        
    ;-------------------------------------------------------------------
    
    ; Replace <file> with actual files you want to package
    
    ;-------------------------------------------------------------------
    
    <file1>
    
    <file2>
    
    ;*** <the end>  
    ```

2. Use makecab to create the cab files.

    ```
    Makecab -f <path to DDF file>
    ```

## Create the script to install the application

In Windows 10, version 1607 and earlier, create a script to perform whatever work is needed to install the application(s). The following examples are provided to help get started authoring the orchestrator script that will execute the required installers. In practice, the orchestrator script may reference many more assets than those in these examples.

In Windows 10, version 1703, you don’t need to create an orchestrator script. You can have one command line per app. If necessary, you can create a script that logs the output per app, as mentioned below (rather than one orchestrator script for the entire provisioning package). 

>[!NOTE]
>All actions performed by the script must happen silently, showing no UI and requiring no user interaction.
>
>The scripts will be run on the device in system context.

### Debugging example 

Granular logging is not built in, so the logging must be built into the script itself. Here is an example script that logs ‘Hello World’ to a logfile. When run on the device, the logfile will be available after provisioning is completed. As you will see in the following examples, it’s recommended that you log each action that your script performs.

```
set LOGFILE=%SystemDrive%\HelloWorld.log
echo Hello, World >> %LOGFILE% 
```
### .exe example

This example script shows how to create a log output file on the system drive, install an app from a .exe installer, and echo the results to the log file.

```
set LOGFILE=%SystemDrive%\Fiddler_install.log
echo Installing Fiddler.exe >> %LOGFILE%
fiddler4setup.exe /S >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
```

### .msi example

This is the same as the previous installer, but installs the app from an MSI installer. Notice that msiexec is called with the /quiet flag in order to meet the silent requirement of scripts run from within a provisioning package.

```
set LOGFILE=%SystemDrive%\IPOverUsb_install.log
echo Installing IpOverUsbInstaller.msi >> %LOGFILE%
msiexec /i IpOverUsbInstaller.msi /quiet >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
```

### PowerShell example

This is an example script with logging that shows how to run a powershell script from the provisioning commands setting. Note that the PowerShell script referenced from this example must also be included in the package, and obey the same requirements as all scripts run from within the provisioning package: it must execute silently, with no user interaction.

```
set LOGFILE=%SystemDrive%\my_powershell_script.log
echo Running my_powershell_script.ps1 in system context >> %LOGFILE%
echo Executing "PsExec.exe -accepteula -i -s cmd.exe /c powershell.exe my_powershell_script.ps1" >> %LOGFILE%
PsExec.exe -accepteula -i -s cmd.exe /c 'powershell.exe my_powershell_script.ps1' >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
```

<span id="cab-extract" />
### Extract from a .CAB example

This example script shows expansion of a .cab from the provisioning commands script, as well as installation of the expanded setup.exe

```
set LOGFILE=%SystemDrive%\install_my_app.log
echo Expanding installer_assets.cab >> %LOGFILE%
expand -r installer_assets.cab -F:* . >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
echo Installing MyApp >> %LOGFILE%
setup.exe >> %LOGFILE%
echo result: %ERRORLEVEL% >> %LOGFILE%
```

### Calling multiple scripts in the package

In Windows 10, version 1703, your provisioning package can include multiple CommandLines.

In Windows 10, version 1607 and earlier, you are allowed one CommandLine per provisioning package. The batch files shown above are orchestrator scripts that manage the installation and call any other scripts included in the provisioning package. The orchestrator script is what should be invoked from the CommandLine specified in the package. 

Here’s a table describing this relationship, using the PowerShell example from above:


|ICD Setting | Value  | Description |
| --- | --- | --- |
| ProvisioningCommands/DeviceContext/CommandLine | cmd /c PowerShell_Example.bat | The command line needed to invoke the orchestrator script. |
| ProvisioningCommands/DeviceContext/CommandFiles | PowerShell_Example.bat | The single orchestrator script referenced by the command line that handles calling into the required installers or performing any other actions such as expanding cab files. This script must do the required logging. |
| ProvisioningCommands/DeviceContext/CommandFiles | my_powershell_script.ps1 | Other assets referenced by the orchestrator script. In this example there is only one, but there could be many assets referenced here. One common use case is using the orchestrator to call a series of install.exe or setup.exe installers to install several applications. Each of those installers must be included as an asset here. |

 
### Add script to provisioning package (Windows 10, version 1607)
 
When you have the batch file written and the referenced assets ready to include, you can add them to a provisioning package in the Window Configuration Designer. 

Using Windows Configuration Designer, specify the full details of how the script should be run in the CommandLine setting in the provisioning package. This includes flags or any other parameters that you would normally type on the command line. So for example if the package contained an app installer called install.exe and a script used to automate the install called InstallMyApp.bat, the `ProvisioningCommands/DeviceContext/CommandLine` setting should be configured to: 

```
cmd /c InstallMyApp.bat
```

In Windows Configuration Designer, this looks like:

![Command line in Selected customizations](../images/icd-script1.png)

You also need to add the relevant assets for that command line including the orchestrator script and any other assets it references such as installers or .cab files.

In Windows Configuration Designer, that is done by adding files under the `ProvisioningCommands/DeviceContext/CommandFiles` setting.

![Command files in Selected customizations](../images/icd-script2.png)

When you are done, [build the package](provisioning-create-package.md#build-package). 
 

### Remarks
1. No user interaction or console output is supported via ProvisioningCommands. All work needs to be silent. If your script attempts to do any of the following it will cause undefined behavior, and could put the device in an unrecoverable state if executed during setup or the Out of Box Experience:
    a. Echo to console
    b. Display anything on the screen
    c. Prompt the user with a dialog or install wizard
2. When applied at first boot, provisioning runs early in the boot sequence and before a user context has been established; care must be taken to only include installers that can run at this time. Other installers can be provisioned via a management tool.
3. If the device is put into an unrecoverable state because of a bad script, you can reset it using [recovery options in Windows 10](https://support.microsoft.com/help/12415/windows-10-recovery-options).
4. The CommandFile assets are deployed on the device to a temporary folder unique to each package.
    - For Windows 10, version 1607 and earlier:
        a. For packages added during the out of box experience, this is usually in `%WINDIR%\system32\config\systemprofile\appdata\local\Temp\ProvisioningPkgTmp\<{PackageIdGuid}>\Commands`
        b. For packages added by double-clicking on an already deployed device, this will be in the temp folder for the user executing the PPKG: `%TMP%\ProvisioningPkgTmp\<{PackageIdGuid}>\Commands`
    - For Windows 10, version 1703:
        a. For packages added during the out of box experience, this is usually in `%WINDIR%\system32\config\systemprofile\appdata\local\Temp\ProvisioningPkgTmp\<{PackageIdGuid}>\Commands\0`
        The `0` after `Commands\` refers to the installation order and indicates the first app to be installed. The number will increment for each app in the package.
        b. For packages added by double-clicking on an already deployed device, this will be in the temp folder for the user executing the provisioning package: `%TMP%\ProvisioningPkgTmp\<{PackageIdGuid}>\Commands\0`
5. The command line will be executed with the directory the CommandFiles were deployed to as the working directory. This means you do not need to specific the full path to assets in the command line or from within any script.
6. The runtime provisioning component will attempt to run the scripts from the provisioning package at the earliest point possible, depending on the stage when the PPKG was added. For example, if the package was added during the Out-of-Box Experience, it will be run immediately after the package is applied, while the out of box experience is still happening. This is before the user account configuration options are presented to the user. A spinning progress dialog will appear and “please wait” will be displayed on the screen. 

    >[!NOTE]
    >There is a timeout of 30 minutes for the provisioning process at this point. All scripts and installs need to complete within this time. 
7. The scripts are executed in the background as the rest of provisioning continues to run. For packages added on existing systems using the double-click to install, there is no notification that provisioning or script execution has completed


## Related topics

- [Provisioning packages for Windows 10](provisioning-packages.md)
- [How provisioning works in Windows 10](provisioning-how-it-works.md)
- [Install Windows Configuration Designer](provisioning-install-icd.md)
- [Create a provisioning package](provisioning-create-package.md)
- [Apply a provisioning package](provisioning-apply-package.md)
- [Settings changed when you uninstall a provisioning package](provisioning-uninstall-package.md)
- [Provision PCs with common settings for initial deployment (simple provisioning)](provision-pcs-for-initial-deployment.md)
- [Windows Configuration Designer command-line interface (reference)](provisioning-command-line.md)
- [PowerShell cmdlets for provisioning Windows 10 (reference)](provisioning-powershell.md)
- [Create a provisioning package with multivariant settings](provisioning-multivariant.md)
