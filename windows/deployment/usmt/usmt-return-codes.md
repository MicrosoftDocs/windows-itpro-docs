---
title: Return Codes (Windows 10)
description: Learn about User State Migration Tool (USMT) 10.0 return codes and error messages. Also view a list of USMT return codes and their associated migration steps.
ms.assetid: e71bbc6b-d5a6-4e48-ad01-af0012b35f22
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
audience: itpro
author: aczechowski
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

You can obtain more information about any listed Windows application programming interface (API) system error codes by typing **net helpmsg** on the command line and, then typing the error code number. For more information about System Error Codes, see [this Microsoft Web site](/windows/win32/debug/system-error-codes--0-499-).

## <a href="" id="bkmk-tscodeserrors"></a>Troubleshooting Return Codes and Error Messages

The following information lists each return code by numeric value, along with the associated error messages and suggested troubleshooting actions.

- **0: USMT_SUCCESS**
  - **Error message**: Successful run

- **1: USMT_DISPLAY_HELP**
  - **Error message**: Command line help requested

- **2: USMT_STATUS_CANCELED**
  - **Error message**: 
    - Gather was aborted because of an EFS file
    - User chose to cancel (such as pressing CTRL+C)

- **3: USMT_WOULD_HAVE_FAILED**
  - **Error message**: At least one error was skipped as a result of /c.
  - **Troubleshooting, mitigation, workarounds**: Review ScanState, LoadState, or UsmtUtils log for details about command-line errors.

- **11: USMT_INVALID_PARAMETERS**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | /all conflicts with /ui, /ue or /uel | Review ScanState log or LoadState log for details about command-line errors. |
  | /auto expects an optional parameter for the script folder | Review ScanState log or LoadState log for details about command-line errors. |
  | /encrypt can't be used with /nocompress | Review ScanState log or LoadState log for details about command-line errors. |
  | /encrypt requires /key or /keyfile | Review ScanState log or LoadState log for details about command-line errors. |
  | /genconfig can't be used with most other options | Review ScanState log or LoadState log for details about command-line errors. |
  | /genmigxml can't be used with most other options | Review ScanState log or LoadState log for details about command-line errors. |
  | /hardlink requires /nocompress | Review ScanState log or LoadState log for details about command-line errors. |
  | /key and /keyfile both specified | Review ScanState log or LoadState log for details about command-line errors. |
  | /key or /keyfile used without enabling encryption | Review ScanState log or LoadState log for details about command-line errors. |
  | /lae is only used with /lac | Review ScanState log or LoadState log for details about command-line errors. |
  | /listfiles cannot be used with /p | Review ScanState log or LoadState log for details about command-line errors. |
  | /offline requires a valid path to an XML file describing offline paths | Review ScanState log or LoadState log for details about command-line errors. |
  | /offlinewindir requires a valid path to offline windows folder | Review ScanState log or LoadState log for details about command-line errors. |
  | /offlinewinold requires a valid path to offline windows folder | Review ScanState log or LoadState log for details about command-line errors. |
  | A command was already specified | Verify that the command-line syntax is correct and that there are no duplicate commands. |
  | An option argument is missing | Review ScanState log or LoadState log for details about command-line errors. |
  | An option is specified more than once and is ambiguous | Review ScanState log or LoadState log for details about command-line errors. |
  | By default /auto selects all users and uses the highest log verbosity level. Switches like /all, /ui, /ue, /v are not allowed. | Review ScanState log or LoadState log for details about command-line errors. |
  | Command line arguments are required. Specify /? for options. | Review ScanState log or LoadState log for details about command-line errors. |
  | Command line option is not valid | Review ScanState log or LoadState log for details about command-line errors. |
  | EFS parameter specified is not valid for /efs | Review ScanState log or LoadState log for details about command-line errors. |
  | File argument is invalid for /genconfig | Review ScanState log or LoadState log for details about command-line errors. |
  | File argument is invalid for /genmigxml | Review ScanState log or LoadState log for details about command-line errors. |
  | Invalid space estimate path. Check the parameters and/or file system permissions | Review ScanState log or LoadState log for details about command-line errors. |
  | List file path argument is invalid for /listfiles | Review ScanState log or LoadState log for details about command-line errors. |
  | Retry argument must be an integer | Review ScanState log or LoadState log for details about command-line errors. |
  | Settings store argument specified is invalid | Review ScanState log or LoadState log for details about command-line errors. Make sure that the store path is accessible and that the proper permission levels are set. |
  | Specified encryption algorithm is not supported | Review ScanState log or LoadState log for details about command-line errors. |
  | The /efs:hardlink requires /hardlink | Review ScanState log or LoadState log for details about command-line errors. |
  | The /targetWindows7 option is only available for Windows XP, Windows Vista, and Windows 7 | Review ScanState log or LoadState log for details about command-line errors. |
  | The store parameter is required but not specified | Review ScanState log or LoadState log for details about command-line errors. |
  | The source-to-target domain mapping is invalid for /md | Review ScanState log or LoadState log for details about command-line errors. |
  | The source-to-target user account mapping is invalid for /mu | Review ScanState log or LoadState log for details about command-line errors. |
  | Undefined or incomplete command line option | Review ScanState log or LoadState log for details about command-line errors. <br/><br/>Category: Invalid Command Lines|
  | Use /nocompress, or provide an XML file path with /p"pathtoafile" to get a compressed store size estimate | Review ScanState log or LoadState log for details about command-line errors. |
  | User exclusion argument is invalid | Review ScanState log or LoadState log for details about command-line errors. |
  | Verbosity level must be specified as a sum of the desired log options: Verbose (0x01), Record Objects (0x04), Echo to debug port (0x08) | Review ScanState log or LoadState log for details about command-line errors. |
  | Volume shadow copy feature is not supported with a hardlink store | Review ScanState log or LoadState log for details about command-line errors. |
  | Wait delay argument must be an integer | Review ScanState log or LoadState log for details about command-line errors. |

- **12: USMT_ERROR_OPTION_PARAM_TOO_LARGE**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Command line arguments cannot exceed 256 characters | Review ScanState log or LoadState log for details about command-line errors.<br/><br/>Category: Invalid Command Lines |
  | Specified settings store path exceeds the maximum allowed length of 256 characters | Review ScanState log or LoadState log for details about command-line errors. |

- **13: USMT_INIT_LOGFILE_FAILED**
  - **Error message**: Log path argument is invalid for /l
  - **Troubleshooting, mitigation, workarounds**: When /l is specified in the ScanState command line, USMT validates the path. Verify that the drive and other information, for example file system characters, are correct.
  - **Category**: Invalid Command Lines

- **14: USMT_ERROR_USE_LAC**
  - **Error message**: Unable to create a local account because /lac was not specified
  - **Troubleshooting, mitigation, workarounds**: When creating local accounts, the command-line options /lac and /lae should be used.
  - **Category**: Invalid Command Lines

- **26: USMT_INIT_ERROR**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Multiple Windows installations found | Listfiles.txt could not be created. Verify that the location you specified for the creation of this file is valid. <br/><br/>Category: Setup and Initialization |
  | Software malfunction or unknown exception | Check all loaded .xml files for errors, common error when using /I to load the Config.xml file. |
  | Unable to find a valid Windows directory to proceed with requested offline operation; Check if offline input file is present and has valid entries | Verify that the offline input file is present and that it has valid entries. USMT could not find valid offline operating system. Verify your offline directory mapping. |

- **27: USMT_INVALID_STORE_LOCATION**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | A store path can't be used because an existing store exists; specify /o to overwrite | Specify /o to overwrite an existing intermediate or migration store. <br/><br/>Category: Setup and Initialization |
  | A store path is missing or has incomplete data | Make sure that the store path is accessible and that the proper permission levels are set. |
  | An error occurred during store creation | Make sure that the store path is accessible and that the proper permission levels are set. Specify /o to overwrite an existing intermediate or migration store. |
  | An inappropriate device such as a floppy disk was specified for the store | Make sure that the store path is accessible and that the proper permission levels are set. |
  | Invalid store path; check the store parameter and/or file system permissions | Invalid store path; check the store parameter and/or file system permissions. |
  | The file layout and/or file content is not recognized as a valid store | Make sure that the store path is accessible and that the proper permission levels are set. Specify /o to overwrite an existing intermediate or migration store. |
  | The store path holds a store incompatible with the current USMT version | Make sure that the store path is accessible and that the proper permission levels are set. |
  | The store save location is read-only or does not support a requested storage option | Make sure that the store path is accessible and that the proper permission levels are set. |

- **28: USMT_UNABLE_GET_SCRIPTFILES**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Script file is invalid for /i | Check all specified migration .xml files for errors. This is a common error when using /i to load the Config.xml file. <br/><br/>Category: Setup and Initialization |
  | Unable to find a script file specified by /i | Verify the location of your script files, and ensure that the command-line options are correct. |

- **29: USMT_FAILED_MIGSTARTUP**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | A minimum of 250 MB of free space is required for temporary files | Verify that the system meets the minimum temporary disk space requirement of 250 MB. As a workaround, you can set the environment variable `USMT_WORKING_DIR=<path>` to redirect the temporary files working directory. <br/><br/>Category: Setup and Initialization |
  | Another process is preventing migration; only one migration tool can run at a time | Check the ScanState log file for migration .xml file errors. |
  | Failed to start main processing, look in log for system errors or check the installation | Check the ScanState log file for migration .xml file errors. |
  | Migration failed because of an XML error; look in the log for specific details | Check the ScanState log file for migration .xml file errors. |
  | Unable to automatically map the drive letters to match the online drive letter layout; Use /offline to provide a mapping table | Check the ScanState log file for migration .xml file errors. |

- **31: USMT_UNABLE_FINDMIGUNITS**

  - **Error message**: An error occurred during the discover phase; the log should have more specific information
  - **Troubleshooting, mitigation, workarounds**: Check the ScanState log file for migration .xml file errors.
  - **Category**: Setup and Initialization

- **32: USMT_FAILED_SETMIGRATIONTYPE**
  - **Error message**: An error occurred processing the migration system
  - **Troubleshooting, mitigation, workarounds**: Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line.
  - **Category**: Setup and Initialization

- **33: USMT_UNABLE_READKEY**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Error accessing the file specified by the /keyfile parameter | Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line. <br/><br/>Category: Setup and Initialization |
  | The encryption key must have at least one character | Check the ScanState log file for migration .xml file errors, or use online Help by typing /? on the command line. |

- **34: USMT_ERROR_INSUFFICIENT_RIGHTS**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Directory removal requires elevated privileges | Log on as Administrator, and run with elevated privileges. <br/><br/>Category: Setup and Initialization |
  | No rights to create user profiles; log in as Administrator; run with elevated privileges | Log on as Administrator, and run with elevated privileges. |
  | No rights to read or delete user profiles; log in as Administrator, run with elevated privileges | Log on as Administrator, and run with elevated privileges. |

- **35: USMT_UNABLE_DELETE_STORE**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | A reboot is required to remove the store | Reboot to delete any files that could not be deleted when the command was executed. <br/><br/>Category: Setup and Initialization |
  | A store path can't be used because it contains data that could not be overwritten | A migration store could not be deleted. If you are using a hardlink migration store you might have a locked file in it. You should manually delete the store, or use **USMTUtils /rd** command to delete the store. |
  | There was an error removing the store | Review ScanState log or LoadState log for details about command-line errors. |

- **36: USMT_ERROR_UNSUPPORTED_PLATFORM**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Compliance check failure; please check the logs for details | Investigate whether there is an active temporary profile on the system. <br/><br/>Category: Setup and Initialization |
  | Use of /offline is not supported during apply | The **/offline** command was not used while running in the Windows Preinstallation Environment (WinPE). |
  | Use /offline to run gather on this platform | The **/offline** command was not used while running in WinPE. |

- **37: USMT_ERROR_NO_INVALID_KEY**
  - **Error message**: The store holds encrypted data but the correct encryption key was not provided
  - **Troubleshooting, mitigation, workarounds**: Verify that you have included the correct encryption /key or /keyfile.
  - **Category**: Setup and Initialization

- **38: USMT_ERROR_CORRUPTED_NOTENCRYPTED_STORE**
  - **Error message**: An error occurred during store access
  - **Troubleshooting, mitigation, workarounds**: Review ScanState log or LoadState log for details about command-line errors. Make sure that the store path is accessible and that the proper permission levels are set.
  - **Category**: Setup and Initialization

- **39: USMT_UNABLE_TO_READ_CONFIG_FILE**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Error reading Config.xml | Review ScanState log or LoadState log for details about command-line errors in the Config.xml file. <br/><br/>Category: Setup and Initialization |
  | File argument is invalid for /config | Check the command line you used to load the Config.xml file. You can use online Help by typing /? on the command line. |

- **40: USMT_ERROR_UNABLE_CREATE_PROGRESS_LOG**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Error writing to the progress log | The Progress log could not be created. Verify that the location is valid and that you have write access. <br/><br/>Category: Setup and Initialization |
  | Progress log argument is invalid for /progress | The Progress log could not be created. Verify that the location is valid and that you have write access. |

- **41: USMT_PREFLIGHT_FILE_CREATION_FAILED**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | Can't overwrite existing file | The Progress log could not be created. Verify that the location is valid and that you have write access. <br/><br/>Category: Setup and Initialization |
  | Invalid space estimate path. Check the parameters and/or file system permissions | Review ScanState log or LoadState log for details about command-line errors. |

- **42: USMT_ERROR_CORRUPTED_STORE**
  - **Error message**: The store contains one or more corrupted files
  - **Troubleshooting, mitigation, workarounds**: Review UsmtUtils log for details about the corrupted files. For information on how to extract the files that are not corrupted, see [Extract Files from a Compressed USMT Migration Store](usmt-extract-files-from-a-compressed-migration-store.md).

- **61: USMT_MIGRATION_STOPPED_NONFATAL**
  - **Error message**: Processing stopped due to an I/O error
  - **Troubleshooting, mitigation, workarounds**: USMT exited but can continue with the /c command-line option, with the optional configurable &lt;ErrorControl&gt; section or by using the /vsc command-line option.
  - **Category**: Non-fatal Errors

- **71: USMT_INIT_OPERATING_ENVIRONMENT_FAILED**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | A Windows Win32 API error occurred | Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details. <br/><br/>Category: Fatal Errors |
  | An error occurred when attempting to initialize the diagnostic mechanisms such as the log | Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details. |
  | Failed to record diagnostic information | Data transfer has begun, and there was an error during the creation of migration store or during the apply phase. Review the ScanState log or LoadState log for details. |
  | Unable to start. Make sure you are running USMT with elevated privileges | Exit USMT and log in again with elevated privileges. |

- **72: USMT_UNABLE_DOMIGRATION**

  | Error message | Troubleshooting, mitigation, workarounds |
  | --- |  --- |
  | An error occurred closing the store | Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details. <br/><br/>Category: Fatal Errors|
  | An error occurred in the apply process | Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details. |
  | An error occurred in the gather process | Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details. |
  | Out of disk space while writing the store | Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details. |
  | Out of temporary disk space on the local system | Data transfer has begun, and there was an error during migration-store creation or during the apply phase. Review the ScanState log or LoadState log for details. |

## Related topics

[User State Migration Tool (USMT) Troubleshooting](usmt-troubleshooting.md)

[Log Files](usmt-log-files.md)
