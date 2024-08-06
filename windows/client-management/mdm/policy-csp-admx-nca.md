---
title: ADMX_nca Policy CSP
description: Learn more about the ADMX_nca Area in Policy CSP.
ms.date: 08/06/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_nca-Begin -->
# Policy CSP - ADMX_nca

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_nca-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_nca-Editable-End -->

<!-- CorporateResources-Begin -->
## CorporateResources

<!-- CorporateResources-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CorporateResources-Applicability-End -->

<!-- CorporateResources-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/CorporateResources
```
<!-- CorporateResources-OmaUri-End -->

<!-- CorporateResources-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies resources on your intranet that are normally accessible to DirectAccess clients. Each entry is a string that identifies the type of resource and the location of the resource.

Each string can be one of the following types:

- A DNS name or IPv6 address that NCA pings. The syntax is "PING:" followed by a fully qualified domain name (FQDN) that resolves to an IPv6 address, or an IPv6 address. Examples: PING:myserver.corp.contoso.com or PING:2002:836b:1::1.

Note.

We recommend that you use FQDNs instead of IPv6 addresses wherever possible.

Important.

At least one of the entries must be a PING: resource.

- A Uniform Resource Locator (URL) that NCA queries with a Hypertext Transfer Protocol (HTTP) request. The contents of the web page don't matter. The syntax is "HTTP:" followed by a URL. The host portion of the URL must resolve to an IPv6 address of a Web server or contain an IPv6 address. Examples: HTTP:https://myserver.corp.contoso.com/ or HTTP:https://2002:836b:1::1/.

- A Universal Naming Convention (UNC) path to a file that NCA checks for existence. The contents of the file don't matter. The syntax is "FILE:" followed by a UNC path. The ComputerName portion of the UNC path must resolve to an IPv6 address or contain an IPv6 address. Examples: FILE:\\myserver\myshare\test.txt or FILE:\\2002:836b:1::1\myshare\test.txt.

You must configure this setting to have complete NCA functionality.
<!-- CorporateResources-Description-End -->

<!-- CorporateResources-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CorporateResources-Editable-End -->

<!-- CorporateResources-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CorporateResources-DFProperties-End -->

<!-- CorporateResources-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CorporateResources |
| Friendly Name | Corporate Resources |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| ADMX File Name | nca.admx |
<!-- CorporateResources-AdmxBacked-End -->

<!-- CorporateResources-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CorporateResources-Examples-End -->

<!-- CorporateResources-End -->

<!-- CustomCommands-Begin -->
## CustomCommands

<!-- CustomCommands-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- CustomCommands-Applicability-End -->

<!-- CustomCommands-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/CustomCommands
```
<!-- CustomCommands-OmaUri-End -->

<!-- CustomCommands-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies commands configured by the administrator for custom logging. These commands will run in addition to default log commands.
<!-- CustomCommands-Description-End -->

<!-- CustomCommands-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- CustomCommands-Editable-End -->

<!-- CustomCommands-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- CustomCommands-DFProperties-End -->

<!-- CustomCommands-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | CustomCommands |
| Friendly Name | Custom Commands |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant\CustomCommands |
| ADMX File Name | nca.admx |
<!-- CustomCommands-AdmxBacked-End -->

<!-- CustomCommands-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- CustomCommands-Examples-End -->

<!-- CustomCommands-End -->

<!-- DTEs-Begin -->
## DTEs

<!-- DTEs-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- DTEs-Applicability-End -->

<!-- DTEs-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/DTEs
```
<!-- DTEs-OmaUri-End -->

<!-- DTEs-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the IPv6 addresses of the endpoints of the Internet Protocol security (IPsec) tunnels that enable DirectAccess. NCA attempts to access the resources that are specified in the Corporate Resources setting through these configured tunnel endpoints.

By default, NCA uses the same DirectAccess server that the DirectAccess client computer connection is using. In default configurations of DirectAccess, there are typically two IPsec tunnel endpoints: one for the infrastructure tunnel and one for the intranet tunnel. You should configure one endpoint for each tunnel.

Each entry consists of the text PING: followed by the IPv6 address of an IPsec tunnel endpoint. Example: PING:2002:836b:1::836b:1.

You must configure this setting to have complete NCA functionality.
<!-- DTEs-Description-End -->

<!-- DTEs-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- DTEs-Editable-End -->

<!-- DTEs-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- DTEs-DFProperties-End -->

<!-- DTEs-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | DTEs |
| Friendly Name | IPsec Tunnel Endpoints |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant\DTEs |
| ADMX File Name | nca.admx |
<!-- DTEs-AdmxBacked-End -->

<!-- DTEs-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- DTEs-Examples-End -->

<!-- DTEs-End -->

<!-- FriendlyName-Begin -->
## FriendlyName

<!-- FriendlyName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- FriendlyName-Applicability-End -->

<!-- FriendlyName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/FriendlyName
```
<!-- FriendlyName-OmaUri-End -->

<!-- FriendlyName-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the string that appears for DirectAccess connectivity when the user clicks the Networking notification area icon. For example, you can specify "Contoso Intranet Access" for the DirectAccess clients of the Contoso Corporation.

If this setting isn't configured, the string that appears for DirectAccess connectivity is "Corporate Connection".
<!-- FriendlyName-Description-End -->

<!-- FriendlyName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- FriendlyName-Editable-End -->

<!-- FriendlyName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- FriendlyName-DFProperties-End -->

<!-- FriendlyName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | FriendlyName |
| Friendly Name | Friendly Name |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| ADMX File Name | nca.admx |
<!-- FriendlyName-AdmxBacked-End -->

<!-- FriendlyName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- FriendlyName-Examples-End -->

<!-- FriendlyName-End -->

<!-- LocalNamesOn-Begin -->
## LocalNamesOn

<!-- LocalNamesOn-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- LocalNamesOn-Applicability-End -->

<!-- LocalNamesOn-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/LocalNamesOn
```
<!-- LocalNamesOn-OmaUri-End -->

<!-- LocalNamesOn-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether the user has Connect and Disconnect options for the DirectAccess entry when the user clicks the Networking notification area icon.

If the user clicks the Disconnect option, NCA removes the DirectAccess rules from the [Name Resolution Policy Table](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/dn593632(v=ws.11)) (NRPT) and the DirectAccess client computer uses whatever normal name resolution is available to the client computer in its current network configuration, including sending all DNS queries to the local intranet or Internet DNS servers. Note that NCA doesn't remove the existing IPsec tunnels and users can still access intranet resources across the DirectAccess server by specifying IPv6 addresses rather than names.

The ability to disconnect allows users to specify single-label, unqualified names (such as "PRINTSVR") for local resources when connected to a different intranet and for temporary access to intranet resources when network location detection hasn't correctly determined that the DirectAccess client computer is connected to its own intranet.

To restore the DirectAccess rules to the NRPT and resume normal DirectAccess functionality, the user clicks Connect.

Note.

If the DirectAccess client computer is on the intranet and has correctly determined its network location, the Disconnect option has no effect because the rules for DirectAccess are already removed from the NRPT.

If this setting isn't configured, users don't have Connect or Disconnect options.
<!-- LocalNamesOn-Description-End -->

<!-- LocalNamesOn-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- LocalNamesOn-Editable-End -->

<!-- LocalNamesOn-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- LocalNamesOn-DFProperties-End -->

<!-- LocalNamesOn-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | LocalNamesOn |
| Friendly Name | Prefer Local Names Allowed |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| Registry Value Name | NamePreferenceAllowed |
| ADMX File Name | nca.admx |
<!-- LocalNamesOn-AdmxBacked-End -->

<!-- LocalNamesOn-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- LocalNamesOn-Examples-End -->

<!-- LocalNamesOn-End -->

<!-- PassiveMode-Begin -->
## PassiveMode

<!-- PassiveMode-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- PassiveMode-Applicability-End -->

<!-- PassiveMode-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/PassiveMode
```
<!-- PassiveMode-OmaUri-End -->

<!-- PassiveMode-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether NCA service runs in Passive Mode or not.

Set this to Disabled to keep NCA probing actively all the time. If this setting isn't configured, NCA probing is in active mode by default.
<!-- PassiveMode-Description-End -->

<!-- PassiveMode-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- PassiveMode-Editable-End -->

<!-- PassiveMode-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- PassiveMode-DFProperties-End -->

<!-- PassiveMode-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | PassiveMode |
| Friendly Name | DirectAccess Passive Mode |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| Registry Value Name | PassiveMode |
| ADMX File Name | nca.admx |
<!-- PassiveMode-AdmxBacked-End -->

<!-- PassiveMode-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- PassiveMode-Examples-End -->

<!-- PassiveMode-End -->

<!-- ShowUI-Begin -->
## ShowUI

<!-- ShowUI-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- ShowUI-Applicability-End -->

<!-- ShowUI-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/ShowUI
```
<!-- ShowUI-OmaUri-End -->

<!-- ShowUI-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether an entry for DirectAccess connectivity appears when the user clicks the Networking notification area icon.

Set this to Disabled to prevent user confusion when you are just using DirectAccess to remotely manage DirectAccess client computers from your intranet and not providing seamless intranet access.

If this setting isn't configured, the entry for DirectAccess connectivity appears.
<!-- ShowUI-Description-End -->

<!-- ShowUI-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ShowUI-Editable-End -->

<!-- ShowUI-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- ShowUI-DFProperties-End -->

<!-- ShowUI-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | ShowUI |
| Friendly Name | User Interface |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| Registry Value Name | ShowUI |
| ADMX File Name | nca.admx |
<!-- ShowUI-AdmxBacked-End -->

<!-- ShowUI-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- ShowUI-Examples-End -->

<!-- ShowUI-End -->

<!-- SupportEmail-Begin -->
## SupportEmail

<!-- SupportEmail-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19041.1202] and later <br> ✅ Windows 10, version 20H2 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 with [KB5005101](https://support.microsoft.com/help/5005101) [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- SupportEmail-Applicability-End -->

<!-- SupportEmail-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_nca/SupportEmail
```
<!-- SupportEmail-OmaUri-End -->

<!-- SupportEmail-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the e-mail address to be used when sending the log files that are generated by NCA to the network administrator.

When the user sends the log files to the Administrator, NCA uses the default e-mail client to open a new message with the support email address in the To: field of the message, then attaches the generated log files as a .html file. The user can review the message and add additional information before sending the message.
<!-- SupportEmail-Description-End -->

<!-- SupportEmail-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- SupportEmail-Editable-End -->

<!-- SupportEmail-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- SupportEmail-DFProperties-End -->

<!-- SupportEmail-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | SupportEmail |
| Friendly Name | Support Email Address |
| Location | Computer Configuration |
| Path | Network > DirectAccess Client Experience Settings |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows\NetworkConnectivityAssistant |
| ADMX File Name | nca.admx |
<!-- SupportEmail-AdmxBacked-End -->

<!-- SupportEmail-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- SupportEmail-Examples-End -->

<!-- SupportEmail-End -->

<!-- ADMX_nca-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_nca-CspMoreInfo-End -->

<!-- ADMX_nca-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
