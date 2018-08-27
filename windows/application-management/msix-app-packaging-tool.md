---
title: Repackage your existing win32 applications to the MSIX format.
description: Learn how to install and use the MSIX packaging tool.
keywords: ["MSIX", "application", "app", "win32", "packaging tool"]
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.localizationpriority: medium
ms.author: mikeblodge
ms.topic: article
ms.date: 08/01/2018
---

# Repackage existing win32 applications to the MSIX format

The MSIX Packaging Tool (Preview) is now available to install from the Microsoft Store. The MSIX Packaging Tool enables you to repackage your existing win32 applications to the MSIX format. You can run your desktop installers through this tool interactively and obtain an MSIX package that you can install on your machine and upload to the Microsoft Store (coming soon). 

> Prerequisites:

- Participation in the Windows Insider Program  
- Minimum Windows 10 build 17701 
- Admin privileges on your PC account 
- A valid MSA alias (to access the app from the Store) 

## What's new
v1.2018.821.0
- Command Line Support
- Ability to use existing local virtual machines for packaging environment.
- Ability to cross check publisher information in the manifest with a signing certificate to avoid signing issues.
- Minor updates to the UI for added clarity.

v1.2018.807.0
- Ability to add/edit/remove file and registry exclusion items is now supported in Settings menu.
- Fixed an issue where signing with password protected certificates would fail in the tool.
- Fixed an issue where the tool was crashing when editing an existing MSIX package.
- Fixed an issue where the tool was injecting whitespaces programmatically to install location paths that was causing conversion failures.
- Minor UI tweaks to add clarity.
- Minor updates to the logs to add clarity.


## Installing the MSIX Packaging Tool

1. Use the MSA login associated with your Windows Insider Program credentials in the [Microsoft Store](https://www.microsoft.com/store/r/9N5LW3JBCXKF). 
2. Open the product description page.
3. Click the install icon to begin installation.

This is an early preview build and not all features are supported. Here is what you can expect to be able to do with this preview:

- Package your favorite application installer interactively (msi, exe, App-V 5.x and ClickOnce) to MSIX format by launching the tool and selecting **Application package** icon. 
- Create a modification package for a newly created Application MSIX Package by launching the tool and selecting the **Modification package** icon.
- Open your MSIX package to view and edit its content/properties by navigating to the **Open package editor** tab. Browse to the MSIX package and select **Open package**. 

## Creating an application package using the Command line interface
To create a new MSIX package for your application, run the MsixPackagingTool.exe create-package command in a Command prompt window. 

Here are the parameters that can be passed as command line arguments:


|Parameter   |Description  |
|---------|---------|
|-? <br> --help     |   Show help information      |
|--template     | [required] path to the conversion template XML file containing package information and settings for this conversion    |
|--virtualMachinePassword     |    [optional] The password for the Virtual Machine to be used for the conversion environment. Notes: The template file must contain a VirtualMachine element and the Settings::AllowPromptForPassword attribute must not be set to true.     |

Examples:

- MsixPackagingTool.exe create-package --template c:\users\documents\ConversionTemplate.xml
- MSIXPackagingTool.exe create-package --template c:\users\documents\ConversionTemplate.xml  --virtualMachinePassword pswd112893

## Creating an application package using virtual machines

You can select to perform the packaging steps on a virtual machine. To do this: 
- Click on Application package and select “Create package on an existing virtual machine” in the select environment page. 
- The tool will then query for existing Virtual machines and allows you to select one form a drop down menu. 
- Once a VM is selected the tool will ask for user and password. The username field accepts domain\user entries as well.

When using local virtual machines as conversion environment, the tool leverages an authenticated remote PowerShell connection to configure the virtual machine. A lightweight WCF server then provides bidirectional communication between the host and target environment.

Requirements:
•	Virtual Machine need to have PSRemoting enabled. (Enable-PSRemoting command should be run on the VM)
•	Virtual Machine needs to be configured for Windows Insider Program similar to the host machine. Minimum Windows 10 build 17701


## Conversion template file


```xml
<MsixPackagingToolTemplate
    xmlns="http://schemas.microsoft.com/appx/msixpackagingtool/template/2018">

    <Settings
        AllowTelemetry="true"
        ApplyAllPrepareComputerFixes="true"
        GenerateCommandLineFile="true"
        AllowPromptForPassword="false" >

        <ExclusionItems>
            <FileExclusion ExcludePath="[{CryptoKeys}]" />
            <FileExclusion ExcludePath="[{Common AppData}]\Microsoft\Crypto" />
            <FileExclusion ExcludePath="[{Common AppData}]\Microsoft\Search\Data" />
            <FileExclusion ExcludePath="[{Cookies}]" />
            <FileExclusion ExcludePath="[{History}]" />
            <FileExclusion ExcludePath="[{Cache}]" />
            <FileExclusion ExcludePath="[{Personal}]" />
            <FileExclusion ExcludePath="[{Profile}]\Local Settings" />
            <FileExclusion ExcludePath="[{Profile}]\NTUSER.DAT.LOG1" />
            <FileExclusion ExcludePath="[{Profile}]\ NTUSER.DAT.LOG2" />
            <FileExclusion ExcludePath="[{Recent}]" />
            <FileExclusion ExcludePath="[{Windows}]\debug" />
            <FileExclusion ExcludePath="[{Windows}]\Logs\CBS" />
            <FileExclusion ExcludePath="[{Windows}]\Temp" />
            <FileExclusion ExcludePath="[{Windows}]\WinSxS\ManifestCache" />
            <FileExclusion ExcludePath="[{Windows}]\WindowsUpdate.log" />
            <FileExclusion ExcludePath="[{AppVPackageDrive}]\$Recycle.Bin " />
            <FileExclusion ExcludePath="[{AppVPackageDrive}]\System Volume Information" />
            <FileExclusion ExcludePath="[{AppData}]\Microsoft\AppV" />
            <FileExclusion ExcludePath="[{Common AppData}]\Microsoft\Microsoft Security Client" />
            <FileExclusion ExcludePath="[{Common AppData}]\Microsoft\Microsoft Antimalware" />
            <FileExclusion ExcludePath="[{Common AppData}]\Microsoft\Windows Defender" />
            <FileExclusion ExcludePath="[{ProgramFiles}]\Microsoft Security Client" />
            <FileExclusion ExcludePath="[{ProgramFiles}]\Windows Defender" />
            <FileExclusion ExcludePath="[{Local AppData}]\Temp" />

            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Wow6432Node\Microsoft\Cryptography" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Microsoft\Cryptography" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Microsoft\Microsoft Antimalware" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Microsoft\Microsoft Antimalware Setup" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Microsoft\Microsoft Security Client" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Policies\Microsoft\Microsoft Antimalware" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Policies\Microsoft\Windows Defender" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\StreamMRU" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Microsoft\Windows\CurrentVersion\Explorer\Streams" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Explorer\Streams" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Microsoft\AppV" />
            <RegistryExclusion ExcludePath= "REGISTRY\MACHINE\SOFTWARE\Wow6432Node\Microsoft\AppV" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Microsoft\AppV" />
            <RegistryExclusion ExcludePath= "REGISTRY\USER\[{AppVCurrentUserSID}]\Software\Wow6432Node\Microsoft\AppV" />
        </ExclusionItems>
    </Settings>


    <PrepareComputer
        DisableDefragService="true"
        DisableWindowsSearchService="true"
        DisableSmsHostService="true"
        DisableWindowsUpdateService ="true"/>
    <!--Note: this section takes precedence over the Settings::ApplyAllPrepareComputerFixes attribute -->

    <SaveLocation Path="C:\users\user\Desktop" />

    <Installer
        Path="C:\MyAppInstaller.msi"
        Arguments="/quiet"
        InstallLocation="C:\Program Files\MyAppInstallLocation" />

    <VirtualMachine Name="vmname" Username="vmusername" />

    <PackageInformation
        PackageName="MyAppPackageName"
        PackageDisplayName="MyApp Display Name"
        PublisherName="CN=MyPublisher"
        PublisherDisplayName="MyPublisher Display Name"
        Version="1.1.0.0"
        MainPackageNameForModificationPackage="MainPackageIdentityName">

        <Applications>
            <Application
                Id="MyApp1"
                Description="MyApp"
                DisplayName="My App"
                ExecutableName="MyApp.exe"/>
        </Applications>

        <Capabilities>
            <Capability Name="runFullTrust" />
        </Capabilities>

    </PackageInformation>
</MsixPackagingToolTemplate>

```

## Conversion template parameter reference
Here is the complete list of parameters that you can use in the Conversion template file. When a virtual machine is conversion environment, all file paths(installer, savelocation, etc) should be declared relative to the host, where the tool is running)


|ConversionSettings entries  |Description  |
|---------|---------|
|Settings:: AllowTelemetry     |[optional] Enables telemetry logging for this invocation of the tool.       |
|Settings:: ApplyAllPrepareComputerFixes     |[optional] Applies all recommended prepare computer fixes. Cannot be set when other attributes are used.         |
|Settings:: GenerateCommandLineFile     |[optional] Copies the template file input to the SaveLocation directory for future use.         |
|Settings:: AllowPromptForPassword     |[optional] Instructs the tool to prompt the user to enter passwords for the Virtual Machine and for the signing certificate if it is required and not specified.         |
|ExclusionItems     |[optional] 0 or more FileExclusion or RegistryExclusion elements. All FileExclusion elements must appear before any RegistryExclusion elements.         |
|ExclusionItems::FileExclusion     |[optional] A file to exclude for packaging.         |
|ExclusionItems::FileExclusion::ExcludePath     |Path to file to exclude for packaging.         |
|ExclusionItems::RegistryExclusion     |[optional] A registry key to exclude for packaging.          |
|ExclusionItems::RegistryExclusion:: ExcludePath     |Path to registry to exclude for packaging.         |
|PrepareComputer::DisableDefragService     |[optional] Disables Windows Defragmenter while the app is being converted. If set to false, overrides ApplyAllPrepareComputerFixes.         |
|PrepareComputer:: DisableWindowsSearchService     |[optional] Disables Windows Search while the app is being converted. If set to false, overrides ApplyAllPrepareComputerFixes.         |
|PrepareComputer:: DisableSmsHostService     |[optional] Disables SMS Host while the app is being converted. If set to false, overrides ApplyAllPrepareComputerFixes.         |
|PrepareComputer:: DisableWindowsUpdateService     |[optional] Disables Windows Update while the app is being converted. If set to false, overrides ApplyAllPrepareComputerFixes.         |
|SaveLocation     |[optional] An element to specify the save location of the tool. If not specified, the package will be saved under the Desktop folder.         |
|SaveLocation::Path     |The path to the folder where the resulting MSIX package is saved.         |
|Installer::Path     |The path to the application installer.         |
|Installer::Arguments     |The arguments to pass to the installer. You must pass the arguments to force your installer to run unattended/silently. If the installer is an msi or appv, pass an empty argument ie Installer=””.        |
|Installer::InstallLocation     |[optional] The full path to your application's root folder for the installed files if it were installed (e.g. "C:\Program Files (x86)\MyAppInstalllocation").         |
|VirtualMachine     |[optional] An element to specify that the conversion will be run on a local Virtual Machine.         |
|VrtualMachine::Name     |The name of the Virtual Machine to be used for the conversion environment.         |
|VirtualMachine::Username     |[optional] The user name for the Virtual Machine to be used for the conversion environment.         |
|PackageInformation::PackageName     |The Package Name for your MSIX package.         |
|PackageInformation::PackageDisplayName     |The Package Display Name for your MSIX package.         |
|PackageInformation::PublisherName     |The Publisher for your MSIX package.         |
|PackageInformation::PublisherDisplayName     |The Publisher Display Name for your MSIX package.         |
|PackageInformation::Version     |The version number for your MSIX package.         |
|PackageInformation:: MainPackageNameForModificationPackage     |[optional] The Package identity name of the main package name. This is used when creating a modification package that takes a dependency on a main (parent) application.         |
|Applications     |[optional] 0 or more Application elements to configure the Application entries in your MSIX package.         |
|Application::Id     |The App ID for your MSIX application. This ID will be used for the Application entry detected that matches the specified ExecutableName. You can have multiple Application ID for executables in the package         |
|Application::ExecutableName     |The executable name for the MSIX application that will be added to the package manifest. The corresponding application entry will be ignored if no application with this name is detected.         |
|Application::Description     |[optional] The App Description for your MSIX application. If not used, the Application DisplayName will be used. This description will be used for the application entry detected that matches the specified ExecutableName         |
|Application::DisplayName     |The App Display Name for your MSIX package. This Display Name will be used for the application entry detected that matches the specified ExecutableName         |
|Capabilities     |[optional] 0 or more Capability elements to add custom capabilities to your MSIX package. “runFullTrust” capability is added by default during conversion.         |
|Capability::Name     |The capability to add to your MSIX package.          |

## Delete temporary conversion files using Command line interface
To delete all the temporary package files, logs, and artifacts created by the tool, run the MsixPackagingTool.exe cleanup command in the Command line window.

Example:
- MsixPackagingTool.exe cleanup 

## How to file feedback

Open Feedback Hub. Alternatively, launch the tool and select the **Settings** gear icon in the top right corner to open the Feedback tab. Here you can file feedback for suggestions, problems, and see other feedback items. 

## Best practices 

- When Packaging ClickOnce installers, it is necessary to send a shortcut to the desktop if the installer is not doing so already. In general, it's a good practice to always send a shortcut to your desktop for the main app executable. 
- When creating modification packages, you need to declare the **Package Name** (Identity Name) of the parent application in the tool UI so that the tool sets the correct package dependency in the manifest of the modification package. 
- Declaring an installation location field on the Package information page is optional but *recommended*. Make sure that this path matches the installation location of application Installer. 
- Performing the preparation steps on the **Prepare Computer** page is optional but *highly recommended*.  

## Known issues
1. MSIX Packaging Tool Driver will fail to install if Windows Insider flight ring settings do no match the OS build of the conversion environment. Navigate to Settings, Updates & Security, Windows Insider Program to make sure your Insider preview build settings do not need attention. If you see this message click on the Fix me button to log in again. You might have to go to Windows Update page and check for update before settings change takes effect. Then try to run the tool again to download the MSIX Packaging Tool driver. If you are still hitting issues, try changing your flight ring to Canary or Insider Fast, install the latest Windows updates and try again. 
2. You cannot edit the manifest manually from within the tool. (edit manifest button is disabled). Please use the SDK tools to unpack the MSIX package to edit the manifest manually.
3. Restarting the machine during application installation is not supported. Please ignore the restart request if possible or pass an argument to the installer to not require a restart.


