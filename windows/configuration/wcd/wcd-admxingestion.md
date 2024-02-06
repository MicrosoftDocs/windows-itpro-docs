---
title: ADMXIngestion
description: This section describes the ADMXIngestion settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.topic: reference
ms.date: 01/25/2024
---

# ADMXIngestion (Windows Configuration Designer reference)

Starting in Windows 10, version 1703, you can import (*ingest*) Group Policy administrative templates (ADMX files) and configure values for ADMX-backed policies in a provisioning package. To see which types of ADMX-backed policies can be applied, see [Win32 and Desktop Bridge app policy configuration overview](/windows/client-management/mdm/win32-and-centennial-app-policy-configuration).

- The settings under [ConfigADMXInstalledPolicy](#configadmxinstalledpolicy) allow you to set values for policies in the imported ADMX file.

- The settings under [ConfigOperations](#configoperations) specify the ADMX file to be imported.

>[!IMPORTANT]
>Only device scope policies (class="Machine" or class="Both") can be set using a provisioning package.

## Applies to

| Setting groups | Windows client | Surface Hub | HoloLens | IoT Enterprise |
|--|:-:|:-:|:-:|:-:|
| [ConfigADMXInstalledPolicy](#configadmxinstalledpolicy) | ✅ |  |  | ✅ |
| [ConfigOperations](#configoperations) | ✅ |  |  | ✅ |

## ConfigOperations

Use **ConfigOperations** to import ADMX policies from an ADMX file.

1. Enter an app name, and then click **Add**.
    This can be any name you assign, so choose something descriptive to help you identify its purpose. For example, if you are importing ADMX for Chromium Edge, enter an app name.
    Example, `MSEdgeEfficiencyMode`
1. Select the app name in the Customizations pane, select a setting type, and then click **Add**.
    The choices, **Policy** and **Preference**, have no impact on the behavior of the settings, and are only provided for your convenience should you want to categorize the settings you add.
1. Select the setting type in the Customizations pane. In the **AdmxFileUid** field, enter the name of the ADMX file or a unique ID for the file, and then click **Add**.
    The **AdmxFileUid** can be any string, but must be unique in the provisioning package. Using the name of the ADMX file will help you identify the file in the future.
    Example, `MSEdgeEfficiencyMode`

    >[!NOTE]
    >Keeping the AdmxFileUid and AppName the same will help prevent authorizing errors.

1. Select the AdmxFileUid in the Customizations pane, and paste the contents of the ADMX file in the text field. Before copying the contents of the ADMX file, you must convert it to a single-line. See [Convert multi-line to single line](#convert) for instructions.

    >[!NOTE]
    >When you have a large ADMX file, you may want to only include specific settings. Instead of pasting in the entire ADMX file, you can paste just one or more specific policies (after converting them to single-line).

    Example, EfficiencyMode
    ```XML
    <policy class="Both" displayName="$(string.EfficiencyMode)" explainText="$(string.EfficiencyMode_Explain)" key="Software\Policies\Microsoft\Edge" name="EfficiencyMode" presentation="$(presentation.EfficiencyMode)">      <parentCategory ref="Performance"/>      <supportedOn ref="SUPPORTED_WIN7_V96"/>      <elements>        <enum id="EfficiencyMode" valueName="EfficiencyMode">          <item displayName="$(string.EfficiencyMode_AlwaysActive)">            <value>              <decimal value="0"/>            </value>          </item>          <item displayName="$(string.EfficiencyMode_NeverActive)">            <value>              <decimal value="1"/>            </value>          </item>          <item displayName="$(string.EfficiencyMode_ActiveWhenUnplugged)">            <value>              <decimal value="2"/>            </value>          </item>          <item displayName="$(string.EfficiencyMode_ActiveWhenUnpluggedBatteryLow)">            <value>              <decimal value="3"/>            </value>          </item>        </enum>      </elements>    </policy>
    ```

1. Repeat for each ADMX, or set of ADMX policies, that you want to add, and then configure [ConfigADMXInstalledPolicy](#configadmxinstalledpolicy) for each one.

<span id="convert"/>

## ConfigADMXInstalledPolicy

>[!IMPORTANT]
>Configure the settings to import the ADMX file in [ConfigOperations](#configoperations) first.

In **ConfigADMXInstalledPolicy**, you provide a policy setting and value for that policy from the imported ADMX. You will need information from the ADMX that you import in **ConfigOperations** to complete **ConfigADMXInstalledPolicy**.

1. Enter an area name, and then click **Add**. The structure of the area name is the following:
    `<AppName (from ConfigOperations)>~<SettingType>~<category name from ADMX>`
    See [Category and policy in ADMX](#category-and-policy-in-admx) for more information. A setting may have multiple levels of category names, as in the following example.
    Example: `MSEdgeEfficiencyMode~Policy~microsoft_edge~Performance`
1. Select the area name in the Customization pane, enter a policy name from the ADMX, and then click **Add**.
    Example, `EfficiencyMode`.
1. Select the policy name in the Customization pane, and then enter a value from the ADMX in the text field.
    Example, `<enabled/><data id="EfficiencyMode" Value="2">`.

## Category and policy in ADMX

The following samples show the ADMX file for Chromium Edge used in the examples in the procedures above. The first sample highlights the category names.

```XML
  <categories>
    <category displayName="$(string.microsoft_edge)" name="microsoft_edge"/>
    <category displayName="$(string.Performance_group)" name="Performance">
      <parentCategory ref="microsoft_edge"/>
    </category>
  </categories>
```
<!--![Snippet of ADMX shows category names highlighted.](../images/admx-category.png)-->

The next sample highlights the specific policy.

```XML
    <policy class="Both" displayName="$(string.EfficiencyMode)" explainText="$(string.EfficiencyMode_Explain)" key="Software\Policies\Microsoft\Edge" name="EfficiencyMode" presentation="$(presentation.EfficiencyMode)">
      <parentCategory ref="Performance"/>
      <supportedOn ref="SUPPORTED_WIN7_V96"/>
      <elements>
        <enum id="EfficiencyMode" valueName="EfficiencyMode">
          <item displayName="$(string.EfficiencyMode_AlwaysActive)">
            <value>
              <decimal value="0"/>
            </value>
          </item>
          <item displayName="$(string.EfficiencyMode_NeverActive)">
            <value>
              <decimal value="1"/>
            </value>
          </item>
          <item displayName="$(string.EfficiencyMode_ActiveWhenUnplugged)">
            <value>
              <decimal value="2"/>
            </value>
          </item>
          <item displayName="$(string.EfficiencyMode_ActiveWhenUnpluggedBatteryLow)">
            <value>
              <decimal value="3"/>
            </value>
          </item>
        </enum>
      </elements>
    </policy>
```
<!--![Snipped of ADMX shows policy setting highlighted.](../images/admx-policy.png)-->

## Convert multi-line to single line

Use the following PowerShell cmdlet to remove carriage returns and line feeds from a multi-line file to create a single-line file that you can paste in **AdmxFileUid**.

```PS
$outputFile = "output.admx"
$inputFile = "input.admx"
(Get-Content $inputFile -Raw).Replace("`r`n","") | Set-Content $outputFile -Force
```

## Configuration Samples

Example: Edge Efficiency Mode
```XML
<?xml version="1.0" encoding="utf-8"?>
<WindowsCustomizations>
  <PackageConfig xmlns="urn:schemas-Microsoft-com:Windows-ICD-Package-Config.v1.0">
    <ID>{d1ab1e3e-6e6d-4bd5-b35b-34cca18d2e16}</ID>
    <Name>MSEdgeEfficiencyMode</Name>
    <Version>1.1</Version>
    <OwnerType>OEM</OwnerType>
    <Rank>0</Rank>
    <Notes></Notes>
  </PackageConfig>
  <Settings xmlns="urn:schemas-microsoft-com:windows-provisioning">
    <Customizations>
      <Common>
        <ADMXIngestion>
          <ConfigADMXInstalledPolicy>
            <AreaName>
              <PolicyName AreaName="MSEdgeEfficiencyMode~Policy~microsoft_edge~Performance" Name="MSEdgeEfficiencyMode~Policy~microsoft_edge~Performance">
                <SetAdmxPolicy PolicyName="EfficiencyMode" Name="EfficiencyMode">&lt;enabled/&gt;&lt;data id="EfficiencyMode" value="2"/&gt;</SetAdmxPolicy>
              </PolicyName>
            </AreaName>
          </ConfigADMXInstalledPolicy>
          <ConfigOperations>
            <ADMXInstall>
              <AppName>
                <SettingType AppName="MSEdgeEfficiencyMode" Name="MSEdgeEfficiencyMode">
                  <ADMXFileUniqueID SettingType="Policy" Name="Policy">
                    <InsertADMXFile AdmxFileUid="MSEdgeEfficiencyMode" Name="MSEdgeEfficiencyMode">&lt;?xml version="1.0" ?&gt;&lt;policyDefinitions revision="1.0" schemaVersion="1.0" xmlns="http://www.microsoft.com/GroupPolicy/PolicyDefinitions"&gt;  &lt;!--microsoft_edge version: 96.0.1054.62--&gt;  &lt;policyNamespaces&gt;    &lt;target namespace="Microsoft.Policies.Edge" prefix="microsoft_edge"/&gt;    &lt;using namespace="Microsoft.Policies.Windows" prefix="windows"/&gt;  &lt;/policyNamespaces&gt;  &lt;resources minRequiredRevision="1.0"/&gt;  &lt;supportedOn&gt;    &lt;definitions&gt;      &lt;definition displayName="$(string.SUPPORTED_WIN7_V96)" name="SUPPORTED_WIN7_V96"/&gt;    &lt;/definitions&gt;  &lt;/supportedOn&gt;  &lt;categories&gt;    &lt;category displayName="$(string.microsoft_edge)" name="microsoft_edge"/&gt;    &lt;category displayName="$(string.Performance_group)" name="Performance"&gt;      &lt;parentCategory ref="microsoft_edge"/&gt;    &lt;/category&gt;  &lt;/categories&gt;  &lt;policies&gt;    &lt;policy class="Both" displayName="$(string.EfficiencyMode)" explainText="$(string.EfficiencyMode_Explain)" key="Software\Policies\Microsoft\Edge" name="EfficiencyMode" presentation="$(presentation.EfficiencyMode)"&gt;      &lt;parentCategory ref="Performance"/&gt;      &lt;supportedOn ref="SUPPORTED_WIN7_V96"/&gt;      &lt;elements&gt;        &lt;enum id="EfficiencyMode" valueName="EfficiencyMode"&gt;          &lt;item displayName="$(string.EfficiencyMode_AlwaysActive)"&gt;            &lt;value&gt;              &lt;decimal value="0"/&gt;            &lt;/value&gt;          &lt;/item&gt;          &lt;item displayName="$(string.EfficiencyMode_NeverActive)"&gt;            &lt;value&gt;              &lt;decimal value="1"/&gt;            &lt;/value&gt;          &lt;/item&gt;          &lt;item displayName="$(string.EfficiencyMode_ActiveWhenUnplugged)"&gt;            &lt;value&gt;              &lt;decimal value="2"/&gt;            &lt;/value&gt;          &lt;/item&gt;          &lt;item displayName="$(string.EfficiencyMode_ActiveWhenUnpluggedBatteryLow)"&gt;            &lt;value&gt;              &lt;decimal value="3"/&gt;            &lt;/value&gt;          &lt;/item&gt;        &lt;/enum&gt;      &lt;/elements&gt;    &lt;/policy&gt;  &lt;/policies&gt;&lt;/policyDefinitions&gt;</InsertADMXFile>
                  </ADMXFileUniqueID>
                </SettingType>
              </AppName>
            </ADMXInstall>
          </ConfigOperations>
        </ADMXIngestion>
      </Common>
    </Customizations>
  </Settings>
</WindowsCustomizations>
```

## Related topics

- [Policy configuration service provider (CSP): ADMX-backed policies](/windows/client-management/mdm/policy-configuration-service-provider)
- [Understanding ADMX-backed policies](/windows/client-management/mdm/understanding-admx-backed-policies)
