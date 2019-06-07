---
title: Return Codes (Windows 10)
description: Return Codes
ms.assetid: e71bbc6b-d5a6-4e48-ad01-af0012b35f22
ms.reviewer: 
manager: laurawi
ms.author: greglin
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: greg-lindsay
ms.date: 04/19/2017
ms.topic: article
---

# Return Codes


This topic describes User State Migration Tool (USMT) 10.0 return codes and error messages. Also included is a table listing the USMT return codes with their associated mitigation steps. In addition, this topic provides tips to help you use the logfiles to determine why you received an error.

Understanding the requirements for running USMT can help minimize errors in your USMT migrations. For more information, see [USMT Requirements](usmt-requirements.md).

## In This Topic


[USMT Return Codes](#bkmk-returncodes)

[USMT Error Messages](#bkmk-errormessages)

[Troubleshooting Return Codes and Error Messages](#bkmk-tscodeserrors)

## <a href="" id="bkmk-returncodes"></a>USMT Return Codes


If you encounter an error in your USMT migration, you can use return codes and the more specific information provided in the associated USMT error messages to troubleshoot the issue and to identify mitigation steps.

Return codes are grouped into the following broad categories that describe their area of error reporting:

Success or User Cancel

Invalid Command Lines

Setup and Initialization

Non-fatal Errors

Fatal Errors

As a best practice, we recommend that you set verbosity level to 5, **/v**<em>:5</em>, on the **ScanState**, **LoadState**, and **USMTUtils** command lines so that the most detailed reporting is available in the respective USMT logs. You can use a higher verbosity level if you want the log files output to go to a debugger.

## <a href="" id="bkmk-errormessages"></a>USMT Error Messages


Error messages provide more detailed information about the migration problem than the associated return code. For example, the **ScanState**, **LoadState**, or **USMTUtils** tool might return a code of "11” (for “USMT\_INVALID\_PARAMETERS") and a related error message that reads "/key and /keyfile both specified". The error message is displayed at the command prompt and is identified in the **ScanState**, **LoadState**, or **USMTUtils** log files to help you determine why the return code was received.

You can obtain more information about any listed Windows application programming interface (API) system error codes by typing **net helpmsg** on the command line and, then typing the error code number. For more information about System Error Codes, see [this Microsoft Web site](https://go.microsoft.com/fwlink/p/?LinkId=147060).

## <a href="" id="bkmk-tscodeserrors"></a>Troubleshooting Return Codes and Error Messages


The following table lists each return code by numeric value, along with the associated error messages and suggested troubleshooting actions.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Return code value</th>
<th align="left">Return code</th>
<th align="left">Error message</th>
<th align="left">Troubleshooting, mitigation, workarounds</th>
<th align="left">Category</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>0</p></td>
<td align="left"><p>USMT_SUCCESS</p></td>
<td align="left"><p>Successful run</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Success or Cancel</p></td>
</tr>
<tr class="even">
<td align="left"><p>1</p></td>
<td align="left"><p>USMT_DISPLAY_HELP</p></td>
<td align="left"><p>Command line help requested</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Success or Cancel</p></td>
</tr>
<tr class="odd">
<td align="left"><p>2</p></td>
<td align="left"><p>USMT_STATUS_CANCELED</p></td>
<td align="left"><p>Gather was aborted because of an EFS file</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>User chose to cancel (such as pressing CTRL+C)</p></td>
<td align="left"><p>Not applicable</p></td>
<td align="left"><p>Success or Cancel</p></td>
</tr>
<tr class="odd">
<td align="left"><p>3</p></td>
<td align="left"><p>USMT_WOULD_HAVE_FAILED</p></td>
<td align="left"><p>At least one error was skipped as a result of /c</p></td>
<td align="left"><p>Review ScanState, LoadState, or UsmtUtils log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>11</p></td>
<td align="left"><p>USMT_INVALID_PARAMETERS</p></td>
<td align="left"><p>/all conflicts with /ui, /ue or /uel</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/auto expects an optional parameter for the script folder</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/encrypt can&#39;t be used with /nocompress</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/encrypt requires /key or /keyfile</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/genconfig can&#39;t be used with most other options</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/genmigxml can&#39;t be used with most other options</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/hardlink requires /nocompress</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/key and /keyfile both specified</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/key or /keyfile used without enabling encryption</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/lae is only used with /lac</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/listfiles cannot be used with /p</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/offline requires a valid path to an XML file describing offline paths</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/offlinewindir requires a valid path to offline windows folder</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>/offlinewinold requires a valid path to offline windows folder</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>A command was already specified</p></td>
<td align="left"><p>Verify that the command-line syntax is correct and that there are no duplicate commands.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An option argument is missing</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An option is specified more than once and is ambiguous</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>By default /auto selects all users and uses the highest log verbosity level. Switches like /all, /ui, /ue, /v are not allowed.</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Command line arguments are required. Specify /? for options.</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Command line option is not valid</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>EFS parameter specified is not valid for /efs</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>File argument is invalid for /genconfig</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>File argument is invalid for /genmigxml</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Invalid space estimate path. Check the parameters and/or file system permissions</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>List file path argument is invalid for /listfiles</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Retry argument must be an integer</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Settings store argument specified is invalid</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors. Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Specified encryption algorithm is not supported</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The /efs:hardlink requires /hardlink</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The /targetWindows7 option is only available for Windows XP, Windows Vista, and Windows 7</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The store parameter is required but not specified</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The source-to-target domain mapping is invalid for /md</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The source-to-target user account mapping is invalid for /mu</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Undefined or incomplete command line option</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p>Invalid Command Lines</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Use /nocompress, or provide an XML file path with /p&quot;pathtoafile&quot; to get a compressed store size estimate</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>User exclusion argument is invalid</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Verbosity level must be specified as a sum of the desired log options: Verbose (0x01), Record Objects (0x04), Echo to debug port (0x08)</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Volume shadow copy feature is not supported with a hardlink store</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Wait delay argument must be an integer</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>12</p></td>
<td align="left"><p>USMT_ERROR_OPTION_PARAM_TOO_LARGE</p></td>
<td align="left"><p>Command line arguments cannot exceed 256 characters</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p>Invalid Command Lines</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Specified settings store path exceeds the maximum allowed length of 256 characters</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>13</p></td>
<td align="left"><p>USMT_INIT_LOGFILE_FAILED</p></td>
<td align="left"><p>Log path argument is invalid for /l</p></td>
<td align="left"><p>When /l is specified in the ScanState command line, USMT validates the path. Verify that the drive and other information, for example file system characters, are correct.</p></td>
<td align="left"><p>Invalid Command Lines</p></td>
</tr>
<tr class="even">
<td align="left"><p>14</p></td>
<td align="left"><p>USMT_ERROR_USE_LAC</p></td>
<td align="left"><p>Unable to create a local account because /lac was not specified</p></td>
<td align="left"><p>When creating local accounts, the command-line options /lac and /lae should be used.</p></td>
<td align="left"><p>Invalid Command Lines</p></td>
</tr>
<tr class="odd">
<td align="left"><p>26</p></td>
<td align="left"><p>USMT_INIT_ERROR</p></td>
<td align="left"><p>Multiple Windows installations found</p></td>
<td align="left"><p>Listfiles.txt could not be created. Verify that the location you specified for the creation of this file is valid.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Software malfunction or unknown exception</p></td>
<td align="left"><p>Check all loaded .xml files for errors, common error when using /I to load the Config.xml file.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Unable to find a valid Windows directory to proceed with requested offline operation; Check if offline input file is present and has valid entries</p></td>
<td align="left"><p>Verify that the offline input file is present and that it has valid entries. USMT could not find valid offline operating system. Verify your offline directory mapping.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>27</p></td>
<td align="left"><p>USMT_INVALID_STORE_LOCATION</p></td>
<td align="left"><p>A store path can&#39;t be used because an existing store exists; specify /o to overwrite</p></td>
<td align="left"><p>Specify /o to overwrite an existing intermediate or migration store.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>A store path is missing or has incomplete data</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An error occurred during store creation</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set. Specify /o to overwrite an existing intermediate or migration store.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An inappropriate device such as a floppy disk was specified for the store</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Invalid store path; check the store parameter and/or file system permissions</p></td>
<td align="left"><p>Invalid store path; check the store parameter and/or file system permissions</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The file layout and/or file content is not recognized as a valid store</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set. Specify /o to overwrite an existing intermediate or migration store.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The store path holds a store incompatible with the current USMT version</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The store save location is read-only or does not support a requested storage option</p></td>
<td align="left"><p>Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>28</p></td>
<td align="left"><p>USMT_UNABLE_GET_SCRIPTFILES</p></td>
<td align="left"><p>Script file is invalid for /i</p></td>
<td align="left"><p>Check all specified migration .xml files for errors. This is a common error when using /i to load the Config.xml file.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Unable to find a script file specified by /i</p></td>
<td align="left"><p>Verify the location of your script files, and ensure that the command-line options are correct.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>29</p></td>
<td align="left"><p>USMT_FAILED_MIGSTARTUP</p></td>
<td align="left"><p>A minimum of 250 MB of free space is required for temporary files</p></td>
<td align="left"><p>Verify that the system meets the minimum temporary disk space requirement of 250 MB. As a workaround, you can set the environment variable USMT_WORKING_DIR=&lt;path&gt; to redirect the temporary files working directory.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Another process is preventing migration; only one migration tool can run at a time</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Failed to start main processing, look in log for system errors or check the installation</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Migration failed because of an XML error; look in the log for specific details</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Unable to automatically map the drive letters to match the online drive letter layout; Use /offline to provide a mapping table</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>31</p></td>
<td align="left"><p>USMT_UNABLE_FINDMIGUNITS</p></td>
<td align="left"><p>An error occurred during the discover phase; the log should have more specific information</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p>32</p></td>
<td align="left"><p>USMT_FAILED_SETMIGRATIONTYPE</p></td>
<td align="left"><p>An error occurred processing the migration system</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p>33</p></td>
<td align="left"><p>USMT_UNABLE_READKEY</p></td>
<td align="left"><p>Error accessing the file specified by the /keyfile parameter</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>The encryption key must have at least one character</p></td>
<td align="left"><p>Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>34</p></td>
<td align="left"><p>USMT_ERROR_INSUFFICIENT_RIGHTS</p></td>
<td align="left"><p>Directory removal requires elevated privileges</p></td>
<td align="left"><p>Log on as Administrator, and run with elevated privileges.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>No rights to create user profiles; log in as Administrator; run with elevated privileges</p></td>
<td align="left"><p>Log on as Administrator, and run with elevated privileges.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>No rights to read or delete user profiles; log in as Administrator, run with elevated privileges</p></td>
<td align="left"><p>Log on as Administrator, and run with elevated privileges.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>35</p></td>
<td align="left"><p>USMT_UNABLE_DELETE_STORE</p></td>
<td align="left"><p>A reboot is required to remove the store</p></td>
<td align="left"><p>Reboot to delete any files that could not be deleted when the command was executed.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>A store path can&#39;t be used because it contains data that could not be overwritten</p></td>
<td align="left"><p>A migration store could not be deleted. If you are using a hardlink migration store you might have a locked file in it. You should manually delete the store, or use <strong>USMTUtils /rd</strong> command to delete the store.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>There was an error removing the store</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>36</p></td>
<td align="left"><p>USMT_ERROR_UNSUPPORTED_PLATFORM</p></td>
<td align="left"><p>Compliance check failure; please check the logs for details</p></td>
<td align="left"><p>Investigate whether there is an active temporary profile on the system.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Use of /offline is not supported during apply</p></td>
<td align="left"><p>The <strong>/offline</strong> command was not used while running in the Windows Preinstallation Environment (WinPE).</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Use /offline to run gather on this platform</p></td>
<td align="left"><p>The <strong>/offline</strong> command was not used while running in WinPE.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>37</p></td>
<td align="left"><p>USMT_ERROR_NO_INVALID_KEY</p></td>
<td align="left"><p>The store holds encrypted data but the correct encryption key was not provided</p></td>
<td align="left"><p>Verify that you have included the correct encryption /key or /keyfile.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p>38</p></td>
<td align="left"><p>USMT_ERROR_CORRUPTED_NOTENCRYPTED_STORE</p></td>
<td align="left"><p>An error occurred during store access</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors. Make sure that the store path is accessible and that the proper permission levels are set.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="even">
<td align="left"><p>39</p></td>
<td align="left"><p>USMT_UNABLE_TO_READ_CONFIG_FILE</p></td>
<td align="left"><p>Error reading Config.xml</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors in the Config.xml file.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>File argument is invalid for /config</p></td>
<td align="left"><p>Check the command line you used to load the Config.xml file. You can use online Help by typing /? on the command line.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>40</p></td>
<td align="left"><p>USMT_ERROR_UNABLE_CREATE_PROGRESS_LOG</p></td>
<td align="left"><p>Error writing to the progress log</p></td>
<td align="left"><p>The Progress log could not be created. Verify that the location is valid and that you have write access.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Progress log argument is invalid for /progress</p></td>
<td align="left"><p>The Progress log could not be created. Verify that the location is valid and that you have write access.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>41</p></td>
<td align="left"><p>USMT_PREFLIGHT_FILE_CREATION_FAILED</p></td>
<td align="left"><p>Can&#39;t overwrite existing file</p></td>
<td align="left"><p>The Progress log could not be created. Verify that the location is valid and that you have write access.</p></td>
<td align="left"><p>Setup and Initialization</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Invalid space estimate path. Check the parameters and/or file system permissions</p></td>
<td align="left"><p>Review ScanState log or LoadState log for details about command-line errors.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>42</p></td>
<td align="left"><p>USMT_ERROR_CORRUPTED_STORE</p></td>
<td align="left"><p>The store contains one or more corrupted files</p></td>
<td align="left"><p>Review UsmtUtils log for details about the corrupted files. For information on how to extract the files that are not corrupted, see <a href="usmt-extract-files-from-a-compressed-migration-store.md" data-raw-source="[Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md)">Extract Files from a Compressed USMT Migration Store</a>.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p>61</p></td>
<td align="left"><p>USMT_MIGRATION_STOPPED_NONFATAL</p></td>
<td align="left"><p>Processing stopped due to an I/O error</p></td>
<td align="left"><p>USMT exited but can continue with the /c command-line option, with the optional configurable &lt;ErrorControl&gt; section or by using the /vsc command-line option.</p></td>
<td align="left"><p>Non-fatal Errors</p></td>
</tr>
<tr class="even">
<td align="left"><p>71</p></td>
<td align="left"><p>USMT_INIT_OPERATING_ENVIRONMENT_FAILED</p></td>
<td align="left"><p>A Windows Win32 API error occurred</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p>Fatal Errors</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An error occurred when attempting to initialize the diagnostic mechanisms such as the log</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Failed to record diagnostic information</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Unable to start. Make sure you are running USMT with elevated privileges</p></td>
<td align="left"><p>Exit USMT and log in again with elevated privileges.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p>72</p></td>
<td align="left"><p>USMT_UNABLE_DOMIGRATION</p></td>
<td align="left"><p>An error occurred closing the store</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p>Fatal Errors</p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An error occurred in the apply process</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>An error occurred in the gather process</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="odd">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Out of disk space while writing the store</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>Out of temporary disk space on the local system</p></td>
<td align="left"><p>Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details.</p></td>
<td align="left"><p></p></td>
</tr>
</tbody>
</table>

 

## Related topics


[User State Migration Tool (USMT) Troubleshooting](usmt-troubleshooting.md)

[Log Files](usmt-log-files.md)

 

 





