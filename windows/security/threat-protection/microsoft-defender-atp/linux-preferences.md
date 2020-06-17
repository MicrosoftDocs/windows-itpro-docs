---
title: Set preferences for Microsoft Defender ATP for Linux
ms.reviewer: 
description: Describes how to configure Microsoft Defender ATP for Linux in enterprises.
keywords: microsoft, defender, atp, linux, installation, deploy, uninstallation, puppet, ansible, linux, redhat, ubuntu, debian, sles, suse, centos
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: conceptual
---

# Set preferences for Microsoft Defender ATP for Linux

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Linux](microsoft-defender-atp-linux.md)

>[!IMPORTANT]
>This topic contains instructions for how to set preferences for Microsoft Defender ATP for Linux in enterprise environments. If you are interested in configuring the product on a device from the command-line, see [Resources](linux-resources.md#configure-from-the-command-line).

In enterprise environments, Microsoft Defender ATP for Linux can be managed through a configuration profile. This profile is deployed from the management tool of your choice. Preferences managed by the enterprise take precedence over the ones set locally on the device. In other words, users in your enterprise are not able to change preferences that are set through this configuration profile.

This topic describes the structure of this profile (including a recommended profile that you can use to get started) and instructions on how to deploy the profile.

## Configuration profile structure

The configuration profile is a .json file that consists of entries identified by a key (which denotes the name of the preference), followed by a value, which depends on the nature of the preference. Values can be simple, such as a numerical value, or complex, such as a nested list of preferences.

Typically, you would use a configuration management tool to push a file with the name ```mdatp_managed.json``` at the location ```/etc/opt/microsoft/mdatp/managed/```.

The top level of the configuration profile includes product-wide preferences and entries for subareas of the product, which are explained in more detail in the next sections.

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of the product.

|||
|:---|:---|
| **Key** | antivirusEngine |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable real-time protection

Determines whether real-time protection (scan files as they are accessed) is enabled or not.

|||
|:---|:---|
| **Key** | enableRealTimeProtection |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Enable / disable passive mode

Determines whether the antivirus engine runs in passive mode or not. In passive mode:
- Real-time protection is turned off.
- On-demand scanning is turned on.
- Automatic threat remediation is turned off.
- Security intelligence updates are turned on.
- Status menu icon is hidden.

|||
|:---|:---|
| **Key** | passiveMode |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Available in Microsoft Defender ATP version 100.67.60 or higher. |

#### Exclusion merge policy

Specifies the merge policy for exclusions. It can be a combination of administrator-defined and user-defined exclusions (`merge`) or only administrator-defined exclusions (`admin_only`). This setting can be used to restrict local users from defining their own exclusions.

|||
|:---|:---|
| **Key** | exclusionsMergePolicy |
| **Data type** | String |
| **Possible values** | merge (default) <br/> admin_only |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

#### Scan exclusions

Entities that have been excluded from the scan. Exclusions can be specified by full paths, extensions, or file names.

|||
|:---|:---|
| **Key** | exclusions |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

**Type of exclusion**

Specifies the type of content excluded from the scan.

|||
|:---|:---|
| **Key** | $type |
| **Data type** | String |
| **Possible values** | excludedPath <br/> excludedFileExtension <br/> excludedFileName |

**Path to excluded content**

Used to exclude content from the scan by full file path.

|||
|:---|:---|
| **Key** | path |
| **Data type** | String |
| **Possible values** | valid paths |
| **Comments** | Applicable only if *$type* is *excludedPath* |

**Path type (file / directory)**

Indicates if the *path* property refers to a file or directory. 

|||
|:---|:---|
| **Key** | isDirectory |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Applicable only if *$type* is *excludedPath* |

**File extension excluded from the scan**

Used to exclude content from the scan by file extension.

|||
|:---|:---|
| **Key** | extension |
| **Data type** | String |
| **Possible values** | valid file extensions |
| **Comments** | Applicable only if *$type* is *excludedFileExtension* |

**Process excluded from the scan**

Specifies a process for which all file activity is excluded from scanning. The process can be specified either by its name (e.g. `cat`) or full path (e.g. `/bin/cat`).

|||
|:---|:---|
| **Key** | name |
| **Data type** | String |
| **Possible values** | any string |
| **Comments** | Applicable only if *$type* is *excludedFileName* |

#### Allowed threats

List of threats (identified by their name) that are not blocked by the product and are instead allowed to run.

|||
|:---|:---|
| **Key** | allowedThreats |
| **Data type** | Array of strings |

#### Disallowed threat actions

Restricts the actions that the local user of a device can take when threats are detected. The actions included in this list are not displayed in the user interface.

|||
|:---|:---|
| **Key** | disallowedThreatActions |
| **Data type** | Array of strings |
| **Possible values** | allow (restricts users from allowing threats) <br/> restore (restricts users from restoring threats from the quarantine) |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

#### Threat type settings

The *threatTypeSettings* preference in the antivirus engine is used to control how certain threat types are handled by the product.

|||
|:---|:---|
| **Key** | threatTypeSettings |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

**Threat type**

Type of threat for which the behavior is configured.

|||
|:---|:---|
| **Key** | key |
| **Data type** | String |
| **Possible values** | potentially_unwanted_application <br/> archive_bomb |

**Action to take**

Action to take when coming across a threat of the type specified in the preceding section. Can be:

- **Audit**: The device is not protected against this type of threat, but an entry about the threat is logged.
- **Block**: The device is protected against this type of threat and you are notified in the user interface and the security console.
- **Off**: The device is not protected against this type of threat and nothing is logged.

|||
|:---|:---|
| **Key** | value |
| **Data type** | String |
| **Possible values** | audit (default) <br/> block <br/> off |

#### Threat type settings merge policy

Specifies the merge policy for threat type settings. This can be a combination of administrator-defined and user-defined settings (`merge`) or only administrator-defined settings (`admin_only`). This setting can be used to restrict local users from defining their own settings for different threat types.

|||
|:---|:---|
| **Key** | threatTypeSettingsMergePolicy |
| **Data type** | String |
| **Possible values** | merge (default) <br/> admin_only |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

### Cloud-delivered protection preferences

The *cloudService* entry in the configuration profile is used to configure the cloud-driven protection feature of the product.

|||
|:---|:---|
| **Key** | cloudService |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable cloud delivered protection

Determines whether cloud-delivered protection is enabled on the device or not. To improve the security of your services, we recommend keeping this feature turned on.

|||
|:---|:---|
| **Key** | enabled |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Diagnostic collection level

Diagnostic data is used to keep Microsoft Defender ATP secure and up-to-date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by the product to Microsoft.

|||
|:---|:---|
| **Key** | diagnosticLevel |
| **Data type** | String |
| **Possible values** | optional (default) <br/> required |

#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. There are three levels for controlling sample submission:

- **None**: no suspicious samples are submitted to Microsoft.
- **Safe**: only suspicious samples that do not contain personally identifiable information (PII) are submitted automatically. This is the default value for this setting.
- **All**: all suspicious samples are submitted to Microsoft.

|||
|:---|:---|
| **Key** | automaticSampleSubmissionConsent |
| **Data type** | String |
| **Possible values** | none <br/> safe (default) <br/> all |

## Recommended configuration profile

To get started, we recommend the following configuration profile for your enterprise to take advantage of all protection features that Microsoft Defender ATP provides.

The following configuration profile will:

- Enable real-time protection (RTP).
- Specify how the following threat types are handled:
  - **Potentially unwanted applications (PUA)** are blocked.
  - **Archive bombs** (file with a high compression rate) are audited to the product logs.
- Enable cloud-delivered protection.
- Enable automatic sample submission at `safe` level.

### Sample profile

```JSON
{
   "antivirusEngine":{
      "enableRealTimeProtection":true,
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "automaticSampleSubmissionConsent":"safe",
      "enabled":true
   }
}
```

## Full configuration profile example

The following configuration profile contains entries for all settings described in this document and can be used for more advanced scenarios where you want more control over the product.

### Full profile

```JSON
{
   "antivirusEngine":{
      "enableRealTimeProtection":true,
      "passiveMode":false,
      "exclusionsMergePolicy":"merge",
      "exclusions":[
         {
            "$type":"excludedPath",
            "isDirectory":false,
            "path":"/var/log/system.log"
         },
         {
            "$type":"excludedPath",
            "isDirectory":true,
            "path":"/home"
         },
         {
            "$type":"excludedFileExtension",
            "extension":"pdf"
         },
         {
            "$type":"excludedFileName",
            "name":"cat"
         }
      ],
      "allowedThreats":[
         "EICAR-Test-File (not a virus)"
      ],
      "disallowedThreatActions":[
         "allow",
         "restore"
      ],
      "threatTypeSettingsMergePolicy":"merge",
      "threatTypeSettings":[
         {
            "key":"potentially_unwanted_application",
            "value":"block"
         },
         {
            "key":"archive_bomb",
            "value":"audit"
         }
      ]
   },
   "cloudService":{
      "enabled":true,
      "diagnosticLevel":"optional",
      "automaticSampleSubmissionConsent":"safe"
   }
}
```

## Configuration profile validation

The configuration profile must be a valid JSON-formatted file. There are a number of tools that can be used to verify this. For example, if you have `python` installed on your device:

```bash
$ python -m json.tool mdatp_managed.json
```

If the JSON is well-formed, the above command outputs it back to the Terminal and returns an exit code of `0`. Otherwise, an error that describes the issue is displayed and the command returns an exit code of `1`.

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management tool that your enterprise is using. Microsoft Defender ATP for Linux reads the managed configuration from the */etc/opt/microsoft/mdatp/managed/mdatp_managed.json* file.
