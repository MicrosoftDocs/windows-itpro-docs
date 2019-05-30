---
title: Messaging (Windows 10)
description: This section describes the Messaging settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
---

# Messaging (Windows Configuration Designer reference)

Use for settings related to Messaging and Commercial Mobile Alert System (CMAS).

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and are not intended for use by administrators in the enterprise.

>[!NOTE]
>CMAS is now known as Wireless Emergency Alerts (WEA). 

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |   | X |  |  |  |

## GlobalSettings 

### DisplayCmasLifo

Use this setting to change the order in which CMAS alert messages are displayed, from the default first in/first out (FIFO) message order to last in/first out (LIFO) message order.

If the phone receives at least one CMAS alert message which has not been acknowledged by the user, and another CMAS alert message arrives on the phone, partners can configure the order in which the newly received alert messages are displayed on the phone regardless of the service category of the alert. Users will not be able to change the message order once it has been set. 

If partners do not specify a value for this customization, the default FIFO display order is used. Users will be able to acknowledge the messages in the reverse order they were received.

When configured as **True**, you set a LIFO message order. When configured as **False**, you set a FIFO message order.

### EnableCustomLineSetupDialog

Enable this setting to allow custom line setup dialogs in the Messaging app.

### ExtractPhoneNumbersInStrings"

Set as **True** to tag any 5-or-more digit number as a tappable phone number.

### ShowSendingStatus

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

Set **ShowSendingStatus** to **True** to display the sending status for SMS/MMS messages.

### VoicemailIntercept

Partners can define a filter that intercepts an incoming SMS message and triggers visual voicemail synchronization. The filtered message does not appear in the user’s conversation list.

A visual voicemail sync is triggered by an incoming SMS message if the following conditions are met:

- The message sender value starts with the string specified in the SyncSender setting. The length of the specified values must be greater than 3 characters but less than 75 characters.

- The body of the message starts with the string specified in the SyncPrefix setting. The length of the specified values must be greater than 3 characters but less than 75 characters.

- Visual voicemail is configured and enabled. For more information, see [Visual voicemail](https://msdn.microsoft.com/library/windows/hardware/dn790032.aspx).

>[!NOTE]
>These settings are atomic, so both SyncSender and SyncPrefix must be set.
>
>The SyncSender and SyncPrefix values vary for each mobile operator, so you must work with your mobile operators to obtain the correct or required values.

Setting | Description
--- | ---
SyncPrefix | Specify a value for SyncPrefix that is greater than 3 characters but less than 75 characters in length. For networks that support it, this value can be the keyword for the SMS notification.
SyncSender | Specify a value for SyncSender that is greater than 3 characters but less than 75 characters in length. For networks that support it, this value can be a short code of the mailbox server that sends a standard SMS notification.



## PerSimSettings 

Use to configure settings for each subscriber identification module (SIM) card. Enter the Integrated Circuit Card Identifier (ICCID) for the SIM card, click **Add**, and then configure the folowing settings.

### AllowMmsIfDataIsOff

Setting | Description
--- | ---
AllowMmsIfDataIsOff | **True** allows MMS if data is off
AllowMmsIfDataIsOffSupported | **True** shows the toggle for allowing MMS if data is turned off
AllowMmsIfDataIsOffWhileRoaming | **True** allows MMS if data is off while roaming

### AllowSelectAllContacts

>[!NOTE]
>This setting is removed in Windows 10, version 1709, and later.

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

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

For networks that require it, you can specify the default GET path within the MMSC to use when the GET URL is missing from the WAP push MMS notification.

Set **DefaultContentLocationUrl** to specify the default GET path within the MMSC.

### ErrorCodeEnabled

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

You can choose to display additional content in the conversation view when an SMS or MMS message fails to send. This content includes a specific error code in decimal format that the user can report to technical support. Common errors also include a friendly string to help the user self-diagnose and fix the problem.

Set to **True** to display the error message with an explanation of the problem and the decimal-format error codes. When set to **False**, the full error message is not displayed.

### EmergencyAlertOptions

Configure settings for CMAS alerts.

Setting | Description 
--- | ---
CmasAMBERAlertEnabled | **True** enables the device to receive AMBER alerts
CmasExtremeAlertEnabled | **True** enables the device to receive extreme alerts
CmasSevereAlertEnabled | **True** enables the device to receive severe alerts
EmOperatorEnabled | Select which Emergency Alerts Settings page is displayed from dropdown menu
EtwsSoundEnabled | Set to **True** to play Earthquake & Tsunami Warning System (ETWS) sound during alert.
SevereAlertDependentOnExtremeAlert | When set as **True**, the CMAS-Extreme alert option must be on to modify CMAS-Severe alert option


### General

Setting | Description
--- | ---
AllowSelectAllContacts | Set to **True** to show the **select all contacts/unselect all** menu option to allow users to easily select multiple recipients for an SMS or MMS message. This menu option provides users with an easier way to add multiple recipients and may also meet a mandatory requirement for some mobile operator networks. Windows 10 Mobile supports the following select multiple recipients features:</br></br>- A multi-select chooser, which enables users to choose multiple contacts.</br>- A **select all contacts/unselect all** menu option, which enables users to select or unselect all their contacts. This option is not shown by default and must be enabled by the OEM.
AllowSMStoSMTPAddress | Allow SMS to SMTP address.
AssistedDialingMcc | By setting AssistedDialingMcc and AssistedDialingMnc, international assisted dialing will be enabled for SMS if the user setting for international assisted dialing is enabled. Enter the Mobile Country Code (MCC) to use for sending SMS.
AssistedDialingMnc | By setting AssistedDialingMcc and AssistedDialingMnc, international assisted dialing will be enabled for SMS if the user setting for international assisted dialing is enabled. Enter the Mobile Network Code (MNC) to use for sending SMS.
AssistedDialingPlusCodeSupportOverride | For devices that support IMS over SMS, you can override support for the assisted dialing plus (+) code for SMS by setting AssistedDialingPlusCodeSupportOverride. If enabled, the OS will not convert the plus (+) code to the proper assisted number when the user turns on the dialing assist option.
AutoRetryDownload | You can configure the messaging app to automatically retry downloading an MMS message if the initial download attempt fails. When this customization is enabled, the download is retried 3 times at 20-, 40-, and 60-second intervals. 
BroadcastChannels | You can specify one or more ports from which the device will accept cellular broadcast messages. Set the BroadcastChannels value to the port number(s) that can accept cellular broadcast messages. If you specify the same port that Windows 10 Mobile already recognizes as an Emergency Alert port (a CMAS or ETWS port number) and a cell broadcast message is received on that port, the user will only receive the message once. The message that is received will be displayed as an Emergency Alert message.
ConvertLongSMStoMMS | For networks that do support MMS and do not support segmentation of SMS messages, you can specify an automatic switch from SMS to MMS for long messages.
DefaultContentLocationUrl | For networks that require it, you can specify the default GET path within the MMSC to use when the GET URL is missing from the WAP push MMS notification. Set DefaultContentLocationUrl to specify the default GET path within the MMSC.
EarthquakeMessageString | To override the Primary Earthquake default message, specify the EarthquakeMessageString setting value. This string will be used regardless of what language is set on the device.
EarthquakeTsunamiMessageString| To override the Primary Tsunami and Earthquake default message, specify the EarthquakeTsunamiMessageString setting value. This string will be used regardless of what language is set on the device.
ErrorCodeEnabled | You can choose to display additional content in the conversation view when an SMS or MMS message fails to send. This content includes a specific error code in decimal format that the user can report to technical support. Common errors also include a friendly string to help the user self-diagnose and fix the problem. Set to **True** to display the error message with an explanation of the problem and the decimal-format error codes. When set to **False**, the full error message is not displayed.
EtwsSoundFileName | Set the value to the name of a sound file.
HideMediumSIPopups | By default, when a service indication message is received with a signal-medium or signal-high setting, the phone interrupts and shows the user prompt for these messages. However, you can hide the user prompts for signal-medium messages.
ImsiAuthenticationToken | Configure whether MMS messages include the IMSI in the GET and POST header. Set ImsiAuthenticationToken to the token used as the header for authentication. The string value should match the IMSI provided by the UICC.
LimitRecipients | Set the maximum number of recipients to which a single SMS or MMS message can be sent. Enter a number between 1 and 500 to limit the maximum number of recipients.
MaxRetryCount | You can specify the number of times that the phone can retry sending the failed MMS message and photo before the user receives a notification that the photo could not be sent. Specify MaxRetryCount to specify the number of times the MMS transport will attempt resending the MMS message. This value has a maximum limit of 3.
MMSLimitAttachments | You can specify the maximum number of attachments for MMS messages, from 1 to 20. The default is 5.
NIInfoEnabled | NIInfoEnabled
ProxyAuthorizationToken | See [Proxy authorization for MMS.](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/proxy-authorization-for-mms)
RetrySize | For MMS messages that have photo attachments and that fail to send, you can choose to automatically resize the photo and attempt to resend the message. Specify the maximum size to use to resize the photo in KB. Minimum is 0xA (10 KB). 
SetCacheControlNoTransform | When set, proxies and transcoders are instructed not to change the HTTP header and the content should not be modified. A value of 1 or 0x1 adds support for the HTTP header Cache-Control No-Transform directive. When the SetCacheControlNoTransform``Value is set to 0 or 0x0 or when the setting is not set, the default HTTP header Cache-Control No-Cache directive is used.
ShowRequiredMonthlyTest | **True** enables devices to receive CMAS Required Monthly Test (RMT) messages and have these show up on the device. **False** disables devices from receiving CMAS RMT messages.
SIProtocols | Additional supported service indication protocol name.
SmscPanelDisabled | **True** disables the short message service center (SMSC) panel. 
SMStoSMTPShortCode | Use to configure SMS messages to be sent to email addresses and phone numbers. `0` disables sending SMS messages to SMTP addresses. `1` enables sending SMS messages to SMTP addresses.
TargetVideoFormat | You can specify the transcoding to use for video files sent as attachments in MMS messages. Set TargetVideoFormat to one of the following values to configure the default transcoding for video files sent as attachments in MMS messages:</br></br>- 0 or 0x0 Sets the transcoding to H.264 + AAC + MP4. This is the default set by the OS.</br>- 1 or 0x1 Sets the transcoding to H.264 + AAC + 3GP.</br>- 2 or 0x2 Sets the transcoding to H.263 + AMR.NB + 3GP.</br>- 3 or 0x3 Sets the transcoding to MPEG4 + AMR.NB + 3GP. 
TsunamiMessageString | To override the Primary Tsunami default message, specify the TsunamiMessageString setting value. This string will be used regardless of what language is set on the device.
UAProf | You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC. There are two ways to correlate a user agent profile with a given phone:</br></br>- You can take the user agent string of the phone that is sent with MMS requests and use it as a hash to map to the user agent profile on the MMSC. The user agent string cannot be modified.</br>- Alternatively, you can directly set the URI of the user agent profile on the phone.</br></br>Set UAProf to the full URI of your user agent profile file. Optionally, you can also specify the custom user agent property name for MMS that is sent in the header by setting UAProfToken to either `x-wap-profile` or `profile`.
UAProfToken | You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC. 
UseDefaultAddress | By default, the MMS transport sends an acknowledgement to the provisioned MMS application server (MMSC). However, on some networks, the correct server to use is sent as a URL in the MMS message. In that case, a registry key must be set, or else the acknowledgement will not be received and the server will continue to send duplicate messages. **True** enables some networks to correctly acknowledge MMS messages. **False** disables the feature.
UseInsertAddressToken | Use insert address token or local raw address.
UserAgentString | Set UserAgentString to the new user agent string for MMS in its entirely. By default, this string has the format WindowsPhoneMMS/MicrosoftMMSVersionNumber WindowsPhoneOS/OSVersion-buildNumber OEM-deviceName, in which the italicized text is replaced with the appropriate values for the phone.
UseUTF8ForUnspecifiedCharset | Some incoming MMS messages may not specify a character encoding. To properly decode MMS messages that do not specify a character encoding, you can set UTF-8 to decode the message. 
WapPushTechnology | For networks that require non-standard handling of single-segment incoming MMS WAP Push notifications, you can specify that MMS messages may have some of their content truncated and that they may require special handling to reconstruct truncated field values. `1` or `0x1` enables MMS messages to have some of their content truncated. `0` or `0x0` disables MMS messages from being truncated 

## ImsiAuthenticationToken

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

Configure whether MMS messages include the IMSI in the GET and POST header.

Set **ImsiAuthenticationToken** to the token used as the header for authentication. The string value should match the IMSI provided by the UICC.


### LatAlertOptions

Enable `LatLocalAlertEnabled` to enable support for LAT-Alert Local Alerts for devices sold in Chile. For more information, see [Emergency notifications](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/emergency-notifications).

### MaxRetryCount

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

You can specify the number of times that the phone can retry sending the failed MMS message and photo before the user receives a notification that the photo could not be sent.

Specify MaxRetryCount to specify the number of times the MMS transport will attempt resending the MMS message. This value has a maximum limit of 3.

### MMSGroupText

Set options for group messages sent to multiple people.

Setting | Description
--- | ---
MMSGroupText | **True** enables group messages to multiple people sent as MMS.
ShowMMSGroupTextUI | **True** shows the toggle for group text in messaging settings.
ShowMmsGroupTextWarning | **True** shows the warning that alerts users of possible additional charges before sending a group text as MMS.

### NIAlertOptions

Enable `NI2AlertEnabled` to enable support for the Netherlands Announcements for devices sold in the Netherlands. For more information, see [Emergency notifications](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/emergency-notifications).

### RcsOptions

Set options for Rich Communications Services (RCS). 

| Setting | Description |
| --- | --- |
RcsAllowLeaveClosedGroupChats | Whether or not to allow users to leave closed group chats.
| RcsEnabled | Toggle to enable/disable RCS service. Set to **True** to enable. |
| RcsFileTransferAutoAccept | Set to **True** to auto-accept RCS incoming file transfer if the file size is less than warning file size.|
RcsFiletransferAutoAcceptWhileRoaming | Auto-accept RCS incoming file transfer when the file size is less than the warning file size while roaming.
RcsGroupChatCreationMode | The mode used to create new RCS group chats.
RcsGroupChatCreationgThreadingMode | The mode used to thread newly created RCS group chats.
| RcsSendReadReceipt | Set to **True** to send read receipt to the sender when a message is read.  |
RcsTimeWindowsAfterSelfLeave | After RCS receives a self-left message, it will ignore messages during this time (in milliseconds), except self-join.
| ShowRcsEnabled | Set to **True** to show the toggle for RCS activation.  |


### RequestDeliveryReport

Set options related to MMS message notifications. You can specify whether users receive notification that MMS messages could not be delivered, and determine whether users can control this by using the MMS delivery confirmation toggle in **Messaging > settings**. By default, this user setting is visible but turned off.

| Setting | Description |
| --- | --- |
| RequestDeliveryReport | Set to **True** to set the default value to on.  |
| RequestDeliveryReportIsSupported | **True** shows the toggle for MMS delivery confirmation, and **False** hides the toggle. |


### SMSDeliveryNotify

Setting | Description
--- | ---
DeliveryNotifySupported | Set to **True** to enable SMS delivery confirmation.
SMSDeliveryNotify | Set to **True** to toggle SMS delivery confirmation.

### TargetVideoFormat

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

You can specify the transcoding to use for video files sent as attachments in MMS messages.

Set TargetVideoFormat to one of the following values to configure the default transcoding for video files sent as attachments in MMS messages:

| Value | Description |
| --- | --- |
| 0 or 0x0 | Sets the transcoding to H.264 + AAC + MP4. This is the default set by the OS. |
| 1 or 0x1 | Sets the transcoding to H.264 + AAC + 3GP. |
| 2 or 0x2 | Sets the transcoding to H.263 + AMR.NB + 3GP. |
| 3 or 0x3 | Sets the transcoding to MPEG4 + AMR.NB + 3GP. |
 

### TaiwanAlertOptions

Set options for Taiwan Emergency Alerts system. For more information, see [Emergency notifications](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/emergency-notifications#taiwan-alerts). 


Setting | Description
--- | ---
TaiwanAlertEnabled | Receive Taiwan alerts.
TaiwanEmergencyAlertEnabled | Receive Taiwan emergency alerts.
TaiwanPresidentialAlertEnabled | Receive alerts from the Leader of the Taiwan Area.
TaiwanRequiredMonthlytestEnabled | Receive Taiwan Required Monthly Test alerts.



### UAProf

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC.

There are two ways to correlate a user agent profile with a given phone:
- You can take the user agent string of the phone that is sent with MMS requests and use it as a hash to map to the user agent profile on the MMSC. The user agent string cannot be modified.
- Alternatively, you can directly set the URI of the user agent profile on the phone.

Set **UAProf** to the full URI of your user agent profile file. Optionally, you can also specify the custom user agent property name for MMS that is sent in the header by setting **UAProfToken** to either `x-wap-profile` or `profile`.


### UAProfToken

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

You can specify a user agent profile to use on the phone for MMS messages. The user agent profile XML file details a phone’s hardware specifications and media capabilities so that an MMS application server (MMSC) can return supported optimized media content to the phone. The user agent profile XML file is generally stored on the MMSC.

Optionally, in addition to specifying **UAProf**, you can also specify the custom user agent property name for MMS that is sent in the header by setting **UAProfToken** to either `x-wap-profile` or `profile`.


### UserAgentString

>[!NOTE]
>This setting is removed in Windows 10, version 1709.

Set **UserAgentString** to the new user agent string for MMS in its entirely.

By default, this string has the format WindowsPhoneMMS/MicrosoftMMSVersionNumber WindowsPhoneOS/OSVersion-buildNumber OEM-deviceName, in which the italicized text is replaced with the appropriate values for the phone.


### w4

| Setting | Description |
| --- | --- |
| ADDR | Specify the absolute MMSC URL. The possible values to configure the ADDR parameter are:</br></br>- A Uniform Resource Identifier (URI)</br>- An IPv4 address represented in decimal format with dots as delimiters</br>- A fully qualified Internet domain name |
| APPID | Set to `w4`.  |
| MS | (optional) Specify the maximum size of MMS, in KB. If the value is not a number, or is less than or equal to 10, it will be ignored and outgoing MMS will not be resized. |
| NAME | (optional) Enter  user–readable application identity. This parameter is also used to define part of the registry path for the APPLICATION parameters. The possible values to configure the **NAME** parameter are:</br></br>- Character string containing the name</br>- no value specified</br></br>If no value is specified, the registry location will default to <unnamed>. If **NAME** is greater than 40 characters, it will be truncated to 40 characters. |
| TONAPID | Specify the network access point identification name (NAPID) defined in the provisioning file. This parameter takes a string value. It is only possible to refer to network access points defined within the same provisioning file (except if the INTERNET attribute is set in the NAPDEF characteristic). For more information about the NAPDEF characteristic, see [NAPDEF configuration service provider](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/napdef-csp). |
| TOPROXY | Specify one logical proxy with a matching PROXY-ID. It is only possible to refer to proxies defined within the same provisioning file. Only one proxy can be listed. The TO-PROXY value must be set to the value of the PROXY ID in PXLOGICAL that defines the MMS specific-proxy.  |

### WapPushTechnology

>[!NOTE]
>These settings are removed in Windows 10, version 1709.

For networks that require non-standard handling of single-segment incoming MMS WAP Push notifications, you can specify that MMS messages may have some of their content truncated and that they may require special handling to reconstruct truncated field values.

| Value | Description |
| --- | --- |
| 1 or 0x1 | Enables MMS messages to have some of their content truncated. |
| 0 or 0x0 | Disables MMS messages from being truncated. |



## Related topics
 - [Customizations for SMS and MMS](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/customizations-for-sms-and-mms)
