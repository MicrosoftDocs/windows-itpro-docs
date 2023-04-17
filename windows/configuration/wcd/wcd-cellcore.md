---
title: CellCore (Windows 10)
description: This section describes the CellCore settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: windows-client
author: aczechowski
ms.localizationpriority: medium
ms.author: aaroncz
ms.topic: article
ms.date: 10/02/2018
ms.reviewer: 
manager: dougeby
ms.technology: itpro-configure
---

# CellCore (Windows Configuration Designer reference)

>Setting documentation is provided for Windows 10, version 1803 and earlier. CellCore isn't available in Windows 10, version 1809.

Use to configure settings for cellular data.

>[!IMPORTANT]
>These settings are intended to be used only by manufacturers, mobile operators, and solution providers when configuring devices, and aren't intended for use by administrators in the enterprise.

## Applies to
|Setting groups | Windows client | Surface Hub | HoloLens | IoT Core|
|:---|:---:|:---:|:---:|:---:| 
|PerDevice: [CellConfigurations](#cellconfigurations)|  |  |  |  |
|PerDevice: [CellData](#celldata) |✔️|✔️|  |  |
|PerDevice: [CellUX](#cellux)| ✔️ |✔️| | |
|PerDevice: [CGDual](#cgdual)|  |  |  | |
|PerDevice: [eSim](#esim) | ✔️ |  ✔️  |  | |
|PerDevice: [External](#external)  |  |   |  | |
|PerDevice: [General](#general)  |  |  |  | |
|PerDevice: [RCS](#rcs)|  |  |  | |
|PerDevice: [SMS](#sms)| ✔️ | ✔️  |  |  
|PerDevice: [UIX](#uix)|  |  |  | |
|PerDevice: [UTK](#utk)|  |  |  | |
|PerIMSI: [CellData](#celldata2)|  |  |  |  |
|PerIMSI: [CellUX](#cellux2)| | | | |
|PerIMSI: [General](#general2)|  |  |  | |
|PerIMSI: [RCS](#rcs2)|  |  |  |  |
|PerIMSI: [SMS](#sms2)|✔️|✔️|  |  | 
|PerIMSI: [UTK](#utk2)|  |   |  |  |
|PerIMSI: [VoLTE](#volte)|  |  |  |  |

## PerDevice

### CellConfigurations

1. In **CellConfiguration** > **PropertyGroups**, enter a name for the property group. 
2. Select the **PropertyGroups** you created in the **Available customizations** pane and then enter a **PropertyName**.
3. Select the **PropertyName** you created in the **Available customizations** pane, and then select one of the following data types for the property:
    - Binary
    - Boolean
    - Integer
    - String
4. The data type that you selected is added in **Available customizations**. Select it to enter a value for the property.

### CellData

|Setting | Description|
|:--- |:---|
|CellularFailover | Allow or disallow cellular data failover when in limited Wi-Fi connectivity. By default, if the phone is connected to a Wi-Fi network and the data connection to a site is unsuccessful due to limited Wi-Fi connectivity, the phone will complete the connection to the site using available cellular data networks (when possible) to provide an optimal user experience. When the customization is enabled, a user option to use or not use cellular data for limited Wi-Fi connectivity becomes visible in the **Settings** > **cellular+SIM** screen. This option is automatically set to **don’t use cellular data** when the customization is enabled.|
|MaxNumberOfPDPContexts | Set a maximum value (1 through 4, inclusive, or 0x1 through 0x4 hexadecimal) for the number of simultaneous packet data protocol (PDP) contexts for 3GPP connections. By default, the OS enforces a maximum of four (4) simultaneous packet data protocol (PDP) contexts for 3GPP connections, and one (1) PDP context for 3GPP2 connections. You can set a different maximum value if required by their mobile operator. The same maximums apply for both roaming and non-roaming scenarios. This maximum does not include packet contexts used internally by the modem.|
|ModemProfiles > LTEAttachGuids | Set the value for LTEAttachGuid to the OemConnectionId GUID used for the LTE attach profile in the modem. The value is a GUID in the string format *XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX*.|
|PersistAtImaging > DisableAoAc | Enable or disable Always-on/Always-connected (AoAc) on the WWAN adapter.|

### CellUX

|Setting | Description|
|:- |:-|
|APNAuthTypeDefault | Select between **Pap** and **Chap** for default APN authentication type.|
|APNIPTypeIfHidden | Select between **IPV4**, **IPV6**, **IPV4V6**, and **IPV4V6XLAT** for default APN IP type.|
|Critical > ShowVoLTERoaming | Select **Yes** to show the VoLTE roaming control in the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to hide the control.|
|Critical > ShowVoLTEToggle | Select **Yes** to show the VoLTE toggle in the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to hide the toggle.|
|Disable2GByDefault | Select **Yes** to disable 2G by default. Select **No** to enable 2G.|
|Disabled2GNoticeDescription | Enter text to customize the notification for disabled 2G.|
|EmbeddedUiccSlotId |  ID for embedded UICC (eUICC) slot.|
|GenericWifiCallingErrorMessage | Enter text to customize the generic error message when a Wi-Fi calling error occurs.|
|Hide3GPP2ModeSelection | Select **Yes** to hide the **CDMA** option in the network **Mode** selection drop-down menu. Select **No** to show the **CDMA** option.|
|Hide3GPP2Selection | For 3GPP2 or CDMA phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM** settings screen. Select **No** to show **Network Type**.|
|Hide3GPPNetworks | For 3GPP or GSM phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM settings** screen. Select **No** to show **Network Type**.|
|HideAPN | Select **Yes** to hide the **add internet APN** button in the **SIM settings** screen. Select **No** to show **add internet APN**.|
|HideAPNAuthType | Select **Yes** to hide the APN authentication selector. Select **No** to show the APN authentication selector.|
|HideAPNIPType | Select **Yes** to hide the **IP type** list in the **internet APN** settings screen. Select **No** to show **IP type**.|
|HideDisabled2GNotice | Select **Yes** to hide the notification for disabled 2G. Select **No** to show the notification for disabled 2G.|
|HideHighestSpeed | Select **Yes** to hide the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show **Highest connection speed**.|
|HideHighestSpeed2G | Select **Yes** to hide the 2G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 2G option.|
|HideHighestSpeed3GOnly | Select **Yes** to hide the 3G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 3G option.|
|HideHighestSpeed4G | Select **Yes** to hide the 4G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G option.|
|HideHighestSpeed4G3GOnly | Select **Yes** to hide the 4G or 3G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G or 3G Only option.|
|HideHighestSpeed4GOnly | Select **Yes** to hide the 4G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G Only option.|
|HideLTEAttachAPN | Select **Yes** to hide the **LTE attach APN** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **LTE attach APN** button.|
|HideMMSAPN | Select **Yes** to hide the **add mms apn** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **add mms apn** button.|
|HideMMSAPNAuthType | Select **Yes** to hide the APN authentication type selector on the MMS APN page. Select **No** to show APN authentication selector.|
|HideMMSAPNIPType | Select **Yes** to hide the APN IP type selector on the MMS APN page. Select **No** to show the APN IP type selector.|
|HideModeSelection | Select **Yes** to hide the **Network Mode selection** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **Network Mode selection**.|
|HidePersoUnlock | Select **Yes** to hide the Perso unlock UI. Select **No** to show the Perso unlock UI.|
|HighestSpeed2G | You can customize the listed names of the connection speeds with their own character codes. To modify "2G" to another character code, change the value of HighestSpeed2G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3G | You can customize the listed names of the connection speeds with their own character codes. To modify "3G" to another character code, change the value of HighestSpeed3G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Only" to another character code, change the value of HighestSpeed3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3GPreferred | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Preferred" to another character code, change the value of HighestSpeed3GPreferred. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4G | You can customize the listed names of the connection speeds with their own character codes. To modify "4G" to another character code, change the value of HighestSpeed4G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4G3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G or 3G Only" to another character code, change the value of HighestSpeed4G3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G Only" to another character code, change the value of HighestSpeed4GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeedTitle | You can customize the **Highest connection speed** drop-down label in the **Settings** > **Cellular+SIM** > **SIM** settings page. To change the Highest connection speed drop-down label, set HighestSpeedTitle to another string. For example, you can set this to "Preferred connection speed".|
|IsATTSpecific | Control the roaming text for AT&T devices. AT&T requires the phone to show a particular roaming text to meet their legal and marketing guidelines. By default, if the user chooses **roam** under **Data roaming options** in the **Settings** > **Cellular+SIM** screen, they will see the following text: *Depending on your service agreement, you might pay more when using data roaming.* If you set IsATTSpecific to **Yes**, the following roaming text will be displayed instead: *International data roaming charges apply for data usage outside the United States, Puerto Rico, and United States Virgin Islands. Don’t allow roaming to avoid international data roaming charges.*|
|LTEAttachGUID | Set the value for LTEAttachGuid to the OemConnectionId GUID used for the LTE attach profile in the modem. The value is a GUID in the string format *XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX*.|
|MMSAPNAuthTypeDefault | Select between **Pap** and **Chap** for default MMS APN authentication type.|
|MMSAPNIPTypeIfHidden | Select between **IPV4**, **IPV6**, **IPV4V6**, and **IPV4V6XLAT** for default MMS APN IP type.|
|ShowExtendedRejectCodes | When a reject code is sent by the network, partners can specify that extended error messages should be displayed instead of the standard simple error messages. This customization is only intended for use when required by the mobile operator’s network. The short versions of the extended reject message are shown in the following screens:</br></br>- Phone tile in Start</br></br>- Call History screen</br></br>- Dialer</br></br>- Call Progress screen</br></br>- Incoming Call screen</br></br>- As the status string under Settings > cellular+SIM</br></br></br>The long version of the extended reject message is shown under the Active Network label in **Settings** > **cellular+SIM**. Select **Yes** to show the extended error message. Select **No** to hide the extended error message. See [Error messages for reject codes](#errorreject) to see the versions of the message.|
|ShowHighestSpeed3GPreferred | Select **Yes** to show the **3G Preferred** option in the **Highest connection speed** drop-down menu. Select **No** to hide **3G Preferred**.|
|ShowManualAvoidance | Select **Yes** to show the **Switch to next network manually** button in SIM settings when Mode Selection is CDMA on a C+G dual SIM phone. Select **No** to hide the **Switch to next network manually** button.|
|ShowPreferredPLMNPage | Select **Yes** to show the preferred public land mobile network (PLMN) page in SIM settings.|
|ShowSpecificWifiCallingError | Select **Yes** to show a specific error message based on operator requirements.|
|ShowViewAPN | Select **Yes** to show the **View Internet APN** button in **Settings** > **cellular+SIM**.|
|ShowWifiCallingEmergencyCallWarning | Select **Yes** to show Wi-Fi emergency call warning.|
|ShowWifiCallingError | Select **Yes** to show Wi-Fi calling error message.|
|SlotSelectionSim1Name | Enter text for the name of SIM 1 in slot selection UI.|
|SlotSelectionSim2Name | Enter text for the name of SIM 2 in slot selection UI.|
|SuppressDePersoUI | Select **Yes** to hide the Perso unlock UI.|

### CGDual

Use **CGDual** > **RestrictToGlobalMode** to configure settings for global mode on C+G Dual SIM phones. When the device registration changes, if the value for this setting is set, the OS changes the preferred system type to the default preferred system type for world mode. If the phone isn't camped on any network, the OS assumes the phone is on the home network and changes the network registration preference to default mode. 

Select from the following modes:

- RestrictToGlobalMode_Disabled: the phone isn't restricted to global mode.
- RestrictToGlobalMobe_Home: when a slot is registered at home and supports global mode, the mode selection is restricted to global mode.
- RestrictToGlobalMode_Always: if a slot supports global mode and this value is selected, the mode selection is restricted to global mode.

### eSim

Configure **FwUpdate** > **AllowedAppIdList** to list apps that are allowed to update the firmware. Obtain the app IDs from the card vendor.

### External

|Setting |Description|
|:--- |:---|
|CallSupplementaryService > OTASPNonStandardDialString | Enter a list of all desired non-standard OTASP dial strings.|
|CarrierSpecific > FallBackMode | Select between **GWCSFB** and **1xCSFB** for fallback mode.|
|CarrierSpecific > VZW > ActSeq | Enables activation for 4G VZW card. Do not configure this setting for non-VZW devices.|
|EnableLTESnrReporting | Select between **Use only RSRP** and **Use both RSRP and ECNO** to check if SNR needs to be used for LTE Signal Quality calculations.|
|EnableUMTSEcnoReporting | Select between **Use only RSSI** and **Use both RSSI and SNR** to check if SNR needs to be used for UMTS Signal Quality calculations.|
|ImageOnly > ERI > AlgorithmMBB0 | Select between **Sprint** and **Verizon** to specify the ERI algorithm in MBB for subscription 0.|
|ImageOnly > ERI > AlgorithmMBB1 | Select between **Sprint** and **Verizon** to specify the ERI algorithm in MBB for subscription 1.|
|ImageOnly > ERI > AlgorithmWmRil | Select between **Sprint** and **Verizon** to specify the ERI-based notification algorithm.|
|ImageOnly > ERI > DataFileNameWmRil | Specify the location of the ERI file on the device; for example, `C:\Windows\System32\SPCS_en.eri`. *SPCS_en.eri* is a placeholder. Obtain the ERI file name from the mobile operator and replace this filename with it.|
|ImageOnly > ERI > EnabledWmRil | Enable or disable ERI-based notifications.|
|ImageOnly > ERI > ERIDataFileNameMBB0 | Specify the ERI data file name with international roaming list for Verizon in MBB for subscription 0.|
|ImageOnly > ERI > ERIDataFileNameMBB1 | Specify the ERI data file name with international roaming list for Verizon in MBB for subscription 1.|
|ImageOnly > ERI > ERISprintIntlRoamDataFileNameMBB0 | Specify the ERI data file name with international roaming list for Sprint in MBB for subscription 0.|
|ImageOnly > ERI > ERISprintIntlRoamDataFileNameMBB1 | Specify the ERI data file name with international roaming list for Sprint in MBB for subscription 1.
|ImageOnly > ERI > SprintInternationalERIValuesWmRil | Specify the international ERI values for Sprint as `to 4A,7C,7D,7E,9D,9E,9F,C1,C2,C3,C4,C5,C6,E4,E5,E6,E7,E8.`.|
|ImageOnly > MTU > DormancyTimeout0 | Enter the number of milliseconds to wait after dormancy hint before telling the modem to make the air interface dormant for subscription 0. Minimum value is 1703, and maximum value is 5000.|
|ImageOnly > MTU > DormancyTimeout1 | Enter the number of milliseconds to wait after dormancy hint before telling the modem to make the air interface dormant for subscription 1. Minimum value is 1703, and maximum value is 5000.|
|ImageOnly > MTU > MTUDataSize |  Customize the TCP maximum segment size (MSS) by setting the maximum transmission unit (MTU) data size if the MSS does not meet the requirements of the mobile operator network. For TCP, the default maximum transmission unit (MTU) is set to 1500 bytes, which makes the maximum segment size (MSS) 1460 bytes. In general, this value should not be changed, as the user experience will degrade if low values are set. However, if the MSS does not meet the requirements of the mobile operator network, OEMs can customize it by setting the MTU data size. This customization configures the MTU, so the size should be set to the required MSS size plus 40 bytes.|
|ImageOnly > MTU > RoamingMTUDataSize | Customize the TCP maximum segment size (MSS) for roaming by setting the maximum transmission unit (MTU) data size if the MSS does not meet the requirements of the mobile operator network. For TCP, the default maximum transmission unit (MTU) is set to 1500 bytes, which makes the maximum segment size (MSS) 1460 bytes. In general, this value should not be changed, as the user experience will degrade if low values are set. However, if the MSS does not meet the requirements of the mobile operator network, OEMs can customize it for roaming by setting the MTU data size. This customization configures the MTU, so the size should be set to the required MSS size plus 40 bytes.|
|ImageOnly > SuppressNwPSDetach | Configure whether to suppress reporting of network-initiated PS detach (appear attached to OS) until deregistered.|
|SignalBarMapping Table | You can modify the percentage values used for the signal strength in the status bar per filter.|
|SRVCCAutoToggleWmRil | Configure whether to link SRVCC to VOLTE on/off.|

### General

|Setting | Description|
|:---|:---|
|atomicRoamingTableSettings3GPP | If you enable 3GPP roaming, configure the following settings:</br></br>- **Exceptions** maps the SerialNumber key to the Exceptions value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Exceptions" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Exceptions). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC.</br>- **HomePLMN** maps the SerialNumber key to the HomePLMN value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "HomePLMN" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (HomePLMN). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC.</br>- **TargetImsi** maps the SerialNubmer key to the TargetIMSI value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "TargetImsi" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (TargetImsi). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC.|
|atomicRoamingTableSettings3GPP2 | If you enable 3GPP2 roaming, configure the following settings:</br></br>- **Home** maps the SerialNumber key to the Home value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Home" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Home). The data in the regvalue is a DWORD representing the Roaming Indicator. </br>- **Roaming** maps the SerialNumber key to the Roaming value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Roaming" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Roaming). The data in the regvalue is a DWORD representing the Roaming Indicator.|
|AvoidStayingInManualSelection | You can enable permanent automatic mode for mobile networks that require the cellular settings to revert to automatic network selection after the user has manually selected another network when roaming or out of range of the home network.|
|CardAllowList | Define the list of SIM cards allowed in the first slot of a C+G dual SIM phone. This setting is used only if **CardLock** is set to allow it. If **CardLock** is not set, this list is ignored. To configure the list of SIM cards allowed in the first slot, set the value for CardAllowList to a comma-separated MCC:MNC list. You can also use wild cards, represented by an asterisk, to accept any value. For example, you can set the value to `310:410,311:*,404:012,310:70`.|
|CardBlockList | Define the list of SIM cards that are not allowed in the first slot of a C+G dual SIM phone. This setting is used only if **CardLock** is set to allow it. If **CardLock** is not set, this list is ignored. To configure the list of SIM cards that are not allowed in the first slot, set the value for CardBlockList to a comma separated MCC:MNC list. You can also use wild cards, represented by an asterisk, to accept any value. For example, you can set the value to `310:410,311:*,404:012,310:70`. |
|CardLock | Used to enforce either the card allow list or both the card allow and block lists on a C+G dual SIM phone. |
|DefaultSlotAffinity | Set the data connection preference for:</br></br>- **SlotAffinityForInternetData_Automatic**: data connection preference is automatically set</br>- **SlotAffinityForInternetData_Slot0**: sets the data connection preference to Slot 0. The data connection cannot be edited by the user.</br>- **SlotAffinityForInternetData_Slot1**: Sets the data connection preference to Slot 1. The data connection cannot be edited by the user.|
|DisableLTESupportWhenRoaming | Set to **Yes** to disable LTE support when roaming.|
|DisableSystemTypeSupport | Enter the system types to be removed.|
|DTMFOffTime | Sets the length of time, in milliseconds (between 64 and 1000 inclusive), of the pause between DTMF digits. For example, a value of 120 specifies 0.12 seconds.|
|DTMFOnTime | Sets the length of time, in milliseconds (between 64 and 1000 inclusive), to generate the DTMF tone when a key is pressed. For example, a value of 120 specifies 0.12 seconds.|
|EnableIMSWhenRoaming | Set to **Yes** to enable IMS when roaming.|
|ExcludedSystemTypesByDefault | Set the default value for **Highest connection speed** in the **Settings** > **Cellular & SIM** > **SIM** screen by specifying the bitmask for any combination of radio technology to be excluded from the default value. The connection speed that has not been excluded will show up as the highest connection speed. On dual SIM phones that only support up to 3G connection speeds, the **Highest connection speed** option is replaced by a 3G on/off toggle based on the per-device setting. Enter the binary setting to exclude 4G (`10000`) or 3G (`01000`).|
|ExcludedSystemTypesPerOperator | Exclude specified system types from SIM cards that match the MCC:MNC pairs listed in **OperatorListForExcludedSystemTypes**. This setting is used only for China. Set the value to match the system type to be excluded. For more information about the RIL system types, see [RILSYSTEMTYPE](/previous-versions/windows/hardware/cellular/dn931143(v=vs.85)). For example, a value of 0x8 specifies RIL_SYSTEMTYPE_UMTS (3G) while 0x10 specifies RIL_SYSTEMTYPE_LTE (4G). To exclude more than one system type, perform a bitwise OR operation on the radio technologies you want to exclude. For example, a bitwise OR operation on RIL_SYSTEMTYPE_LTE (4G) and RIL_SYSTEMTYPE_UMTS (3G) results in the value 11000 (binary) or 0x18 (hexadecimal). In this case, the ExcludedSystemTypesPerOperator value must be set to 0x18 to limit the matching MCC:MNC pairs to 2G.|
|LTEEnabled | Select **Yes** to enable LTE, and **No** to disable LTE.|
|LTEForced | Select **Yes** to force LTE.|
|ManualNetworkSelectionTimeout | Set the default network selection timeout value, in a range of 1-600 seconds. By default, the OS allows the phone to attempt registration on the manually selected network for 60 seconds (or 1 minute) before it switches back to automatic mode. This value is the amount of time that the OS will wait for the modem to register on the manually selected network. If the time lapses and the modem was not able to register on the network that was manually selected by the user, the OS will either switch back to the automatic network selection mode if Permanent automatic mode is enabled, and the user has manually selected a network or the modem was turned on, or display a dialog that notifies the user that the phone was unable to connect to the manually selected network after the phone was turned on or after airplane mode was turned off.|
|NetworkSuffix | To meet branding requirements for some mobile operators, you can add a suffix to the network name that is displayed on the phone. For example, you can change from ABC to ABC 3G when under 3G coverage. This feature can be applied for any radio access technology (RAT). For TD-SCDMA RAT, a 3G suffix is always appended by default, but partners can also customize this the same way as with any other RAT. In the setting name, set SYSTEMTYPE to the network type that you want to append the network name to and click **Add**:</br></br>- system type 4: 2G (GSM)</br>- system type 8: 3G (UMTS)</br>- system type 16: LTE</br>- system type 32: 3G (TS-SCDMA)</br></br>Select the system type that you added, and enter the network name and suffix that you want displayed.|
|NitzFiltering | For mobile networks that can receive Network Identity and Time Zone (NITZ) information from multiple sources, partners can set the phone to ignore the time received from an LTE network. Time received from a CDMA network is not affected. Set the value of NitzFiltering to `0x10`. |
|OperatorListForExcludedSystemTypes | Enter a comma-separated list of MCC and MNC (MCC:MNC) for which system types should be restricted. For mobile operators that require more control over the system types that their phones use to connect to the mobile operators' networks, OEMs can specify the MCC and MNC of other specific operators that the main mobile operator wishes to limit. If the UICC's MCC and MNC matches any of the pairs that OEMs can specify for the operator, a specified RIL system type will be removed from the UICC regardless of its app types, slot position, or executor mapping. This setting is used only for China. OEMs should not use this setting unless required by the mobile operator. Set the value of the OperatorListForExcludedSystemTypes setting a comma separated list of MCC:MNC pairs for which the system types should be restricted. For example, the value can be set to 310:026,310:030 to restrict operators with an MCC:MNC of 310:026 and 310:030.|
|OperatorPreferredForFasterRadio | Set Issuer Identification Number (IIN) or partial ICCID of preferred operator for the faster radio. For mobile operators that require more control over the system types that their phones use to connect to the mobile operators' networks, OEMs can map a partial ICCID or an Industry Identification Number (IIN) to the faster radio regardless of which SIM card is chosen for data connectivity. This setting is used only for China. OEMs should not use this setting unless required by the mobile operator. To map a partial ICCID or an IIN to the faster radio regardless of which SIM card is chosen for data connectivity, set the value of OperatorPreferredForFasterRadio to match the IIN or the ICCID, up to 7 digits, of the preferred operator.|
|PreferredDataProviderList | OEMs can set a list of MCC/MNC pairs for the purchase order (PO) carrier or primary operator. For mobile operators that require it, OEMs can set a list of MCC/MNC pairs for the purchase order (PO) carrier or primary operator so that it can be set as the default data line for phones that have a dual SIM. When the PO SIM is inserted into the phone, the OS picks the PO SIM as the data line and shows a notification to the user that the SIM has been selected for Internet data. If two PO SIMs are inserted, the OS will choose the first PO SIM that was detected as the default data line and the mobile operator action required dialogue (ARD) is shown. If two non-PO SIMs are inserted, the user is prompted to choose the SIM to use as the default data line. Note  OEMs should not set this customization unless required by the mobile operator. To enumerate the MCC/MNC value pairs to use for data connections, set the value for **PreferredDataProviderList**. The value must be a comma-separated list of preferred MCC:MNC values. For example, the value can be 301:026,310:030 and so on.|
|Slot2DisableAppsList | Disable specified apps from slot 2 on a C+G dual SIM phone. To disable a list of specified apps from Slot 2, set Slot2DisableAppsList to a comma-separated list of values representing the apps. For example, `4,6`.|
|Slot2ExcludedSystemTypes | Exclude specified system types from SIM cards inserted in Slot 2. For mobile operators that require more control over the system types that their phones use to connect to the mobile operators' networks, OEMs can restrict the second slot in a dual-SIM phone regardless of what apps or executor mapping the second slot is associated with. Note  This setting is used only for China. OEMs should not use this setting unless required by the mobile operator. To allow an operator to simply restrict the second slot in a dual SIM phone regardless of what apps or executor mapping the second slot is associated with, set the value of Slot2ExcludedSystemTypes to the system types to be excluded from the SIM cards inserted in Slot 2. For example, a value of 0x8 specifies RIL_SYSTEMTYPE_UMTS (3G) while 0x10 specifies RIL_SYSTEMTYPE_LTE (4G). To exclude more than one system type, perform a bitwise OR operation on the radio technologies you want to exclude. For example, a bitwise OR operation on RIL_SYSTEMTYPE_LTE (4G) and RIL_SYSTEMTYPE_UMTS (3G) results in the value 11000 (binary) or 0x18 (hexadecimal). In this case, any SIM inserted in Slot 2 will be limited to 2G. For more information about the RIL system types, see [RILSYSTEMTYPE](/previous-versions/windows/hardware/cellular/dn931143(v=vs.85)).|
|SuggestDataRoamingARD | Use to show the data roaming suggestion dialog when roaming and the data roaming setting is set to no roaming.|
|SuggestGlobalModeARD | Define whether Global Mode is suggested on a C+G dual SIM phone.|
|SuggestGlobalModeTimeout | To specify the number of seconds to wait for network registration before suggesting global mode, set SuggestGlobalModeTimeout to a value between 1 and 600, inclusive. For example, to set the timeout to 60 seconds, set the value to 60 (decimal) or 0x3C (hexadecimal).|

### RCS

|Setting | Description|
|:---|:---|
|SystemEnabled | Select **Yes** to specify that the system is RCS-enabled.|
|UserEnabled | Select **Yes** to show the user setting if RCS is enabled on the device.|

### SMS

|Setting |Description|
|:--|:--|
|AckExpirySeconds |Set the value, in seconds, for how long to wait for a client ACK before trying to deliver. |
|DefaultMCC |Set the default mobile country code (MCC).|
|Encodings > GSM7BitEncodingPage |Enter the code page value for the 7-bit GSM default alphabet encoding. Values:</br></br>- Code page value: 55000 (Setting value: 0xD6D8)(Code page: default alphabet)</br>- Code page value: 55001 (Setting value: 0xD6D9)(Code page: GSM with single shift for Spanish)</br>- Code page value: 55002 (Setting value: 0xD6DA)(Code page: GSM with single shift for Portuguese)</br>- Code page value: 55003 (Setting value: 0xD6DB)(Code page: GSM with single shift for Turkish)</br>- Code page value: 55004 (Setting value: 0xD6DC)(Code page: SMS Greek Reduction)|
|Encodings > GSM8BitEncodingPage|Enter the code page value for GSM 8-bit encoding (OEM set). OEM-created code page IDs should be in the range 55050–55099. |
|Encodings > OctetEncodingPage |Set the octet (binary) encoding.|
|Encodings > SendUDHNLSS |Set the 7 bit GSM shift table encoding.|
|Encodings > UseASCII |Set the 7 bit ASCII encoding. Used only for CDMA carriers that use 7-bit ASCII encoding instead of GSM 7-bit encoding.|
|Encodings > UseKeyboardLangague |Set whether to use the keyboard language (Portuguese, Spanish, or Turkish) based encoding (set shift table based on keyboard language).|
|IncompleteMsgDeliverySeconds |Set the value, in seconds, for long to wait for all parts of multisegment Sprint messages for concatenation.|
|MessageExpirySeconds|Partners can set the expiration time before the phone deletes the received parts of a long SMS message. For example, if the phone is waiting for a three-part SMS message and the first part has been received, the first part will be deleted when the time expires and the other part of the message has not arrived. If the second part of the message arrives before the time expires, the first and second parts of the message will be deleted if the last part does not arrive after the time expires. The expiration time is reset whenever the next part of the long message is received. Set MessageExpirySeconds to the number seconds that the phone should wait before deleting the received parts of a long SMS messages. This value should be in hexadecimal and must be prefixed with 0x. The default value is 0x15180, which is equivalent to 1 day or 86,400 seconds. |
|SmsFragmentLimit |Partners can specify a maximum length for SMS messages. This requires setting both the maximum number of SMS fragments per SMS message, from 1 to 255, and the maximum size in bytes of each SMS fragment, from 16 to 140 bytes. Use SmsFragmentLimit to set the maximum number of bytes in the user data body of an SMS message. You must set the value between 16 (0x10) and 140 (0x8C). You must also use SmsPageLimit to set the maximum number of segments in a concatenated SMS message.|
|SmsPageLimit |Partners can specify a maximum length for SMS messages. This requires setting both the maximum number of SMS fragments per SMS message, from 1 to 255, and the maximum size in bytes of each SMS fragment, from 16 to 140 bytes. Use SmsPageLimit to set the maximum number of segments in a concatenated SMS message. You must set the value to 255 (0xFF) or smaller. You must also use SmsFragmentLimit to set the maximum number of bytes in the body of the SMS message.|
|SmsStoreDeleteSize |Set the number of messages that can be deleted when a "message full" indication is received from the modem. |
|SprintFragmentInfoInBody |Partners can enable the messaging client to allow users to enter more than 160 characters per message. Messages longer than 160 characters are sent as multiple SMS messages that contain a tag at the beginning of the message in the form "(1/2)", where the first number represents the segment or part number and the second number represents the total number of segments or parts. Multiple messages are limited to 6 total segments. When enabled, the user cannot enter more characters after the 6 total segments limit is reached. Any message received with tags at the beginning is recombined with its corresponding segments and shown as one composite message. |
|Type3GPP > ErrorHandling > ErrorType |Enter a name for ERRORCODE3GPP, and click **Add**. Configure the error type that you added as **Transient Failure** or **Permanent Failure**.|
|Type3GPP > ErrorHandling > FriendlyErrorClass|Enter a name for ERRORCODE3GPP, and click **Add**. Configure the error class that you added as **generic error**, **invalid recipient address**, or **network connectivity trouble**.|
|Type3GPP > IMS > AttemptThresholdForIMS |Set the maximum number of tries to send SMS on IMS.|
|Type3GPP > IMS > RetryEnabled |Configure whether to enable one automatic retry after failure to send over IMS.|
|Type 3GPP > SmsUse16BitReferenceNumbers |Configure whether to use 8-bit or 16-bit message ID (reference number) in the UDH.|
|Type3GPP2 > ErrorHandling > FriendlyErrorClass |Enter a name for ERRORCODE3GPP2, and click **Add**. Configure the error class that you added as **generic error**, **invalid recipient address**, or **network connectivity trouble**.|
|Type3GPP2 > ErrorHandling > UseReservedAsPermanent |Set the 3GPP2 permanent error type.|

### UIX

Setting | Description
|:-|:--|
SIM1ToUIM1 | Used to show UIM1 as an alternate string instead of SIM1 for the first SIM on C+G dual SIM phones.
SIMToSIMUIM | Partners can change the string "SIM" to "SIM/UIM" to accommodate scenarios such as Dual Mode cards of SIM cards on the phone. This scenario can provide a better experience for users in some markets. Enabling this customization changes all "SIM" strings to "SIM/UIM".


### UTK

|Setting |Description|
|:-|:-|
|UIDefaultDuration |Specifies the default time, in milliseconds, that the DISPLAY TEXT, GET INKEY, PLAY TONE, or SELECT ITEM dialog should be displayed. The default value is 60000 milliseconds (60 seconds). The valid value range is 1-120000.|
|UIGetInputDuration |Specifies the default time, in milliseconds, that the GET INPUT dialog should be displayed. The default value is 120000 milliseconds (120 seconds). The valid value range is 1-120000.|

## PerIMSI

Enter an IMSI, click **Add**, and then select the IMSI that you added to configure the following settings. 

### <a name="celldata2"></a> CellData

|Setting |Description|
|:--- |:---|
|MaxNumberOfPDPContexts |OEMs can set a maximum value for the number of simultaneous packet data protocol (PDP) contexts for 3GPP connections. By default, the OS enforces a maximum of four (4) simultaneous packet data protocol (PDP) contexts for 3GPP connections, and one (1) PDP context for 3GPP2 connections. OEMs can set a different maximum value if required by their mobile operator. The same maximums apply for both roaming and non-roaming scenarios. This maximum does not include packet contexts used internally by the modem.|

### <a name="cellux2"></a> CellUX

|Setting |Description|
|:--- |:---|
|APNIPTypeIfHidden |Used to set the default IP type shown in the **IP type** listbox on the **internet APN** settings screen.|
|Critical > ShowVoLTERoaming | Use to show the IMS roaming control in the cellular settings page|
|Critical > ShowVoLTEToggle | Show or hide VoLTE toggle.|
|Critical > SwitchIMS | Switch IMS on or off with a toggle. OEMs can configure the default settings and toggle for IMS services to meet mobile operator requirements. Users can later manually change the default values for these settings if they choose to do so.|
|Critical > SwitchSMSOverIMS | Switch SMS over IMS on or off when VoLTE is toggled.|
|Critical > SwitchVideoOverIMS | Use to switch video over IMS when VoLTE is switched.|
|Critical > SwitchVoiceOverIMS | Switch voice over IMS when VoLTE is toggled.|
|Critical > SwitchXCAP | Use to switch the XML Configuration Access Protocol (XCAP) when VoLTE is enabled.|
|Critical > VoLTERoamingOffDescription | Use to customize the description string that appears under IMS roaming control when IMS roaming is turned off. The string must not be longer than 127 characters. |
|Critical > VoLTERoamingOnDescription | Use to customize the description string that appears under IMS roaming control when IMS roaming is turned on. The string must not be longer than 127 characters. |
|Critical > VoLTERoamingSettingDisableDuringCall | Use to specify whether to grey out VoLTE roaming settings during an active VoLTE call.|
|Critical > VoLTERoamingTitle | Use to customize the description string for the IMS roaming control. The string must not be longer than 127 characters. |
|Critical > VoLTESectionTitle | Use to customize the section title for the IMS settings. he string must not be longer than 127 characters.|
|Critical > VoLTESettingDisableDuringCall | Use to specify whether to grey out VoLTE-related settings during an active VoLTE call.|
|Critical > VoLTEToggleDescription | Use to customize the VoLTE toggle description. To customize the VoLTE toggle description, set VoLTEToggleDescription to the name of the resource-only .dll file, specifying the string offset. For example: @DisplayStrings.dll,-101.|
|Critical > VoLTEToggleSettingDisableDuringCall | Use to specify whether to grey out the VoLTE toggle during an active VoLTE call.|
|Critical > VoLTEToggleTitle | Use to customize the VoLTE toggle label. To customize the VoLTE toggle label, set VoLTEToggleTitle to the name of the resource-only .dll file, specifying the string offset. For example: @DisplayStrings.dll,-102.|
|Critical > WFCSettingDisableDuringCall | Use to specify whether to grey out the Wi-Fi calling settings during an active VoLTE call.|
|Disable2GByDefault | Select **Yes** to disable 2G by default. Select **No** to enable 2G.|
|Disabled2GNoticeDescription | Enter text to customize the notification for disabled 2G.|
|GenericWifiCallingErrorMessage | Enter text to customize the generic error message when a Wi-Fi calling error occurs.|
|Hide3GPP2ModeSelection | Select **Yes** to hide the **CDMA** option in the network **Mode** selection drop-down menu. Select **No** to show the **CDMA** option.|
|Hide3GPP2Selection | For 3GPP2 or CDMA phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM** settings screen. Select **No** to show **Network Type**.|
|Hide3GPPNetworks | For 3GPP or GSM phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM settings** screen. Select **No** to show **Network Type**.|
|HideAPN | Select **Yes** to hide the **add internet APN** button in the **SIM settings** screen. Select **No** to show **add internet APN**.|
|HideAPNIPType | Select **Yes** to hide the **IP type** list in the **internet APN** settings screen. Select **No** to show **IP type**.|
|HideDisabled2GNotice | Select **Yes** to hide the notification for disabled 2G. Select **No** to show the notification for disabled 2G.|
|HideHighestSpeed | Select **Yes** to hide the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show **Highest connection speed**.|
|HideHighestSpeed2G | Select **Yes** to hide the 2G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 2G option.|
|HideHighestSpeed3GOnly | Select **Yes** to hide the 3G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 3G option.|
|HideHighestSpeed4G | Select **Yes** to hide the 4G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G option.|
|HideHighestSpeed4G3GOnly | Select **Yes** to hide the 4G or 3G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G or 3G Only option.|
|HideHighestSpeed4GOnly | Select **Yes** to hide the 4G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G Only option.|
|HideLTEAttachAPN | Select **Yes** to hide the **LTE attach APN** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **LTE attach APN** button.|
|HideMMSAPN | Select **Yes** to hide the **add mms apn** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **add mms apn** button.|
|HideMMSAPNIPType | Select **Yes** to hide the APN IP type selector on the MMS APN page. Select **No** to show the APN IP type selector.|
|HideModeSelection | Select **Yes** to hide the **Network Mode selection** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **Network Mode selection**.|
|HidePersoUnlock | Select **Yes** to hide the Perso unlock UI. Select **No** to show the Perso unlock UI. (Removed in Windows 10, version 1803.)|
|HighestSpeed2G | You can customize the listed names of the connection speeds with their own character codes. To modify "2G" to another character code, change the value of HighestSpeed2G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3G | You can customize the listed names of the connection speeds with their own character codes. To modify "3G" to another character code, change the value of HighestSpeed3G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Only" to another character code, change the value of HighestSpeed3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed3GPreferred | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Preferred" to another character code, change the value of HighestSpeed3GPreferred. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4G | You can customize the listed names of the connection speeds with their own character codes. To modify "4G" to another character code, change the value of HighestSpeed4G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4G3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G or 3G Only" to another character code, change the value of HighestSpeed4G3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeed4GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G Only" to another character code, change the value of HighestSpeed4GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.|
|HighestSpeedTitle | You can customize the **Highest connection speed** drop-down label in the **Settings** > **Cellular+SIM** > **SIM** settings page. To change the Highest connection speed drop-down label, set HighestSpeedTitle to another string. For example, you can set this to "Preferred connection speed".|
|IsATTSpecific | Control the roaming text for AT&T devices. AT&T requires the phone to show a particular roaming text to meet their legal and marketing guidelines. By default, if the user chooses **roam** under **Data roaming options** in the **Settings** > **Cellular+SIM** screen, they will see the following text: *Depending on your service agreement, you might pay more when using data roaming.* If you set IsATTSpecific to **Yes**, the following roaming text will be displayed instead: *International data roaming charges apply for data usage outside the United States, Puerto Rico, and United States Virgin Islands. Don’t allow roaming to avoid international data roaming charges.*|
|LTEAttachGUID | Set the value for LTEAttachGuid to the OemConnectionId GUID used for the LTE attach profile in the modem. The value is a GUID in the string format *XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX*.|
|MMSAPNIPTypeIfHidden | Select between **IPV4**, **IPV6**, **IPV4V6**, and **IPV4V6XLAT** for default MMS APN IP type.|
|ShowExtendedRejectCodes | When a reject code is sent by the network, partners can specify that extended error messages should be displayed instead of the standard simple error messages. This customization is only intended for use when required by the mobile operator’s network. The short versions of the extended reject message are shown in the following screens:</br></br>- Phone tile in Start</br></br>- Call History screen</br></br>- Dialer</br></br>- Call Progress screen</br></br>- Incoming Call screen</br></br>- As the status string under Settings > cellular+SIM</br></br></br>The long version of the extended reject message is shown under the Active Network label in **Settings** > **cellular+SIM**. Select **Yes** to show the extended error message. Select **No** to hide the extended error message. See [Error messages for reject codes](#errorreject) to see the versions of the message.|
|ShowHighestSpeed3GPreferred | Select **Yes** to show the **3G Preferred** option in the **Highest connection speed** drop-down menu. Select **No** to hide **3G Preferred**.|
|ShowManualAvoidance | Select **Yes** to show the **Switch to next network manually** button in SIM settings when Mode Selection is CDMA on a C+G dual SIM phone. Select **No** to hide the **Switch to next network manually** button.|
|ShowPreferredPLMNPage | Select **Yes** to show the preferred public land mobile network (PLMN) page in SIM settings.|
|ShowSpecificWifiCallingError | Select **Yes** to show a specific error message based on operator requirements.|
|ShowViewAPN | Select **Yes** to show the **View Internet APN** button in **Settings** > **cellular+SIM**.|
|ShowWifiCallingEmergencyCallWarning | Select **Yes** to show Wi-Fi emergency call warning.|
|ShowWifiCallingError | Select **Yes** to show Wi-Fi calling error message.|
|SlotSelectionSim1Name | Enter text for the name of SIM 1 in slot selection UI.  (Removed in Windows 10, version 1803.)|
|SlotSelectionSim2Name | Enter text for the name of SIM 2 in slot selection UI.  (Removed in Windows 10, version 1803.)|
|SuppressDePersoUI | Suppress DePerso UI to unlock Perso.  (Removed in Windows 10, version 1803.)|

### <a name="general2"></a> General

|Setting |Description|
|:--|:--|
|atomicRoamingTableSettings3GPP |If you enable 3GPP roaming, configure the following settings:</br></br>- **Exceptions** maps the SerialNumber key to the Exceptions value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Exceptions" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Exceptions). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC.</br>- **HomePLMN** maps the SerialNumber key to the HomePLMN value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "HomePLMN" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (HomePLMN). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC.</br>- **TargetImsi** maps the SerialNubmer key to the TargetIMSI value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "TargetImsi" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (TargetImsi). The data in the regvalue is a string representing an MCC-MNC pair, such as "410510" where 410 is the MCC and 510 is the MNC. |
|atomicRoamingTableSettings3GPP2 |If you enable 3GPP2 roaming, configure the following settings:</br></br>- **Home** maps the SerialNumber key to the Home value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Home" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Home). The data in the regvalue is a DWORD representing the Roaming Indicator. </br>- **Roaming** maps the SerialNumber key to the Roaming value. The wildcard, $(SerialNumber), is a 3-digit decimal serial number (000 through 999) represented as a string. The wildcard is used as a regvalue under the "Roaming" subkey. Multiple reg values in this form may be configured or customized by the OEM, all placed under the same subkey (Roaming). The data in the regvalue is a DWORD representing the Roaming Indicator. |
|AvoidStayingInManualSelection |You can enable permanent automatic mode for mobile networks that require the cellular settings to revert to automatic network selection after the user has manually selected another network when roaming or out of range of the home network. |
|CardAllowList |Define the list of SIM cards allowed in the first slot of a C+G dual SIM phone. This setting is used only if **CardLock** is set to allow it. If **CardLock** is not set, this list is ignored. To configure the list of SIM cards allowed in the first slot, set the value for CardAllowList to a comma-separated MCC:MNC list. You can also use wild cards, represented by an asterisk (*), to accept any value. For example, you can set the value to \`310:410,311:*,404:012,310:70\`.|
|CardBlockList |Define the list of SIM cards that are not allowed in the first slot of a C+G dual SIM phone. This setting is used only if **CardLock** is set to allow it. If **CardLock** is not set, this list is ignored. To configure the list of SIM cards that are not allowed in the first slot, set the value for CardBlockList to a comma separated MCC:MNC list. You can also use wild cards, represented by an asterisk (*), to accept any value. For example, you can set the value to \`310:410,311:*,404:012,310:70\`. |
|CardLock |Used to enforce either the card allow list or both the card allow and block lists on a C+G dual SIM phone. |
|Critical > MultivariantProvisionedSPN  |Used to change the default friendly SIM names in dual SIM phones. By default, the OS displays SIM 1 or SIM 2 as the default friendly name for the SIM in slot 1 or slot 2 if the service provider name (SPN) or mobile operator name has not been set. Partners can use this setting to change the default name read from the SIM to define the SPN for SIM cards that do not contain this information or to generate the default friendly name for the SIM. The OS uses the default value as the display name for the SIM or SPN in the Start screen and other parts of the UI including the SIM settings screen. For dual SIM phones that contain SIMs from the same mobile operator, the names that appear in the UI may be similar. See [Values for MultivariantProvisionedSPN](#spn).|
|Critical > SimNameWithoutMSISDNENabled |Use this setting to remove the trailing MSISDN digits from the service provider name (SPN) in the phone UI. By default, the OS appends the trailing MSISDN digits to the service provider name (SPN) in the phone UI, including on the phone and messaging apps. If required by mobile operators, OEMs can use the SimNameWithoutMSISDNEnabled setting to remove the trailing MSISDN digits. However, you must use this setting together with **MultivariantProvisionedSPN** to suppress the MSISDN digits. |
|DisableLTESupportWhenRoaming |Set to **Yes** to disable LTE support when roaming.|
|EnableIMSWhenRoaming|Set to **Yes** to enable IMS when roaming.|
|ExcludedSystemTypesByDefault |Set the default value for **Highest connection speed** in the **Settings** > **Cellular & SIM** > **SIM** screen by specifying the bitmask for any combination of radio technology to be excluded from the default value. The connection speed that has not been excluded will show up as the highest connection speed. On dual SIM phones that only support up to 3G connection speeds, the **Highest connection speed** option is replaced by a 3G on/off toggle based on the per-device setting. Enter the binary setting to exclude 4G (`10000`) or 3G (`01000`). |
|LTEEnabled |Select **Yes** to enable LTE, and **No** to disable LTE. |
|LTEForced |Select **Yes** to force LTE. |
|NetworkSuffix |To meet branding requirements for some mobile operators, you can add a suffix to the network name that is displayed on the phone. For example, you can change from ABC to ABC 3G when under 3G coverage. This feature can be applied for any radio access technology (RAT). For TD-SCDMA RAT, a 3G suffix is always appended by default, but partners can also customize this the same way as with any other RAT. In the setting name, set SYSTEMTYPE to the network type that you want to append the network name to and click **Add**:</br></br>- system type 4: 2G (GSM)</br>- system type 8: 3G (UMTS)</br>- system type 16: LTE</br>- system type 32: 3G (TS-SCDMA)</br></br>Select the system type that you added, and enter the network name and suffix that you want displayed.|
|NitzFiltering |For mobile networks that can receive Network Identity and Time Zone (NITZ) information from multiple sources, partners can set the phone to ignore the time received from an LTE network. Time received from a CDMA network is not affected. Set the value of NitzFiltering to `0x10`.|
|OperatorListForExcludedSystemTypes |Enter a comma-separated list of MCC and MNC (MCC:MNC) for which system types should be restricted. For mobile operators that require more control over the system types that their phones use to connect to the mobile operators' networks, OEMs can specify the MCC and MNC of other specific operators that the main mobile operator wishes to limit. If the UICC's MCC and MNC matches any of the pairs that OEMs can specify for the operator, a specified RIL system type will be removed from the UICC regardless of its app types, slot position, or executor mapping. This setting is used only for China. OEMs should not use this setting unless required by the mobile operator. Set the value of the OperatorListForExcludedSystemTypes setting a comma separated list of MCC:MNC pairs for which the system types should be restricted. For example, the value can be set to 310:026,310:030 to restrict operators with an MCC:MNC of 310:026 and 310:030. (Removed in Windows 10, version 1803.)|
|OperatorPreferredForFasterRadio |Set Issuer Identification Number (IIN) or partial ICCID of preferred operator for the faster radio. For mobile operators that require more control over the system types that their phones use to connect to the mobile operators' networks, OEMs can map a partial ICCID or an Industry Identification Number (IIN) to the faster radio regardless of which SIM card is chosen for data connectivity. This setting is used only for China. OEMs should not use this setting unless required by the mobile operator. To map a partial ICCID or an IIN to the faster radio regardless of which SIM card is chosen for data connectivity, set the value of OperatorPreferredForFasterRadio to match the IIN or the ICCID, up to 7 digits, of the preferred operator. (Removed in Windows 10, version 1803.) |
|SuggestDataRoamingARD |Use to show the data roaming suggestion dialog when roaming and the data roaming setting is set to no roaming. |

## <a name="rcs2"></a> RCS

See descriptions in Windows Configuration Designer.

## <a name="sms2"></a> SMS

|Setting |Description|
|:--|:--|
|AckExpirySeconds |Set the value, in seconds, for how long to wait for a client ACK before trying to deliver.|
|DefaultMCC |Set the default mobile country code (MCC). |
|Encodings > GSM7BitEncodingPage |Enter the code page value for the 7-bit GSM default alphabet encoding. Values:</br></br>- Code page value: 55000 (Setting value: 0xD6D8)(Code page: default alphabet)</br>- Code page value: 55001 (Setting value: 0xD6D9)(Code page: GSM with single shift for Spanish)- Code page value: 55002 (Setting value: 0xD6DA)(Code page: GSM with single shift for Portuguese)- Code page value: 55003 (Setting value: 0xD6DB)(Code page: GSM with single shift for Turkish)- Code page value: 55004 (Setting value: 0xD6DC)(Code page: SMS Greek Reduction)|
|Encodings > GSM8BitEncodingPage |Enter the code page value for GSM 8-bit encoding (OEM set). OEM-created code page IDs should be in the range 55050–55099.|
|Encodings > OctetEncodingPage |Set the octet (binary) encoding.|
|Encodings > SendUDHNLSS |Set the 7 bit GSM shift table encoding. |
|Encodings > UseASCII |Set the 7 bit ASCII encoding. Used only for CDMA carriers that use 7-bit ASCII encoding instead of GSM 7-bit encoding.|
|Encodings > UseKeyboardLangague |Set whether to use the keyboard language (Portuguese, Spanish, or Turkish) based encoding (set shift table based on keyboard language).|
|IncompleteMsgDeliverySeconds |Set the value, in seconds, for long to wait for all parts of multisegment Sprint messages for concatenation. |
|MessageExpirySeconds |Partners can set the expiration time before the phone deletes the received parts of a long SMS message. For example, if the phone is waiting for a three-part SMS message and the first part has been received, the first part will be deleted when the time expires and the other part of the message has not arrived. If the second part of the message arrives before the time expires, the first and second parts of the message will be deleted if the last part does not arrive after the time expires. The expiration time is reset whenever the next part of the long message is received. Set MessageExpirySeconds to the number seconds that the phone should wait before deleting the received parts of a long SMS messages. This value should be in hexadecimal and must be prefixed with 0x. The default value is 0x15180, which is equivalent to 1 day or 86,400 seconds. |
|SmsFragmentLimit|Partners can specify a maximum length for SMS messages. This requires setting both the maximum number of SMS fragments per SMS message, from 1 to 255, and the maximum size in bytes of each SMS fragment, from 16 to 140 bytes. Use SmsFragmentLimit to set the maximum number of bytes in the user data body of an SMS message. You must set the value between 16 (0x10) and 140 (0x8C). You must also use SmsPageLimit to set the maximum number of segments in a concatenated SMS message. |
|SmsPageLimit|Partners can specify a maximum length for SMS messages. This requires setting both the maximum number of SMS fragments per SMS message, from 1 to 255, and the maximum size in bytes of each SMS fragment, from 16 to 140 bytes. Use SmsPageLimit to set the maximum number of segments in a concatenated SMS message. You must set the value to 255 (0xFF) or smaller. You must also use SmsFragmentLimit to set the maximum number of bytes in the body of the SMS message.|
|SprintFragmentInfoInBody |Partners can enable the messaging client to allow users to enter more than 160 characters per message. Messages longer than 160 characters are sent as multiple SMS messages that contain a tag at the beginning of the message in the form "(1/2)", where the first number represents the segment or part number and the second number represents the total number of segments or parts. Multiple messages are limited to 6 total segments. When enabled, the user cannot enter more characters after the 6 total segments limit is reached. Any message received with tags at the beginning is recombined with its corresponding segments and shown as one composite message.|
|Type3GPP > ErrorHandling > ErrorType |Enter a name for ERRORCODE3GPP, and click **Add**. Configure the error type that you added as **Transient Failure** or **Permanent Failure**.|
|Type3GPP > ErrorHandling > FriendlyErrorClass |Enter a name for ERRORCODE3GPP, and click **Add**. Configure the error class that you added as **generic error**, **invalid recipient address**, or **network connectivity trouble**.|
|Type3GPP > IMS > SmsUse16BitReferenceNumbers |Configure whether to use 8-bit or 16-bit message ID (reference number) in the UDH.|
|Type3GPP2 > ErrorHandling > FriendlyErrorClass  |Enter a name for ERRORCODE3GPP2, and click **Add**. Configure the error class that you added as **generic error**, **invalid recipient address**, or **network connectivity trouble**.|
| Type3GPP2 > ErrorHandling > UseReservedAsPermanent |Set the 3GPP2 permanent error type.|

### <a name="utk2"></a> UTK

|Setting |Description|
|:---|:---|
|UIDefaultDuration | Specifies the default time, in milliseconds, that the DISPLAY TEXT, GET INKEY, PLAY TONE, or SELECT ITEM dialog should be displayed. The default value is 60000 milliseconds (60 seconds). The valid value range is 1-120000. |
|UIGetInputDuration |Specifies the default time, in milliseconds, that the GET INPUT dialog should be displayed. The default value is 120000 milliseconds (120 seconds). The valid value range is 1-120000.|

### VoLTE

|Setting | Description|
|:---|:---|
|IMSOMADMServices |Allows configuration of OMA DM Services Mask. The value is mapped directly to RIL_IMS_NW_ENABLED_FLAGS on the modem side. To configure the OMA DM services mask, set the IMSOMADMServices setting to one of the following values:</br></br>- None, Flag: 0, Bitmask: 00000</br>- OMA DM, Flag: 1, Bitmask: 00001</br>- Voice, Flag: 2, Bitmask: 00010</br>- Video, Flag: 4, Bitmask: 00100</br>- EAB presence, Flag: 8, Bitmask: 01000</br>- Enable all services, Flag: 15, Bitmask: 10000|
|IMSServices |Identifies which IMS services are enabled (if any). The value is any combination of flags 1 (IMS), 2 (SMS over IMS), 4 (Voice over IMS) and 8 (Video Over IMS). Set the value for the IMSServices setting to any combination of the following flags or bitmasks:</br></br>- IMS, Flag: 1, Bitmask: 0001</br>- SMS over IMS, Flag: 2, Bitmask: 0010</br>- Voice over IMS, Flag: 4, Bitmask: 0100</br>Video over IMS, Flag: 8, Bitmask: 1000|

## <a name="errorreject"></a> Error messages for reject codes

|Reject code |Extended error message |Short error message|
|:---|:---|:---|
|2 (The SIM card hasn't been activated or has been deactivated) | SIM not set up MM#2 | Invalid SIM|
|3 (The SIM card fails authentication or one of the identity check procedures. This can also happen due to a duplication of the TMSI across different MSCs.) |Can't verify SIM MM#3 |Invalid SIM|
|6 (The device has been put on a block list, such as when the phone has been stolen or the IMEI is restricted.) | Phone not allowed MM#6 | No service|

<span id="spn" />

## Values for MultivariantProvisionedSPN

Set the MultivariantProvisionedSPN value to the name of the SPN or mobile operator.

The following table shows the scenarios supported by this customization.

>[!NOTE]
>In the Default SIM name column: 
>
>- The " " in MultivariantProvisionedSPN" "1234 means that there's a space between the mobile operator name or SPN and the last 4 digits of the MSISDN.
>- MultivariantProvisionedSPN means the value that you set for the MultivariantProvisionedSPN setting.
>- SIM 1 or SIM 2 is the default friendly name for the SIM in slot 1 or slot 2.

Multivariant setting set?|SPN provisioned?|MSISDN (last four digits: 1234, for example) provisioned?|Default SIM name
--- | --- | --- | ---
Yes|Yes|Yes|*MultivariantProvisionedSPN*1234 or *MultivariantProvisionedSPN*" "1234
Yes|No|No|*MultivariantProvisionedSPN* (up to 16 characters)
Yes|Yes|No|*MultivariantProvisionedSPN* (up to 16 characters)
Yes|No|Yes|*MultivariantProvisionedSPN*1234 or *MultivariantProvisionedSPN*" "1234
No|Yes|Yes|If SPN string >= 12: *SPN*1234</br></br>If SPN string < 12: *SPN*" "1234
No|No|No|*SIM 1* or *SIM 2*
No|Yes|No|SPN (up to 16 characters)
No|No|Yes|*SIM 1* or *SIM 2*
