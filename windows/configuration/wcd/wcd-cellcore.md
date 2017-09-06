---
title: CellCore (Windows 10)
description: This section describes the CellCore settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: jdeckerMS
localizationpriority: medium
ms.author: jdecker
ms.date: 08/21/2017
---

# CellCore (Windows Configuration Designer reference)

Use to configure settings for cellular data.

## Applies to

 Setting groups | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core 
 --- | :---: | :---: | :---: | :---: | :---: 
 PerDevice: [CellConfigurations](#cellconfigurations) |  | X |  |  | 
 PerDevice: [CellData](#celldata) CellularFailover | X | X | X | X | X  
 PerDevice: [CellData](#celldata) MaxNumberOfPDPContexts |  | X |  |  |  
 PerDevice: [CellData](#celldata) ModemProfiles |  | X |  |  | 
 PerDevice: [CellData](#celldata) PersistAtImaging |  | X |  |  |  
 PerDevice: [CellUX](#cellux)  |  | X |  |  |
 PerDevice: [CGDual](#cgdual)  |  | X |  |  |
 PerDevice: [eSim](#esim) | X | X | X | X | X
 PerDevice: [External](#external)  |  | X |  |  |
 PerDevice: [General](#general)  |  | X |  |  |
 PerDevice: [RCS](#rcs)  |  | X |  |  |
 PerDevice: [SMS](#sms)  | X | X | X | X | X 
 PerDevice: [UIX](#uix)  |  | X |  |  |
 PerDevice: [UTK](#utk)  |  | X |  |  |
 PerlMSI: [CellData](#celldata2) |  | X |  |  |
 PerIMSI: [CellUX](#cellux2) |  | X |  |  |
 PerIMSI: [General](#general2) |  | X |  |  |
 PerIMSI: [RCS](#rcs2) |  | X |  |  |
 PerIMSI: [SMS](#sms2) | X | X | X | X | X
 PerIMSI: [UTK](#utk2) |  | X |  |  |
 PerIMSI: [VoLTE](#volte) |  | X |  |  |


## PerDevice

### CellConfigurations

NO CLUE WHAT THEY'RE CONFIGURING HERE

1. In **CellConfiguration** > **PropertyGroups**, enter (?). 
2. Select the **PropertyGroups** you just created in the **Available customizations** pane and then enter a **PropertyName** (?).
3. Select the **PropertyName** you just created in the **Available customizations** pane, and then select one of the following data types for the property:
    - Binary
    - Boolean
    - Integer
    - String
4. The data type that you selected is added in **Available customizations**. Select it to enter a value for the property.

### CellData

Setting | Description
--- | ---
CellularFailover | Allow or disallow cellular data failover when in limited Wi-Fi connectivity. By default, if the phone is connected to a Wi-Fi network and the data connection to a site is unsuccessful due to limited Wi-Fi connectivity, the phone will complete the connection to the site using available cellular data networks (when possible) to provide an optimal user experience. When the customization is enabled, a user option to use or not use cellular data for limited Wi-Fi connectivity becomes visible in the **Settings** > **cellular+SIM** screen. This option is automatically set to **don’t use cellular data** when the customization is enabled.
MaxNumberOfPDPContexts | Set a maximum value (1 through 4, inclusive, or 0x1 through 0x4 hexadecimal) for the number of simultaneous packet data protocol (PDP) contexts for 3GPP connections. By default, the OS enforces a maximum of four (4) simultaneous packet data protocol (PDP) contexts for 3GPP connections, and one (1) PDP context for 3GPP2 connections. You can set a different maximum value if required by their mobile operator. The same maximums apply for both roaming and non-roaming scenarios. This maximum does not include packet contexts used internally by the modem.
ModemProfiles > LTEAttachGuids | Set the value for LTEAttachGuid to the OemConnectionId GUID used for the LTE attach profile in the modem. The value is a GUID in the string format *XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX*.
PersistAtImaging > DisableAoAc | Enable or disable Always-on/Always-connected (AoAc) on the WWAN adapter.


### CellUX

Setting | Description
--- | ---
APNAuthTypeDefault | Select between **Pap** and **Chap** for default APN authentication type.
APNIPTypeIfHidden | Select between **IPV4**, **IPV6**, **IPV4V6**, and **IPV4V6XLAT** for default APN IP type.
Critical > ShowVoLTEToggle | Select **Yes** to show the VoLTE toggle in the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to hide the toggle.
Disable2GByDefault | Select **Yes** to disable 2G by default. Select **No** to enable 2G.
Disabled2GNoticeDescription | Enter text to customize the notification for disabled 2G.
GenericWifiCallingErrorMessage | Enter text to customize the generic error message when a Wi-Fi calling error occurs.
Hide3GPP2ModeSelection | Select **Yes** to hide the **CDMA** option in the network **Mode** selection drop-down menu. Select **No** to show the **CDMA** option.
Hide3GPP2Selection | For 3GPP2 or CDMA phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM** settings screen. Select **No** to show **Network Type**.
Hide3GPPNetworks | For 3GPP or GSM phones, select **Yes** to hide the **Network Type** drop-down menu in the **SIM settings** screen. Select **No** to show **Network Type**.
HideAPN | Select **Yes** to hide the **add internet APN** button in the **SIM settings** screen. Select **No** to show **add internet APN**.
HideAPNAuthType | Select **Yes** to hide the APN authentication selector. Select **No** to show the APN authentication selector.
HideAPNIPType | Select **Yes** to hide the **IP type** list in the **internet APN** settings screen. Select **No** to show **IP type**.
HideDisabled2GNotice | Select **Yes** to hide the notification for disabled 2G. Select **No** to show the notification for disabled 2G.
HideHighestSpeed | Select **Yes** to hide the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show **Highest connection speed**.
HideHighestSpeed2G | Select **Yes** to hide the 2G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 2G option.
HideHighestSpeed3GOnly | Select **Yes** to hide the 3G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 3G option.
HideHighestSpeed4G | Select **Yes** to hide the 4G option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G option.
HideHighestSpeed4G3GOnly | Select **Yes** to hide the 4G or 3G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G or 3G Only option.
HideHighestSpeed4GOnly | Select **Yes** to hide the 4G Only option on the **Highest connection speed** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the 4G Only option.
HideLTEAttachAPN | Select **Yes** to hide the **LTE attach APN** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **LTE attach APN** button.
HideMMSAPN | Select **Yes** to hide the **add mms apn** button on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **add mms apn** button.
HideMMSAPNAuthType | Select **Yes** to hide the APN authentication type selector on the MMS APN page. Select **No** to show APN authentication selector.
HideMMSAPNIPType | Select **Yes** to hide the APN IP type selector on the MMS APN page. Select **No** to show the APN IP type selector.
HideModeSelection | Select **Yes** to hide the **Network Mode selection** drop-down menu on the **Settings** > **Cellular+SIM** > **SIM** settings page. Select **No** to show the **Network Mode selection**.
HidePersoUnlock | Select **Yes** to hide the Perso unlock UI. Select **No** to show the Perso unlock UI.
HighestSpeed2G | You can customize the listed names of the connection speeds with their own character codes. To modify "2G" to another character code, change the value of HighestSpeed2G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed3G | You can customize the listed names of the connection speeds with their own character codes. To modify "3G" to another character code, change the value of HighestSpeed3G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Only" to another character code, change the value of HighestSpeed3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed3GPreferred | You can customize the listed names of the connection speeds with their own character codes. To modify "3G Preferred" to another character code, change the value of HighestSpeed3GPreferred. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed4G | You can customize the listed names of the connection speeds with their own character codes. To modify "4G" to another character code, change the value of HighestSpeed4G. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed4G3GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G or 3G Only" to another character code, change the value of HighestSpeed4G3GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeed4GOnly | You can customize the listed names of the connection speeds with their own character codes. To modify "4G Only" to another character code, change the value of HighestSpeed4GOnly. Although there is no limit to the number of characters you can use, if the character code is too long, it will be truncated in the UI.
HighestSpeedTitle | You can customize the **Highest connection speed** drop-down label in the **Settings** > **Cellular+SIM** > **SIM** settings page. To change the Highest connection speed drop-down label, set HighestSpeedTitle to another string. For example, you can set this to "Preferred connection speed".
IsATTSpecific | Control the roaming text for AT&T devices. AT&T requires the phone to show a particular roaming text to meet their legal and marketing guidelines. By default, if the user chooses **roam** under **Data roaming options** in the **Settings** > **Cellular+SIM** screen, they will see the following text: *Depending on your service agreement, you might pay more when using data roaming.* If you set IsATTSpecific to **Yes**, the following roaming text will be displayed instead: *International data roaming charges apply for data usage outside the United States, Puerto Rico, and United States Virgin Islands. Don’t allow roaming to avoid international data roaming charges.*
LTEAttachGUID | Set the value for LTEAttachGuid to the OemConnectionId GUID used for the LTE attach profile in the modem. The value is a GUID in the string format *XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX*.
MMSAPNAuthTypeDefault | Select between **Pap** and **Chap** for default MMS APN authentication type.
MMSAPNIPTypeIfHidden | Select between **IPV4**, **IPV6**, **IPV4V6**, and **IPV4V6XLAT** for default MMS APN IP type.
ShowExtendedRejectCodes | When a reject code is sent by the network, partners can specify that extended error messages should be displayed instead of the standard simple error messages. This customization is only intended for use when required by the mobile operator’s network. The short versions of the extended reject message are shown in the following screens:</br></br>- Phone tile in Start</br></br>- Call History screen</br></br>- Dialer</br></br>- Call Progress screen</br></br>- Incoming Call screen</br></br>- As the status string under Settings > cellular+SIM</br></br></br>The long version of the extended reject message is shown under the Active Network label in **Settings** > **cellular+SIM**. Select **Yes** to show the extended error message. Select **No** to hide the extended error message. See [Error messages for reject codes](#errorreject) to see the versions of the message.
ShowHighestSpeed3GPreferred | Select **Yes** to show the **3G Preferred** option in the **Highest connection speed** drop-down menu. Select **No** to hide **3G Preferred**.
ShowManualAvoidance | Select **Yes** to show the **Switch to next network manually** button in SIM settings when Mode Selection is CDMA on a C+G dual SIM phone. Select **No** to hide the **Switch to next network manually** button
ShowPreferredPLMNPage | Select **Yes** to show the preferred public land mobile network (PLMN) page in SIM settings.
ShowSpecificWifiCallingError | Select **Yes** to show a specific error message based on operator requirements.
ShowViewAPN | Select **Yes** to show the **View Internet APN** button in **Settings** > **cellular+SIM**.
ShowWifiCallingEmergencyCallWarning | Select **Yes** to show Wi-Fi emergency call warning.
ShowWifiCallingError | Select **Yes** to show Wi-Fi calling error message.
SuppressDePersoUI | Select **Yes** to hide the perso unlock UI.


### CGDual

Use **CGDual** > **RestrictToGlobalMode** to configure settings for global mode on C+G Dual SIM phones. When the device registration changes, if the value for this setting is set, the OS changes the preferred system type to the default preferred system type for world mode. If the phone is not camped on any network, the OS assumes the phone is on the home network and changes the network registration preference to default mode. 

Select from the following:

- RestrictToGlobalMode_Disabled: the phone is not restricted to global mode.
- RestrictToGlobalMobe_Home: when a slot is registered at home and supports global mode, the mode selection is restricted to global mode.
- RestrictToGlobalMode_Always: if a slot supports global mode and this value is selected, the mode selection is restricted to global mode.

### eSim



### External

Setting | Description
--- | ---
CallSupplementaryService > OTASPNonStandardDialString | Enter a list of all desired non-standard OTASP dial strings.
CarrierSpecific > FallBackMode | Select between **GWCSFB** and **1xCSFB** for fallback mode.
CarrierSpecific > VZW > ActSeq | Enables activation for 4G VZW card. Do not configure this setting for non-VZW devices.
EnableLTESnrReporting | Select between **Use only RSRP** and **Use both RSRP and ECNO** to check if SNR needs to be used for LTE Signal Quality calculations.
EnableUMTSEcnoReporting | Select between **Use only RSSI** and **Use both RSSI and SNR** to check if SNR needs to be used for UMTS Signal Quality calculations.
ImageOnly > ERI > AlgorithmMBB0 | Select between **Sprint** and **Verizon** to specify the ERI algorithm in MBB for subscription 0.
ImageOnly > ERI > AlgorithmMBB1 | Select between **Sprint** and **Verizon** to specify the ERI algorithm in MBB for subscription 1.
ImageOnly > ERI > AlgorithmWmRil | Select between **Sprint** and **Verizon** to specify the ERI-based notification algorithm.
ImageOnly > ERI > DataFileNameWmRil | Specify the location of the ERI file on the device; for example, `C:\Windows\System32\SPCS_en.eri`. *SPCS_en.eri* is a placeholder. Obtain the ERI file name from the mobile operator and replace this filename with it.
ImageOnly > ERI > EnabledWmRil | Enable or disable ERI-based notifications.
ImageOnly > ERI > ERIDataFileNameMBB0 | Specify the ERI data file name with international roaming list for Verizon in MBB for subscription 0.
ImageOnly > ERI > ERIDataFileNameMBB1 | Specify the ERI data file name with international roaming list for Verizon in MBB for subscription 1.
ImageOnly > ERI > ERISprintIntlRoamDataFileNameMBB0 | Specify the ERI data file name with international roaming list for Sprint in MBB for subscription 0.
ImageOnly > ERI > ERISprintIntlRoamDataFileNameMBB1 | Specify the ERI data file name with international roaming list for Sprint in MBB for subscription 1.
ImageOnly > ERI > SprintInternationalERIValuesWmRil | Specify the international ERI values for Sprint as `to 4A,7C,7D,7E,9D,9E,9F,C1,C2,C3,C4,C5,C6,E4,E5,E6,E7,E8.`.
ImageOnly > MTU > DormancyTimeout0 | Enter the number of milliseconds to wait after dormancy hint before telling the modem to make the air interface dormant for subscription 0. Minimum value is 1703, and maximum value is 5000.
ImageOnly > MTU > DormancyTimeout1 | Enter the number of milliseconds to wait after dormancy hint before telling the modem to make the air interface dormant for subscription 1. Minimum value is 1703, and maximum value is 5000.
ImageOnly > MTU > MTUDataSize |  Customize the TCP maximum segment size (MSS) by setting the maximum transmission unit (MTU) data size if the MSS does not meet the requirements of the mobile operator network. For TCP, the default maximum transmission unit (MTU) is set to 1500 bytes, which makes the maximum segment size (MSS) 1460 bytes. In general, this value should not be changed, as the user experience will degrade if low values are set. However, if the MSS does not meet the requirements of the mobile operator network, OEMs can customize it by setting the MTU data size. This customization configures the MTU, so the size should be set to the required MSS size plus 40 bytes.
ImageOnly > MTU > RoamingMTUDataSize | Customize the TCP maximum segment size (MSS) for roaming by setting the maximum transmission unit (MTU) data size if the MSS does not meet the requirements of the mobile operator network. For TCP, the default maximum transmission unit (MTU) is set to 1500 bytes, which makes the maximum segment size (MSS) 1460 bytes. In general, this value should not be changed, as the user experience will degrade if low values are set. However, if the MSS does not meet the requirements of the mobile operator network, OEMs can customize it for roaming by setting the MTU data size. This customization configures the MTU, so the size should be set to the required MSS size plus 40 bytes.
ImageOnly > SuppressNwPSDetach | Configure whether to suppress reporting of network-initiated PS detach (appear attached to OS) until deregistered.
SignalBarMapping Table | You can modify the percentage values used for the signal strength in the status bar per filter. For details, see [Custom percentages for signal strength bars](https://docs.microsoft.com/windows-hardware/customize/mobile/mcsf/custom-percentages-for-signal-strength-bars).
SRVCCAutoToggleWmRil | Configure whether to link SRVCC to VOLTE on/off.



### General

### RCS

### SMS

## PerlMSI
 

<span id="celldata2" />
### CellData

<span id="cellux2" />
### CellUX

<span id="general2" />
### General

<span id="rcs2" />
### RCS

<span id="sms2" />
### SMS

<span id="utk2" />
### UTK


### VoLTE


<span id="errorreject />
## Error messages for reject codes

Reject code | Extended error message | Short error message
--- | --- | ---
2 (The SIM card hasn't been activated or has been deactivated) | SIM not set up MM#2 | Invalid SIM
3 (The SIM card fails authentication or one of the identity check procedures. This can also happen due to a duplication of the TMSI across different MSCs.) | Can't verify SIM MM#3 | Invalid SIM
6 (The device has been put on a block list, such as when the phone has been stolen or the IMEI is restricted.) | Phone not allowed MM#6 | No service