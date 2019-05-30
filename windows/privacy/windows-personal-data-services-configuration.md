---
title: Windows 10 personal data services configuration
description: An overview of Windows 10 services configuration settings that are used for personal data privacy protection relevant for regulations, such as the General Data Protection Regulation (GDPR)
keywords: privacy, GDPR, windows, IT
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: high
audience: ITPro
author: dansimp
ms.author: dansimp
manager: dansimp
ms.collection: M365-security-compliance
ms.topic: article
ms.date: 05/11/2018
ms.reviewer: 
---
# Windows 10 personal data services configuration

Applies to:
- Windows 10, version 1803

Microsoft assembled a list of Windows 10 services configuration settings that are useful for personal data privacy protection and related regulations, such as the General Data Protection Regulation (GDPR). There is one section with settings for service data that is managed at Microsoft and a section for local data that is managed by an IT organization.

IT Professionals that are interested in applying these settings via group policies can find the configuration for download [here](https://go.microsoft.com/fwlink/?linkid=874149).

## Introduction

Microsoft collects data from or generates it through interactions with users of Windows 10 devices. This information can contain personal data that may be used to provide, support, and improve Windows 10 services.

Many Windows 10 services are controller services. A user can manage data collection settings, for example by opening *Start > Settings > Privacy* or by visiting the [Microsoft Privacy dashboard](https://account.microsoft.com/privacy). While this relationship between Microsoft and a user is evident in a consumer type scenario, an IT organization can influence that relationship. For example, the IT department has the ability to configure the Windows diagnostic data level across their organization by using Group Policy, registry, or Mobile Device Management (MDM) settings.

Below is a collection of settings related to the Windows 10 personal data services configuration that IT Professionals can use as guidance for influencing Windows diagnostic data collection and personal data protection.

## Windows diagnostic data

Windows 10 collects Windows diagnostic data—such as usage data, performance data, inking, typing, and utterance data—and sends it back to Microsoft. That data is used for keeping the operating system secure and up-to-date, to troubleshoot problems, and to make product improvements. For users who have turned on "Tailored experiences", that data can also be used to offer personalized tips, ads, and recommendations to enhance Microsoft products and services for your needs.

The following options for configuring Windows diagnostic data are relevant in this context.

### Diagnostic level

This setting determines the amount of Windows diagnostic data sent to Microsoft.

>[!NOTE]
>In Windows 10, version 1709, Microsoft introduced a new feature: “Limit Enhanced diagnostic data to the minimum required by Windows Analytics”. When enabled, this feature limits the operating system diagnostic data events included in the Enhanced level to the smallest set of data required by [Windows Analytics](https://www.microsoft.com/windowsforbusiness/windows-analytics). For more information on the Enhanced level, see [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md).

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds |
>| **Policy Name** | Allow Telemetry |
>| **Default setting** | 2 - Enhanced |
>| **Recommended** | 2 - Enhanced |

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | User Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds |
>| **Policy Name** | Allow Telemetry |
>| **Default setting** | 2 - Enhanced |
>| **Recommended** | 2 - Enhanced |

>[!NOTE]
>When both the Computer Configuration policy and User Configuration policy are set, the more restrictive policy is used.

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\Windows\DataCollection |
>| **Value** | AllowTelemetry |
>| **Type** | REG_DWORD |
>| **Setting** | "00000002" |

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKCU\Software\Policies\Microsoft\Windows\DataCollection |
>| **Value** | AllowTelemetry |
>| **Type** | REG_DWORD |
>| **Setting** | "00000002" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | System |
>| **Policy** | AllowTelemetry (scope: device and user)  |
>| **Default setting** | 2 – Enhanced |
>| **Recommended** | 2 – Allowed |

### Diagnostic opt-in change notifications

This setting determines whether a device shows notifications about Windows diagnostic data levels to people on first logon or when changes occur in the diagnostic configuration.

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds |
>| **Policy Name** | Configure telemetry opt-in change notifications |
>| **Default setting** | Enabled |
>| **Recommended** | Enabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\Windows\DataCollection |
>| **Value** | DisableTelemetryOptInChangeNotification |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | System |
>| **Policy** | ConfigureTelemetryOptInChangeNotification  |
>| **Default setting** | 0 – Enabled |
>| **Recommended** | 0 – Enabled |

### Configure telemetry opt-in setting user interface

This setting determines whether people can change their own Windows diagnostic data level in *Start > Settings > Privacy > Diagnostics & feedback*.

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Data Collection and Preview Builds |
>| **Policy Name** | Configure telemetry opt-in setting user interface |
>| **Default setting** | Enabled |
>| **Recommended** | Enabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\Windows\DataCollection |
>| **Value** | DisableTelemetryOptInSettingsUx |
>| **Type** | REG_DWORD |
>| **Setting** | "00000001" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | System |
>| **Policy** | ConfigureTelemetryOptInSettingsUx  |
>| **Default setting** | 0 – Enabled |
>| **Recommended** | 0 – Enabled |

## Policies affecting personal data protection managed by the Enterprise IT

There are additional settings usually managed by the Enterprise IT that also affect the protection of personal data.

The following options for configuring these policies are relevant in this context.

### BitLocker

The following settings determine whether fixed and removable drives are protected by the BitLocker Drive Encryption.

#### Fixed Data Drives

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Bitlocker Drive Encryption\Fixed Data Drives |
>| **Policy Name** | Deny write access to fixed drives not protected by BitLocker |
>| **Default setting** | Not configured |
>| **Recommended** | Enabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\System\CurrentControlSet\Policies\Microsoft\FVE |
>| **Value** | FDVDenyWriteAccess |
>| **Type** | REG_DWORD |
>| **Setting** | "00000001" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | BitLocker |
>| **Policy** | FixedDrivesRequireEncryption  |
>| **Default setting** | Disabled |
>| **Recommended** | Enabled (see [instructions](/windows/client-management/mdm/bitlocker-csp#fixeddrivesrequireencryption)) |

#### Removable Data Drives

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Bitlocker Drive Encryption\Removable Data Drives |
>| **Policy Name** | Deny write access to removable drives not protected by BitLocker |
>| **Default setting** | Not configured |
>| **Recommended** | Enabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\System\CurrentControlSet\Policies\Microsoft\FVE |
>| **Value** | RDVDenyWriteAccess |
>| **Type** | REG_DWORD |
>| **Setting** | "00000001" |

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\FVE |
>| **Value** | RDVDenyCrossOrg |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | BitLocker |
>| **Policy** | RemovableDrivesRequireEncryption  |
>| **Default setting** | Disabled |
>| **Recommended** | Enabled (see [instructions](/windows/client-management/mdm/bitlocker-csp#removabledrivesrequireencryption)) |

### Privacy – AdvertisingID

This setting determines if the advertising ID, which preventing apps from using the ID for experiences across apps, is turned off.

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\System\User Profiles |
>| **Policy Name** | Turn off the advertising ID |
>| **Default setting** | Not configured |
>| **Recommended** | Enabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\Windows\AdvertisingInfo |
>| **Value** | DisabledByGroupPolicy |
>| **Type** | REG_DWORD |
>| **Setting** | "00000001" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | Privacy |
>| **Policy** | DisableAdvertisingId  |
>| **Default setting** | 65535 (default) - Not configured |
>| **Recommended** | 1 – Enabled |

### Edge

These settings whether employees send “Do Not Track” from the Microsoft Edge web browser to websites.

>[!NOTE]
>Please see [this Microsoft blog post](https://blogs.microsoft.com/on-the-issues/2015/04/03/an-update-on-microsofts-approach-to-do-not-track/) for more details on why the “Do Not Track” is no longer the default setting.

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Microsoft Edge |
>| **Policy Name** | Configure Do Not Track |
>| **Default setting** | Disabled |
>| **Recommended** | Disabled |

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | User Configuration\Administrative Templates\Windows Components\Microsoft Edge |
>| **Policy Name** | Configure Do Not Track |
>| **Default setting** | Disabled |
>| **Recommended** | Disabled |

#### Registry

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main |
>| **Value** | DoNotTrack |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Registry key** | HKCU\Software\Policies\Microsoft\MicrosoftEdge\Main |
>| **Value** | DoNotTrack |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

#### MDM

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **MDM CSP** | Browser |
>| **Policy** | AllowDoNotTrack (scope: device + user)  |
>| **Default setting** | 0 (default) – Not allowed |
>| **Recommended** | 0 – Not allowed |

### Internet Explorer

These settings whether employees send “Do Not Track” header from the Microsoft Explorer web browser to websites.

#### Group Policy

> [!div class="mx-tableFixed"]
>| | |
>|:-|:-|
>| **Group Policy** | Computer Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page |
>| **Policy Name** | Always send Do Not Track header |
>| **Default setting** | Disabled |
>| **Recommended** | Disabled |

> [!div class="mx-tableFixed"]
>|||
>|:-|:-|
>| **Group Policy** | User Configuration\Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel\Advanced Page |
>| **Policy Name** | Always send Do Not Track header |
>| **Default setting** | Disabled |
>| **Recommended** | Disabled |

#### Registry

> [!div class="mx-tableFixed"]
>|||
>|:-|:-|
>| **Registry key** | HKLM\Software\Policies\Microsoft\Internet Explorer\Main |
>| **Value** | DoNotTrack |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

> [!div class="mx-tableFixed"]
>|||
>|:-|:-|
>| **Registry key** | HKCU\Software\Policies\Microsoft\Internet Explorer\Main |
>| **Value** | DoNotTrack |
>| **Type** | REG_DWORD |
>| **Setting** | "00000000" |

#### MDM

> [!div class="mx-tableFixed"]
>|||
>|:-|:-|
>| **MDM CSP** | N/A |

## Additional resources

### FAQs

* [Windows 10 feedback, diagnostics, and privacy](https://privacy.microsoft.com/windows-10-feedback-diagnostics-and-privacy)
* [Microsoft Edge and privacy](https://privacy.microsoft.com/windows-10-microsoft-edge-and-privacy)
* [Windows Hello and privacy](https://privacy.microsoft.com/windows-10-windows-hello-and-privacy)
* [Wi-Fi Sense](https://privacy.microsoft.com/windows-10-about-wifi-sense)

### Blogs

* [Privacy and Windows 10](https://blogs.windows.com/windowsexperience/2015/09/28/privacy-and-windows-10)

### Privacy Statement

* [Microsoft Privacy Statement](https://privacy.microsoft.com/privacystatement)

### Windows Privacy on docs.microsoft.com

* [Manage connections from Windows operating system components to Microsoft services](manage-connections-from-windows-operating-system-components-to-microsoft-services.md)
* [Manage Windows 10 connection endpoints](manage-windows-endpoints.md)
* [Understanding Windows diagnostic data](configure-windows-diagnostic-data-in-your-organization.md#understanding-windows-diagnostic-data)
* [Configure Windows diagnostic data in your organization](configure-windows-diagnostic-data-in-your-organization.md)

### Other resources

* [Privacy at Microsoft](https://privacy.microsoft.com/)
