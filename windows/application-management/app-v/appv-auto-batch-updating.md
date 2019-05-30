---
title: Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer).
author: dansimp
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 04/18/2018
ms.topic: article
---
# Automatically update multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)

>Applies to: Windows 10, version 1703

Updating multiple apps at the same time follows a similar process to the one used for [automatically sequencing multiple apps at the same time](appv-auto-batch-sequencing.md). However, when updating, you'll also have to pass your previously created app package files to the App-V Sequencer cmdlet.

Starting with Windows 10, version 1703, running the New-BatchAppVSequencerPackages cmdlet or the App-V Sequencer interface captures and stores all of your customizations as an App-V project template. If you want to make changes to this package later, your customizations are automatically loaded from this template file.

>[!NOTE]
>If you're trying to sequence multiple apps at the same time, see [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md).

## Update multiple apps with a PowerShell cmdlet

Updating multiple apps at the same time requires that you create a **ConfigFile** with info related to each round of updating. This file is then used by the cmdlet to start the VM at a "clean" checkpoint, to copy the installer from the Host device to the VM, and then to start the App-V Sequencer to monitor your specified app installations.

### Create your ConfigFile for use by the PowerShell cmdlet

1. Determine the apps that need to be included in your app package, and then open a text editor, such as Notepad.

2. Add the following XML info for each app:

    - ```<AppName>```. The name of the app you're adding to the package.
    - ```<InstallerFolder>```. The file path to the folder with the app installer.
    - ```<Installer>```. The file name for the app executable. This will typically be an .exe or .msi file.
    - ```<InstallerOptions>```. The command-line options required for the app installation.
    - ```<Package>```. The file path to the location of your App-V packages. These packages were created when you sequenced your apps.
    - ```<TimeoutInMinutes>```. The maximum amount of time, in minutes, that the cmdlet should wait for updating to complete. You can enter a different value for each app, based on the size and complexity of the app itself.
    - ```<Cmdlet>```. Determines whether the sequencer uses the cmdlet or the App-V Sequencer interface. **True** tells the sequencer to use cmdlet-based updating, while **False** tells the sequencer to use the App-V Sequencer interface. You can use both the cmdlet and the interface together in the same ConfigFile, for different apps.
    - ```<Enabled>```. Indicates whether the app should be sequenced. **True** includes the app, while **False** ignores it. You can include as many apps as you want in the batch file, but optionally enable only a few of them.

        **Example:**
        ```XML
        <?xml version="1.0"?>
        <Applications>
            <Application>
                <AppName>Skype for Windows Update</AppName>
                <InstallerFolder>D:\Install\Update\SkypeforWindows</InstallerFolder>
                <Installer>SkypeSetup.exe</Installer>
                <InstallerOptions>/S</InstallerOptions>
                <Package>C:\App-V_Package\Microsoft_Apps\skypeupdate.appv</Package>
                <TimeoutInMinutes>20</TimeoutInMinutes>
                <Cmdlet>true</Cmdlet>
                <Enabled>true</Enabled>
            </Application>
            <Application>
                <AppName>Microsoft Power BI Update</AppName>
                <InstallerFolder>D:\Install\Update\PowerBI</InstallerFolder>
                <Installer>PBIDesktop.msi</Installer>
                <InstallerOptions>/S</InstallerOptions>
                <Package>C:\App-V_Package\MS_Apps\powerbiupdate.appv</Package>
                <TimeoutInMinutes>20</TimeoutInMinutes>
                <Cmdlet>true</Cmdlet>
                <Enabled>true</Enabled>
            </Application>
        </Applications>
        ```

3. Save your completed file under the name **ConfigFile**.

### Start the App-V Sequencer interface and app installation process

- Open PowerShell as an admin on the Host computer and run the following commands to start the batch updating:

    ```PowerShell
    New-BatchAppVSequencerPackages –ConfigFile <path_to_configfile> –VMName <name_of_vm> -OutputPath <path_to_your_output>
    ```
    Where ```<name_of_vm>``` is the name of the virtual machine (VM) with the App-V Sequencer installed that you'll run the batch updating on, and ```<path_to_your_output>``` is the full path to where the updated packages should be copied.

    The cmdlet creates a "clean" checkpoint on the VM. After making the checkpoint, the cmdlet copies the first app installer listed in the ConfigFile from the Host computer to the VM. This opens a new session of the VM (through VMConnect), allowing app updates to begin from the command-line. After completing the update and package creation for the first app on the VM, the package is copied from the VM to the Host computer, specified in the OutputPath parameter. The cmdlet then goes to the second app on your list, reverting the VM back to a "clean" checkpoint and running through all of the steps again, until the second app package is copied to your output folder. This process continues until all apps included in your list are done. After the last app, the VM is reverted back to a "clean" checkpoint and turned off.

## Update multiple apps with the App-V Sequencer interface

Updating multiple apps at the same time requires that you create a **ConfigFile** to collect all of the info related to each round of updating. This file is then used by the App-V Sequencer interface after creating a "clean" checkpoint on your VM.

### Create your ConfigFile for use by the App-V Sequencer interface

1. Determine the apps that need to be updated and then open a text editor, such as Notepad.

2. Add the following XML info for each app:

    - ```<AppName>```. The name of the app you're adding to the package.
    - ```<InstallerFolder>```. The file path to the folder with the app installer.
    - ```<Installer>```. The file name for the app executable. This will typically be an .exe or .msi file.
    - ```<Package>```. The file path to the location of your App-V packages. These packages were created when you sequenced your apps.
    - ```<TimeoutInMinutes>```. The maximum amount of time, in minutes, the cmdlet should wait for updating to complete. You can enter a different value for each app, based on the size and complexity of the app itself.
    - ```<Cmdlet>```. Determines whether the sequencer uses the cmdlet or the App-V Sequencer interface. **True** tells the sequencer to use cmdlet-based updating, while **False** tells the sequencer to use the App-V Sequencer interface. You can use both the cmdlet and the interface together in the same ConfigFile, for different apps.
    - ```<Enabled>```. Indicates whether the app should be sequenced. **True** includes the app, while **False** ignores it. You can include as many apps as you want in the batch file, but optionally enable only a few of them.

        **Example:**

        ```XML
        <?xml version="1.0"?>
        <Applications>
            <Application>
                <AppName>Skype for Windows Update</AppName>
                <InstallerFolder>D:\Install\Update\SkypeforWindows</InstallerFolder>
                <Installer>SkypeSetup.exe</Installer>
                <InstallerOptions>/S</InstallerOptions>
                <Package>C:\App-V_Package\Microsoft_Apps\skypeupdate.appv</Package>
                <TimeoutInMinutes>20</TimeoutInMinutes>
                <Cmdlet>false</Cmdlet>
                <Enabled>true</Enabled>
            </Application>
            <Application>
                <AppName>Microsoft Power BI Update</AppName>
                <InstallerFolder>D:\Install\Update\PowerBI</InstallerFolder>
                <Installer>PBIDesktop.msi</Installer>
                <InstallerOptions>/S</InstallerOptions>
                <Package>C:\App-V_Package\MS_Apps\powerbiupdate.appv</Package>
                <TimeoutInMinutes>20</TimeoutInMinutes>
                <Cmdlet>false</Cmdlet>
                <Enabled>true</Enabled>
            </Application>
        </Applications>
        ```   

### Start the App-V Sequencer interface and app installation process

- Open PowerShell as an admin on the Host computer and run the following commands to start the batch updating:

    ```PowerShell
    New-BatchAppVSequencerPackages –ConfigFile <path_to_configfile> –VMName <name_of_vm> -OutputPath <path_to_your_output>
    ```
    Where ```<name_of_vm>``` is the name of the virtual machine (VM) with the App-V Sequencer installed, where you'll run the batch updating, and ```<path_to_your_output>``` is the full path to where the updated packages should be copied.

    This cmdlet creates a "clean" checkpoint on the VM. After making the checkpoint, the cmdlet copies the first app installer listed in the ConfigFile from the Host computer to the VM. This opens a new session of the VM (through VMConnect) and app updating begins from the command-line. After completing updating and package creation for the first app on the VM, the package is copied from the VM to the Host computer specified in the *OutputPath* parameter. The cmdlet then goes to the second app on your list, reverting the VM back to a "clean" checkpoint and running through all of the steps again, until the second app package is copied to your output folder. This process continues until all apps included in your list are done. After the last app, the VM is reverted to a "clean" checkpoint and turned off.

### Review the log files

There are three types of log files that occur when you sequence multiple apps at the same time:

- **New-BatchAppVSequencerPackages-<*time_stamp*>.txt**. Located in the %temp%\AutoSequencer\Logs directory. This log contains info about updating activities for each app, such as "Copying installer to VM," "Scheduling updating task," and so on. Additionally, if an app times out, this log contains the failure along with the checkpoint for troubleshooting the problem.
- **New-BatchAppVSequencerPackages-report-<*time_stamp*>.txt**. Located in the **OutputPath** folder you specified earlier. This log contains info about the connections made to the VM, showing if there were any failures. Additionally, it briefly includes success or failure info for all of the apps.
- **Log.txt file**. Located in the **Output Package** folder. This file contains all code included in the **NewAppVSequencerPackage** cmdlet, including the allowed parameters.

### Related topics

- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)
- [How to install the App-V Sequencer](appv-install-the-sequencer.md)
- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)
- [Automatically provision your sequencing environment using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-provision-a-vm.md)
- [Manually sequence a single app using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md)
- [Automatically sequence multiple apps at the same time using Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-batch-sequencing.md)
- [Automatically cleanup unpublished packages on the App-V client](appv-auto-clean-unpublished-packages.md)




