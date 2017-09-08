---
title: Messaging (Windows 10)
description: This section describes the Messaging settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
ms.localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# Messaging (Windows Configuration Designer reference)

Use for settings related to Messaging. 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |   | X |  |  |  |

## GlobalSettings > ShowSendingStatus

Set **ShowSendingStatus** to **True** to display the sending status for SMS/MMS messages.

## PerSimSettings > _ICCID

Use to configure settings for each subscriber identification module (SIM) card.

### AllowSelectAllContacts

Set to **True** to show the select all contacts/unselect all menu option to allow users to easily select multiple recipients for an SMS or MMS message. This menu option provides users with an easier way to add multiple recipients and may also meet a mandatory requirement for some mobile operator networks.

Windows 10 Mobile supports the following select multiple recipients features:

- A multi-select chooser, which enables users to choose multiple contacts.
- A **select all contacts/unselect all** menu option, which enables users to select or unselect all their contacts. This option is not shown by default and must be enabled by the OEM.

### AllowSendingDeliveryReport

Specify whether the phone automatically sends a receipt acknowledgment for MMS messages. Partners can specify whether the phone automatically sends a receipt acknowledgment for MMS messages when they arrive, and they can determine whether users can control the receipt acknowledgments by using the **Send MMS acknowledgment** toggle in **Messaging > settings**. By default, this user setting is visible and turned on.

| Setting | Description |
| --- | --- |
| AllowSendingDeliveryReport | **True** sets the **Send MMS acknowledgment** toggle to **On** |
| AllowSendingDeliveryReportIsSupported | **True** shows the **Send MMS acknowledgment** toggle, and **False** hides the toggle |

### AutomaticallyDownload

Specify whether MMS messages are automatically downloaded.

| Setting | Description |
| --- | --- |
| AutomaticallyDownload | **True** sets the **Automatically download MMS** toggle to **On** |
| ShowAutomaticallyDownloadMMSToggle | **True** shows the **Automatically download MMS** toggle, and **False** hides the toggle |

### DefaultContentLocationUrl

For networks that require it, you can specify the default GET path within the MMSC to use when the GET URL is missing from the WAP push MMS notification.

Set **DefaultContentLocationUrl** to specify the default GET path within the MMSC.

### ErrorCodeEnabled

You can choose to display additional content in the conversation view when an SMS or MMS message fails to send. This content includes a specific error code in decimal format that the user can report to technical support. Common errors also include a friendly string to help the user self-diagnose and fix the problem.

Set to **True** to display the error message with an explanation of the problem and the decimal-format error codes. When set to **False**, the full error message is not displayed.


### ImsiAuthenticationToken

Configure whether MMS messages include the IMSI in the GET and POST header.

Set **ImsiAuthenticationToken** to the token used as the header for authentication. The string value should match the IMSI provided by the UICC.

### MaxRetryCount

You can specify the number of times that the phone can retry sending the failed MMS message and photo before the user receives a notification that the photo could not be sent.

Specify MaxRetryCount to specify the number of times the MMS transport will attempt resending the MMS message. This value has a maximum limit of 3.


### RcsOptions

Set options for Rich Communications Services (RCS). 

| Setting | Description |
| --- | --- |
| RcsEnabled | Toggle to enable/disable RCS service. Set to **True** to enable. |
| RcsFileTransferAutoAccept | Set to **True** to auto-accept RCS incoming file transfer if the file size is less than warning file size.|
| RcsSendReadReceipt | Set to **True** to send read receipt to the sender when a message is read.  |
| ShowRcsEnabled | Set to **True** to show the toggle for RCS activation.  |


### RequestDeliveryReport

Set options related to MMS message notifications. You can specify whether users receive notification that MMS messages could not be delivered, and determine whether users can control this by using the MMS delivery confirmation toggle in **Messaging > settings**. By default, this user setting is visible but turned off.

| Setting | Description |
| --- | --- |
| RequestDeliveryReport | Set to **True** to set the default value to on.  |
| RequestDeliveryReportIsSupported | **True** shows the toggle for MMS delivery confirmation, and **False** hides the toggle. |


### TargetVideoFormat

You can specify the transcoding to use for video files sent as attachments in MMS messages.

Set TargetVideoFormat to one of the following values to configure the default transcoding for video files sent as attachments in MMS messages:

| Value | Description |
| --- | --- |
| 0 or 0x0 | Sets the transcoding to H.264 + AAC + MP4. This is the default set by the OS. |
| 1 or 0x1 | Sets the transcoding to H.264 + AAC + 3GP. |
| 2 or 0x2 | Sets the transcoding to H.263 + AMR.NB + 3GP. |
| 3 or 0x3 | Sets the transcoding to MPEG4 + AMR.NB + 3GP. |
 

### UAProf

You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC.

There are two ways to correlate a user agent profile with a given phone:
- You can take the user agent string of the phone that is sent with MMS requests and use it as a hash to map to the user agent profile on the MMSC. The user agent string cannot be modified.
- Alternatively, you can directly set the URI of the user agent profile on the phone.

Set **UAProf** to the full URI of your user agent profile file. Optionally, you can also specify the custom user agent property name for MMS that is sent in the header by setting **UAProfToken** to either `x-wap-profile` or `profile`.


### UAProfToken

You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC.

Optionally, in addition to specifying **UAProf**, you can also specify the custom user agent property name for MMS that is sent in the header by setting **UAProfToken** to either `x-wap-profile` or `profile`.


### UserAgentString

Set **UserAgentString** to the new user agent string for MMS in its entirely.

By default, this string has the format WindowsPhoneMMS/MicrosoftMMSVersionNumber WindowsPhoneOS/OSVersion-buildNumber OEM-deviceName, in which the italicized text is replaced with the appropriate values for the phone.


### w4

| Setting | Description |
| --- | --- |
| ADDR | Specify the absolute MMSC URL. The possible values to configure the ADDR parameter are:</br></br>- A Uniform Resource Identifier (URI)</br>- An IPv4 address represented in decimal format with dots as delimiters</br>- A fully qualified Internet domain name |
| APPID | Set to `w4`  |
| MS | (optional) Specify the maximum size of MMS, in KB. If the value is not a number, or is less than or equal to 10, it will be ignored and outgoing MMS will not be resized. |
| NAME | (optional) Enter  user–readable application identity. This parameter is also used to define part of the registry path for the APPLICATION parameters. The possible values to configure the **NAME** parameter are:</br></br>- Character string containing the name</br>- no value specified</br></br>If no value is specified, the registry location will default to <unnamed>. If **NAME** is greater than 40 characters, it will be truncated to 40 characters. |
| TONAPID | Specify the network access point identification name (NAPID) defined in the provisioning file. This parameter takes a string value. It is only possible to refer to network access points defined within the same provisioning file (except if the INTERNET attribute is set in the NAPDEF characteristic). For more information about the NAPDEF characteristic, see [NAPDEF configuration service provider](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/napdef-csp). |
| TOPROXY | Specify one logical proxy with a matching PROXY-ID. It is only possible to refer to proxies defined within the same provisioning file. Only one proxy can be listed. The TO-PROXY value must be set to the value of the PROXY ID in PXLOGICAL that defines the MMS specific-proxy.  |



### WapPushTechnology

For networks that require non-standard handling of single-segment incoming MMS WAP Push notifications, you can specify that MMS messages may have some of their content truncated and that they may require special handling to reconstruct truncated field values.

| Value | Description |
| --- | --- |
| 1 or 0x1 | Enables MMS messages to have some of their content truncated. |
| 0 or 0x0 | Disables MMS messages from being truncated. |



## Related topics

- [w4 APPLICATION CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/w4-application-csp)