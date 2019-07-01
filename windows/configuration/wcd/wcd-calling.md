---
title: Calling (Windows 10)
description: This section describes the Calling settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# Calling (Windows Configuration Designer reference)

Use to configure settings for Calling.

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and are not intended for use by administrators in the enterprise.

## Applies to

| Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings |  |  X  |  |  |  |


## Branding

See [Branding for phone calls](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/branding-for-phone-calls).

## CallIDMatchOverrides

Enter a GEOID, select **Add**, and then enter the number of digits for matching caller ID. 

For a list of GEOID codes and default number of digits for each country/region, see [Overriding the OS default minimu number of digits for caller ID matching](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/caller-id-matching#a-href-idoverriding-os-default-min-number-digitsaoverriding-the-os-default-minimum-number-of-digits-for-caller-id-matching).

## CauseCodeRegistrationTable

See [Cause codes](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/cause-codes).


## CDMAHeuristics

CDMA Heuristics (on by default) makes CDMA calling more user-friendly by exposing an interface that supports multiple calls with call waiting, swapping, and three-way calling. 

For **CDMAPriorityCallPrefix**, enter a custom call prefix that would allow the user to override an ongoing call with a remote party mostly used in emergency services and law enforcement.  

Set **DisableCdmaHeuristics** to **True** to disable the built-in heuristics.


## PartnerAppSupport

See [Dialer codes to launch diagnostic applications](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/dialer-codes-to-launch-diagnostic-applications).

## PerSimSettings

Use to configure settings for each subscriber identification module (SIM) card. Enter the Integrated Circuit Card Identifier (ICCID) for the SIM card, select **Add**, and then configure the folowing settings. 

### Critical

Setting | Description
--- | ---
MOSimFallbackVoicemailNumber | Partners who do not have the voicemail numbers on the device SIM can configure the voicemail number for their devices. If the voicemail number is not on the SIM and the registry key is not set, the default voicemail will not be set and the user will need to set the number. Set MOSimFallbackVoicemailNumber to the voicemail number that you want to use for the phone.
SimOverrideVoicemailNumber | Mobile operators can override the voicemail number on the UICC with a different voicemail number that is configured in the registry. Set SimOverrideVoicemailNumber to a string that contains the digits of the voicemail number to use instead of the voicemail number on the UICC.


### General

Setting | Description
--- | ---
AllowMixedAudioVideoConferencing | Set as **True** to enable audio and video calls in the same conference.
AllowVideoConferencing | Set as **True** to enable the ability to conference video calls.
AutoDismissUssedWaitingDialog | Set as **True** to enable automatic dismissal of "Waiting" dialog on USSD session termination.
CallerIdBlockingPrefixList | Enter a list of prefixes which will not see the caller ID. Use a semicolon (;) as a delimiter.
DefaultCallerIdSetting | Configure the default setting for caller ID. Select between `No one`, `Only contacts`, `Every one`, and `Network default`. If set to `Network default`, set `ShowCallerIdNetworkDefaultSetting` to **True**.
DefaultEnableVideoCalling | Set as **True** to enable LTE video calling as the default setting.
DefaultEnableVideoCapability | Set as **True** to enable LTE video capability sharing as the default setting.
EnableSupplementaryServiceEraseToDeactivateOverride | Enables conversion of supplementary service erase commands to deactivate commands.
IgnoreCallerIdBlockingPrefix | DO NOT USE
IgnoreMWINotifications | Set as **True** to configure the voicemail system so the phone ignores message waiting indicator (MWI) notifications.
IgnoreProhibitedDialingPrefix | Ignore prohibited dialing prefix. An OEM/MO can specify a certain set of strings by region that when dialed will block a user's caller ID from being displayed on the device receiving the call. The list is separated by semicolon. This setting does not apply beyond Windows 10, version 1709.
IgnoreUssdExclusions | Set as **True** to ignore Unstructured Supplementary Service Data (USSD) exclusions.
ProhibitedDialingPrefixList | A semicolon delimited list of previxes that are prohibited from being dialed.
ResetCallForwarding | When set to **True**, user is provided with an option to retry call forwarding settings query.
ShowCallerIdNetworkDefaultSetting | Indicates whether the network default setting can be allowed for outgoing caller ID.
ShowVideoCallingSwitch | Use to specify whether to show the video capability sharing switch on the mobile device's Settings screen.
ShowVideoCapabilitySwitch | Configure the phone settings to show the video capability sharing switch.
SupressVideoCallingChargesDialog | Configure the phone settings CPL to suppress the video calling charges dialog.
UssdExclusionList | List used to exclude predefined USSD entries, allowing the number to be sent as standard DTMF tones instead. Set UssdExclusionList to the list of desired exclusions, separated by semicolons. For example, setting the value to 66;330 will override 66 and 330. Leading zeros are specified by using F. For example, to override code 079, set the value to F79. If you set UssdExclusionList, you must set IgnoreUssdExclusions as well. Otherwise, the list will be ignored. See [List of USSD codes](#list-of-ussd-codes) for values.
WiFiCallingOperatorName | Enter the operator name to be shown when the phone is using WiFi calling. If you don't set a value for WiFiCallingOperatorName, the device will always display **SIMServiceProviderName Wi-Fi**, where *SIMServiceProviderName* is a string that corresponds to the SPN for the SIM on the device. If the service provider name in the SIM is not set, only **Wi-Fi** will be displayed.

### HDAudio

To customize call progress branding when a call is made using a specific audio codec, select the audio codec from the dropdown menu and select **Add**. Select the codec in **Available Customizations** and then enter a text string (up to 10 characters) to be used for call progress branding for calls using that codec. For more information, see [Use HD audio codec for call branding](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/use-hd-audio-codec-for-call-branding).

### IMSSubscriptionUpdate

These are Verizon/Sprint-only settings to allow the operator to send an OMA-DM update to the device with the given alert characteristics, which are defined between the mobile operator and OEM, which in turn will inform the device to turn on or off IMS.

### RoamingNumberOverrides

See [Dial string overrides when roaming](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/dial-string-overrides-when-roaming).

## PhoneSettings

Setting | Description
--- | ---
AdjustCDMACallTime | Change the calculation of CDMA call duration to exclude the time before the call connects. 
AssistedDialSetting | Turn off the international assist feature that helps users with the country codes needed for dialing international phone numbers.
CallIDMatch | Sets the number of digits that the OS will try to match against contacts for Caller ID. For any country/region that doesn't exist in the default mapping table, mobile operators can use this legacy CallIDMatch setting to specify the minimum number of digits to use for matching caller ID.
CallRecordingOff | Indicates if call recording is turned off. Users will not see the call recording functionality when this is set to **True**.
ConferenceCallMaximumPartyCount | Enter a number to limit the number of parties that can participate in a conference call.
ContinuousDTMFEnabled | Enable DTMF tone duration for as long as the user presses a dialpad key.
DisableVideoUpgradeStoreNavigation | If there are no compatible video upgrade apps installed, tapping the video upgrade button will launch a dialog that will navigate to the Microsoft Store. If this option is enabled, it will show a dialog that informs the user that no video app is installed, but it will not navigate to the Microsoft Store.
DisableVoicemailPhoneNumberDisplay | Disable the display of the voicemail phone number below the Voicemail label in call progress dialog.
DisplayNoDataMessageDuringCall | Display a message to the user indicating that there is no Internet connectivity during a phone call.
DisplayNumberAsDialed | Display the outgoing number "as dialed" rather than "as connected".
EnableVideoCalling | Set to **True** to enable video calling.
HideCallForwarding | Partners can hide the user option to turn on call forwarding. By default, users can decide whether to turn on call forwarding. Partners can hide this user option so that call forwarding is permanently disabled.
HideSIMSecurityUI | Hide the SIM Security panel from phone Settings.
LowVideoQualityTimeout | Configure the phone timer to automatically drop video when the quality is low, in milliseconds.
MinTimeBetweenCallSwaps | Configure how often the user can swap between two active phone calls, in milliseconds.
PromptVideoCallingCharges | Prompt user for charges associated with video calls.
ShowLongTones | Partners can make a user option visible that makes it possible to toggle between short and long DTMF tones, instead of the default continuous tones. By default, the phone supports Dual-Tone Multi-frequency (DTMF) with continuous tones. Partners can make a user option visible that makes it possible to toggle between short and long tones instead.
UseOKForUssdDialogs | OEMs can change the button label in USSD dialogs from **Close** (the default) to **OK**.
UseVoiceDomainForEmergencyCallBranding | Use voice domain to decide whether to use **Emergency calls only** or **No service** in branding.
VideoCallingChargesMessage | Enter text for the message informing the user about the charges associated with video calls.
VideoCallingChargesTitle | Enter text for the title of the dialog informing the user about the charges associated with video calls.
VideoCallingDescription | Enter text to describe the video calling feature.
VideoCallingLabel | Enter text to describe the video calling toggle.
VideoCapabilityDescription | Enter text to describe the video capability feature.
VideoCapabilityLabel | Enter text to describe the video capability toggle.
VideoTransitionTimeout | Enter the time in milliseconds to check how long the video transition state will remain until the remote party responds. The minimum value is 10000 and the maximum value is 30000. 
VoLTEAudioQualityString | Partners can add a string to the call progress screen to indicate if the active call is a high quality voice over LTE (VoLTE). Set the value of VoLTEAudioQualityString to the string that you want to display in the call progress screen to indicate that the call is a VoLTE call. This string is combined with the PLMN so if the string is "VoLTE", the resulting string is "PLMN_String VoLTE". For example, the string displayed in the call progress screen can be "Litware VoLTE" if the PLMN_String is "Litware". The value you specify for VoLTEAudioQualityString must exceed 10 characters.


## PhoneShellUI

Setting | Description
--- | ---
EnableSoftwareProximitySensorMitigation | Enable software proximity sensor mitigation.

## PhoneSmsFilter

Setting | Description
--- | ---
AppId | Enter the app ID for your phone call/SMS filter application.

## SupplementaryServiceCodeOverrides

See [Dialer codes for supplementary services](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/dialer-codes-for-supplementary-services).

## VoicemailRegistrationTable

Configure these settings to customize visual voicemail in the Windows 10 Mobile UI. For settings and values, see [Visual voicemail](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/visual-voicemail).


## List of USSD codes


Codes | Description | DWORD Value
--- | --- | --- 
04 | CHANGEPIN | 000000F4
042 | CHANGEPIN2 | 00000F42
05 | UNBLOCKPIN | 000000F5
052 | UNBLOCKPIN2 | 00000F52
03 | SSCHANGEPASSWORD | 000000F3
75 | EMLPPBASE | 00000075
750 | EMLPPLEVEL0 | 00000750
751 | EMLPPLEVEL1 | 00000751
752 | EMLPPLEVEL2 | 00000752
753 | EMLPPLEVEL3 | 00000753
754 | EMLPPLEVEL4 | 00000754
66 | CALLDEFLECT | 00000066
30 | CALLIDCLIP | 00000030
31 | CALLIDCLIR | 00000031
76 | CALLIDCOLP | 00000076
77 | CALLIDCOLR | 00000077
21 | FWDUNCONDITIONAL | 00000021
67 | FWDBUSY | 00000067
61 | FWDNOREPLY | 00000061
62 | FWDNOTREACHABLE | 00000062
002 | FWDALL | 00000FF2
004 | FWDALLCONDITIONAL | 00000FF4
43 | CALLWAITING | 00000043
360 | UUSALL | 00000360
361 | UUSSERVICE1 | 00000361
362 | UUSSERVICE2 | 00000362
363 | UUSSERVICE3 | 00000363
33 | BARROUT | 00000033
331 | BARROUTINTL | 00000331
332 | BARROUTINTLEXTOHOME | 00000332
35 | BARRIN | 00000035
351 | BARRINROAM | 00000351
330 | BARRALL | 00000330
333 | BARRALLOUT | 00000333
353 | BARRALLIN | 00000353
354 | BARRINCOMINGINTERMEDIATE | 00000354
96 | CALLTRANSFER | 00000096
37 | CALLCOMPLETEBUSY | 00000037
070 | PNP0 | 00000F70
071 | PNP1 | 00000F71
072 | PNP2 | 00000F72
073 | PNP3 | 00000F73
074 | PNP4 | 00000F74
075 | PNP5 | 00000F75
076 | PNP6 | 00000F76
077 | PNP7 | 00000F77
078 | PNP8 | 00000F78
079 | PNP9 | 00000F79
300 | CALLCNAP | 00000300
591 | MSP1 | 00000591
592 | MSP2 | 00000592
593 | MSP3 | 00000593
594 | MSP4 | 00000594
 
