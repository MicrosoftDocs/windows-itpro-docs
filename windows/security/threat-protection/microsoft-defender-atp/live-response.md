---
title: Investigate entities on machines using live response in Microsoft Defender ATP
description: Access a machine using a secure remote shell connection to do investigative work and take immediate response actions on a machine in real-time.
keywords: remote, shell, connection, live, response, real-time, command, script, remediate, hunt, export, log, drop, download, file, 
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
ms.topic: article
---

# Investigate entities on machines using live response

**Applies to:**
- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)

[!include[Prerelease information](prerelease.md)]


Live response is a capability that gives you instantaneous access to a machine using a remote shell connection. This gives you the power to do in-depth investigative work and take immediate response actions to promptly contain identified threats – real-time. 

Live response is designed to enhance investigations by enabling you to collect forensic data, run scripts, send suspicious entities for analysis, remediate threats, and proactively hunt for emerging threats. 

With live response, analysts will have the ability to:
- Run basic and advanced commands to do investigative work 
- Download files such as malware samples and outcomes of PowerShell scripts
- Upload a PowerShell script or executable to the library and run it on the machine from a tenant level
- Take or undo remediation actions


## Before you begin
Before you can initiate a session on a machine, make sure you fulfill the following requirements:

- Machines must be Windows 10, version 18323 (also known as Windows 10 19H1) or later. 

- **Enable live response from the settings page**<br>
You'll need to enable the live response capability in the [Advanced features settings](advanced-features.md) page.

    >[!NOTE]
    >Only users with manage security or global admin roles can edit these settings.

- **Enable live response unsigned script execution** (optional) <br>

    >[!WARNING]
    >Allowing the use of unsigned scripts may increase your exposure to threats.
 
  Running unsigned scripts is generally not recommended as it can increase your exposure to threats. If you must use them however, you'll need to enable the setting in the [Advanced features settings](advanced-features.md) page.
    
- **Ensure that you have the appropriate permissions**<br>
	Only users who have been provisioned with the appropriate permissions can initiate a session. For more information on role assignments see, [Create and manage roles](user-roles.md). 

    Depending on the role that's been granted to you, you can run basic or advanced live response commands. Users permission are controlled by RBAC custom role. 

## Live response dashboard overview
When you initiate a live response session on a machine, a dashboard opens. The dashboard provides information about the session such as: 

- Who created the session
- When the session started
- The duration of the session

The dashboard also gives you access to:
- Disconnect session
- Upload files to the library 
- Command console
- Command log


## Initiate a live response session on a machine 

1. Log in to Microsoft Defender Security Center.
2. Navigate to the machines list page and select a machine to investigate. The machine page opens.

    >[!NOTE]
    >Machines must be on Windows 10, version 18323 (also known as Windows 10 19H1) or later. 

2. Launch the live response session by selecting **Initiate live response session**. A command console is displayed. Wait while the session connects to the machine.
3. Use the built-in commands to do investigative work. For more information see, [Live response commands](#live-response-commands).
4. After completing your investigation, select **Disconnect session**, then select **Confirm**.



## Live response commands
Depending on the role that's been granted to you, you can run basic or advanced live response commands. User permissions are controlled by RBAC custom roles. For more information on role assignments see, [Create and manage roles](user-roles.md). 

### Basic commands
The following commands are available for user roles that's been granted the ability to run **basic** live response commands. For more information on role assignments see, [Create and manage roles](user-roles.md). 

Command | Description 
:---|:---|:---
cd | Changes the current directory. 
cls | Clears the console screen. 
connect | Initiates a live response session to the machine. 
connections | Shows all the active connections.
dir | Shows a list of files and subdirectories in a directory
drivers |  Shows all drivers installed on the machine.
fileinfo | Get information about a file.
findfile | Locates files by a given name on the machine.
help | Provides help information for live response commands.
persistence | Shows all known persistence methods on the machine.
processes | Shows all processes running on the machine.
registry | Shows registry values.
sheduledtasks| Shows all scheduled tasks on the machine. 
services | Shows all services on the machine. 
trace | Sets the terminal's logging mode to debug.


### Advanced commands
The following commands are available for user roles that's been granted the ability to run **advanced** live response commands. For more information on role assignments see, [Create and manage roles](user-roles.md). 

Command | Description 
:---|:---
analyze | Analyses the entity with various incrimination engines to reach a verdict.
getfile | Gets a file from the machine. <br> NOTE: This command has a prerequisite command. You can use the `-auto` command in conjuction with `getfile` to automatically run the prerequisite command. 
run | Runs a PowerShell script from the library on the machine.
library | Lists files that were uploaded to the live response library.
putfile | Puts a file from the library to the machine. Files are saved in a working folder and are deleted when the machine restarts by default.
remediate | Remediates an entity on the machine. The remediation action will vary depending on the entity type:<br>- File: delete<br>- Process: stop, delete image file<br>- Service: stop, delete image file<br>- Registry entry: delete<br>- Scheduled task: remove<br>- Startup folder item: delete file <br> NOTE: This command has a prerequisite command. You can use the `-auto` command in conjuction with `remediate` to automatically run the prerequisite command. 
undo | Restores an entity that was remediated. 


## Use live response commands
The commands that you can use in the console follow similar principles as [Windows Commands](https://docs.microsoft.com/en-us/windows-server/administration/windows-commands/windows-commands#BKMK_c).

The advanced commands offer a more robust set of actions that allow you to take more powerful actions such as download and upload a file, run scripts on the machine, and take remediation actions on an entity.

### Get a file from the machine
For scenarios when you'd like get a file from a machine you're investigating, you can use the `getfile` command. This allows you to save the file from the machine for further investigation.

>[!NOTE]
>There is a file size limit of 750mb.

### Put a file in the library
Live response has a library where you can put files into. The library stores files (such as scripts) that can be run in a live response session at the tenant level.

Live response allows PowerShell scripts to run, however you must first put the files into the library before you can run them. 

You can have a collection of PowerShell scripts that can run on machines that you initiate live response sessions with. 

**To upload a file in the library:** 
1. Click **Upload file to library**. 
2. Click **Browse** and select the file.
3. Provide a brief description.
4. Specify if you'd like to overwrite a file with the same name.
5. If you'd like to be know what parameters are needed for the script, select the script parameters check box. In the text field, enter an example and a description.
6. Click **Confirm**. 
7. (Optional) To verify that the file was uploaded to the library, run the `library` command.


### Cancel a command
Anytime during a session, you can cancel a command by pressing CTRL + C.  

>[!WARNING]
>Using this shortcut will not stop the command in the agent side. It will only cancel the command in the portal. So, changing operations such as "remediate" may continue, while the command is canceled. 



### Automatically run prerequisite commands
Some commands have prerequisite commands to run. If you don't run the prerequisite command, you'll get an error. For example, running the `download` command without `fileinfo` will return an error.

You can use the auto flag to automatically run prerequisite commands, for example:

```
getfile c:\Users\user\Desktop\work.txt -auto
```


## Run a PowerShell script 
Before you can run a PowerShell script, you must first upload it to the library. 

After uploading the script to the library, use the `run` command to run the script.

If you plan to use an unsigned script in the session, you'll need to enable the setting in the [Advanced features settings](advanced-features.md) page.

>[!WARNING]
>Allowing the use of unsigned scripts may increase your exposure to threats.



## Apply command parameters
- View the console help to learn about command parameters. To learn about an individual command, run:
 
    `help <command name>`

- When applying parameters to commands, note that parameters are handled based on a fixed order:
 
    `<command name> param1 param2` 

- When specifying parameters outside of the fixed order, specify the name of the parameter with a hyphen before providing the value:
 
    `<command name> -param2_name param2`

- When using commands that have prerequisite commands, you can use flags:

    `<command name> -type file -id <file path> - auto` or `remediate file <file path> - auto`.



## Supported output types
Live response supports table and JSON format output types. For each command, there's a default output behavior. You can modify the output in your preferred output format using the following commands:

- `-output json`
- `-output table`

>[!NOTE]
>Fewer fields are shown in table format due to the limited space. To see more details in the output, you can use the JSON output command so that more details are shown.


## Supported output pipes
Live response supports output piping to CLI and file. CLI is the default output behavior. You can pipe the output to a file using the following command: [command] > [filename].txt.  

Example:

```
processes > output.txt
```



## View the command log
Select the **Command log** tab to see the commands used on the machine during a session. 
Each command is tracked with full details such as:
- ID
- Command line
- Duration
- Status and input or output side bar




## Limitations
- Live response sessions are limited to 10 live response sessions at a time
- Large scale command execution is not supported
- A user can only initiate one session at a time
- A machine can only be in one session at a time
- There is a file size limit of 750mb when downloading files from a machine

## Related topic
- [Live response command examples](live-response-command-examples.md)









