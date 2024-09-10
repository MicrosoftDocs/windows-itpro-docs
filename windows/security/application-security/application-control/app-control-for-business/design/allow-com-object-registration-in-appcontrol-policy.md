---
title: Allow COM object registration in a WDAC policy
description: You can allow COM object registration in a Windows Defender Application Control policy.
ms.localizationpriority: medium
ms.date: 04/05/2023
ms.topic: how-to
---

# Allow COM object registration in a Windows Defender Application Control policy

> [!NOTE]
> Some capabilities of Windows Defender Application Control are only available on specific Windows versions. Learn more about the [Application Control feature availability](../feature-availability.md).

The [Microsoft Component Object Model (COM)](/windows/desktop/com/the-component-object-model) is a platform-independent, distributed, object-oriented system for creating binary software components that can interact. COM specifies an object model and programming requirements that enable COM objects to interact with other objects.

## COM object configurability in WDAC policy

Windows Defender Application Control (WDAC) enforces a built-in allowlist for COM object registration. While this list works for most common application usage scenarios, you may need to allow more COM objects to support the apps used in your organization. You can specify allowed COM objects via their GUID in your WDAC policy as described in this article.

> [!NOTE]
> To add this functionality to other versions of Windows 10, you can install the following or later updates.

- [Windows 10, 1809 June 18, 2019-KB4501371 (OS Build 17763.592)](https://support.microsoft.com/help/4501371/windows-10-update-kb4501371)
- [Windows 10, 1607 June 18, 2019-KB4503294 (OS Build 14393.3053)](https://support.microsoft.com/help/4503294/windows-10-update-kb4503294)

### Get COM object GUID

You can get the COM application GUID from the 8036 COM object block events in Event Viewer located at **Application and Service Logs > Microsoft > Windows > AppLocker > MSI and Script**, and extract the GUID from the event data.

### Author policy setting to allow or deny COM object GUID

Three elements:

- Provider: platform on which code is running (values are  PowerShell, WSH, IE, VBA, MSI, or a wildcard "AllHostIds")
- Key: GUID for the program you wish to run, in the format Key="{33333333-4444-4444-1616-161616161616}"
- ValueName: needs to be set to "EnterpriseDefinedClsId"

One attribute:

- Value: needs to be "true" for allow and "false" for deny

  > [!NOTE]
  > Deny only works in base policies, not supplemental policies

- The setting needs to be placed in the order of ASCII values (first by Provider, then Key, then ValueName)

### Multiple policy considerations

Similar to executable files, COM objects must pass all enforced WDAC policies on the system to run. For example, if the COM object under evaluation passes most but not all of your WDAC policies, the COM object is blocked. If you're using a combination of base and supplemental policies, the COM object just needs to be allowlisted in either the base policy or one of the supplemental policies.

### Examples

Example 1: Allows registration of all COM object GUIDs in any provider

```xml
<Setting Provider="AllHostIds" Key="AllKeys" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>true</Boolean>
  </Value>
</Setting>
```

Example 2: Blocks a specific COM object from being registered via Internet Explorer (IE)

```xml
<Setting Provider="IE" Key="{00000000-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>false</Boolean>
  </Value>
</Setting>
```

Example 3: Allows a specific COM object to register in PowerShell

```xml
<Setting Provider="PowerShell" Key="{33333333-4444-4444-1616-161616161616}" ValueName="EnterpriseDefinedClsId">
  <Value>
    <Boolean>true</Boolean>
  </Value>
</Setting>
```

### How to configure settings for the CLSIDs

Here's an example of an error in the Event Viewer found at **Application and Service Logs > Microsoft > Windows > AppLocker > MSI and Script**:

> Log Name: Microsoft-Windows-AppLocker/MSI and Script<br/>
> Source: Microsoft-Windows-AppLocker<br/>
> Date: 11/11/2020 1:18:11 PM<br/>
> Event ID: 8036<br/>
> Task Category: None<br/>
> Level: Error<br/>
> Keywords:<br/>
> User: S-1-5-21-3340858017-3068726007-3466559902-3647<br/>
> Computer: contoso.com<br/>
> Description: {f8d253d9-89a4-4daa-87b6-1168369f0b21} was prevented from running due to Config CI policy.

Event XML:

```XML
<Event xmlns="http://schemas.microsoft.com/win/2004/08/events/event">
  <System>
    <Provider Name="Microsoft-Windows-AppLocker" Guid="{cbda4dbf-8d5d-4f69-9578-be14aa540d22}" />
    <EventID>8036</EventID>
    <Version>0</Version>
    <Level>2</Level>
    <Task>0</Task>
    <Opcode>0</Opcode>
    <Keywords>0x4000000000000000</Keywords>
    <TimeCreated SystemTime="2020-11-11T13:18:11.4029179Z" />
    <EventRecordID>819347</EventRecordID>
    <Correlation ActivityID="{61e3e871-adb0-0047-c9cc-e761b0add601}" />
    <Execution ProcessID="21060" ThreadID="23324" />
    <Channel>Microsoft-Windows-AppLocker/MSI and Script</Channel>
    <Computer>contoso.com</Computer>
    <Security UserID="S-1-5-21-3340858017-3068726007-3466559902-3647" />
  </System>
  <EventData>
    <Data Name="IsApproved">false</Data>
    <Data Name="CLSID">{f8d253d9-89a4-4daa-87b6-1168369f0b21}</Data>
  </EventData>
</Event>
```

To add this CLSID to the existing policy, follow these steps:

1. Open PowerShell ISE with Administrative privileges.

2. Copy and edit this command, then run it from the admin PowerShell ISE. Consider the policy name to be `WDAC_policy.xml`.

    ```PowerShell
    PS C:\WINDOWS\system32> Set-CIPolicySetting -FilePath <path to policy xml>\WDAC_policy.xml -Key "{f8d253d9-89a4-4daa-87b6-1168369f0b21}" -Provider WSH -Value true -ValueName EnterpriseDefinedClsId -ValueType Boolean
    ```

    Once the command has run, find the following section added to the policy XML.

    ```XML
    <Settings>
      <Setting Provider="WSH" Key="{f8d253d9-89a4-4daa-87b6-1168369f0b21}" ValueName="EnterpriseDefinedClsId">
        <Value>
          <Boolean>true</Boolean>
        </Value>
      </Setting>
    ```

### Default COM Object allowlist

The table that follows describes the list of COM objects that are inherently trusted in Windows Defender Application Control. Objects in this list don't need to be allowlisted in your WDAC policies. They can be denied by creating explicit deny rules in your WDAC policy.

| File Name | CLSID |
|--------|-----------|
| scrrun.dll | EE09B103-97E0-11CF-978F-00A02463E06F |
| scrrun.dll | 0D43FE01-F093-11CF-8940-00A0C9054228 |
| vbscript.dll | 3F4DACA4-160D-11D2-A8E9-00104B365C9F |
| WEX.Logger.Log | 70B46225-C474-4852-BB81-48E0D36F9A5A |
| TE.Common.TestData | 1d68f3c0-b5f8-4abd-806a-7bc57cdce35a |
| TE.Common.RuntimeParameters | 9f3d4048-6028-4c5b-a92d-01bc977af600 |
| TE.Common.Verify | e72cbabf-8e48-4d27-b14e-1f347f6ec71a |
| TE.Common.Interruption | 5850ba6f-ce72-46d4-a29b-0d3d9f08cc0b |
| msxml6.dll | 2933BF90-7B36-11d2-B20E-00C04F983E60 |
| msxml6.dll | ED8C108E-4349-11D2-91A4-00C04F7969E8 |
| mmcndmgr.dll | ADE6444B-C91F-4E37-92A4-5BB430A33340 |
| puiobj.dll | B021FF57-A928-459C-9D6C-14DED0C9BED2 |
| wdtf.dll | 041E868E-0C7D-48C6-965F-5FD576530E5B |
| wdtfedtaction.dll | 0438C02B-EB9C-4E42-81AD-407F6CD6CDE1 |
| wdtfioattackaction.dll | 078B1F7D-C34C-4B13-A7C3-9663901650F1 |
| wdtfmutt2tcdsimpleioaction.dll | 0ABB2961-2CC1-4F1D-BE8E-9D330D06B77D |
| wdtfdriverpackageaction.dll | 0D7237E6-930F-4682-AD0A-52EBFFD3AEE3 |
| wdtf.dll | 0D972387-817B-46E7-913F-E9993FF401EB |
| wdtf.dll | 0E770B12-7221-4A5D-86EE-77310A5506BB |
| wdtfdriversetupdeviceaction.dll | 0FA57208-5100-4CD6-955C-FE69F8898973 |
| wdtf.dll | 1080A020-2B47-4DA9-8095-DBC9CEFFFC04 |
| wdtfnetworksimpleioaction.dll | 10CF2E12-1681-4C53-ADC0-932C84832CD8 |
| wdtf.dll | 140F2286-3B39-4DE1-AF94-E083DEEA6BB9 |
| wdtfinterfaces.dll | 1A7D6D61-4FE5-42E2-8F23-4FC1731C474F |
| wdtfaudiosimpleioaction.dll | 1C658D42-4256-4743-A4C5-90BF3A3A186A |
| wdtf.dll | 2236B1F3-4A33-48C2-B22C-A1F93A626F05 |
| wdtfsystemaction.dll | 23440924-1AB0-41F2-A732-B75069E5C823 |
| wdtfdriversetupsystemaction.dll | 238C0AEB-1DFC-4575-AAF3-C67FE15C1819 |
| wdtffuzztestaction.dll | 23D0E542-0390-4873-9AC7-EF86E95E5215 |
| wdtf.dll | 240FA08C-1D70-40CB-BDB3-2CC41A45496B |
| wdtf.dll | 26CC4211-A9A6-4E5C-A30D-3C659BB4CDC9 |
| wdtf.dll | 28EE5F0B-97D8-4A59-BAC8-A8A80E11F56B |
| wdtf.dll | 2C9AF7D6-2589-4413-A2BA-9926EBCFD67C |
| wdtf.dll | 32A9798D-987F-489E-8DB6-2EFB240248BD |
| wdtfinterfaces.dll | 3C0B0D50-611A-4368-AC87-4488D6E0C4A7 |
| wdtfcdromsimpleioaction.dll | 3F2C07F3-199B-4165-A948-B8B59A97FCC5 |
| wdtf.dll | 485785D3-8820-4C3D-A532-4C0F66392A30 |
| wdtfinterfaces.dll | 5EAE59BE-6946-44B7-A7B3-1D59811B246A |
| wdtfiospyaction.dll | 698F6A82-7833-4499-8BA5-2145D604ABD4 |
| wdtfdevicesupportaction.dll | 69D94D1B-0833-40D4-9AE7-7FC6F64F2624 |
| wdtf.dll | 6EE5B280-3B0F-4358-9E20-99F169FAA700 |
| wdtfmuttsimpleioaction.dll | 7776915A-0370-49A7-90B7-20EB36E80B6D |
| wdtfcpuutilizationsystemaction.dll | 7926C7DE-299C-4B09-BB1B-649A4B917ED0 |
| wdtfwirelesssimpleioaction.dll | 7A686BCD-9203-435C-8B06-9D7E7A518F98 |
| wdtfbluetoothsimpleioaction.dll | 7E6C4615-6184-4077-A150-5D30F29993A4 |
| wdtf.dll | 9663A00A-5B72-4810-9014-C77108062949 |
| wdtfinterfaces.dll | 9C261B2B-DBD6-4087-B636-ABE1607989E8 |
| wdtfwebcamsimpleioaction.dll | A1B74619-F02D-4574-8091-2AADD46A5B2B |
| wdtf.dll | A2FD15D7-64F0-4080-AABD-884380202022 |
| wdtfvolumesimpleioaction.dll | AC91E813-B116-4676-AE33-2988B590F3C7 |
| wdtfconcurrentioaction.dll | AE278430-ABC2-49D1-AF30-910B9A88CB1E |
| wdtf.dll | B43FF7F1-629C-4DE5-9559-1D09E0A07037 |
| wdtfdriververifiersystemaction.dll | B7770265-B643-4600-A60B-93F9BA9F4B24 |
| wdtfpnpaction.dll | B8D74985-4EB9-46AA-B2ED-DD2D918849DF |
| wdtfmobilebroadbandsimpleioaction.dll | BCFBBB02-4DA5-466C-9DA7-DC672877B075 |
| wdtf.dll | BE56FAD1-A489-4508-ABB7-3348E1C2C885 |
| wdtfpnpaction.dll | C0B6C572-D37D-47CC-A89D-E6B9E0852764 |
| wdtfioattackaction.dll | C88B324E-6B26-49BC-9D05-A221F15D7E13 |
| wdtfsensorsiosimpleioaction.dll | C8BF7EC0-C746-4DE8-BA46-34528C6329FB |
| wdtfanysimpleioaction.dll | C8C574DA-367B-4130-AED6-1EA61A5C6A4B |
| simpleio_d3dtest.dll | CBC36BDB-A6BC-4383-8194-659470553488 |
| wdtfsystemaction.dll | D30E1E07-AA39-4086-A7E6-9245FBD0A730 |
| wdtf.dll | DD34E741-139D-4F4C-A1E2-D4184FCDD4F9 |
| wdtfsupaction.dll | EA48171B-4265-48C3-B56B-70B175A7FDFA |
| wdtfinterfaces.dll | EB9DB874-D23D-44D5-A988-85E966322843 |
| wdtfinterfaces.dll | ED05EF76-09A9-4409-90CA-C5D0711CA057 |
| wdtfwpdsimpleioaction.dll | EEA17F2B-8E8E-41A3-9776-A87FACD625D0 |
| wdtfinterfaces.dll | F30FC2BB-F424-4A1F-8F95-68CFEE935E92 |
| wdtfedtaction.dll | F6694E02-5AD0-476D-BD2D-43F7E5D10AF6 |
| wdtfsmartcardreadersimpleioaction.dll | FA6F7E49-76C6-490C-B50E-8B1E8E0EEE2A |
| wdtfiospyaction.dll | FE36026D-CDA8-4514-B3D9-57BDA3870D0C |
