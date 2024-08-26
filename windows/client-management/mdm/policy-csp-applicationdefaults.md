---
title: ApplicationDefaults Policy CSP
description: Learn more about the ApplicationDefaults Area in Policy CSP.
ms.date: 01/18/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ApplicationDefaults-Begin -->
# Policy CSP - ApplicationDefaults

<!-- ApplicationDefaults-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ApplicationDefaults-Editable-End -->

<!-- DefaultAssociationsConfiguration-Begin -->
## DefaultAssociationsConfiguration

<!-- DefaultAssociationsConfiguration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1703 [10.0.15063] and later |
<!-- DefaultAssociationsConfiguration-Applicability-End -->

<!-- DefaultAssociationsConfiguration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationDefaults/DefaultAssociationsConfiguration
```
<!-- DefaultAssociationsConfiguration-OmaUri-End -->

<!-- DefaultAssociationsConfiguration-Description-Begin -->
<!-- Description-Source-DDF-Forced -->
This policy allows an administrator to set default file type and protocol associations. When set, default associations will be applied on sign-in to the PC. The association file can be created using the DISM tool (dism /online /export-defaultappassociations:appassoc.xml). The file can be further edited by adding attributes to control how often associations are applied by the policy. The file then needs to be base64 encoded before being added to SyncML. If policy is enabled and the client machine is Microsoft Entra joined, the associations assigned in SyncML will be processed and default associations will be applied.

> [!NOTE]
> For this policy, MDM policy take precedence over group policies even when [MDMWinsOverGP](policy-csp-controlpolicyconflict.md#mdmwinsovergp) policy is not set.
<!-- DefaultAssociationsConfiguration-Description-End -->

<!-- DefaultAssociationsConfiguration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DefaultAssociationsConfiguration-Editable-End -->

<!-- DefaultAssociationsConfiguration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DefaultAssociationsConfiguration-DFProperties-End -->

<!-- DefaultAssociationsConfiguration-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | DefaultAssociationsConfiguration |
| Friendly Name | Set a default associations configuration file |
| Element Name | Default Associations Configuration File. |
| Location | Computer Configuration |
| Path | WindowsComponents > File Explorer |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| ADMX File Name | WindowsExplorer.admx |
<!-- DefaultAssociationsConfiguration-GpMapping-End -->

<!-- DefaultAssociationsConfiguration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
**Example**:

To create the SyncML, follow these steps:

1. Install a few apps and change your defaults.
1. From an elevated prompt, run `dism /online /export-defaultappassociations:C:\appassoc.xml`. Here's an example output from the dism default association export command:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <DefaultAssociations>
      <Association Identifier=".htm" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" />
      <Association Identifier=".html" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" />
      <Association Identifier=".pdf" ProgId="AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723" ApplicationName="Microsoft Edge" />
      <Association Identifier="http" ProgId="AppXq0fevzme2pys62n3e0fbqa7peapykr8v" ApplicationName="Microsoft Edge" />
      <Association Identifier="https" ProgId="AppX90nv6nhay5n6a98fnetv7tpk64pp35es" ApplicationName="Microsoft Edge" />
    </DefaultAssociations>
    ```

    Starting in Windows 11, version 22H2, two new attributes are available for further customization of the policy. These attributes can be used to change how often the policy associations are applied.

    - **Version** attribute for `DefaultAssociations`. This attribute is used to control when **Suggested** associations are applied. Whenever the **Version** value is incremented, a **Suggested** association is applied one time.
    - **Suggested** attribute for `Association`. The default value is false. If it's false, the **Association** is applied on every sign-in. If it's true, the **Association** is only applied once for the current **DefaultAssociations** Version. When the **Version** is incremented, the **Association** is applied once again, on next sign-in.

    In the following example, the **Association** for `.htm` is applied on first sign-in of the user, and all others are applied on every sign-in. If **Version** is incremented, and the updated file is deployed to the user, the **Association** for `.htm` is applied again:

    ```xml
    <?xml version="1.0" encoding="UTF-8"?>
    <DefaultAssociations Version="1" >
      <Association Identifier=".htm" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" Suggested="true" />
      <Association Identifier=".html" ProgId="AppX4hxtad77fbk3jkkeerkrm0ze94wjf3s9" ApplicationName="Microsoft Edge" />
      <Association Identifier=".pdf" ProgId="AppXd4nrz8ff68srnhf9t5a8sbjyar1cr723" ApplicationName="Microsoft Edge" />
      <Association Identifier="http" ProgId="AppXq0fevzme2pys62n3e0fbqa7peapykr8v" ApplicationName="Microsoft Edge" />
      <Association Identifier="https" ProgId="AppX90nv6nhay5n6a98fnetv7tpk64pp35es" ApplicationName="Microsoft Edge" />
    </DefaultAssociations>
    ```

1. Take the XML output and put it through your favorite base64 encoder app. Here's the base64 encoded result:

    ```text
    PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0bSIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuaHRtbCIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucGRmIiBQcm9nSWQ9IkFwcFhkNG5yejhmZjY4c3JuaGY5dDVhOHNianlhcjFjcjcyMyIgQXBwbGljYXRpb25OYW1lPSJNaWNyb3NvZnQgRWRnZSIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Imh0dHAiIFByb2dJZD0iQXBwWHEwZmV2em1lMnB5czYybjNlMGZicWE3cGVhcHlrcjh2IiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iaHR0cHMiIFByb2dJZD0iQXBwWDkwbnY2bmhheTVuNmE5OGZuZXR2N3RwazY0cHAzNWVzIiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg0KDQo=
    ```

1. Paste the base64 encoded XML into the SyncML. Here's the SyncML example:

    ```xml
    <?xml version="1.0" encoding="utf-8"?>
    <SyncML xmlns="SYNCML:SYNCML1.1">
    <SyncBody>
        <Replace>
          <CmdID>101</CmdID>
          <Item>
            <Meta>
              <Format>chr</Format>
              <Type>text/plain</Type>
            </Meta>
            <Target>
              <LocURI>./Vendor/MSFT/Policy/Config/ApplicationDefaults/DefaultAssociationsConfiguration</LocURI>
            </Target>
            <Data>PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0bSIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuaHRtbCIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucGRmIiBQcm9nSWQ9IkFwcFhkNG5yejhmZjY4c3JuaGY5dDVhOHNianlhcjFjcjcyMyIgQXBwbGljYXRpb25OYW1lPSJNaWNyb3NvZnQgRWRnZSIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Imh0dHAiIFByb2dJZD0iQXBwWHEwZmV2em1lMnB5czYybjNlMGZicWE3cGVhcHlrcjh2IiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iaHR0cHMiIFByb2dJZD0iQXBwWDkwbnY2bmhheTVuNmE5OGZuZXR2N3RwazY0cHAzNWVzIiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg0KDQo=
            </Data>
          </Item>
        </Replace>
      <Final/>
      </SyncBody>
    </SyncML>
    ```
<!-- DefaultAssociationsConfiguration-Examples-End -->

<!-- DefaultAssociationsConfiguration-End -->

<!-- EnableAppUriHandlers-Begin -->
## EnableAppUriHandlers

<!-- EnableAppUriHandlers-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1803 [10.0.17134] and later |
<!-- EnableAppUriHandlers-Applicability-End -->

<!-- EnableAppUriHandlers-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ApplicationDefaults/EnableAppUriHandlers
```
<!-- EnableAppUriHandlers-OmaUri-End -->

<!-- EnableAppUriHandlers-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether Windows supports web-to-app linking with app URI handlers.

Enabling this policy setting enables web-to-app linking so that apps can be launched with an http(s) URI.

Disabling this policy disables web-to-app linking and http(s) URIs will be opened in the default browser instead of launching the associated app.

If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.
<!-- EnableAppUriHandlers-Description-End -->

<!-- EnableAppUriHandlers-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- EnableAppUriHandlers-Editable-End -->

<!-- EnableAppUriHandlers-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Add, Delete, Get, Replace |
| Default Value  | 1 |
<!-- EnableAppUriHandlers-DFProperties-End -->

<!-- EnableAppUriHandlers-AllowedValues-Begin -->
**Allowed values**:

| Value | Description |
|:--|:--|
| 0 | Disabled. |
| 1 (Default) | Enabled. |
<!-- EnableAppUriHandlers-AllowedValues-End -->

<!-- EnableAppUriHandlers-GpMapping-Begin -->
**Group policy mapping**:

| Name | Value |
|:--|:--|
| Name | EnableAppUriHandlers |
| Friendly Name | Configure web-to-app linking with app URI handlers |
| Location | Computer Configuration |
| Path | System > Group Policy |
| Registry Key Name | Software\Policies\Microsoft\Windows\System |
| Registry Value Name | EnableAppUriHandlers |
| ADMX File Name | GroupPolicy.admx |
<!-- EnableAppUriHandlers-GpMapping-End -->

<!-- EnableAppUriHandlers-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- EnableAppUriHandlers-Examples-End -->

<!-- EnableAppUriHandlers-End -->

<!-- ApplicationDefaults-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ApplicationDefaults-CspMoreInfo-End -->

<!-- ApplicationDefaults-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
