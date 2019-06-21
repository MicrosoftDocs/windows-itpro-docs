---
title: Set preferences for Microsoft Defender ATP for Mac
ms.reviewer: 
description: Describes how to configure Microsoft Defender ATP for Mac in enterprises.
keywords: microsoft, defender, atp, mac, management, preferences, enterprise, intune, jamf, macos, mojave, high sierra, sierra
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

# Set preferences for Microsoft Defender ATP for Mac

In enterprise environments, Microsoft Defender ATP for Mac can be managed through a configuration profile, which is deployed using the management tool of your choice. Preferences managed by the enterprise take precedence over the ones set by the local user on the device. In other words, users in your enterprise will not be able to change preferences that are set through this configuration profile.

This topic describes the structure of this profile (including a recommended profile that you can use to get started) and instructions for how to deploy the profile.

## Configuration profile structure

The configuration profile is a .plist file that consists of entries identified by a key (denoting the name of the preference being set), followed by a value, which depends on the nature of the preference. Values can either be simple (such as a numerical value) or complex, such as a nested list of preferences.

The top level of the configuration profile includes product-wide preferences, as well as entries for sub-areas of the product, which are explained in more detail in the next sections.

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of the product.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | antivirusEngine |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable real-time protection

Whether real time protection (scan files as they are accessed) is enabled or not.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | enableRealTimeProtection |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Scan exclusions

Entities that have been excluded from scanning. Exclusions can be specified by full paths, extensions or file names.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | exclusions |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

##### Type of exclusion

Specifies the type of the excluded content.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | $type |
| **Data type** | String |
| **Possible values** | excludedPath <br/> excludedFileExtension <br/> excludedFileName |

##### Path to excluded content

Path to file or directory that should be exluded from scanning.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | path |
| **Data type** | String |
| **Possible values** | valid paths |
| **Comments** | Applicable only if *$type* is *excludedPath* |

##### Path type (file / directory)

Indicates if the *path* property refers to a file or directory. 

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | isDirectory |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Applicable only if *$type* is *excludedPath* |

##### Extension excluded from scanning

Extension of files that should be excluded from scanning.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | extension |
| **Data type** | String |
| **Possible values** | valid file extensions |
| **Comments** | Applicable only if *$type* is *excludedFileExtension* |

##### Name of excluded content

Name of file that should be excluded from scanning.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | name |
| **Data type** | String |
| **Possible values** | any string |
| **Comments** | Applicable only if *$type* is *excludedFileName* |

#### Threat type settings

The *threatTypeSettings* preference in the antivirus engine is used to control how certain threat types are handled by the product.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | threatTypeSettings |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

##### Threat type

Type of the threat for which the behavior is configured.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | key |
| **Data type** | String |
| **Possible values** | potentially_unwanted_application |

##### Action to take

Action to take when encountering a threat of the the type being configured. Can be:

- *Audit*: adds an entry to the log about the threat, but does not report it to the user interface or the security console
- *Block*: reports the threat to the user interface and the security console and blocks the execution of the threat if real-time protection is turned on
- *Off*: does not block the threat or report it

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

Whether cloud delivered protection is enabled on the device or not. To improve the security of your sevices, we recommend keeping this feature turned on.

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

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. We'll prompt users if the file we need is likely to contain personal information.

|||
|:---|:---|
| **Domain** | com.microsoft.wdav |
| **Key** | automaticSampleSubmission |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

## Recommended configuration profile

To get started, we recommend the following configuration profile for your enterprise in order to take advantage of all of the protection features that Microsoft Defender ATP provides. 

The following configuration profile will:
- Enable real time protection (RTP)
- Enable the blocking of potentially unwanted applications (PUA), which by default are in *audit* (non-blocking) mode
- Enable cloud delivered protection
- Enable automatic sample submission

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enableRealTimeProtection</key>
        <true/>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
        </array>
    </dict>
    <key>cloudService</key>
    <dict>
        <key>enabled</key>
        <true/>
        <key>automaticSampleSubmission</key>
        <true/>
    </dict>
</dict>
</plist>
```

## Full configuration profile example

The following configuration profile contains entries for all of the settings described in this document and can be used for more advanced scenarios where you want more control over the product.

```
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enableRealTimeProtection</key>
        <true/>
        <key>exclusions</key>
        <array>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <false/>
                <key>path</key>
                <string>/var/log/system.log</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedPath</string>
                <key>isDirectory</key>
                <true/>
                <key>path</key>
                <string>/home</string>
            </dict>
            <dict>
                <key>$type</key>
                <string>excludedFileExtension</string>
                <key>extension</key>
                <string>pdf</string>
            </dict>
        </array>
        <key>allowedThreats</key>
        <array>
            <string>eicar</string>
        </array>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
        </array>
    </dict>
    <key>cloudService</key>
    <dict>
        <key>enabled</key>
        <true/>
        <key>diagnosticLevel</key>
        <string>optional</string>
        <key>automaticSampleSubmission</key>
        <true/>
    </dict>
</dict>
</plist>
```

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management console that your enterprise is using. Listed below are steps for deploying this through JAMF and Intune.

### JAMF deployment

From the JAMF console, open **Computers** > **Configuration Profiles**, navigate to the configuration profile you'd like to use, then select **Custom Settings** and create a new entry with *com.microsoft.wdav* as the preference domain and upload the .plist with the settings.

>[!WARNING]
>It is important that you enter the correct preference domain, otherwise these preferences might not be recognized by the product.

### Intune deployment

1. Open **Manage** > **Device configuration**. Select **Manage** > **Profiles** > **Create Profile**.

2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Custom**. Select Configure.

3. Save the .plist with the settings as **com.microsoft.wdav.xml**.

4. Enter **com.microsoft.wdav** as the **custom configuration profile name**.

5. Open the configuration profile and upload **com.microsoft.wdav.xml**. This file was created in step 3.

6. Select **OK**.

7. Select **Manage** > **Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.

>[!WARNING]
>It is important that you enter the correct custom configuration profile name, otherwise these preferences might not be recognized by the product.

## Resources

- [Configuration Profile Reference (Apple developer documentation)](https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf)
