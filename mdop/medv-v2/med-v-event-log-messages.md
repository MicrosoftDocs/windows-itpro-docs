---
title: MED-V Event Log Messages
description: MED-V Event Log Messages
author: dansimp
ms.assetid: 7ba7344d-153b-4cc4-a00a-5d42aee9986b
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# MED-V Event Log Messages


The log files for Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 provide detailed information about how to deploy and manage MED-V in your enterprise and help verify functionality or help troubleshoot issues.

## Event IDs


The following are a list of MED-V event IDs to help troubleshoot issues that you might encounter when you deploy or manage MED-V.

### Fts

Shows the event IDs for first time setup.

### Event ID 3066

Start virtual machine operation failed.

<a href="" id="description"></a>**Description**  
A potential problem exists with the virtual hard disk (VHD) that you are using to create a MED-V workspace.

<a href="" id="solution"></a>**Solution**  
Verify that you can create a virtual machine with the VHD for MED-V and that it can be started.

### Event ID 3071

Virtual machine preparation failed.

<a href="" id="description"></a>**Description**  
A problem occurred with first time setup that might have been caused by many different issues. These include problems with network connectivity.

<a href="" id="solution"></a>**Solution**  
Restart the MED-V Host Agent to rerun first time setup.

### Event ID 3078

Virtual machine preparation failed.

<a href="" id="description"></a>**Description**  
A potential problem exists with the VHD that you are using to create a MED-V workspace.

<a href="" id="solution"></a>**Solution**  
Verify that you can create a virtual machine with the VHD for MED-V and that it can be started.

### Event ID 3079

Retrying virtual machine preparation.

<a href="" id="description"></a>**Description**  
MED-V is trying to prepare the virtual machine.

<a href="" id="solution"></a>**Solution**  
No action is required. Let first time setup finish.

### Event ID 3080

The client was stopped when preparing the virtual machine.

<a href="" id="description"></a>**Description**  
MED-V stops unexpectedly when it tries to prepare the virtual machine.

<a href="" id="solution"></a>**Solution**  
Start the MED-V Host Agent and let first time setup complete

### Event ID 3084

Virtual machine is not valid. First time setup needs to be re-run.

<a href="" id="description"></a>**Description**  
The MED-V Host Agent detected a problem with the virtual machine.

<a href="" id="solution"></a>**Solution**  
No action is required. Let first time setup finish.

### Event ID 3099

Call to start virtual machine failed.

<a href="" id="description"></a>**Description**  
A potential problem exists with the VHD you are using to create a MED-V workspace.

<a href="" id="solution"></a>**Solution**  
Verify that you can create a virtual machine with the VHD for MED-V and that it can be opened.

### VM Management

### Event ID 4022

VMManagerException Fatal error while issuing command to VM.

<a href="" id="description"></a>**Description**  
The end user tried to exit MED-V by logging off or by shutting down the MED-V host, and the VMTaskTimeout configuration setting was exceeded.

<a href="" id="solution"></a>**Solution**  
Restart MED-V.

### Event ID 4028

VM Operation timed out.

<a href="" id="description"></a>**Description**  
The end user tried to exit MED-V by logging off or by shutting down the host, and the VMTaskTimeout configuration setting was exceeded.

<a href="" id="solution"></a>**Solution**  
Restart MED-V.

### Event ID 4038

Vmsal posted an error message to the user.

<a href="" id="description"></a>**Description**  
An error message is displayed to the end user stating that MED-V could not start the virtual application.

<a href="" id="solution"></a>**Solution**  
If the error is logged two or more times in a row, stop MED-V and connect to the virtual machine by using Windows Virtual PC console and attempt to start the application in Full Screen.

### Event ID 4040

Recycling Additions because TerminalServices is not initialized in the guest.

<a href="" id="description"></a>**Description**  
MED-V rebooted the virtual machine because Remote Desktop Services was not initialized on the virtual machine.

<a href="" id="solution"></a>**Solution**  
If the error is logged two or more times in a row, stop MED-V and connect to the virtual machine by using Windows Virtual PC console.

### Event ID 4042

Failed to recycle additions in the guest.

<a href="" id="description"></a>**Description**  
MED-V failed to recycle virtual machine additions on the virtual machine.

<a href="" id="solution"></a>**Solution**  
If the error is logged two or more times in a row, stop MED-V and connect to the virtual machine by using Windows Virtual PC console.

### Event ID 4043

Failed to reset expired password in the virtual machine.

<a href="" id="description"></a>**Description**  
The end user did not reset the password in the virtual machine before it expired. As a result, the user might not be able to access network resources or save work.

<a href="" id="solution"></a>**Solution**  
Shut down the MED-V guest and restart it.

### URL Redirection

### Event ID 5005

Couldn’t get VM name from configuration; can’t launch guest browser.

<a href="" id="description"></a>**Description**  
URL Redirection could not obtain the MED-V workspace name from the configuration. As a result, it cannot inform Windows Virtual PC to open the redirected URL in the MED-V workspace browser.

<a href="" id="solution"></a>**Solution**  
Ensure that the MED-V workspace name is set and that it matches a virtual machine name in the C:\\Users\\&lt;*user*&gt;\\Virtual Machines directory. The MED-V workspace name is located at HKLM\\SOFTWARE\\Microsoft\\Medv\\v2\\VM\\Name.

For example, if the user is "Matt" and the workspace name is "mattsworkspace", the value of HKLM\\SOFTWARE\\Microsoft\\Medv\\v2\\VM\\Name should be "mattsworkspace", and there should be a file that is named C:\\Users\\Matt\\Virtual Machines\\mattsworkspace.vcmx.

### Event ID 5006

Failed to create pipe server.

<a href="" id="description"></a>**Description**  
The URL Redirection service could not create the pipe server to communicate with Internet Explorer.

<a href="" id="solution"></a>**Solution**  
Check system event logs for attempts to create a file or resource whose path begins similar to the following: "\\\\.\\pipe\\MEDVUrlRedirectionPipe\_" and ends with the user’s user name and domain name. If this is not present in the event log, restart the computer.

### ConfigMgr (Guest)

### Event ID 7001

The host network configuration data is not properly formatted.

<a href="" id="description"></a>**Description**  
Either the network configuration received from the host is an incorrectly formatted XML string, or the network information returned from the host cannot be written to an XML document.

<a href="" id="solution"></a>**Solution**  
Restart the host computer and the virtual machine.

### Event ID 7005

A change to the host network configuration was detected, but was not able to be applied because the host network configuration data was not properly formatted.

<a href="" id="description"></a>**Description**  
A change to the host network configuration was communicated to the virtual machine, but could not be processed in the virtual machine because of an error. This error could be caused by incorrectly formatted data or the inability to set the information into the Windows Management Instrumentation (WMI) CCMNetworkAdapter instance.

<a href="" id="solution"></a>**Solution**  
Restart the host and virtual machine.

### ConfigMgr (Host)

### Event ID 8006

The virtual machine cannot be found.

<a href="" id="description"></a>**Description**  
Windows Virtual PC 7 cannot locate the virtual machine. The virtual machine might have been deleted, moved, removed, or access was denied.

<a href="" id="solution"></a>**Solution**  
Reinstall the virtual machine.

### Event ID 8008

The workstation's network configuration information could not be retrieved.

<a href="" id="description"></a>**Description**  
Network configuration information could not be collected from the MED-V host, most likely because of a system call failure in the .NET Framework. This failure can also occur if the network information returned from the MED-V host cannot be written to an XML document.

<a href="" id="solution"></a>**Solution**  
Restart the host workstation.

### Event ID 8010

The network configuration data could not be set in the virtual machine.

<a href="" id="description"></a>**Description**  
The MED-V host network address translation (NAT) could not be communicated to the virtual machine, most likely because the virtual machine is in a bad state or the Windows Virtual PC Additions were not installed or enabled.

<a href="" id="solution"></a>**Solution**  
Shut down and restart the virtual machine. In addition, you might have to reinstall the virtual machine.

### Event ID 8011

The network configuration data could not be reset in the virtual machine.

<a href="" id="description"></a>**Description**  
The MED-V host network configuration (BRIDGED) could not be communicated to the virtual machine, most likely because the virtual machine is in a bad state or the Windows Virtual PC Additions were not installed or enabled.

<a href="" id="solution"></a>**Solution**  
Shut down and restart the virtual machine. In addition, you might have to reinstall the virtual machine.

### Printer Redirection

### Event ID 9001

File Permission Error.

<a href="" id="description"></a>**Description**  
The end user is not authorized to access the folder required to open or create the MED-V printer file for reading.

<a href="" id="solution"></a>**Solution**  
Verify that the User\\AppData\\ path can be accessed and that the user has permission to read and write to it. For example, if the user is "Matt", the path C:\\Users\\Matt\\AppData\\, and all files therein should have Read and Write permissions. And if it exists, the path C:\\Users\\Matt\\AppData\\Local\\Microsoft\\MEDV\\v2\\ and all files therein should have Read and Write permissions.

### Event ID 9002

File Permission Error.

<a href="" id="description"></a>**Description**  
The end user is not authorized to access the folder required to open or create the MED-V printer file for writing.

<a href="" id="solution"></a>**Solution**  
Ensure that the User\\AppData\\ path can be accessed, and that the user has permission to read and write to it. For example, if the user is "Matt", the path C:\\Users\\Matt\\AppData\\ and all files therein should have Read and Write permissions. And if it exists, the path C:\\Users\\Matt\\AppData\\Local\\Microsoft\\MEDV\\v2\\ and all files therein should have Read and Write permissions.

### Event ID 9004

Could not create path for storing MEDV printer files.

<a href="" id="description"></a>**Description**  
The printer redirection service could not access files or create directories required for storing the printer information.

<a href="" id="solution"></a>**Solution**  
Verify that the User\\AppData\\ path can be accessed and that the user has permission to read and write to it. For example, if the user is "Matt", the path C:\\Users\\Matt\\AppData\\ and all files therein should have Read and Write permissions. And if it exists, the path C:\\Users\\Matt\\AppData\\Local\\Microsoft\\MEDV\\v2\\ and all files therein should have Read and Write permissions.

### Event ID 9005

Couldn’t get VM name from configuration; cannot launch guest installer. Cannot update MED-V – No host network detected.

<a href="" id="description"></a>**Description**  
The printer redirection service was not able to obtain the MED-V workspace name from the MED-V configuration and cannot inform Windows Virtual PC to start the installer on the MED-V guest.

<a href="" id="solution"></a>**Solution**  
Ensure that the MED-V workspace name is set and that it matches a virtual machine name in the C:\\Users\\&lt;*user*&gt;\\Virtual Machines directory. The MED-V workspace name is located at HKLM\\SOFTWARE\\Microsoft\\Medv\\v2\\VM\\Name.

For example, if the user is "Matt" and the workspace name is "mattsworkspace", the value of HKLM\\SOFTWARE\\Microsoft\\Medv\\v2\\VM\\Name should be "mattsworkspace" and there should be a file that is named C:\\Users\\Matt\\Virtual Machines\\mattsworkspace.vcmx.

### Application Publishing

### Event ID 10015

A file system error occurred during the reconcile process. The reconcile process will not process the file &lt;*filename*&gt; but will continue to process any other changes.

<a href="" id="description"></a>**Description**  
An unauthorized access or I/O error occurred when a shortcut was being created or deleted.

<a href="" id="solution"></a>**Solution**  
Check that the file path can be accessed and that the user has permissions to create or delete the specified file.

### Event ID 10021

Error &lt;*error\_information*&gt; for file operation &lt;*operation\_name*&gt; on file &lt;*filename*&gt;.

<a href="" id="description"></a>**Description**  
An unauthorized access or I/O error occurred when a shortcut was being created or deleted.

<a href="" id="solution"></a>**Solution**  
Check that the file path can be accessed and that the user has permissions to create or delete the specified file.

### Guest Patching

### Event ID 11001

Guest wakeup task usage message.

<a href="" id="description"></a>**Description**  
MedvHost.exe with the /GuestWakeup option was executed incorrectly, or the command is formatted incorrectly.

<a href="" id="solution"></a>**Solution**  
Ensure that the command is executed with the following format:

Medvhost.exe /GuestWakeup /d:&lt; *duration\_in\_minutes*&gt; /v:”&lt; *workspace\_name*&gt;” where

&lt;*duration\_in\_minutes*&gt; is the number of minutes that the virtual machine should stay awake (default is 240) and

&lt;*workspace\_name*&gt; is the name of the virtual machine that should be awakened.

### Event ID 11002

Cannot update MED-V – No host network detected.

<a href="" id="description"></a>**Description**  
Guest patching could not finish because no host network connection was detected.

<a href="" id="solution"></a>**Solution**  
Connect the MED-V host to an active network connection before you run guest patching.

### Event ID 11003

Cannot update MED-V – Host not running on A/C powerFailed to create pipe server.

<a href="" id="description"></a>**Description**  
Guest patching could not finish because the host appears to be running on battery power instead of from a power cord.

<a href="" id="solution"></a>**Solution**  
Connect the host computer to a power cord before you run guest patching.

### Client UX

### Event ID 14003

The following tray status message was too long and could not be displayed: &lt;*tray\_status\_message*&gt;

<a href="" id="description"></a>**Description**  
MED-V created an unanticipated string that was too long for the tray tooltip or balloon message. As a result, the displayed message was truncated.

<a href="" id="solution"></a>**Solution**  
This is a rare error that can occur when MED-V is randomly creating the tooltip text. There is no solution.

### Event ID 14004

MED-V stopped due to an unhandled exception.

<a href="" id="description"></a>**Description**  
An unhandled exception caused MED-V to stop unexpectedly.

<a href="" id="solution"></a>**Solution**  
Restart MED-V.

### Event ID 14005

Server attempted to create mutex but it already existed.

<a href="" id="description"></a>**Description**  
A second instance of MedvHost.exe is stuck in memory.

<a href="" id="solution"></a>**Solution**  
Open TaskManager and end all MedvHost.exe processes.

### Event ID 14006

Error modifying or deleting registry value &lt;*registry\_value*&gt;.

<a href="" id="description"></a>**Description**  
MED-V is unable to modify the specified entry in the registry.

<a href="" id="solution"></a>**Solution**  
Ensure that you install or uninstall MED-V with administrative credentials.

### Event ID 14007

The file specified (&lt;*filename*&gt;) is not valid.

<a href="" id="description"></a>**Description**  
During install or uninstall, a corrupted temp file was passed to MED-V host.

<a href="" id="solution"></a>**Solution**  
Delete all files in the Temp folder and reinstall or uninstall MED-V.

### Event ID 14008

File not found: &lt;*filename*&gt;.

<a href="" id="description"></a>**Description**  
During install or uninstall, a path of a required temp file was not found.

<a href="" id="solution"></a>**Solution**  
Delete all files in the Temp folder and reinstall or uninstall MED-V.

### Event ID 14009

Unable to read parameter file &lt;*filename*&gt;.

<a href="" id="description"></a>**Description**  
During the install or uninstall process, MED-V was unable to read a temp file.

<a href="" id="solution"></a>**Solution**  
Delete all files in the Temp folder and reinstall or uninstall MED-V. In addition, verify that the user has the necessary rights and permissions to the Temp folder.

### Event ID 14010

Error deserializing parameter file &lt;*filename*&gt;.

<a href="" id="description"></a>**Description**  
During the install or uninstall process, MED-V encountered a corrupted temp file.

<a href="" id="solution"></a>**Solution**  
Delete all files in the Temp folder and reinstall or uninstall MED-V. In addition, verify that the user has the necessary rights and permissions to the Temp folder.

### Event ID 14011

Unexpected error deserializing parameter file &lt;*filename*&gt;.

<a href="" id="description"></a>**Description**  
During the install or uninstall process, MED-V encountered a corrupted temp file.

<a href="" id="solution"></a>**Solution**  
Delete all files in the Temp folder and reinstall or uninstall MED-V. In addition, verify that the user has the necessary rights and permissions to the Temp folder.

### Event ID 14012

Unexpected error when settings rights on folder &lt;*folder\_name*&gt; for user &lt;*username*&gt;.

<a href="" id="description"></a>**Description**  
An error occurs when MED-V is unable to set rights and permissions on certain folders during installation.

<a href="" id="solution"></a>**Solution**  
Check the administrator rights to the following folders:

@"%ProgramData%\\Microsoft\\Medv\\AllUsers"

@"%ProgramData%\\Microsoft\\Medv\\MedvLock"

@"%ProgramData%\\Microsoft\\Medv\\Monitoring"

### Event ID 14013

Unexpected error when creating lock file.

<a href="" id="description"></a>**Description**  
An error occurs when MED-V is unable to create a file in the @"%ProgramData%\\Microsoft\\Medv\\MedvLock" folder during installation.

<a href="" id="solution"></a>**Solution**  
Check the administrator rights to the MedvLock folder.

## Related topics


[Troubleshooting MED-V](troubleshooting-med-vmedv2.md)

 

 





