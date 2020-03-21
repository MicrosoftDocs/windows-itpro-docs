---
title: Set preferences for Microsoft Defender ATP for Mac
description: Configure Microsoft Defender ATP for Mac in enterprise organizations.
keywords: microsoft, defender, atp, mac, management, preferences, enterprise, intune, jamf, macos, catalina, mojave, high sierra
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

**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP) for Mac](microsoft-defender-atp-mac.md)

>[!IMPORTANT]
>This article contains instructions for how to set preferences for Microsoft Defender ATP for Mac in enterprise organizations. To configure Microsoft Defender ATP for Mac using the command-line interface, see [Resources](mac-resources.md#configuring-from-the-command-line).

## Summary

In enterprise organizations, Microsoft Defender ATP for Mac can be managed through a configuration profile that is deployed by using one of several management tools. Preferences that are managed by your security operations team take precedence over preferences that are set locally on the device. Users in your organization are not able to change preferences that are set through the configuration profile.

This article describes the structure of the configuration profile, includes a recommended profile that you can use to get started, and provides instructions on how to deploy the profile.

## Configuration profile structure

The configuration profile is a *.plist* file that consists of entries identified by a key (which denotes the name of the preference), followed by a value, which depends on the nature of the preference. Values can either be simple (such as a numerical value) or complex, such as a nested list of preferences.

>[!CAUTION]
>The layout of the configuration profile depends on the management console that you are using. The following sections contain examples of configuration profiles for JAMF and Intune.

The top level of the configuration profile includes product-wide preferences and entries for subareas of Microsoft Defender ATP, which are explained in more detail in the next sections.

### Antivirus engine preferences

The *antivirusEngine* section of the configuration profile is used to manage the preferences of the antivirus component of Microsoft Defender ATP.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | antivirusEngine |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable real-time protection

Specify whether to enable real-time protection, which scans files as they are accessed.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | enableRealTimeProtection |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Enable / disable passive mode

Specify whether the antivirus engine runs in passive mode. Passive mode has the following implications: 
- Real-time protection is turned off
- On-demand scanning is turned on
- Automatic threat remediation is turned off
- Security intelligence updates are turned on
- Status menu icon is hidden

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | passiveMode |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Available in Microsoft Defender ATP version 100.67.60 or higher. |

#### Exclusion merge policy

Specify the merge policy for exclusions. This can be a combination of administrator-defined and user-defined exclusions (`merge`) or only administrator-defined exclusions (`admin_only`). This setting can be used to restrict local users from defining their own exclusions.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | exclusionsMergePolicy |
| **Data type** | String |
| **Possible values** | merge (default) <br/> admin_only |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

#### Scan exclusions

Specify entities excluded from being scanned. Exclusions can be specified by full paths, extensions, or file names.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | exclusions |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

##### Type of exclusion

Specify content excluded from being scanned by type.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | $type |
| **Data type** | String |
| **Possible values** | excludedPath <br/> excludedFileExtension <br/> excludedFileName |

##### Path to excluded content

Specify content excluded from being scanned by full file path.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | path |
| **Data type** | String |
| **Possible values** | valid paths |
| **Comments** | Applicable only if *$type* is *excludedPath* |

##### Path type (file / directory)

Indicate if the *path* property refers to a file or directory. 

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | isDirectory |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |
| **Comments** | Applicable only if *$type* is *excludedPath* |

##### File extension excluded from the scan

Specify content excluded from being scanned by file extension.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | extension |
| **Data type** | String |
| **Possible values** | valid file extensions |
| **Comments** | Applicable only if *$type* is *excludedFileExtension* |

##### Process excluded from the scan

Specify a process for which all file activity is excluded from scanning. The process can be specified either by its name (e.g. `cat`) or full path (e.g. `/bin/cat`).

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | name |
| **Data type** | String |
| **Possible values** | any string |
| **Comments** | Applicable only if *$type* is *excludedFileName* |

#### Allowed threats

Specify threats by name that are not blocked by Microsoft Defender ATP for Mac. These threats will be allowed to run.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | allowedThreats |
| **Data type** | Array of strings |

#### Disallowed threat actions

Restricts the actions that the local user of a device can take when threats are detected. The actions included in this list are not displayed in the user interface.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | disallowedThreatActions |
| **Data type** | Array of strings |
| **Possible values** | allow (restricts users from allowing threats) <br/> restore (restricts users from restoring threats from the quarantine) |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

#### Threat type settings

Specify how certain threat types are handled by Microsoft Defender ATP for Mac.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | threatTypeSettings |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

##### Threat type

Specify threat types.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | key |
| **Data type** | String |
| **Possible values** | potentially_unwanted_application <br/> archive_bomb |

##### Action to take

Specify what action to take when a threat of the type specified in the preceding section is detected. Choose from the following options:

- **Audit**: your device is not protected against this type of threat, but an entry about the threat is logged.
- **Block**: your device is protected against this type of threat and you are notified in the user interface and the security console.
- **Off**: your device is not protected against this type of threat and nothing is logged.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | value |
| **Data type** | String |
| **Possible values** | audit (default) <br/> block <br/> off |

#### Threat type settings merge policy

Specify the merge policy for threat type settings. This can be a combination of administrator-defined and user-defined settings (`merge`) or only administrator-defined settings (`admin_only`). This setting can be used to restrict local users from defining their own settings for different threat types.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | threatTypeSettingsMergePolicy |
| **Data type** | String |
| **Possible values** | merge (default) <br/> admin_only |
| **Comments** | Available in Microsoft Defender ATP version 100.83.73 or higher. |

### Cloud-delivered protection preferences

Configure the cloud-driven protection features of Microsoft Defender ATP for Mac.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | cloudService |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable cloud-delivered protection

Specify whether to enable cloud-delivered protection the device or not. To improve the security of your services, we recommend keeping this feature turned on.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | enabled |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Diagnostic collection level

Diagnostic data is used to keep Microsoft Defender ATP secure and up-to-date, detect, diagnose and fix problems, and also make product improvements. This setting determines the level of diagnostics sent by Microsoft Defender ATP to Microsoft.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | diagnosticLevel |
| **Data type** | String |
| **Possible values** | optional (default) <br/> required |

#### Enable / disable automatic sample submissions

Determines whether suspicious samples (that are likely to contain threats) are sent to Microsoft. You are prompted if the submitted file is likely to contain personal information.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | automaticSampleSubmission |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

### User interface preferences

Manage the preferences for the user interface of Microsoft Defender ATP for Mac.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | userInterface |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Show / hide status menu icon

Specify whether to show or hide the status menu icon in the top-right corner of the screen.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | hideStatusMenuIcon |
| **Data type** | Boolean |
| **Possible values** | false (default) <br/> true |

### Endpoint detection and response preferences

Manage the preferences of the endpoint detection and response (EDR) component of Microsoft Defender ATP for Mac.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | edr |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

#### Enable / disable early preview

Specify whether to enable EDR early preview features.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | earlyPreview |
| **Data type** | Boolean |
| **Possible values** | true (default) <br/> false |

#### Device tags

Specify a tag name and its value. 

- The GROUP tag, tags the machine with the specified value. The tag is reflected in the portal under the machine page and can be used for filtering and grouping machines.

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | tags |
| **Data type** | Dictionary (nested preference) |
| **Comments** | See the following sections for a description of the dictionary contents. |

##### Type of tag

Specifies the type of tag

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | key |
| **Data type** | String |
| **Possible values** | `GROUP` |

##### Value of tag

Specifies the value of tag

|||
|:---|:---|
| **Domain** | `com.microsoft.wdav` |
| **Key** | value |
| **Data type** | String |
| **Possible values** | any string |

> [!IMPORTANT]  
> - Only one value per tag type can be set.
> - Type of tags are unique, and should not be repeated in the same configuration profile.

## Recommended configuration profile

To get started, we recommend the following configuration for your enterprise to take advantage of all protection features that Microsoft Defender ATP provides.

The following configuration profile (or, in case of JAMF, a property list that could be uploaded into custom settings Configuration Profile) will:
- Enable real-time protection (RTP)
- Specify how the following threat types are handled:
  - **Potentially unwanted applications (PUA)** are blocked
  - **Archive bombs** (file with a high compression rate) are audited to Microsoft Defender ATP logs
- Enable cloud-delivered protection
- Enable automatic sample submission

### Property list for JAMF configuration profile

```XML
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
            <dict>
                <key>key</key>
                <string>archive_bomb</string>
                <key>value</key>
                <string>audit</string>
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

### Intune profile

```XML
<?xml version="1.0" encoding="utf-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1">
    <dict>
        <key>PayloadUUID</key>
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>com.microsoft.wdav</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender ATP settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft Defender ATP configuration settings</string>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
                <key>PayloadUUID</key>
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadType</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadOrganization</key>
                <string>Microsoft</string>
                <key>PayloadIdentifier</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadDisplayName</key>
                <string>Microsoft Defender ATP configuration settings</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
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
                        <dict>
                            <key>key</key>
                            <string>archive_bomb</string>
                            <key>value</key>
                            <string>audit</string>
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
        </array>
    </dict>
</plist>
```

## Full configuration profile example

The following templates contain entries for all settings described in this document and can be used for more advanced scenarios where you want more control over Microsoft Defender ATP for Mac.

### Property list for JAMF configuration profile

```XML
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<dict>
    <key>antivirusEngine</key>
    <dict>
        <key>enableRealTimeProtection</key>
        <true/>
        <key>passiveMode</key>
        <false/>
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
            <dict>
                <key>$type</key>
                <string>excludedFileName</string>
                <key>name</key>
                <string>cat</string>
            </dict>
        </array>
        <key>exclusionsMergePolicy</key>
        <string>merge</string>
        <key>allowedThreats</key>
        <array>
            <string>EICAR-Test-File (not a virus)</string>
        </array>
        <key>disallowedThreatActions</key>
        <array>
            <string>allow</string>
            <string>restore</string>
        </array>
        <key>threatTypeSettings</key>
        <array>
            <dict>
                <key>key</key>
                <string>potentially_unwanted_application</string>
                <key>value</key>
                <string>block</string>
            </dict>
            <dict>
                <key>key</key>
                <string>archive_bomb</string>
                <key>value</key>
                <string>audit</string>
            </dict>
        </array>
        <key>threatTypeSettingsMergePolicy</key>
        <string>merge</string>
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
    <key>edr</key>
    <dict>
        <key>tags</key>
        <array>
            <dict>
                <key>key</key>
                <string>GROUP</string>
                <key>value</key>
                <string>ExampleTag</string>
            </dict>
        </array>
    </dict>
    <key>userInterface</key>
    <dict>
        <key>hideStatusMenuIcon</key>
        <false/>
    </dict>
</dict>
</plist>
```

### Intune profile

```XML
        <key>PayloadUUID</key>
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
        <key>PayloadType</key>
        <string>Configuration</string>
        <key>PayloadOrganization</key>
        <string>Microsoft</string>
        <key>PayloadIdentifier</key>
        <string>C4E6A782-0C8D-44AB-A025-EB893987A295</string>
        <key>PayloadDisplayName</key>
        <string>Microsoft Defender ATP settings</string>
        <key>PayloadDescription</key>
        <string>Microsoft Defender ATP configuration settings</string>
        <key>PayloadVersion</key>
        <integer>1</integer>
        <key>PayloadEnabled</key>
        <true/>
        <key>PayloadRemovalDisallowed</key>
        <true/>
        <key>PayloadScope</key>
        <string>System</string>
        <key>PayloadContent</key>
        <array>
            <dict>
                <key>PayloadUUID</key>
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadType</key>
                <string>com.microsoft.wdav</string>
                <key>PayloadOrganization</key>
                <string>Microsoft</string>
                <key>PayloadIdentifier</key>
                <string>99DBC2BC-3B3A-46A2-A413-C8F9BB9A7295</string>
                <key>PayloadDisplayName</key>
                <string>Microsoft Defender ATP configuration settings</string>
                <key>PayloadDescription</key>
                <string/>
                <key>PayloadVersion</key>
                <integer>1</integer>
                <key>PayloadEnabled</key>
                <true/>
                <key>antivirusEngine</key>
                <dict>
                    <key>enableRealTimeProtection</key>
                    <true/>
                    <key>passiveMode</key>
                    <false/>
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
                        <dict>
                            <key>$type</key>
                            <string>excludedFileName</string>
                            <key>name</key>
                            <string>cat</string>
                        </dict>
                    </array>
                    <key>exclusionsMergePolicy</key>
                    <string>merge</string>
                    <key>allowedThreats</key>
                    <array>
                        <string>EICAR-Test-File (not a virus)</string>
                    </array>
                    <key>disallowedThreatActions</key>
                    <array>
                        <string>allow</string>
                        <string>restore</string>
                    </array>
                    <key>threatTypeSettings</key>
                    <array>
                        <dict>
                            <key>key</key>
                            <string>potentially_unwanted_application</string>
                            <key>value</key>
                            <string>block</string>
                        </dict>
                        <dict>
                            <key>key</key>
                            <string>archive_bomb</string>
                            <key>value</key>
                            <string>audit</string>
                        </dict>
                    </array>
                    <key>threatTypeSettingsMergePolicy</key>
                    <string>merge</string>
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
                <key>edr</key>
                <dict>
                    <key>tags</key>
                    <array>
                        <dict>
                            <key>key</key>
                            <string>GROUP</string>
                            <key>value</key>
                            <string>ExampleTag</string>
                        </dict>
                    </array>
                </dict>
                <key>userInterface</key>
                <dict>
                    <key>hideStatusMenuIcon</key>
                    <false/>
                </dict>
            </dict>
        </array>
```

## Property list validation

The property list must be a valid *.plist* file. This can be checked by executing:

```bash
$ plutil -lint com.microsoft.wdav.plist
com.microsoft.wdav.plist: OK
```

If the file is well-formed, the above command outputs `OK` and returns an exit code of `0`. Otherwise, an error that describes the issue is displayed and the command returns an exit code of `1`.

## Configuration profile deployment

Once you've built the configuration profile for your enterprise, you can deploy it through the management console that your enterprise is using. The following sections provide instructions on how to deploy this profile using JAMF and Intune.

### JAMF deployment

From the JAMF console, open **Computers** > **Configuration Profiles**, navigate to the configuration profile you'd like to use, then select **Custom Settings**. Create an entry with `com.microsoft.wdav` as the preference domain and upload the *.plist* produced earlier.

>[!CAUTION]
>You must enter the correct preference domain (`com.microsoft.wdav`); otherwise, the preferences will not be recognized by Microsoft Defender ATP.

### Intune deployment

1. Open **Manage** > **Device configuration**. Select **Manage** > **Profiles** > **Create Profile**.

2. Choose a name for the profile. Change **Platform=macOS** to **Profile type=Custom**. Select Configure.

3. Save the .plist produced earlier as `com.microsoft.wdav.xml`.

4. Enter `com.microsoft.wdav` as the **custom configuration profile name**.

5. Open the configuration profile and upload the `com.microsoft.wdav.xml` file. (This file was created in step 3.)

6. Select **OK**.

7. Select **Manage** > **Assignments**. In the **Include** tab, select **Assign to All Users & All devices**.

>[!CAUTION]
>You must enter the correct custom configuration profile name; otherwise, these preferences will not be recognized by Microsoft Defender ATP.

## Resources

- [Configuration Profile Reference (Apple developer documentation)](https://developer.apple.com/business/documentation/Configuration-Profile-Reference.pdf)
