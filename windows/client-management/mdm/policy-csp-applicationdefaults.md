---
title: Policy CSP - ApplicationDefaults
description: Learn about various Policy configuration service providers (CSP) - ApplicationDefaults, including SyncML, for Windows 10.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.localizationpriority: medium
ms.date: 09/27/2019
ms.reviewer: 
manager: aaroncz
---

# Policy CSP - ApplicationDefaults



<hr/>

<!--Policies-->
## ApplicationDefaults policies

<dl>
  <dd>
    <a href="#applicationdefaults-defaultassociationsconfiguration">ApplicationDefaults/DefaultAssociationsConfiguration</a>
  </dd>
  <dd>
    <a href="#applicationdefaults-enableappurihandlers">ApplicationDefaults/EnableAppUriHandlers</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="applicationdefaults-defaultassociationsconfiguration"></a>**ApplicationDefaults/DefaultAssociationsConfiguration**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy allows an administrator to set default file type and protocol associations. When set, default associations are applied on sign in to the PC. The association file can be created using the DISM tool (dism /online /export-defaultappassociations:appassoc.xml). Then, it needs to be base64 encoded before being added to SyncML.

If policy is enabled and the client machine is having Azure Active Directory, the associations assigned in SyncML are processed and default associations are applied.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Set a default associations configuration file*
-   GP name: *DefaultAssociationsConfiguration*
-   GP element: *DefaultAssociationsConfiguration_TextBox*
-   GP path: *File Explorer*
-   GP ADMX file name: *WindowsExplorer.admx*

<!--/ADMXMapped-->
<!--Example-->
To create the SyncML, follow these steps:
<ol>
<li>Install a few apps and change your defaults.</li>
<li>From an elevated prompt, run "dism /online /export-defaultappassociations:appassoc.xml"</li>
<li>Take the XML output and put it through your favorite base64 encoder app.</li>
<li>Paste the base64 encoded XML into the SyncML</li>
</ol>

Here's an example output from the dism default association export command:

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

Here's the base64 encoded result:

``` syntax
PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiPz4NCjxEZWZhdWx0QXNzb2NpYXRpb25zPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iLmh0bSIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIuaHRtbCIgUHJvZ0lkPSJBcHBYNGh4dGFkNzdmYmszamtrZWVya3JtMHplOTR3amYzczkiIEFwcGxpY2F0aW9uTmFtZT0iTWljcm9zb2Z0IEVkZ2UiIC8+DQogIDxBc3NvY2lhdGlvbiBJZGVudGlmaWVyPSIucGRmIiBQcm9nSWQ9IkFwcFhkNG5yejhmZjY4c3JuaGY5dDVhOHNianlhcjFjcjcyMyIgQXBwbGljYXRpb25OYW1lPSJNaWNyb3NvZnQgRWRnZSIgLz4NCiAgPEFzc29jaWF0aW9uIElkZW50aWZpZXI9Imh0dHAiIFByb2dJZD0iQXBwWHEwZmV2em1lMnB5czYybjNlMGZicWE3cGVhcHlrcjh2IiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KICA8QXNzb2NpYXRpb24gSWRlbnRpZmllcj0iaHR0cHMiIFByb2dJZD0iQXBwWDkwbnY2bmhheTVuNmE5OGZuZXR2N3RwazY0cHAzNWVzIiBBcHBsaWNhdGlvbk5hbWU9Ik1pY3Jvc29mdCBFZGdlIiAvPg0KPC9EZWZhdWx0QXNzb2NpYXRpb25zPg0KDQo=
```

Here's the SyncMl example:

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

<!--/Example-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="applicationdefaults-enableappurihandlers"></a>**ApplicationDefaults/EnableAppUriHandlers**

<!--SupportedSKUs-->

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting determines whether Windows supports web-to-app linking with app URI handlers.

Enabling this policy setting enables web-to-app linking so that apps can be launched with an http(s) URI.

Disabling this policy disables web-to-app linking and http(s) URIs will be opened in the default browser instead of launching the associated app.

If you don't configure this policy setting, the default behavior depends on the Windows edition. Changes to this policy take effect on reboot.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:
-   GP Friendly name: *Configure web-to-app linking with app URI handlers*
-   GP name: *EnableAppUriHandlers*
-   GP path: *System/Group Policy*
-   GP ADMX file name: *GroupPolicy.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
This setting supports a range of values between 0 and 1.

<!--/SupportedValues-->
<!--/Policy-->
<hr/>



<!--/Policies-->

