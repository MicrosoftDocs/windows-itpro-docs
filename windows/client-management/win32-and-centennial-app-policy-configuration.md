---
title: Win32 and Desktop Bridge app ADMX policy Ingestion
description: Ingest ADMX files and set ADMX policies for Win32 and Desktop Bridge apps.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Win32 and Desktop Bridge app ADMX policy Ingestion

## Overview

You can ingest ADMX files (ADMX ingestion) and set those ADMX policies for Win32 and Desktop Bridge apps by using Windows Mobile Device Management (MDM) on desktop SKUs. The ADMX files that define policy information can be ingested to your device by using the Policy CSP URI, `./Device/Vendor/MSFT/Policy/ConfigOperations/ADMXInstall`. The ingested ADMX file is then processed into MDM policies.

Starting from the following Windows versions `Replace` command is supported:

- Windows 10, version 1903 with KB4512941 and KB4517211 installed
- Windows 10, version 1809 with KB4512534 and KB installed
- Windows 10, version 1803 with KB4512509 and KB installed
- Windows 10, version 1709 with KB4516071 and KB installed

When the ADMX policies are ingested, the registry keys to which each policy is written are checked so that known system registry keys, or registry keys that are used by existing inbox policies or system components, aren't overwritten. This precaution helps to avoid security concerns over opening the entire registry. Currently, the ingested policies aren't allowed to write to locations within the **System**, **Software\Microsoft**, and **Software\Policies\Microsoft** keys, except for the following locations:

- Software\Policies\Microsoft\Office\
- Software\Microsoft\Office\
- Software\Microsoft\Windows\CurrentVersion\Explorer\
- Software\Microsoft\Internet Explorer\
- software\policies\microsoft\shared tools\proofing tools\
- software\policies\microsoft\imejp\
- software\policies\microsoft\ime\shared\
- software\policies\microsoft\shared tools\graphics filters\
- software\policies\microsoft\windows\currentversion\explorer\
- software\policies\microsoft\softwareprotectionplatform\
- software\policies\microsoft\officesoftwareprotectionplatform\
- software\policies\microsoft\windows\windows search\preferences\
- software\policies\microsoft\exchange\
- software\microsoft\shared tools\proofing tools\
- software\microsoft\shared tools\graphics filters\
- software\microsoft\windows\windows search\preferences\
- software\microsoft\exchange\
- software\policies\microsoft\vba\security\
- software\microsoft\onedrive
- software\Microsoft\Edge
- Software\Microsoft\EdgeUpdate\

> [!WARNING]
> Some operating system components have built in functionality to check devices for domain membership. MDM enforces the configured policy values only if the devices are domain joined, otherwise it does not. However, you can still ingest ADMX files and set ADMX policies regardless of whether the device is domain joined or non-domain joined.

> [!NOTE]
> Settings that cannot be configured using custom policy ingestion have to be set by pushing the appropriate registry keys directly (for example, by using PowerShell script).

## Ingesting an app ADMX file

The following ADMX file example shows how to ingest a Win32 or Desktop Bridge app ADMX file and set policies from the file. The ADMX file defines eight policies.

**Payload**:

```XML
<policyDefinitions revision="1.0" schemaVersion="1.0">
  <categories>
    <category name="ParentCategoryArea"/>
    <category name="Category1">
      <parentCategory ref="ParentCategoryArea" />
    </category>
    <category name="Category2">
      <parentCategory ref="ParentCategoryArea" />
    </category>
    <category name="Category3">
      <parentCategory ref="Category2" />
    </category>
  </categories>
  <policies>
    <policy name="L_PolicyConfigurationMode" class="Machine" displayName="$(string.L_PolicyConfigurationMode)" explainText="$(string.L_ExplainText_ConfigurationMode)" presentation="$(presentation.L_PolicyConfigurationMode)" key="software\policies\contoso\companyApp" valueName="configurationmode">
      <parentCategory ref="Category1" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
      <elements>
        <text id="L_ServerAddressInternal_VALUE" key="software\policies\contoso\companyApp" valueName="serveraddressinternal" required="true" />
        <text id="L_ServerAddressExternal_VALUE" key="software\policies\contoso\companyApp" valueName="serveraddressexternal" required="true" />
      </elements>
    </policy>
    <policy name="L_PolicyEnableSIPHighSecurityMode" class="Machine" displayName="$(string.L_PolicyEnableSIPHighSecurityMode)" explainText="$(string.L_ExplainText_EnableSIPHighSecurityMode)" presentation="$(presentation.L_PolicyEnableSIPHighSecurityMode)" key="software\policies\contoso\companyApp" valueName="enablesiphighsecuritymode">
      <parentCategory ref="Category1" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
    <policy name="L_PolicySipCompression" class="Machine" displayName="$(string.L_PolicySipCompression)" explainText="$(string.L_ExplainText_SipCompression)" presentation="$(presentation.L_PolicySipCompression)" key="software\policies\contoso\companyApp">
      <parentCategory ref="Category1" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <elements>
        <enum id="L_PolicySipCompression" valueName="sipcompression">
          <item displayName="$(string.L_SipCompressionVal0)">
            <value>
              <decimal value="0" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal1)">
            <value>
              <decimal value="1" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal2)">
            <value>
              <decimal value="2" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal3)">
            <value>
              <decimal value="3" />
            </value>
          </item>
        </enum>
      </elements>
    </policy>
    <policy name="L_PolicyPreventRun" class="Machine" displayName="$(string.L_PolicyPreventRun)" explainText="$(string.L_ExplainText_PreventRun)" presentation="$(presentation.L_PolicyPreventRun)" key="software\policies\contoso\companyApp" valueName="preventrun">
      <parentCategory ref="Category1" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
    <policy name="L_PolicyConfiguredServerCheckValues" class="Machine" displayName="$(string.L_PolicyConfiguredServerCheckValues)" explainText="$(string.L_ExplainText_ConfiguredServerCheckValues)" presentation="$(presentation.L_PolicyConfiguredServerCheckValues)" key="software\policies\contoso\companyApp">
      <parentCategory ref="Category2" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <elements>
        <text id="L_ConfiguredServerCheckValues_VALUE" valueName="configuredservercheckvalues" required="true" />
      </elements>
    </policy>
    <policy name="L_PolicySipCompression_1" class="User" displayName="$(string.L_PolicySipCompression)" explainText="$(string.L_ExplainText_SipCompression)" presentation="$(presentation.L_PolicySipCompression_1)" key="software\policies\contoso\companyApp">
      <parentCategory ref="Category2" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <elements>
        <enum id="L_PolicySipCompression" valueName="sipcompression">
          <item displayName="$(string.L_SipCompressionVal0)">
            <value>
              <decimal value="0" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal1)">
            <value>
              <decimal value="1" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal2)">
            <value>
              <decimal value="2" />
            </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal3)">
            <value>
              <decimal value="3" />
            </value>
          </item>
        </enum>
      </elements>
    </policy>
    <policy name="L_PolicyPreventRun_1" class="User" displayName="$(string.L_PolicyPreventRun)" explainText="$(string.L_ExplainText_PreventRun)" presentation="$(presentation.L_PolicyPreventRun_1)" key="software\policies\contoso\companyApp" valueName="preventrun">
      <parentCategory ref="Category3" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
    <policy name="L_PolicyGalDownloadInitialDelay_1" class="User" displayName="$(string.L_PolicyGalDownloadInitialDelay)" explainText="$(string.L_ExplainText_GalDownloadInitialDelay)" presentation="$(presentation.L_PolicyGalDownloadInitialDelay_1)" key="software\policies\contoso\companyApp">
      <parentCategory ref="Category3" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <elements>
        <decimal id="L_GalDownloadInitialDelay_VALUE" valueName="galdownloadinitialdelay" minValue="0" required="true" />
      </elements>
    </policy>
  </policies>
</policyDefinitions>
```

**Request Syncml**:

The ADMX file is escaped and sent in SyncML format through the Policy CSP URI, `./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/{AppName}/{SettingType}/{FileUid or AdmxFileName}`.
When the ADMX file is imported, the policy states for each new policy are the same as the ones in a regular MDM policy: Enabled, Disabled, or Not Configured.

The following example shows an ADMX file in SyncML format:

```XML
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Add>
      <CmdID>102</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/ContosoCompanyApp/Policy/AppAdmxFile01</LocURI>
        </Target>
        <Data>
        <![CDATA[<policyDefinitions revision="1.0" schemaVersion="1.0">
          <categories>
          <category name="ParentCategoryArea"/>
          <category name="Category1">
          <parentCategory ref="ParentCategoryArea" />
          </category>
          <category name="Category2">
          <parentCategory ref="ParentCategoryArea" />
          </category>
          <category name="Category3">
          <parentCategory ref="Category2" />
          </category>
          </categories>
          <policies>
          <policy name="L_PolicyConfigurationMode" class="Machine" displayName="$(string.L_PolicyConfigurationMode)" explainText="$(string.L_ExplainText_ConfigurationMode)" presentation="$(presentation.L_PolicyConfigurationMode)" key="software\policies\contoso\companyApp" valueName="configurationmode">
          <parentCategory ref="Category1" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <enabledValue>
          <decimal value="1" />
          </enabledValue>
          <disabledValue>
          <decimal value="0" />
          </disabledValue>
          <elements>
          <text id="L_ServerAddressInternal_VALUE" key="software\policies\contoso\companyApp" valueName="serveraddressinternal" required="true" />
          <text id="L_ServerAddressExternal_VALUE" key="software\policies\contoso\companyApp" valueName="serveraddressexternal" required="true" />
          </elements>
          </policy>
          <policy name="L_PolicyEnableSIPHighSecurityMode" class="Machine" displayName="$(string.L_PolicyEnableSIPHighSecurityMode)" explainText="$(string.L_ExplainText_EnableSIPHighSecurityMode)" presentation="$(presentation.L_PolicyEnableSIPHighSecurityMode)" key="software\policies\contoso\companyApp" valueName="enablesiphighsecuritymode">
          <parentCategory ref="Category1" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <enabledValue>
          <decimal value="1" />
          </enabledValue>
          <disabledValue>
          <decimal value="0" />
          </disabledValue>
          </policy>
          <policy name="L_PolicySipCompression" class="Machine" displayName="$(string.L_PolicySipCompression)" explainText="$(string.L_ExplainText_SipCompression)" presentation="$(presentation.L_PolicySipCompression)" key="software\policies\contoso\companyApp">
          <parentCategory ref="Category1" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <elements>
          <enum id="L_PolicySipCompression" valueName="sipcompression">
          <item displayName="$(string.L_SipCompressionVal0)">
          <value>
          <decimal value="0" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal1)">
          <value>
          <decimal value="1" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal2)">
          <value>
          <decimal value="2" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal3)">
          <value>
          <decimal value="3" />
          </value>
          </item>
          </enum>
          </elements>
          </policy>
          <policy name="L_PolicyPreventRun" class="Machine" displayName="$(string.L_PolicyPreventRun)" explainText="$(string.L_ExplainText_PreventRun)" presentation="$(presentation.L_PolicyPreventRun)" key="software\policies\contoso\companyApp" valueName="preventrun">
          <parentCategory ref="Category1" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <enabledValue>
          <decimal value="1" />
          </enabledValue>
          <disabledValue>
          <decimal value="0" />
          </disabledValue>
          </policy>
          <policy name="L_PolicyConfiguredServerCheckValues" class="Machine" displayName="$(string.L_PolicyConfiguredServerCheckValues)" explainText="$(string.L_ExplainText_ConfiguredServerCheckValues)" presentation="$(presentation.L_PolicyConfiguredServerCheckValues)" key="software\policies\contoso\companyApp">
          <parentCategory ref="Category2" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <elements>
          <text id="L_ConfiguredServerCheckValues_VALUE" valueName="configuredservercheckvalues" required="true" />
          </elements>
          </policy>
          <policy name="L_PolicySipCompression_1" class="User" displayName="$(string.L_PolicySipCompression)" explainText="$(string.L_ExplainText_SipCompression)" presentation="$(presentation.L_PolicySipCompression_1)" key="software\policies\contoso\companyApp">
          <parentCategory ref="Category2" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <elements>
          <enum id="L_PolicySipCompression" valueName="sipcompression">
          <item displayName="$(string.L_SipCompressionVal0)">
          <value>
          <decimal value="0" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal1)">
          <value>
          <decimal value="1" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal2)">
          <value>
          <decimal value="2" />
          </value>
          </item>
          <item displayName="$(string.L_SipCompressionVal3)">
          <value>
          <decimal value="3" />
          </value>
          </item>
          </enum>
          </elements>
          </policy>
          <policy name="L_PolicyPreventRun_1" class="User" displayName="$(string.L_PolicyPreventRun)" explainText="$(string.L_ExplainText_PreventRun)" presentation="$(presentation.L_PolicyPreventRun_1)" key="software\policies\contoso\companyApp" valueName="preventrun">
          <parentCategory ref="Category3" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <enabledValue>
          <decimal value="1" />
          </enabledValue>
          <disabledValue>
          <decimal value="0" />
          </disabledValue>
          </policy>
          <policy name="L_PolicyGalDownloadInitialDelay_1" class="User" displayName="$(string.L_PolicyGalDownloadInitialDelay)" explainText="$(string.L_ExplainText_GalDownloadInitialDelay)" presentation="$(presentation.L_PolicyGalDownloadInitialDelay_1)" key="software\policies\contoso\companyApp">
          <parentCategory ref="Category3" />
          <supportedOn ref="windows:SUPPORTED_Windows7" />
          <elements>
          <decimal id="L_GalDownloadInitialDelay_VALUE" valueName="galdownloadinitialdelay" minValue="0" required="true" />
          </elements>
          </policy>
          </policies>
          </policyDefinitions>]]>
        </Data>
      </Item>
    </Add>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response Syncml**:

```XML
<Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>102</CmdRef><Cmd>Add</Cmd><Data>200</Data></Status>
```

### URI format for configuring an app policy

The following example shows how to derive a Win32 or Desktop Bridge app policy name and policy area name:

```xml
<categories>
    <category name="ParentCategoryArea"/>
    <category name="Category1">
      <parentCategory ref="ParentCategoryArea" />
    </category>
    <category name="Category2">
      <parentCategory ref="ParentCategoryArea" />
    </category>
    <category name="Category3">
      <parentCategory ref="Category2" />
    </category>
  </categories>
<policy name="L_PolicyPreventRun_1" class="User" displayName="$(string.L_PolicyPreventRun)" explainText="$(string.L_ExplainText_PreventRun)" presentation="$(presentation.L_PolicyPreventRun_1)" key="software\policies\contoso\companyApp" valueName="preventrun">
      <parentCategory ref="Category3" />
      <supportedOn ref="windows:SUPPORTED_Windows7" />
      <enabledValue>
        <decimal value="1" />
      </enabledValue>
      <disabledValue>
        <decimal value="0" />
      </disabledValue>
    </policy>
```

As documented in [Policy CSP](mdm/policy-configuration-service-provider.md), the URI format to configure a policy via Policy CSP is: `./{user or device}/Vendor/MSFT/Policy/Config/{AreaName}/{PolicyName}`.

**User or device policy**:

In the policy class, the attribute is defined as "User" and the URI is prefixed with `./user`.
If the attribute value is "Machine", the URI is prefixed with `./device`.
If the attribute value is "Both", the policy can be configured either as a user or a device policy.

The policy {AreaName} format is {AppName}~{SettingType}~{CategoryPathFromAdmx}.
{AppName} and {SettingType} are derived from the URI that is used to import the ADMX file. In this example, the URI is: `./Vendor/MSFT/Policy/ConfigOperations/ADMXInstall/ContosoCompanyApp/Policy/AppAdmxFile01`.

{CategoryPathFromAdmx} is derived by traversing the parentCategory parameter. In this example, {CategoryPathFromAdmx} is ParentCategoryArea~Category2~Category3. Therefore, {AreaName} is ContosoCompanyApp~ Policy~ ParentCategoryArea~Category2~Category3.

Therefore, from the example:

- Class: `User`
- Policy name: `L_PolicyPreventRun_1`
- Policy area name: `ContosoCompanyApp~Policy~ParentCategoryArea~Category2~Category3`
- URI: `./user/Vendor/MSFT/Policy/Config/ContosoCompanyApp~Policy~ParentCategoryArea~Category2~Category3/L_PolicyPreventRun_1`

## ADMX-backed app policy examples

The following examples describe how to set an ADMX-ingested app policy.

### Enabling an app policy

**Payload**:

```XML
<enabled/>
<data id="L_ServerAddressInternal_VALUE" value="TextValue1"/>
<data id="L_ServerAddressExternal_VALUE" value="TextValue2"/>
```

**Request Syncml**:

```XML
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>103</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/ContosoCompanyApp~ Policy~ParentCategoryArea~Category1/L_PolicyConfigurationMode</LocURI>
        </Target>
        <Data><![CDATA[<enabled/><data id="L_ServerAddressInternal_VALUE" value="TextValue1"/><data id="L_ServerAddressExternal_VALUE" value="TextValue2"/>]]></Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response SyncML**:

```XML
<Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>103</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status>
```

### Disabling an app policy

**Payload**:

```XML
<disabled/>
```

**Request SyncML**:

```XML
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Replace>
      <CmdID>104</CmdID>
      <Item>
        <Meta>
          <Format>chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/ContosoCompanyApp~ Policy~ParentCategoryArea~Category1/L_PolicyConfigurationMode</LocURI>
        </Target>
        <Data><![CDATA[<disabled/>]]></Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response SyncML**:

```XML
<Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>104</CmdRef><Cmd>Replace</Cmd><Data>200</Data></Status>
```

### Setting an app policy to not configured

**Payload**:

(None)

**Request SyncML**:

```XML
<SyncML xmlns="SYNCML:SYNCML1.1">
  <SyncBody>
    <Delete>
      <CmdID>105</CmdID>
      <Item>
        <Target>
          <LocURI>./Device/Vendor/MSFT/Policy/Config/ContosoCompanyApp~ Policy~ParentCategoryArea~Category1/L_PolicyConfigurationMode</LocURI>
        </Target>
      </Item>
    </Delete>
    <Final/>
  </SyncBody>
</SyncML>
```

**Response SyncML**:

```XML
<Status><CmdID>2</CmdID><MsgRef>1</MsgRef><CmdRef>105</CmdRef><Cmd>Delete</Cmd><Data>200</Data></Status>
```
