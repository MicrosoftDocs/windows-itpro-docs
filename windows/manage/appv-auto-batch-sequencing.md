---
title: Automatically sequence multiple apps at the same time using the Microsoft Application Virtualization Sequencer (App-V Sequencer) (Windows 10)
description: How to automatically sequence multiple apps at the same time using the Microsoft Application Virtualization Sequencer (App-V Sequencer).
author: eross-msft
ms.pagetype: mdop, appcompat, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
---

# Automatically sequence multiple apps at the same time using the Microsoft Application Virtualization Sequencer (App-V Sequencer)

**Applies to**
-   Windows 10, version 1703

Sequencing apps requires you to install and start the Microsoft Application Virtualization Sequencer (App-V Sequencer), install the necessary apps, and to collect any changes made to the operating system during the installation and building of the App-V package.

There are 2 approaches to sequencing multiple apps at the same time:

- Using a cmdlet in PowerShell

    -OR-

- Using the user-interface provided by the App-V Sequencer

### Sequence multiple apps by using a PowerShell cmdlet
Sequencing multipe apps at the same time requires that you create a **ConfigFile** to collect all of the info related to each round of sequencing. This file is then used by the sequencing cmdlet to start the VM at a "clean" checkpoint, to copy the installer from the Host device to the VM by using the `copy-item` command, and then starting the App-V Sequencer and your specified app installations.

**To create your ConfigFile for use by the PowerShell cmdlet**
1. Determine the apps that need to be included in your App-V sequencing package, and then open a text editor, such as Notepad.

2. Add the following XML info for each app:

    - **&lt;Name&gt;.** The name of the app you're adding to the package.
    
    - **&lt;InstallerFolder&gt;.** The file path to the folder with the app installer.

    - **&lt;Installer&gt;.** The file name for the app executable. This will typically be an .exe or .msi file.

    - **&lt;InstallerOptions&gt;.** The command-line options required for the app installation. This only applies to cmdlet sequencing, it doesn't apply if you use the App-V Sequencer interface. <!-- [Liz] What are the options here? -->

    - **&lt;TimeoutInMinutes&gt;.** The maximum time interval that the cmdlet should wait for sequencing to complete. You can enter a different value for each app, based on the size and complexity of the app itself. <!-- [Liz] Is this optional? -->

    - **&lt;Cmdlet&gt;.** Determines whether the sequencer uses the cmdlet or the App-V Sequencer interface. **True** tells the sequencer to usea cmdlet-based sequencing, while **False** tells the sequencer to use the App-V Sequencer interface. You can use both the cmdlet and the interface together in the same ConfigFile, for different apps.
    
    - **&lt;Enabled&gt;.** Allows the app to be sequenced by either the cmdlet or the App-V Sequencer interface. <!-- [Liz] Guessing. This wasn't called out in the text. -->

        **Example:**

        ```XML
        <?xml version="1.0"?>
            <Applications>
                <Application>
                    <Name>Notepad</Name>
                    <InstallerFolder>C:\Windows</InstallerFolder>
                    <Installer>notepad.exe</Installer>
                    <InstallerOptions>/S</InstallerOptions>
                    <TimeoutInMinutes>20</TimeoutInMinutes>
                    <Cmdlet>True</Cmdlet>
                    <Enabled>True</Enabled>
                </Application>
                <Application>
                    <Name>Word 2016</Name>
                    <InstallerFolder>C:\Program Files (x86)\Microsoft Office\root\Office16</InstallerFolder>
                    <Installer>winword.exe</Installer>
                    <InstallerOptions>/S</InstallerOptions>
                    <TimeoutInMinutes>20</TimeoutInMinutes>
                    <Cmdlet>True</Cmdlet>
                    <Enabled>True</Enabled>
                </Application>
            </Applications>
        </xml>
        ```     
3. Save your completed file, using the name **ConfigFile**.

**To start the App-V Sequencer interface and app installation process**
- Open PowerShell as an admin on the Host computer and run the following commands to start the batch sequencing:

    ```ps1
    New-BatchAppVSequencerPackages –ConfigFile <path_to_configfile> –VMName <name_of_vm> -OutputPath <path_to_your_output> 
    ```
    Where _VMName_ is the name of the virtual machine (VM) where you'll run the batch sequencing and _OutputPath_ is the full file path to where the sequenced packages should be copied.

    The cmdlet creates a "clean" checkpoint on the VM, the first app installer listed in the ConfigFile is copied from the Host computer to the VM, and then a new session of the VM opens (through VMConnect) and sequencing of the app begins from the command-line. After completing all of the app sequencing and package creation for the first app on the VM, the package is copied from the VM to the Host computer, specified in the OutputPath parameter. The cmdlet then goes to the second app on your list, reverting the VM back to a "clean" checkpoint and running through all of the steps again, until the second app package is copied to your output folder. This process continues until all apps included in your list are done. After the last app, the VM is reverted back to a "clean" checkpoint and turned off.
 
### Sequence multiple apps by using the App-V Sequencer interface
Sequencing multipe apps at the same time requires that you create a **ConfigFIle** to collect all of the info related to each round of sequencing. This file is then used by the App-V Sequencer interface after creating a "clean" checkpoint on your VM.

**To create your ConfigFile for use by the App-V Sequencer interface**
1. Determine the apps that need to be included in your App-V sequencing package, and then open a text editor, such as Notepad.

2. Add the following XML info for each app:

    - **&lt;Name&gt;.** The name of the app you're adding to the package.
    
    - **&lt;InstallerFolder&gt;.** The file path to the folder with the app installer.

    - **&lt;Installer&gt;.** The file name for the app executable. This will typically be an .exe or .msi file.

    - **&lt;TimeoutInMinutes&gt;.** The maximum time interval that the cmdlet should wait for sequencing to complete. You can enter a different value for each app, based on the size and complexity of the app itself. <!-- [Liz] Is this optional? -->

    - **&lt;Cmdlet&gt;.** Determines whether the sequencer uses the cmdlet or the App-V Sequencer interface. **True** tells the sequencer to usea cmdlet-based sequencing, while **False** tells the sequencer to use the App-V Sequencer interface. You can use both the cmdlet and the interface together in the same ConfigFile, for different apps.
    
    - **&lt;Enabled&gt;.** Allows the app to be sequenced by either the cmdlet or the App-V Sequencer interface. <!-- [Liz] Guessing. This wasn't called out in the text. -->

        **Example:**

        ```XML
        <?xml version="1.0"?>
            <Applications>
                <Application>
                    <Name>Notepad</Name>
                    <InstallerFolder>C:\Windows</InstallerFolder>
                    <Installer>notepad.exe</Installer>
                    <TimeoutInMinutes>20</TimeoutInMinutes>
                    <Cmdlet>False</Cmdlet>
                    <Enabled>True</Enabled>
                </Application>
                <Application>
                    <Name>Word 2016</Name>
                    <InstallerFolder>C:\Program Files (x86)\Microsoft Office\root\Office16</InstallerFolder>
                    <Installer>winword.exe</Installer>
                    <TimeoutInMinutes>20</TimeoutInMinutes>
                    <Cmdlet>False</Cmdlet>
                    <Enabled>True</Enabled>
                </Application>
            </Applications>
        </xml>
        ```
**To start the App-V Sequencer interface and app installation process**
- Open PowerShell as an admin on the Host computer and run the following commands to start the batch sequencing:

    ```ps1
    New-BatchAppVSequencerPackages –ConfigFile <path_to_configfile> –VMName <name_of_vm> -OutputPath <path_to_your_output> 
    ```
    Where _VMName_ is the name of the virtual machine (VM) where you'll run the batch sequencing and _OutputPath_ is the full file path to where the sequenced packages should be copied.

    The cmdlet creates a "clean" checkpoint on the VM, the first app installer listed in the ConfigFile is copied from the Host computer to the VM, and then a new session of the VM opens and the App-V Sequencer is started so you can start the sequencing process. After completing all of the app sequencing and package creation for the first app on the VM, you'll be prompted in the PowerShell window to provide the full file path to the output folder on the Host computer, where the final package is copied. The cmdlet then goes to the second app on your list, reverting the VM back to a "clean" checkpoint and running through all of the steps again, until the second app package is copied to your output folder. This process continues until all apps included in your list are done. After the last app, the VM is reverted back to a "clean" checkpoint and turned off. <!-- [Liz] Didn't they put the output location into the command in step 1? Why do they need to put it there AND in the prompt? -->

### Review the log files
There are 3 types of log files that occur when you sequence multiple apps at the same time:

- **New-BatchAppVSequencerPackages-<time stamp>.txt**. Located in the %temp%\AutoSequencer\Logs directory. This log contains info about the sequencing activities, such as "Copying installer to VM", "Scheduling sequencing task", and so on for each app. Additionally, if an app times out, this log contains the failure along with the checkpoint for troubleshooting the problem.

- **New-BatchAppVSequencerPackages-report-<time stamp>.txt**. Located in the **OutputPath** folder you specified earlier. This log contains info about the connections made to the VM, showing if there were any failures. Additionally, it briefly includes success or failure info for all of the apps.

- **Log.txt file**. Located in the **Output Package** folder. This file contains all code included in the NewAppVSequencerPackage cmdlet, including the allowed parameters.

### Related topics
- [Download the Windows ADK](https://developer.microsoft.com/windows/hardware/windows-assessment-deployment-kit)

- [How to install the App-V Sequencer](appv-install-the-sequencer.md)

- [Learn about Hyper-V on Windows Server 2016](https://technet.microsoft.com/en-us/windows-server-docs/compute/hyper-v/hyper-v-on-windows-server)

- [Automatically sequence a single app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-auto-sequence-a-new-app.md)

- [Manually sequence a single app using the Microsoft Application Virtualization Sequencer (App-V Sequencer)](appv-sequence-a-new-application.md) [Liz] Do we want to continue to point to the manual steps? Is there a reason to do one over the other?

**Have a suggestion for App-V?**<p>
Add or vote on suggestions on the [Application Virtualization feedback site](http://appv.uservoice.com/forums/280448-microsoft-application-virtualization).<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).