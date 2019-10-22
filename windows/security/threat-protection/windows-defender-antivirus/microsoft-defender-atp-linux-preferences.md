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
>This topic contains instructions for how to set preferences for Microsoft Defender ATP for Linux in enterprise environments. If you are interested in configuring the product on a device from the command-line, please refer to the [Resources](microsoft-defender-atp-linux-resources.md#configuring-from-the-command-line) page.

In enterprise environments, Microsoft Defender ATP for Linux can be managed through a configuration profile. This profile is deployed from management tool of your choice. Preferences managed by the enterprise take precedence over the ones set locally on the device. In other words, users in your enterprise are not able to change preferences that are set through this configuration profile.

This topic describes the structure of this profile (including a recommended profile that you can use to get started) and instructions for how to deploy the profile.

## Configuration profile structure

The configuration profile is a .json file that consists of entries identified by a key (which denotes the name of the preference), followed by a value, which depends on the nature of the preference. Values can either be simple (such as a numerical value) or complex, such as a nested list of preferences.

The top level of the configuration profile includes product-wide preferences and entries for subareas of the product, which are explained in more detail in the next sections.

>[!NOTE]
> **TODO:**
> * Should Domain be removed from all the entries below?
> * Should we add path to wdavcfg?
> * Verify each of below?

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of the product.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | antivirusEngine |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable real-time protection

Whether real-time protection (scan files as they are accessed) is enabled or not.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | enableRealTimeProtection |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Enable / disable passive mode

Whether the antivirus engine runs in passive mode or not. In passive mode:
- Real-time protection is turned off
- On-demand scanning is turned on
- Automatic threat remediation is turned off
- Security intelligence updates are turned on
- Status menu icon is hidden

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | passiveMode |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Available in Microsoft Defender ATP version 100.67.60 or higher. |

#### Scan exclusions

Entities that have been excluded from the scan. Exclusions can be specified by full paths, extensions, or file names.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | exclusions |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

**Type of exclusion**

Specifies the type of content excluded from the scan.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | $type |
| **Data type** | String |
| **Possible values** | excludedPath <br/> excludedFileExtension <br/> excludedFileName |

**Path to excluded content**

Used to exclude content from the scan by full file path.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | path |
| **Data type** | String |
| **Possible values** | valid paths |
| **Comments** | Applicable only if *$type* is *excludedPath* |

**Path type (file / directory)**

Indicates if the *path* property refers to a file or directory. 

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | isDirectory |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Applicable only if *$type* is *excludedPath* |

**File extension excluded from the scan**

Used to exclude content from the scan by file extension.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | extension |
| **Data type** | String |
| **Possible values** | valid file extensions |
| **Comments** | Applicable only if *$type* is *excludedFileExtension* |

**Name of excluded content**

Used to exclude content from the scan by file name.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | name |
| **Data type** | String |
| **Possible values** | any string |
| **Comments** | Applicable only if *$type* is *excludedFileName* |

#### Allowed threats

List of threats (identified by their name) that are not blocked by the product and are instead allowed to run.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | allowedThreats |
| **Data type** | Array of strings |

#### Threat type settings

The *threatTypeSettings* preference in the antivirus engine is used to control how certain threat types are handled by the product.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | threatTypeSettings |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

**Threat type**

Type of the threat for which the behavior is configured.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | key |
| **Data type** | String |
| **Possible values** | potentially_unwanted_application <br/> archive_bomb |

**Action to take**

Action to take when coming across a threat of the type specified in the preceding section. Can be:

- **Audit**: your device is not protected against this type of threat, but an entry about the threat is logged.
- **Block**: your device is protected against this type of threat and you are notified in the user interface and the security console.
- **Off**: your device is not protected against this type of threat and nothing is logged.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | value |
| **Data type** | String |
| **Possible values** | audit (default) <br/> block <br/> off |

### Cloud delivered protection preferences

The *cloudService* entry in the configuration profile is used to configure the cloud driven protection feature of the product.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | cloudService |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable cloud delivered protection

Whether cloud delivered protection is enabled on the device or not. To improve the security of your services, we recommend keeping this feature turned on.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | enabled |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Diagnostic collection level

Diagnostic data is used to keep Microsoft Defender ATP secure and up-to-date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by the product to Microsoft.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | diagnosticLevel |
| **Data type** | String |
| **Possible values** | optional (default) <br/> required |

#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. You are prompted if the submitted file is likely to contain personal information.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | automaticSampleSubmission |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

## Recommended configuration profile

To get started, we recommend the following configuration profile for your enterprise to take advantage of all protection features that Microsoft Defender ATP provides.

The following configuration profile will:

- Enable real-time protection (RTP)
- Specify how the following threat types are handled:
  - **Potentially unwanted applications (PUA)** are blocked
  - **Archive bombs** (file with a high compression rate) are audited to the product logs
- Enable cloud delivered protection
- Enable automatic sample submission

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
      "automaticSampleSubmission":true,
      "enabled":true,
   },
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
         }
      ],
      "allowedThreats":[ 
         "EICAR-Test-File (not a virus)"
      ],
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
      "automaticSampleSubmission":true,
   },
}
```

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management tool that your enterprise is using. Microsoft M reads the managed configuration from the file */etc/opt/microsoft/mdatp/managed/mdatp_managed.json*
