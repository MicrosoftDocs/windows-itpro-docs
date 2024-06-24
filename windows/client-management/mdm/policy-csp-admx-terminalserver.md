---
title: ADMX_TerminalServer Policy CSP
description: Learn more about the ADMX_TerminalServer Area in Policy CSP.
ms.date: 06/19/2024
---

<!-- Auto-Generated CSP Document -->

<!-- ADMX_TerminalServer-Begin -->
# Policy CSP - ADMX_TerminalServer

[!INCLUDE [ADMX-backed CSP tip](includes/mdm-admx-csp-note.md)]

<!-- ADMX_TerminalServer-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- ADMX_TerminalServer-Editable-End -->

<!-- TS_AUTO_RECONNECT-Begin -->
## TS_AUTO_RECONNECT

<!-- TS_AUTO_RECONNECT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_AUTO_RECONNECT-Applicability-End -->

<!-- TS_AUTO_RECONNECT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_AUTO_RECONNECT
```
<!-- TS_AUTO_RECONNECT-OmaUri-End -->

<!-- TS_AUTO_RECONNECT-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether to allow Remote Desktop Connection clients to automatically reconnect to sessions on an RD Session Host server if their network link is temporarily lost. By default, a maximum of twenty reconnection attempts are made at five second intervals.

If the status is set to Enabled, automatic reconnection is attempted for all clients running Remote Desktop Connection whenever their network connection is lost.

If the status is set to Disabled, automatic reconnection of clients is prohibited.

If the status is set to Not Configured, automatic reconnection isn't specified at the Group Policy level. However, users can configure automatic reconnection using the "Reconnect if connection is dropped" checkbox on the Experience tab in Remote Desktop Connection.
<!-- TS_AUTO_RECONNECT-Description-End -->

<!-- TS_AUTO_RECONNECT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_AUTO_RECONNECT-Editable-End -->

<!-- TS_AUTO_RECONNECT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_AUTO_RECONNECT-DFProperties-End -->

<!-- TS_AUTO_RECONNECT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_AUTO_RECONNECT |
| Friendly Name | Automatic reconnection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableAutoReconnect |
| ADMX File Name | TerminalServer.admx |
<!-- TS_AUTO_RECONNECT-AdmxBacked-End -->

<!-- TS_AUTO_RECONNECT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_AUTO_RECONNECT-Examples-End -->

<!-- TS_AUTO_RECONNECT-End -->

<!-- TS_CAMERA_REDIRECTION-Begin -->
## TS_CAMERA_REDIRECTION

<!-- TS_CAMERA_REDIRECTION-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CAMERA_REDIRECTION-Applicability-End -->

<!-- TS_CAMERA_REDIRECTION-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CAMERA_REDIRECTION
```
<!-- TS_CAMERA_REDIRECTION-OmaUri-End -->

<!-- TS_CAMERA_REDIRECTION-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control the redirection of video capture devices to the remote computer in a Remote Desktop Services session.

By default, Remote Desktop Services allows redirection of video capture devices.

- If you enable this policy setting, users can't redirect their video capture devices to the remote computer.

- If you disable or don't configure this policy setting, users can redirect their video capture devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the video capture devices to redirect to the remote computer.
<!-- TS_CAMERA_REDIRECTION-Description-End -->

<!-- TS_CAMERA_REDIRECTION-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CAMERA_REDIRECTION-Editable-End -->

<!-- TS_CAMERA_REDIRECTION-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CAMERA_REDIRECTION-DFProperties-End -->

<!-- TS_CAMERA_REDIRECTION-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CAMERA_REDIRECTION |
| Friendly Name | Do not allow video capture redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableCameraRedir |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CAMERA_REDIRECTION-AdmxBacked-End -->

<!-- TS_CAMERA_REDIRECTION-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CAMERA_REDIRECTION-Examples-End -->

<!-- TS_CAMERA_REDIRECTION-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Begin -->
## TS_CERTIFICATE_TEMPLATE_POLICY

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Applicability-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CERTIFICATE_TEMPLATE_POLICY
```
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-OmaUri-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the name of the certificate template that determines which certificate is automatically selected to authenticate an RD Session Host server.

A certificate is needed to authenticate an RD Session Host server when TLS 1.0, 1.1 or 1.2 is used to secure communication between a client and an RD Session Host server during RDP connections.

- If you enable this policy setting, you need to specify a certificate template name. Only certificates created by using the specified certificate template will be considered when a certificate to authenticate the RD Session Host server is automatically selected. Automatic certificate selection only occurs when a specific certificate hasn't been selected.

If no certificate can be found that was created with the specified certificate template, the RD Session Host server will issue a certificate enrollment request and will use the current certificate until the request is completed. If more than one certificate is found that was created with the specified certificate template, the certificate that will expire latest and that matches the current name of the RD Session Host server will be selected.

- If you disable or don't configure this policy, the certificate template name isn't specified at the Group Policy level. By default, a self-signed certificate is used to authenticate the RD Session Host server.

> [!NOTE]
> If you select a specific certificate to be used to authenticate the RD Session Host server, that certificate will take precedence over this policy setting.
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Description-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Editable-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-DFProperties-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CERTIFICATE_TEMPLATE_POLICY |
| Friendly Name | Server authentication certificate template |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-AdmxBacked-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CERTIFICATE_TEMPLATE_POLICY-Examples-End -->

<!-- TS_CERTIFICATE_TEMPLATE_POLICY-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Begin -->
## TS_CLIENT_ALLOW_SIGNED_FILES_1

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Applicability-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_1
```
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-OmaUri-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can run Remote Desktop Protocol (.rdp) files from a publisher that signed the file with a valid certificate. A valid certificate is one issued by an authority recognized by the client, such as the issuers in the client's Third-Party Root Certification Authorities certificate store. This policy setting also controls whether the user can start an RDP session by using default .rdp settings (for example, when a user directly opens the Remote Desktop Connection [RDC] client without specifying an .rdp file).

- If you enable or don't configure this policy setting, users can run .rdp files that are signed with a valid certificate. Users can also start an RDP session with default .rdp settings by directly opening the RDC client. When a user starts an RDP session, the user is asked to confirm whether they want to connect.

- If you disable this policy setting, users can't run .rdp files that are signed with a valid certificate. Additionally, users can't start an RDP session by directly opening the RDC client and specifying the remote computer name. When a user tries to start an RDP session, the user receives a message that the publisher has been blocked.

> [!NOTE]
> You can define this policy setting in the Computer Configuration node or in the User Configuration node.

- If you configure this policy setting for the computer, all users on the computer are affected.
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Description-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Editable-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-DFProperties-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_ALLOW_SIGNED_FILES_1 |
| Friendly Name | Allow .rdp files from valid publishers and user's default .rdp settings |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AllowSignedFiles |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-AdmxBacked-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-Examples-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_1-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Begin -->
## TS_CLIENT_ALLOW_SIGNED_FILES_2

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Applicability-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_ALLOW_SIGNED_FILES_2
```
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-OmaUri-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can run Remote Desktop Protocol (.rdp) files from a publisher that signed the file with a valid certificate. A valid certificate is one that's issued by an authority recognized by the client, such as the issuers in the client's Third-Party Root Certification Authorities certificate store. This policy setting also controls whether the user can start an RDP session by using default .rdp settings (for example, when a user directly opens the Remote Desktop Connection [RDC] client without specifying an .rdp file).

- If you enable or don't configure this policy setting, users can run .rdp files that are signed with a valid certificate. Users can also start an RDP session with default .rdp settings by directly opening the RDC client. When a user starts an RDP session, the user is asked to confirm whether they want to connect.

- If you disable this policy setting, users can't run .rdp files that are signed with a valid certificate. Additionally, users can't start an RDP session by directly opening the RDC client and specifying the remote computer name. When a user tries to start an RDP session, the user receives a message that the publisher has been blocked.

> [!NOTE]
> You can define this policy setting in the Computer Configuration node or in the User Configuration node.

- If you configure this policy setting for the computer, all users on the computer are affected.
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Description-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Editable-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-DFProperties-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_ALLOW_SIGNED_FILES_2 |
| Friendly Name | Allow .rdp files from valid publishers and user's default .rdp settings |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AllowSignedFiles |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-AdmxBacked-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-Examples-End -->

<!-- TS_CLIENT_ALLOW_SIGNED_FILES_2-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Begin -->
## TS_CLIENT_ALLOW_UNSIGNED_FILES_1

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Applicability-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_1
```
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-OmaUri-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.

- If you enable or don't configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.

- If you disable this policy setting, users can't run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Description-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Editable-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-DFProperties-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_ALLOW_UNSIGNED_FILES_1 |
| Friendly Name | Allow .rdp files from unknown publishers |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AllowUnsignedFiles |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-AdmxBacked-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-Examples-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_1-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Begin -->
## TS_CLIENT_ALLOW_UNSIGNED_FILES_2

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Applicability-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_ALLOW_UNSIGNED_FILES_2
```
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-OmaUri-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can run unsigned Remote Desktop Protocol (.rdp) files and .rdp files from unknown publishers on the client computer.

- If you enable or don't configure this policy setting, users can run unsigned .rdp files and .rdp files from unknown publishers on the client computer. Before a user starts an RDP session, the user receives a warning message and is asked to confirm whether they want to connect.

- If you disable this policy setting, users can't run unsigned .rdp files and .rdp files from unknown publishers on the client computer. If the user tries to start an RDP session, the user receives a message that the publisher has been blocked.
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Description-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Editable-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-DFProperties-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_ALLOW_UNSIGNED_FILES_2 |
| Friendly Name | Allow .rdp files from unknown publishers |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AllowUnsignedFiles |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-AdmxBacked-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-Examples-End -->

<!-- TS_CLIENT_ALLOW_UNSIGNED_FILES_2-End -->

<!-- TS_CLIENT_AUDIO-Begin -->
## TS_CLIENT_AUDIO

<!-- TS_CLIENT_AUDIO-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_AUDIO-Applicability-End -->

<!-- TS_CLIENT_AUDIO-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_AUDIO
```
<!-- TS_CLIENT_AUDIO-OmaUri-End -->

<!-- TS_CLIENT_AUDIO-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can redirect the remote computer's audio and video output in a Remote Desktop Services session.

Users can specify where to play the remote computer's audio output by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC). Users can choose to play the remote audio on the remote computer or on the local computer. Users can also choose to not play the audio. Video playback can be configured by using the videoplayback setting in a Remote Desktop Protocol (.rdp) file. By default, video playback is enabled.

By default, audio and video playback redirection isn't allowed when connecting to a computer running Windows Server 2008 R2, Windows Server 2008, or Windows Server 2003. Audio and video playback redirection is allowed by default when connecting to a computer running Windows 8, Windows Server 2012, Windows 7, Windows Vista, or Windows XP Professional.

- If you enable this policy setting, audio and video playback redirection is allowed.

- If you disable this policy setting, audio and video playback redirection isn't allowed, even if audio playback redirection is specified in RDC, or video playback is specified in the .rdp file.

- If you don't configure this policy setting audio and video playback redirection isn't specified at the Group Policy level.
<!-- TS_CLIENT_AUDIO-Description-End -->

<!-- TS_CLIENT_AUDIO-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO-Editable-End -->

<!-- TS_CLIENT_AUDIO-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_AUDIO-DFProperties-End -->

<!-- TS_CLIENT_AUDIO-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_AUDIO |
| Friendly Name | Allow audio and video playback redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableCam |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_AUDIO-AdmxBacked-End -->

<!-- TS_CLIENT_AUDIO-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO-Examples-End -->

<!-- TS_CLIENT_AUDIO-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-Begin -->
## TS_CLIENT_AUDIO_CAPTURE

<!-- TS_CLIENT_AUDIO_CAPTURE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_AUDIO_CAPTURE-Applicability-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_AUDIO_CAPTURE
```
<!-- TS_CLIENT_AUDIO_CAPTURE-OmaUri-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether users can record audio to the remote computer in a Remote Desktop Services session.

Users can specify whether to record audio to the remote computer by configuring the remote audio settings on the Local Resources tab in Remote Desktop Connection (RDC). Users can record audio by using an audio input device on the local computer, such as a built-in microphone.

By default, audio recording redirection isn't allowed when connecting to a computer running Windows Server 2008 R2. Audio recording redirection is allowed by default when connecting to a computer running at least Windows 7, or Windows Server 2008 R2.

- If you enable this policy setting, audio recording redirection is allowed.

- If you disable this policy setting, audio recording redirection isn't allowed, even if audio recording redirection is specified in RDC.

- If you don't configure this policy setting, Audio recording redirection isn't specified at the Group Policy level.
<!-- TS_CLIENT_AUDIO_CAPTURE-Description-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO_CAPTURE-Editable-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_AUDIO_CAPTURE-DFProperties-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_AUDIO_CAPTURE |
| Friendly Name | Allow audio recording redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableAudioCapture |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_AUDIO_CAPTURE-AdmxBacked-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO_CAPTURE-Examples-End -->

<!-- TS_CLIENT_AUDIO_CAPTURE-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-Begin -->
## TS_CLIENT_AUDIO_QUALITY

<!-- TS_CLIENT_AUDIO_QUALITY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_AUDIO_QUALITY-Applicability-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_AUDIO_QUALITY
```
<!-- TS_CLIENT_AUDIO_QUALITY-OmaUri-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to limit the audio playback quality for a Remote Desktop Services session. Limiting the quality of audio playback can improve connection performance, particularly over slow links.

- If you enable this policy setting, you must select one of the following: High, Medium, or Dynamic. If you select High, the audio will be sent without any compression and with minimum latency. This requires a large amount of bandwidth. If you select Medium, the audio will be sent with some compression and with minimum latency as determined by the codec that's being used. If you select Dynamic, the audio will be sent with a level of compression that's determined by the bandwidth of the remote connection.

The audio playback quality that you specify on the remote computer by using this policy setting is the maximum quality that can be used for a Remote Desktop Services session, regardless of the audio playback quality configured on the client computer. For example, if the audio playback quality configured on the client computer is higher than the audio playback quality configured on the remote computer, the lower level of audio playback quality will be used.

Audio playback quality can be configured on the client computer by using the audioqualitymode setting in a Remote Desktop Protocol (.rdp) file. By default, audio playback quality is set to Dynamic.

- If you disable or don't configure this policy setting, audio playback quality will be set to Dynamic.
<!-- TS_CLIENT_AUDIO_QUALITY-Description-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO_QUALITY-Editable-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_AUDIO_QUALITY-DFProperties-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_AUDIO_QUALITY |
| Friendly Name | Limit audio playback quality |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_AUDIO_QUALITY-AdmxBacked-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_AUDIO_QUALITY-Examples-End -->

<!-- TS_CLIENT_AUDIO_QUALITY-End -->

<!-- TS_CLIENT_CLIPBOARD-Begin -->
## TS_CLIENT_CLIPBOARD

<!-- TS_CLIENT_CLIPBOARD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_CLIPBOARD-Applicability-End -->

<!-- TS_CLIENT_CLIPBOARD-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_CLIPBOARD
```
<!-- TS_CLIENT_CLIPBOARD-OmaUri-End -->

<!-- TS_CLIENT_CLIPBOARD-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to prevent the sharing of Clipboard contents (Clipboard redirection) between a remote computer and a client computer during a Remote Desktop Services session.

You can use this setting to prevent users from redirecting Clipboard data to and from the remote computer and the local computer. By default, Remote Desktop Services allows Clipboard redirection.

- If you enable this policy setting, users can't redirect Clipboard data.

- If you disable this policy setting, Remote Desktop Services always allows Clipboard redirection.

- If you don't configure this policy setting, Clipboard redirection isn't specified at the Group Policy level.
<!-- TS_CLIENT_CLIPBOARD-Description-End -->

<!-- TS_CLIENT_CLIPBOARD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_CLIPBOARD-Editable-End -->

<!-- TS_CLIENT_CLIPBOARD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_CLIPBOARD-DFProperties-End -->

<!-- TS_CLIENT_CLIPBOARD-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_CLIPBOARD |
| Friendly Name | Do not allow Clipboard redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableClip |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_CLIPBOARD-AdmxBacked-End -->

<!-- TS_CLIENT_CLIPBOARD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_CLIPBOARD-Examples-End -->

<!-- TS_CLIENT_CLIPBOARD-End -->

<!-- TS_CLIENT_COM-Begin -->
## TS_CLIENT_COM

<!-- TS_CLIENT_COM-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_COM-Applicability-End -->

<!-- TS_CLIENT_COM-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_COM
```
<!-- TS_CLIENT_COM-OmaUri-End -->

<!-- TS_CLIENT_COM-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to prevent the redirection of data to client COM ports from the remote computer in a Remote Desktop Services session.

You can use this setting to prevent users from redirecting data to COM port peripherals or mapping local COM ports while they're logged-on to a Remote Desktop Services session. By default, Remote Desktop Services allows this COM port redirection.

- If you enable this policy setting, users can't redirect server data to the local COM port.

- If you disable this policy setting, Remote Desktop Services always allows COM port redirection.

- If you don't configure this policy setting, COM port redirection isn't specified at the Group Policy level.
<!-- TS_CLIENT_COM-Description-End -->

<!-- TS_CLIENT_COM-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_COM-Editable-End -->

<!-- TS_CLIENT_COM-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_COM-DFProperties-End -->

<!-- TS_CLIENT_COM-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_COM |
| Friendly Name | Do not allow COM port redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableCcm |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_COM-AdmxBacked-End -->

<!-- TS_CLIENT_COM-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_COM-Examples-End -->

<!-- TS_CLIENT_COM-End -->

<!-- TS_CLIENT_DEFAULT_M-Begin -->
## TS_CLIENT_DEFAULT_M

<!-- TS_CLIENT_DEFAULT_M-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_DEFAULT_M-Applicability-End -->

<!-- TS_CLIENT_DEFAULT_M-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_DEFAULT_M
```
<!-- TS_CLIENT_DEFAULT_M-OmaUri-End -->

<!-- TS_CLIENT_DEFAULT_M-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the client default printer is automatically set as the default printer in a session on an RD Session Host server.

By default, Remote Desktop Services automatically designates the client default printer as the default printer in a session on an RD Session Host server. You can use this policy setting to override this behavior.

- If you enable this policy setting, the default printer is the printer specified on the remote computer.

- If you disable this policy setting, the RD Session Host server automatically maps the client default printer and sets it as the default printer upon connection.

- If you don't configure this policy setting, the default printer isn't specified at the Group Policy level.
<!-- TS_CLIENT_DEFAULT_M-Description-End -->

<!-- TS_CLIENT_DEFAULT_M-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_DEFAULT_M-Editable-End -->

<!-- TS_CLIENT_DEFAULT_M-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_DEFAULT_M-DFProperties-End -->

<!-- TS_CLIENT_DEFAULT_M-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_DEFAULT_M |
| Friendly Name | Do not set default client printer to be default printer in a session |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Printer Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fForceClientLptDef |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_DEFAULT_M-AdmxBacked-End -->

<!-- TS_CLIENT_DEFAULT_M-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_DEFAULT_M-Examples-End -->

<!-- TS_CLIENT_DEFAULT_M-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Begin -->
## TS_CLIENT_DISABLE_HARDWARE_MODE

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Applicability-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_DISABLE_HARDWARE_MODE
```
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-OmaUri-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the Remote Desktop Connection can use hardware acceleration if supported hardware is available. If you use this setting, the Remote Desktop Client will use only software decoding. For example, if you have a problem that you suspect may be related to hardware acceleration, use this setting to disable the acceleration; then, if the problem still occurs, you'll know that there are additional issues to investigate. If you disable this setting or leave it not configured, the Remote Desktop client will use hardware accelerated decoding if supported hardware is available.
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Description-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Editable-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-DFProperties-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_DISABLE_HARDWARE_MODE |
| Friendly Name | Do not allow hardware accelerated decoding |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client |
| Registry Value Name | EnableHardwareMode |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-AdmxBacked-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-Examples-End -->

<!-- TS_CLIENT_DISABLE_HARDWARE_MODE-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Begin -->
## TS_CLIENT_DISABLE_PASSWORD_SAVING_1

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Applicability-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_DISABLE_PASSWORD_SAVING_1
```
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-OmaUri-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Controls whether a user can save passwords using Remote Desktop Connection.

- If you enable this setting the credential saving checkbox in Remote Desktop Connection will be disabled and users will no longer be able to save passwords. When a user opens an RDP file using Remote Desktop Connection and saves his settings, any password that previously existed in the RDP file will be deleted.

- If you disable this setting or leave it not configured, the user will be able to save passwords using Remote Desktop Connection.
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Description-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Editable-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-DFProperties-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_DISABLE_PASSWORD_SAVING_1 |
| Friendly Name | Do not allow passwords to be saved |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | DisablePasswordSaving |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-AdmxBacked-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-Examples-End -->

<!-- TS_CLIENT_DISABLE_PASSWORD_SAVING_1-End -->

<!-- TS_CLIENT_LPT-Begin -->
## TS_CLIENT_LPT

<!-- TS_CLIENT_LPT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_LPT-Applicability-End -->

<!-- TS_CLIENT_LPT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_LPT
```
<!-- TS_CLIENT_LPT-OmaUri-End -->

<!-- TS_CLIENT_LPT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to prevent the redirection of data to client LPT ports during a Remote Desktop Services session.

You can use this setting to prevent users from mapping local LPT ports and redirecting data from the remote computer to local LPT port peripherals. By default, Remote Desktop Services allows LPT port redirection.

- If you enable this policy setting, users in a Remote Desktop Services session can't redirect server data to the local LPT port.

- If you disable this policy setting, LPT port redirection is always allowed.

- If you don't configure this policy setting, LPT port redirection isn't specified at the Group Policy level.
<!-- TS_CLIENT_LPT-Description-End -->

<!-- TS_CLIENT_LPT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_LPT-Editable-End -->

<!-- TS_CLIENT_LPT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_LPT-DFProperties-End -->

<!-- TS_CLIENT_LPT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_LPT |
| Friendly Name | Do not allow LPT port redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableLPT |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_LPT-AdmxBacked-End -->

<!-- TS_CLIENT_LPT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_LPT-Examples-End -->

<!-- TS_CLIENT_LPT-End -->

<!-- TS_CLIENT_PNP-Begin -->
## TS_CLIENT_PNP

<!-- TS_CLIENT_PNP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_PNP-Applicability-End -->

<!-- TS_CLIENT_PNP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_PNP
```
<!-- TS_CLIENT_PNP-OmaUri-End -->

<!-- TS_CLIENT_PNP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you control the redirection of supported Plug and Play and RemoteFX USB devices, such as Windows Portable Devices, to the remote computer in a Remote Desktop Services session.

By default, Remote Desktop Services doesn't allow redirection of supported Plug and Play and RemoteFX USB devices.

- If you disable this policy setting, users can redirect their supported Plug and Play devices to the remote computer. Users can use the More option on the Local Resources tab of Remote Desktop Connection to choose the supported Plug and Play devices to redirect to the remote computer.

- If you enable this policy setting, users can't redirect their supported Plug and Play devices to the remote computer.

- If you don't configure this policy setting, users can redirect their supported Plug and Play devices to the remote computer only if it's running Windows Server 2012 R2 and earlier versions.

> [!NOTE]
> You can disable redirection of specific types of supported Plug and Play devices by using Computer Configuration\Administrative Templates\System\Device Installation\Device Installation Restrictions policy settings.
<!-- TS_CLIENT_PNP-Description-End -->

<!-- TS_CLIENT_PNP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_PNP-Editable-End -->

<!-- TS_CLIENT_PNP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_PNP-DFProperties-End -->

<!-- TS_CLIENT_PNP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_PNP |
| Friendly Name | Do not allow supported Plug and Play device redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisablePNPRedir |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_PNP-AdmxBacked-End -->

<!-- TS_CLIENT_PNP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_PNP-Examples-End -->

<!-- TS_CLIENT_PNP-End -->

<!-- TS_CLIENT_PRINTER-Begin -->
## TS_CLIENT_PRINTER

<!-- TS_CLIENT_PRINTER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_PRINTER-Applicability-End -->

<!-- TS_CLIENT_PRINTER-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_PRINTER
```
<!-- TS_CLIENT_PRINTER-OmaUri-End -->

<!-- TS_CLIENT_PRINTER-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether to prevent the mapping of client printers in Remote Desktop Services sessions.

You can use this policy setting to prevent users from redirecting print jobs from the remote computer to a printer attached to their local (client) computer. By default, Remote Desktop Services allows this client printer mapping.

- If you enable this policy setting, users can't redirect print jobs from the remote computer to a local client printer in Remote Desktop Services sessions.

- If you disable this policy setting, users can redirect print jobs with client printer mapping.

- If you don't configure this policy setting, client printer mapping isn't specified at the Group Policy level.
<!-- TS_CLIENT_PRINTER-Description-End -->

<!-- TS_CLIENT_PRINTER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_PRINTER-Editable-End -->

<!-- TS_CLIENT_PRINTER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_PRINTER-DFProperties-End -->

<!-- TS_CLIENT_PRINTER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_PRINTER |
| Friendly Name | Do not allow client printer redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Printer Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableCpm |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_PRINTER-AdmxBacked-End -->

<!-- TS_CLIENT_PRINTER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_PRINTER-Examples-End -->

<!-- TS_CLIENT_PRINTER-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Begin -->
## TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Applicability-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1
```
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-OmaUri-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Secure Hash Algorithm 1 (SHA1) certificate thumbprints that represent trusted Remote Desktop Protocol (.rdp) file publishers.

- If you enable this policy setting, any certificate with an SHA1 thumbprint that matches a thumbprint on the list is trusted. If a user tries to start an .rdp file that's signed by a trusted certificate, the user doesn't receive any warning messages when they start the file. To obtain the thumbprint, view the certificate details, and then click the Thumbprint field.

- If you disable or don't configure this policy setting, no publisher is treated as a trusted .rdp publisher.

> [!NOTE]
> You can define this policy setting in the Computer Configuration node or in the User Configuration node.

- If you configure this policy setting for the computer, the list of certificate thumbprints trusted for a user is a combination of the list defined for the computer and the list defined for the user.

This policy setting overrides the behavior of the "Allow .rdp files from valid publishers and user's default .rdp settings" policy setting.

If the list contains a string that isn't a certificate thumbprint, it's ignored.
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Description-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Editable-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-DFProperties-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1 |
| Friendly Name | Specify SHA1 thumbprints of certificates representing trusted .rdp publishers |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-AdmxBacked-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-Examples-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_1-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Begin -->
## TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Applicability-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2
```
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-OmaUri-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify a list of Secure Hash Algorithm 1 (SHA1) certificate thumbprints that represent trusted Remote Desktop Protocol (.rdp) file publishers.

- If you enable this policy setting, any certificate with an SHA1 thumbprint that matches a thumbprint on the list is trusted. If a user tries to start an .rdp file that's signed by a trusted certificate, the user doesn't receive any warning messages when they start the file. To obtain the thumbprint, view the certificate details, and then click the Thumbprint field.

- If you disable or don't configure this policy setting, no publisher is treated as a trusted .rdp publisher.

> [!NOTE]
> You can define this policy setting in the Computer Configuration node or in the User Configuration node.

- If you configure this policy setting for the computer, the list of certificate thumbprints trusted for a user is a combination of the list defined for the computer and the list defined for the user.

This policy setting overrides the behavior of the "Allow .rdp files from valid publishers and user's default .rdp settings" policy setting.

If the list contains a string that isn't a certificate thumbprint, it's ignored.
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Description-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Editable-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-DFProperties-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2 |
| Friendly Name | Specify SHA1 thumbprints of certificates representing trusted .rdp publishers |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-AdmxBacked-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-Examples-End -->

<!-- TS_CLIENT_TRUSTED_CERTIFICATE_THUMBPRINTS_2-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-Begin -->
## TS_CLIENT_TURN_OFF_UDP

<!-- TS_CLIENT_TURN_OFF_UDP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_CLIENT_TURN_OFF_UDP-Applicability-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_CLIENT_TURN_OFF_UDP
```
<!-- TS_CLIENT_TURN_OFF_UDP-OmaUri-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether the UDP protocol will be used to access servers via Remote Desktop Protocol.

- If you enable this policy setting, Remote Desktop Protocol traffic will only use the TCP protocol.

- If you disable or don't configure this policy setting, Remote Desktop Protocol traffic will attempt to use both TCP and UDP protocols.
<!-- TS_CLIENT_TURN_OFF_UDP-Description-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_CLIENT_TURN_OFF_UDP-Editable-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_CLIENT_TURN_OFF_UDP-DFProperties-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_CLIENT_TURN_OFF_UDP |
| Friendly Name | Turn Off UDP On Client |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client |
| Registry Value Name | fClientDisableUDP |
| ADMX File Name | TerminalServer.admx |
<!-- TS_CLIENT_TURN_OFF_UDP-AdmxBacked-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_CLIENT_TURN_OFF_UDP-Examples-End -->

<!-- TS_CLIENT_TURN_OFF_UDP-End -->

<!-- TS_COLORDEPTH-Begin -->
## TS_COLORDEPTH

<!-- TS_COLORDEPTH-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_COLORDEPTH-Applicability-End -->

<!-- TS_COLORDEPTH-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_COLORDEPTH
```
<!-- TS_COLORDEPTH-OmaUri-End -->

<!-- TS_COLORDEPTH-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum color resolution (color depth) for Remote Desktop Services connections.

You can use this policy setting to set a limit on the color depth of any connection that uses RDP. Limiting the color depth can improve connection performance, particularly over slow links, and reduce server load.

- If you enable this policy setting, the color depth that you specify is the maximum color depth allowed for a user's RDP connection. The actual color depth for the connection is determined by the color support available on the client computer. If you select Client Compatible, the highest color depth supported by the client will be used.

- If you disable or don't configure this policy setting, the color depth for connections isn't specified at the Group Policy level.

Note:

1. Setting the color depth to 24 bits is only supported on Windows Server 2003 and Windows XP Professional.

1. The value specified in this policy setting isn't applied to connections from client computers that are using at least Remote Desktop Protocol 8.0 (computers running at least Windows 8 or Windows Server 2012). The 32-bit color depth format is always used for these connections.

1. For connections from client computers that are using Remote Desktop Protocol 7.1 or earlier versions that are connecting to computers running at least Windows 8 or Windows Server 2012, the minimum of the following values is used as the color depth format:

a.	Value specified by this policy setting b.	Maximum color depth supported by the client c.	Value requested by the client.

If the client doesn't support at least 16 bits, the connection is terminated.
<!-- TS_COLORDEPTH-Description-End -->

<!-- TS_COLORDEPTH-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_COLORDEPTH-Editable-End -->

<!-- TS_COLORDEPTH-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_COLORDEPTH-DFProperties-End -->

<!-- TS_COLORDEPTH-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_COLORDEPTH |
| Friendly Name | Limit maximum color depth |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_COLORDEPTH-AdmxBacked-End -->

<!-- TS_COLORDEPTH-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_COLORDEPTH-Examples-End -->

<!-- TS_COLORDEPTH-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-Begin -->
## TS_DELETE_ROAMING_USER_PROFILES

<!-- TS_DELETE_ROAMING_USER_PROFILES-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_DELETE_ROAMING_USER_PROFILES-Applicability-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_DELETE_ROAMING_USER_PROFILES
```
<!-- TS_DELETE_ROAMING_USER_PROFILES-OmaUri-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to limit the size of the entire roaming user profile cache on the local drive. This policy setting only applies to a computer on which the Remote Desktop Session Host role service is installed.

> [!NOTE]
> If you want to limit the size of an individual user profile, use the "Limit profile size" policy setting located in User Configuration\Policies\Administrative Templates\System\User Profiles.

- If you enable this policy setting, you must specify a monitoring interval (in minutes) and a maximum size (in gigabytes) for the entire roaming user profile cache. The monitoring interval determines how often the size of the entire roaming user profile cache is checked. When the size of the entire roaming user profile cache exceeds the maximum size that you have specified, the oldest (least recently used) roaming user profiles will be deleted until the size of the entire roaming user profile cache is less than the maximum size specified.

- If you disable or don't configure this policy setting, no restriction is placed on the size of the entire roaming user profile cache on the local drive.

> [!NOTE]
> This policy setting is ignored if the "Prevent Roaming Profile changes from propagating to the server" policy setting located in Computer Configuration\Policies\Administrative Templates\System\User Profiles is enabled.
<!-- TS_DELETE_ROAMING_USER_PROFILES-Description-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_DELETE_ROAMING_USER_PROFILES-Editable-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_DELETE_ROAMING_USER_PROFILES-DFProperties-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_DELETE_ROAMING_USER_PROFILES |
| Friendly Name | Limit the size of the entire roaming user profile cache |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Profiles |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | DeleteRoamingUserProfile |
| ADMX File Name | TerminalServer.admx |
<!-- TS_DELETE_ROAMING_USER_PROFILES-AdmxBacked-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_DELETE_ROAMING_USER_PROFILES-Examples-End -->

<!-- TS_DELETE_ROAMING_USER_PROFILES-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Begin -->
## TS_DISABLE_REMOTE_DESKTOP_WALLPAPER

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Applicability-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_DISABLE_REMOTE_DESKTOP_WALLPAPER
```
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-OmaUri-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether desktop wallpaper is displayed to remote clients connecting via Remote Desktop Services.

You can use this setting to enforce the removal of wallpaper during a Remote Desktop Services session. By default, Windows XP Professional displays wallpaper to remote clients connecting through Remote Desktop, depending on the client configuration (see the Experience tab in the Remote Desktop Connection options for more information). Servers running Windows Server 2003 don't display wallpaper by default to Remote Desktop Services sessions.

If the status is set to Enabled, wallpaper never appears in a Remote Desktop Services session.

If the status is set to Disabled, wallpaper might appear in a Remote Desktop Services session, depending on the client configuration.

If the status is set to Not Configured, the default behavior applies.
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Description-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Editable-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-DFProperties-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_DISABLE_REMOTE_DESKTOP_WALLPAPER |
| Friendly Name | Enforce Removal of Remote Desktop Wallpaper |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fNoRemoteDesktopWallpaper |
| ADMX File Name | TerminalServer.admx |
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-AdmxBacked-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-Examples-End -->

<!-- TS_DISABLE_REMOTE_DESKTOP_WALLPAPER-End -->

<!-- TS_DX_USE_FULL_HWGPU-Begin -->
## TS_DX_USE_FULL_HWGPU

<!-- TS_DX_USE_FULL_HWGPU-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_DX_USE_FULL_HWGPU-Applicability-End -->

<!-- TS_DX_USE_FULL_HWGPU-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_DX_USE_FULL_HWGPU
```
<!-- TS_DX_USE_FULL_HWGPU-OmaUri-End -->

<!-- TS_DX_USE_FULL_HWGPU-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting enables system administrators to change the graphics rendering for all Remote Desktop Services sessions.

- If you enable this policy setting, all Remote Desktop Services sessions use the hardware graphics renderer instead of the Microsoft Basic Render Driver as the default adapter.

- If you disable this policy setting, all Remote Desktop Services sessions use the Microsoft Basic Render Driver as the default adapter.

- If you don't configure this policy setting, Remote Desktop Services sessions on the RD Session Host server use the Microsoft Basic Render Driver as the default adapter. In all other cases, Remote Desktop Services sessions use the hardware graphics renderer by default.

> [!NOTE]
> The policy setting enables load-balancing of graphics processing units (GPU) on a computer with more than one GPU installed. The GPU configuration of the local session isn't affected by this policy setting.
<!-- TS_DX_USE_FULL_HWGPU-Description-End -->

<!-- TS_DX_USE_FULL_HWGPU-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_DX_USE_FULL_HWGPU-Editable-End -->

<!-- TS_DX_USE_FULL_HWGPU-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_DX_USE_FULL_HWGPU-DFProperties-End -->

<!-- TS_DX_USE_FULL_HWGPU-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_DX_USE_FULL_HWGPU |
| Friendly Name | Use hardware graphics adapters for all Remote Desktop Services sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | bEnumerateHWBeforeSW |
| ADMX File Name | TerminalServer.admx |
<!-- TS_DX_USE_FULL_HWGPU-AdmxBacked-End -->

<!-- TS_DX_USE_FULL_HWGPU-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_DX_USE_FULL_HWGPU-Examples-End -->

<!-- TS_DX_USE_FULL_HWGPU-End -->

<!-- TS_EASY_PRINT-Begin -->
## TS_EASY_PRINT

<!-- TS_EASY_PRINT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_EASY_PRINT-Applicability-End -->

<!-- TS_EASY_PRINT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_EASY_PRINT
```
<!-- TS_EASY_PRINT-OmaUri-End -->

<!-- TS_EASY_PRINT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the Remote Desktop Easy Print printer driver is used first to install all client printers.

- If you enable or don't configure this policy setting, the RD Session Host server first tries to use the Remote Desktop Easy Print printer driver to install all client printers. If for any reason the Remote Desktop Easy Print printer driver can't be used, a printer driver on the RD Session Host server that matches the client printer is used. If the RD Session Host server doesn't have a printer driver that matches the client printer, the client printer isn't available for the Remote Desktop session.

- If you disable this policy setting, the RD Session Host server tries to find a suitable printer driver to install the client printer. If the RD Session Host server doesn't have a printer driver that matches the client printer, the server tries to use the Remote Desktop Easy Print driver to install the client printer. If for any reason the Remote Desktop Easy Print printer driver can't be used, the client printer isn't available for the Remote Desktop Services session.

> [!NOTE]
> If the "Do not allow client printer redirection" policy setting is enabled, the "Use Remote Desktop Easy Print printer driver first" policy setting is ignored.
<!-- TS_EASY_PRINT-Description-End -->

<!-- TS_EASY_PRINT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_EASY_PRINT-Editable-End -->

<!-- TS_EASY_PRINT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_EASY_PRINT-DFProperties-End -->

<!-- TS_EASY_PRINT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_EASY_PRINT |
| Friendly Name | Use Remote Desktop Easy Print printer driver first |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Printer Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UseUniversalPrinterDriverFirst |
| ADMX File Name | TerminalServer.admx |
<!-- TS_EASY_PRINT-AdmxBacked-End -->

<!-- TS_EASY_PRINT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_EASY_PRINT-Examples-End -->

<!-- TS_EASY_PRINT-End -->

<!-- TS_EASY_PRINT_User-Begin -->
## TS_EASY_PRINT_User

<!-- TS_EASY_PRINT_User-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_EASY_PRINT_User-Applicability-End -->

<!-- TS_EASY_PRINT_User-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_EASY_PRINT_User
```
<!-- TS_EASY_PRINT_User-OmaUri-End -->

<!-- TS_EASY_PRINT_User-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the Remote Desktop Easy Print printer driver is used first to install all client printers.

- If you enable or don't configure this policy setting, the RD Session Host server first tries to use the Remote Desktop Easy Print printer driver to install all client printers. If for any reason the Remote Desktop Easy Print printer driver can't be used, a printer driver on the RD Session Host server that matches the client printer is used. If the RD Session Host server doesn't have a printer driver that matches the client printer, the client printer isn't available for the Remote Desktop session.

- If you disable this policy setting, the RD Session Host server tries to find a suitable printer driver to install the client printer. If the RD Session Host server doesn't have a printer driver that matches the client printer, the server tries to use the Remote Desktop Easy Print driver to install the client printer. If for any reason the Remote Desktop Easy Print printer driver can't be used, the client printer isn't available for the Remote Desktop Services session.

> [!NOTE]
> If the "Do not allow client printer redirection" policy setting is enabled, the "Use Remote Desktop Easy Print printer driver first" policy setting is ignored.
<!-- TS_EASY_PRINT_User-Description-End -->

<!-- TS_EASY_PRINT_User-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_EASY_PRINT_User-Editable-End -->

<!-- TS_EASY_PRINT_User-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_EASY_PRINT_User-DFProperties-End -->

<!-- TS_EASY_PRINT_User-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_EASY_PRINT_User |
| Friendly Name | Use Remote Desktop Easy Print printer driver first |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Printer Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UseUniversalPrinterDriverFirst |
| ADMX File Name | TerminalServer.admx |
<!-- TS_EASY_PRINT_User-AdmxBacked-End -->

<!-- TS_EASY_PRINT_User-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_EASY_PRINT_User-Examples-End -->

<!-- TS_EASY_PRINT_User-End -->

<!-- TS_EnableVirtualGraphics-Begin -->
## TS_EnableVirtualGraphics

<!-- TS_EnableVirtualGraphics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_EnableVirtualGraphics-Applicability-End -->

<!-- TS_EnableVirtualGraphics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_EnableVirtualGraphics
```
<!-- TS_EnableVirtualGraphics-OmaUri-End -->

<!-- TS_EnableVirtualGraphics-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the availability of RemoteFX on both a Remote Desktop Virtualization Host (RD Virtualization Host) server and a Remote Desktop Session Host (RD Session Host) server.

When deployed on an RD Virtualization Host server, RemoteFX delivers a rich user experience by rendering content on the server by using graphics processing units (GPUs). By default, RemoteFX for RD Virtualization Host uses server-side GPUs to deliver a rich user experience over LAN connections and RDP 7.1.

When deployed on an RD Session Host server, RemoteFX delivers a rich user experience by using a hardware-accelerated compression scheme.

- If you enable this policy setting, RemoteFX will be used to deliver a rich user experience over LAN connections and RDP 7.1.

- If you disable this policy setting, RemoteFX will be disabled.

- If you don't configure this policy setting, the default behavior will be used. By default, RemoteFX for RD Virtualization Host is enabled and RemoteFX for RD Session Host is disabled.
<!-- TS_EnableVirtualGraphics-Description-End -->

<!-- TS_EnableVirtualGraphics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_EnableVirtualGraphics-Editable-End -->

<!-- TS_EnableVirtualGraphics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_EnableVirtualGraphics-DFProperties-End -->

<!-- TS_EnableVirtualGraphics-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_EnableVirtualGraphics |
| Friendly Name | Configure RemoteFX |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment > RemoteFX for Windows Server 2008 R2 |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableVirtualizedGraphics |
| ADMX File Name | TerminalServer.admx |
<!-- TS_EnableVirtualGraphics-AdmxBacked-End -->

<!-- TS_EnableVirtualGraphics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_EnableVirtualGraphics-Examples-End -->

<!-- TS_EnableVirtualGraphics-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-Begin -->
## TS_FALLBACKPRINTDRIVERTYPE

<!-- TS_FALLBACKPRINTDRIVERTYPE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_FALLBACKPRINTDRIVERTYPE-Applicability-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_FALLBACKPRINTDRIVERTYPE
```
<!-- TS_FALLBACKPRINTDRIVERTYPE-OmaUri-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the RD Session Host server fallback printer driver behavior.

By default, the RD Session Host server fallback printer driver is disabled. If the RD Session Host server doesn't have a printer driver that matches the client's printer, no printer will be available for the Remote Desktop Services session.

- If you enable this policy setting, the fallback printer driver is enabled, and the default behavior is for the RD Session Host server to find a suitable printer driver. If one isn't found, the client's printer isn't available. You can choose to change this default behavior. The available options are:

"Do nothing if one isn't found" - If there is a printer driver mismatch, the server will attempt to find a suitable driver. If one isn't found, the client's printer isn't available. This is the default behavior.

"Default to PCL if one isn't found" - If no suitable printer driver can be found, default to the Printer Control Language (PCL) fallback printer driver.

"Default to PS if one isn't found" - If no suitable printer driver can be found, default to the PostScript (PS) fallback printer driver.

"Show both PCL and PS if one isn't found" - If no suitable driver can be found, show both PS and PCL-based fallback printer drivers.

- If you disable this policy setting, the RD Session Host server fallback driver is disabled and the RD Session Host server won't attempt to use the fallback printer driver.

- If you don't configure this policy setting, the fallback printer driver behavior is off by default.

> [!NOTE]
> If the "Do not allow client printer redirection" setting is enabled, this policy setting is ignored and the fallback printer driver is disabled.
<!-- TS_FALLBACKPRINTDRIVERTYPE-Description-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_FALLBACKPRINTDRIVERTYPE-Editable-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_FALLBACKPRINTDRIVERTYPE-DFProperties-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_FALLBACKPRINTDRIVERTYPE |
| Friendly Name | Specify RD Session Host server fallback printer driver behavior |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Printer Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fPolicyFallbackPrintDriver |
| ADMX File Name | TerminalServer.admx |
<!-- TS_FALLBACKPRINTDRIVERTYPE-AdmxBacked-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_FALLBACKPRINTDRIVERTYPE-Examples-End -->

<!-- TS_FALLBACKPRINTDRIVERTYPE-End -->

<!-- TS_FORCIBLE_LOGOFF-Begin -->
## TS_FORCIBLE_LOGOFF

<!-- TS_FORCIBLE_LOGOFF-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_FORCIBLE_LOGOFF-Applicability-End -->

<!-- TS_FORCIBLE_LOGOFF-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_FORCIBLE_LOGOFF
```
<!-- TS_FORCIBLE_LOGOFF-OmaUri-End -->

<!-- TS_FORCIBLE_LOGOFF-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether an administrator attempting to connect remotely to the console of a server can log off an administrator currently logged-on to the console.

This policy is useful when the currently connected administrator doesn't want to be logged off by another administrator. If the connected administrator is logged off, any data not previously saved is lost.

- If you enable this policy setting, logging off the connected administrator isn't allowed.

- If you disable or don't configure this policy setting, logging off the connected administrator is allowed.

> [!NOTE]
> The console session is also known as Session 0. Console access can be obtained by using the /console switch from Remote Desktop Connection in the computer field name or from the command line.
<!-- TS_FORCIBLE_LOGOFF-Description-End -->

<!-- TS_FORCIBLE_LOGOFF-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_FORCIBLE_LOGOFF-Editable-End -->

<!-- TS_FORCIBLE_LOGOFF-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_FORCIBLE_LOGOFF-DFProperties-End -->

<!-- TS_FORCIBLE_LOGOFF-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_FORCIBLE_LOGOFF |
| Friendly Name | Deny logoff of an administrator logged in to the console session |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fDisableForcibleLogoff |
| ADMX File Name | TerminalServer.admx |
<!-- TS_FORCIBLE_LOGOFF-AdmxBacked-End -->

<!-- TS_FORCIBLE_LOGOFF-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_FORCIBLE_LOGOFF-Examples-End -->

<!-- TS_FORCIBLE_LOGOFF-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Begin -->
## TS_GATEWAY_POLICY_AUTH_METHOD

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Applicability-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_GATEWAY_POLICY_AUTH_METHOD
```
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-OmaUri-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the authentication method that clients must use when attempting to connect to an RD Session Host server through an RD Gateway server. You can enforce this policy setting or you can allow users to overwrite this policy setting. By default, when you enable this policy setting, it's enforced. When this policy setting is enforced, users can't override this setting, even if they select the "Use these RD Gateway server settings" option on the client.

To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box. When you do this, users can specify an alternate authentication method by configuring settings on the client, using an RDP file, or using an HTML script. If users don't specify an alternate authentication method, the authentication method that you specify in this policy setting is used by default.

If you disable or don't configure this policy setting, the authentication method that's specified by the user is used, if one is specified. If an authentication method isn't specified, the Negotiate protocol that's enabled on the client or a smart card can be used for authentication.
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Description-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Editable-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-DFProperties-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_GATEWAY_POLICY_AUTH_METHOD |
| Friendly Name | Set RD Gateway authentication method |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > RD Gateway |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-AdmxBacked-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_AUTH_METHOD-Examples-End -->

<!-- TS_GATEWAY_POLICY_AUTH_METHOD-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-Begin -->
## TS_GATEWAY_POLICY_ENABLE

<!-- TS_GATEWAY_POLICY_ENABLE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_GATEWAY_POLICY_ENABLE-Applicability-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_GATEWAY_POLICY_ENABLE
```
<!-- TS_GATEWAY_POLICY_ENABLE-OmaUri-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting, when Remote Desktop Connection can't connect directly to a remote computer (an RD Session Host server or a computer with Remote Desktop enabled), the clients will attempt to connect to the remote computer through an RD Gateway server. In this case, the clients will attempt to connect to the RD Gateway server that's specified in the "Set RD Gateway server address" policy setting.

You can enforce this policy setting or you can allow users to overwrite this setting. By default, when you enable this policy setting, it's enforced. When this policy setting is enforced, users can't override this setting, even if they select the "Use these RD Gateway server settings" option on the client.

> [!NOTE]
> To enforce this policy setting, you must also specify the address of the RD Gateway server by using the "Set RD Gateway server address" policy setting, or client connection attempts to any remote computer will fail, if the client can't connect directly to the remote computer. To enhance security, it's also highly recommended that you specify the authentication method by using the "Set RD Gateway authentication method" policy setting. If you don't specify an authentication method by using this policy setting, either the NTLM protocol that's enabled on the client or a smart card can be used.

To allow users to overwrite this policy setting, select the "Allow users to change this setting" check box. When you do this, users on the client can choose not to connect through the RD Gateway server by selecting the "Do not use an RD Gateway server" option. Users can specify a connection method by configuring settings on the client, using an RDP file, or using an HTML script. If users don't specify a connection method, the connection method that you specify in this policy setting is used by default.

- If you disable or don't configure this policy setting, clients won't use the RD Gateway server address that's specified in the "Set RD Gateway server address" policy setting. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.
<!-- TS_GATEWAY_POLICY_ENABLE-Description-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_ENABLE-Editable-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_GATEWAY_POLICY_ENABLE-DFProperties-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_GATEWAY_POLICY_ENABLE |
| Friendly Name | Enable connection through RD Gateway |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > RD Gateway |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UseProxy |
| ADMX File Name | TerminalServer.admx |
<!-- TS_GATEWAY_POLICY_ENABLE-AdmxBacked-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_ENABLE-Examples-End -->

<!-- TS_GATEWAY_POLICY_ENABLE-End -->

<!-- TS_GATEWAY_POLICY_SERVER-Begin -->
## TS_GATEWAY_POLICY_SERVER

<!-- TS_GATEWAY_POLICY_SERVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_GATEWAY_POLICY_SERVER-Applicability-End -->

<!-- TS_GATEWAY_POLICY_SERVER-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_GATEWAY_POLICY_SERVER
```
<!-- TS_GATEWAY_POLICY_SERVER-OmaUri-End -->

<!-- TS_GATEWAY_POLICY_SERVER-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies the address of the RD Gateway server that clients must use when attempting to connect to an RD Session Host server. You can enforce this policy setting or you can allow users to overwrite this policy setting. By default, when you enable this policy setting, it's enforced. When this policy setting is enforced, users can't override this setting, even if they select the "Use these RD Gateway server settings" option on the client.

> [!NOTE]
> It's highly recommended that you also specify the authentication method by using the "Set RD Gateway authentication method" policy setting. If you don't specify an authentication method by using this setting, either the NTLM protocol that's enabled on the client or a smart card can be used.

To allow users to overwrite the "Set RD Gateway server address" policy setting and connect to another RD Gateway server, you must select the "Allow users to change this setting" check box and users will be allowed to specify an alternate RD Gateway server. Users can specify an alternative RD Gateway server by configuring settings on the client, using an RDP file, or using an HTML script. If users don't specify an alternate RD Gateway server, the server that you specify in this policy setting is used by default.

> [!NOTE]
> If you disable or don't configure this policy setting, but enable the "Enable connections through RD Gateway" policy setting, client connection attempts to any remote computer will fail, if the client can't connect directly to the remote computer. If an RD Gateway server is specified by the user, a client connection attempt will be made through that RD Gateway server.
<!-- TS_GATEWAY_POLICY_SERVER-Description-End -->

<!-- TS_GATEWAY_POLICY_SERVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_SERVER-Editable-End -->

<!-- TS_GATEWAY_POLICY_SERVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_GATEWAY_POLICY_SERVER-DFProperties-End -->

<!-- TS_GATEWAY_POLICY_SERVER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_GATEWAY_POLICY_SERVER |
| Friendly Name | Set RD Gateway server address |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > RD Gateway |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_GATEWAY_POLICY_SERVER-AdmxBacked-End -->

<!-- TS_GATEWAY_POLICY_SERVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_GATEWAY_POLICY_SERVER-Examples-End -->

<!-- TS_GATEWAY_POLICY_SERVER-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-Begin -->
## TS_JOIN_SESSION_DIRECTORY

<!-- TS_JOIN_SESSION_DIRECTORY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_JOIN_SESSION_DIRECTORY-Applicability-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_JOIN_SESSION_DIRECTORY
```
<!-- TS_JOIN_SESSION_DIRECTORY-OmaUri-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the RD Session Host server should join a farm in RD Connection Broker. RD Connection Broker tracks user sessions and allows a user to reconnect to their existing session in a load-balanced RD Session Host server farm. To participate in RD Connection Broker, the Remote Desktop Session Host role service must be installed on the server.

- If the policy setting is enabled, the RD Session Host server joins the farm that's specified in the RD Connection Broker farm name policy setting. The farm exists on the RD Connection Broker server that's specified in the Configure RD Connection Broker server name policy setting.

- If you disable this policy setting, the server doesn't join a farm in RD Connection Broker, and user session tracking isn't performed.

- If the policy setting is disabled, you can't use either the Remote Desktop Session Host Configuration tool or the Remote Desktop Services WMI Provider to join the server to RD Connection Broker.

If the policy setting isn't configured, the policy setting isn't specified at the Group Policy level.

Note:

1. - If you enable this policy setting, you must also enable the Configure RD Connection Broker farm name and Configure RD Connection Broker server name policy settings.

1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
<!-- TS_JOIN_SESSION_DIRECTORY-Description-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_JOIN_SESSION_DIRECTORY-Editable-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_JOIN_SESSION_DIRECTORY-DFProperties-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_JOIN_SESSION_DIRECTORY |
| Friendly Name | Join RD Connection Broker |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > RD Connection Broker |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | SessionDirectoryActive |
| ADMX File Name | TerminalServer.admx |
<!-- TS_JOIN_SESSION_DIRECTORY-AdmxBacked-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_JOIN_SESSION_DIRECTORY-Examples-End -->

<!-- TS_JOIN_SESSION_DIRECTORY-End -->

<!-- TS_KEEP_ALIVE-Begin -->
## TS_KEEP_ALIVE

<!-- TS_KEEP_ALIVE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_KEEP_ALIVE-Applicability-End -->

<!-- TS_KEEP_ALIVE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_KEEP_ALIVE
```
<!-- TS_KEEP_ALIVE-OmaUri-End -->

<!-- TS_KEEP_ALIVE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enter a keep-alive interval to ensure that the session state on the RD Session Host server is consistent with the client state.

After an RD Session Host server client loses the connection to an RD Session Host server, the session on the RD Session Host server might remain active instead of changing to a disconnected state, even if the client is physically disconnected from the RD Session Host server. If the client logs on to the same RD Session Host server again, a new session might be established (if the RD Session Host server is configured to allow multiple sessions), and the original session might still be active.

- If you enable this policy setting, you must enter a keep-alive interval. The keep-alive interval determines how often, in minutes, the server checks the session state. The range of values you can enter is 1 to 999,999.

- If you disable or don't configure this policy setting, a keep-alive interval isn't set and the server won't check the session state.
<!-- TS_KEEP_ALIVE-Description-End -->

<!-- TS_KEEP_ALIVE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_KEEP_ALIVE-Editable-End -->

<!-- TS_KEEP_ALIVE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_KEEP_ALIVE-DFProperties-End -->

<!-- TS_KEEP_ALIVE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_KEEP_ALIVE |
| Friendly Name | Configure keep-alive connection interval |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | KeepAliveEnable |
| ADMX File Name | TerminalServer.admx |
<!-- TS_KEEP_ALIVE-AdmxBacked-End -->

<!-- TS_KEEP_ALIVE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_KEEP_ALIVE-Examples-End -->

<!-- TS_KEEP_ALIVE-End -->

<!-- TS_LICENSE_SECGROUP-Begin -->
## TS_LICENSE_SECGROUP

<!-- TS_LICENSE_SECGROUP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_LICENSE_SECGROUP-Applicability-End -->

<!-- TS_LICENSE_SECGROUP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_LICENSE_SECGROUP
```
<!-- TS_LICENSE_SECGROUP-OmaUri-End -->

<!-- TS_LICENSE_SECGROUP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the RD Session Host servers to which a Remote Desktop license server will offer Remote Desktop Services client access licenses (RDS CALs).

You can use this policy setting to control which RD Session Host servers are issued RDS CALs by the Remote Desktop license server. By default, a license server issues an RDS CAL to any RD Session Host server that requests one.

- If you enable this policy setting and this policy setting is applied to a Remote Desktop license server, the license server will only respond to RDS CAL requests from RD Session Host servers whose computer accounts are a member of the RDS Endpoint Servers group on the license server.

By default, the RDS Endpoint Servers group is empty.

- If you disable or don't configure this policy setting, the Remote Desktop license server issues an RDS CAL to any RD Session Host server that requests one. The RDS Endpoint Servers group isn't deleted or changed in any way by disabling or not configuring this policy setting.

> [!NOTE]
> You should only enable this policy setting when the license server is a member of a domain. You can only add computer accounts for RD Session Host servers to the RDS Endpoint Servers group when the license server is a member of a domain.
<!-- TS_LICENSE_SECGROUP-Description-End -->

<!-- TS_LICENSE_SECGROUP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_LICENSE_SECGROUP-Editable-End -->

<!-- TS_LICENSE_SECGROUP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_LICENSE_SECGROUP-DFProperties-End -->

<!-- TS_LICENSE_SECGROUP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_LICENSE_SECGROUP |
| Friendly Name | License server security group |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > RD Licensing |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fSecureLicensing |
| ADMX File Name | TerminalServer.admx |
<!-- TS_LICENSE_SECGROUP-AdmxBacked-End -->

<!-- TS_LICENSE_SECGROUP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_LICENSE_SECGROUP-Examples-End -->

<!-- TS_LICENSE_SECGROUP-End -->

<!-- TS_LICENSE_SERVERS-Begin -->
## TS_LICENSE_SERVERS

<!-- TS_LICENSE_SERVERS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_LICENSE_SERVERS-Applicability-End -->

<!-- TS_LICENSE_SERVERS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_LICENSE_SERVERS
```
<!-- TS_LICENSE_SERVERS-OmaUri-End -->

<!-- TS_LICENSE_SERVERS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the order in which an RD Session Host server attempts to locate Remote Desktop license servers.

- If you enable this policy setting, an RD Session Host server first attempts to locate the specified license servers. If the specified license servers can't be located, the RD Session Host server will attempt automatic license server discovery. In the automatic license server discovery process, an RD Session Host server in a Windows Server-based domain attempts to contact a license server in the following order:

1. Remote Desktop license servers that are published in Active Directory Domain Services.

1. Remote Desktop license servers that are installed on domain controllers in the same domain as the RD Session Host server.

- If you disable or don't configure this policy setting, the RD Session Host server doesn't specify a license server at the Group Policy level.
<!-- TS_LICENSE_SERVERS-Description-End -->

<!-- TS_LICENSE_SERVERS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_LICENSE_SERVERS-Editable-End -->

<!-- TS_LICENSE_SERVERS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_LICENSE_SERVERS-DFProperties-End -->

<!-- TS_LICENSE_SERVERS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_LICENSE_SERVERS |
| Friendly Name | Use the specified Remote Desktop license servers |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Licensing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_LICENSE_SERVERS-AdmxBacked-End -->

<!-- TS_LICENSE_SERVERS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_LICENSE_SERVERS-Examples-End -->

<!-- TS_LICENSE_SERVERS-End -->

<!-- TS_LICENSE_TOOLTIP-Begin -->
## TS_LICENSE_TOOLTIP

<!-- TS_LICENSE_TOOLTIP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_LICENSE_TOOLTIP-Applicability-End -->

<!-- TS_LICENSE_TOOLTIP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_LICENSE_TOOLTIP
```
<!-- TS_LICENSE_TOOLTIP-OmaUri-End -->

<!-- TS_LICENSE_TOOLTIP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether notifications are displayed on an RD Session Host server when there are problems with RD Licensing that affect the RD Session Host server.

By default, notifications are displayed on an RD Session Host server after you log on as a local administrator, if there are problems with RD Licensing that affect the RD Session Host server. If applicable, a notification will also be displayed that notes the number of days until the licensing grace period for the RD Session Host server will expire.

- If you enable this policy setting, these notifications won't be displayed on the RD Session Host server.

- If you disable or don't configure this policy setting, these notifications will be displayed on the RD Session Host server after you log on as a local administrator.
<!-- TS_LICENSE_TOOLTIP-Description-End -->

<!-- TS_LICENSE_TOOLTIP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_LICENSE_TOOLTIP-Editable-End -->

<!-- TS_LICENSE_TOOLTIP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_LICENSE_TOOLTIP-DFProperties-End -->

<!-- TS_LICENSE_TOOLTIP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_LICENSE_TOOLTIP |
| Friendly Name | Hide notifications about RD Licensing problems that affect the RD Session Host server |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Licensing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_LICENSE_TOOLTIP-AdmxBacked-End -->

<!-- TS_LICENSE_TOOLTIP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_LICENSE_TOOLTIP-Examples-End -->

<!-- TS_LICENSE_TOOLTIP-End -->

<!-- TS_LICENSING_MODE-Begin -->
## TS_LICENSING_MODE

<!-- TS_LICENSING_MODE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_LICENSING_MODE-Applicability-End -->

<!-- TS_LICENSING_MODE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_LICENSING_MODE
```
<!-- TS_LICENSING_MODE-OmaUri-End -->

<!-- TS_LICENSING_MODE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the type of Remote Desktop Services client access license (RDS CAL) that's required to connect to this RD Session Host server.

You can use this policy setting to select one of two licensing modes: Per User or Per Device.

Per User licensing mode requires that each user account connecting to this RD Session Host server have an RDS Per User CAL issued from an RD Licensing server.

Per Device licensing mode requires that each device connecting to this RD Session Host server have an RDS Per Device CAL issued from an RD Licensing server.

- If you enable this policy setting, the Remote Desktop licensing mode that you specify is honored by the Remote Desktop license server and RD Session Host.

- If you disable or don't configure this policy setting, the licensing mode isn't specified at the Group Policy level.

> [!NOTE]
> Microsoft Entra ID Per User mode is deprecated on Windows 11 and above.
<!-- TS_LICENSING_MODE-Description-End -->

<!-- TS_LICENSING_MODE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_LICENSING_MODE-Editable-End -->

<!-- TS_LICENSING_MODE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_LICENSING_MODE-DFProperties-End -->

<!-- TS_LICENSING_MODE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_LICENSING_MODE |
| Friendly Name | Set the Remote Desktop licensing mode |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Licensing |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_LICENSING_MODE-AdmxBacked-End -->

<!-- TS_LICENSING_MODE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_LICENSING_MODE-Examples-End -->

<!-- TS_LICENSING_MODE-End -->

<!-- TS_MAX_CON_POLICY-Begin -->
## TS_MAX_CON_POLICY

<!-- TS_MAX_CON_POLICY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_MAX_CON_POLICY-Applicability-End -->

<!-- TS_MAX_CON_POLICY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_MAX_CON_POLICY
```
<!-- TS_MAX_CON_POLICY-OmaUri-End -->

<!-- TS_MAX_CON_POLICY-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether Remote Desktop Services limits the number of simultaneous connections to the server.

You can use this setting to restrict the number of Remote Desktop Services sessions that can be active on a server. If this number is exceeded, additional users who try to connect receive an error message telling them that the server is busy and to try again later. Restricting the number of sessions improves performance because fewer sessions are demanding system resources. By default, RD Session Host servers allow an unlimited number of Remote Desktop Services sessions, and Remote Desktop for Administration allows two Remote Desktop Services sessions.

To use this setting, enter the number of connections you want to specify as the maximum for the server. To specify an unlimited number of connections, type 999999.

If the status is set to Enabled, the maximum number of connections is limited to the specified number consistent with the version of Windows and the mode of Remote Desktop Services running on the server.

If the status is set to Disabled or Not Configured, limits to the number of connections aren't enforced at the Group Policy level.

> [!NOTE]
> This setting is designed to be used on RD Session Host servers (that is, on servers running Windows with Remote Desktop Session Host role service installed).
<!-- TS_MAX_CON_POLICY-Description-End -->

<!-- TS_MAX_CON_POLICY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_MAX_CON_POLICY-Editable-End -->

<!-- TS_MAX_CON_POLICY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_MAX_CON_POLICY-DFProperties-End -->

<!-- TS_MAX_CON_POLICY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_MAX_CON_POLICY |
| Friendly Name | Limit number of connections |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_MAX_CON_POLICY-AdmxBacked-End -->

<!-- TS_MAX_CON_POLICY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_MAX_CON_POLICY-Examples-End -->

<!-- TS_MAX_CON_POLICY-End -->

<!-- TS_MAXDISPLAYRES-Begin -->
## TS_MAXDISPLAYRES

<!-- TS_MAXDISPLAYRES-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_MAXDISPLAYRES-Applicability-End -->

<!-- TS_MAXDISPLAYRES-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_MAXDISPLAYRES
```
<!-- TS_MAXDISPLAYRES-OmaUri-End -->

<!-- TS_MAXDISPLAYRES-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum display resolution that can be used by each monitor used to display a Remote Desktop Services session. Limiting the resolution used to display a remote session can improve connection performance, particularly over slow links, and reduce server load.

- If you enable this policy setting, you must specify a resolution width and height. The resolution specified will be the maximum resolution that can be used by each monitor used to display a Remote Desktop Services session.

- If you disable or don't configure this policy setting, the maximum resolution that can be used by each monitor to display a Remote Desktop Services session will be determined by the values specified on the Display Settings tab in the Remote Desktop Session Host Configuration tool.
<!-- TS_MAXDISPLAYRES-Description-End -->

<!-- TS_MAXDISPLAYRES-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_MAXDISPLAYRES-Editable-End -->

<!-- TS_MAXDISPLAYRES-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_MAXDISPLAYRES-DFProperties-End -->

<!-- TS_MAXDISPLAYRES-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_MAXDISPLAYRES |
| Friendly Name | Limit maximum display resolution |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_MAXDISPLAYRES-AdmxBacked-End -->

<!-- TS_MAXDISPLAYRES-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_MAXDISPLAYRES-Examples-End -->

<!-- TS_MAXDISPLAYRES-End -->

<!-- TS_MAXMONITOR-Begin -->
## TS_MAXMONITOR

<!-- TS_MAXMONITOR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_MAXMONITOR-Applicability-End -->

<!-- TS_MAXMONITOR-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_MAXMONITOR
```
<!-- TS_MAXMONITOR-OmaUri-End -->

<!-- TS_MAXMONITOR-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to limit the number of monitors that a user can use to display a Remote Desktop Services session. Limiting the number of monitors to display a Remote Desktop Services session can improve connection performance, particularly over slow links, and reduce server load.

- If you enable this policy setting, you can specify the number of monitors that can be used to display a Remote Desktop Services session. You can specify a number from 1 to 16.

- If you disable or don't configure this policy setting, the number of monitors that can be used to display a Remote Desktop Services session isn't specified at the Group Policy level.
<!-- TS_MAXMONITOR-Description-End -->

<!-- TS_MAXMONITOR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_MAXMONITOR-Editable-End -->

<!-- TS_MAXMONITOR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_MAXMONITOR-DFProperties-End -->

<!-- TS_MAXMONITOR-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_MAXMONITOR |
| Friendly Name | Limit number of monitors |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_MAXMONITOR-AdmxBacked-End -->

<!-- TS_MAXMONITOR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_MAXMONITOR-Examples-End -->

<!-- TS_MAXMONITOR-End -->

<!-- TS_NoDisconnectMenu-Begin -->
## TS_NoDisconnectMenu

<!-- TS_NoDisconnectMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_NoDisconnectMenu-Applicability-End -->

<!-- TS_NoDisconnectMenu-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_NoDisconnectMenu
```
<!-- TS_NoDisconnectMenu-OmaUri-End -->

<!-- TS_NoDisconnectMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to remove the "Disconnect" option from the Shut Down Windows dialog box in Remote Desktop Services sessions.

You can use this policy setting to prevent users from using this familiar method to disconnect their client from an RD Session Host server.

- If you enable this policy setting, "Disconnect" doesn't appear as an option in the drop-down list in the Shut Down Windows dialog box.

- If you disable or don't configure this policy setting, "Disconnect" isn't removed from the list in the Shut Down Windows dialog box.

> [!NOTE]
> This policy setting affects only the Shut Down Windows dialog box. It doesn't prevent users from using other methods to disconnect from a Remote Desktop Services session. This policy setting also doesn't prevent disconnected sessions at the server. You can control how long a disconnected session remains active on the server by configuring the "Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Session Time Limits\Set time limit for disconnected sessions" policy setting.
<!-- TS_NoDisconnectMenu-Description-End -->

<!-- TS_NoDisconnectMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_NoDisconnectMenu-Editable-End -->

<!-- TS_NoDisconnectMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_NoDisconnectMenu-DFProperties-End -->

<!-- TS_NoDisconnectMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_NoDisconnectMenu |
| Friendly Name | Remove "Disconnect" option from Shut Down dialog |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoDisconnect |
| ADMX File Name | TerminalServer.admx |
<!-- TS_NoDisconnectMenu-AdmxBacked-End -->

<!-- TS_NoDisconnectMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_NoDisconnectMenu-Examples-End -->

<!-- TS_NoDisconnectMenu-End -->

<!-- TS_NoSecurityMenu-Begin -->
## TS_NoSecurityMenu

<!-- TS_NoSecurityMenu-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_NoSecurityMenu-Applicability-End -->

<!-- TS_NoSecurityMenu-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_NoSecurityMenu
```
<!-- TS_NoSecurityMenu-OmaUri-End -->

<!-- TS_NoSecurityMenu-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether to remove the Windows Security item from the Settings menu on Remote Desktop clients. You can use this setting to prevent inexperienced users from logging off from Remote Desktop Services inadvertently.

If the status is set to Enabled, Windows Security doesn't appear in Settings on the Start menu. As a result, users must type a security attention sequence, such as CTRL+ALT+END, to open the Windows Security dialog box on the client computer.

If the status is set to Disabled or Not Configured, Windows Security remains in the Settings menu.
<!-- TS_NoSecurityMenu-Description-End -->

<!-- TS_NoSecurityMenu-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_NoSecurityMenu-Editable-End -->

<!-- TS_NoSecurityMenu-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_NoSecurityMenu-DFProperties-End -->

<!-- TS_NoSecurityMenu-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_NoSecurityMenu |
| Friendly Name | Remove Windows Security item from Start menu |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | Software\Microsoft\Windows\CurrentVersion\Policies\Explorer |
| Registry Value Name | NoNTSecurity |
| ADMX File Name | TerminalServer.admx |
<!-- TS_NoSecurityMenu-AdmxBacked-End -->

<!-- TS_NoSecurityMenu-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_NoSecurityMenu-Examples-End -->

<!-- TS_NoSecurityMenu-End -->

<!-- TS_PreventLicenseUpgrade-Begin -->
## TS_PreventLicenseUpgrade

<!-- TS_PreventLicenseUpgrade-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_PreventLicenseUpgrade-Applicability-End -->

<!-- TS_PreventLicenseUpgrade-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_PreventLicenseUpgrade
```
<!-- TS_PreventLicenseUpgrade-OmaUri-End -->

<!-- TS_PreventLicenseUpgrade-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify which version of Remote Desktop Services client access license (RDS CAL) a Remote Desktop Services license server will issue to clients connecting to RD Session Host servers running other Windows-based operating systems.

A license server attempts to provide the most appropriate RDS or TS CAL for a connection. For example, a Windows Server 2008 license server will try to issue a Windows Server 2008 TS CAL for clients connecting to a terminal server running Windows Server 2008, and will try to issue a Windows Server 2003 TS CAL for clients connecting to a terminal server running Windows Server 2003.

By default, if the most appropriate RDS CAL isn't available for a connection, a Windows Server 2008 license server will issue a Windows Server 2008 TS CAL, if available, to the following:

* A client connecting to a Windows Server 2003 terminal server
* A client connecting to a Windows 2000 terminal server.

- If you enable this policy setting, the license server will only issue a temporary RDS CAL to the client if an appropriate RDS CAL for the RD Session Host server isn't available. If the client has already been issued a temporary RDS CAL and the temporary RDS CAL has expired, the client won't be able to connect to the RD Session Host server unless the RD Licensing grace period for the RD Session Host server hasn't expired.

- If you disable or don't configure this policy setting, the license server will exhibit the default behavior noted earlier.
<!-- TS_PreventLicenseUpgrade-Description-End -->

<!-- TS_PreventLicenseUpgrade-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_PreventLicenseUpgrade-Editable-End -->

<!-- TS_PreventLicenseUpgrade-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_PreventLicenseUpgrade-DFProperties-End -->

<!-- TS_PreventLicenseUpgrade-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_PreventLicenseUpgrade |
| Friendly Name | Prevent license upgrade |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > RD Licensing |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fPreventLicenseUpgrade |
| ADMX File Name | TerminalServer.admx |
<!-- TS_PreventLicenseUpgrade-AdmxBacked-End -->

<!-- TS_PreventLicenseUpgrade-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_PreventLicenseUpgrade-Examples-End -->

<!-- TS_PreventLicenseUpgrade-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-Begin -->
## TS_PROMT_CREDS_CLIENT_COMP

<!-- TS_PROMT_CREDS_CLIENT_COMP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_PROMT_CREDS_CLIENT_COMP-Applicability-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_PROMT_CREDS_CLIENT_COMP
```
<!-- TS_PROMT_CREDS_CLIENT_COMP-OmaUri-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether a user will be prompted on the client computer to provide credentials for a remote connection to an RD Session Host server.

- If you enable this policy setting, a user will be prompted on the client computer instead of on the RD Session Host server to provide credentials for a remote connection to an RD Session Host server. If saved credentials for the user are available on the client computer, the user won't be prompted to provide credentials.

> [!NOTE]
> If you enable this policy setting in releases of Windows Server 2008 R2 with SP1 or Windows Server 2008 R2, and a user is prompted on both the client computer and on the RD Session Host server to provide credentials, clear the Always prompt for password check box on the Log on Settings tab in Remote Desktop Session Host Configuration.

- If you disable or don't configure this policy setting, the version of the operating system on the RD Session Host server will determine when a user is prompted to provide credentials for a remote connection to an RD Session Host server. For Windows Server 2003 and Windows 2000 Server a user will be prompted on the terminal server to provide credentials for a remote connection. For Windows Server 2008 and Windows Server 2008 R2, a user will be prompted on the client computer to provide credentials for a remote connection.
<!-- TS_PROMT_CREDS_CLIENT_COMP-Description-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_PROMT_CREDS_CLIENT_COMP-Editable-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_PROMT_CREDS_CLIENT_COMP-DFProperties-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_PROMT_CREDS_CLIENT_COMP |
| Friendly Name | Prompt for credentials on the client computer |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | PromptForCredsOnClient |
| ADMX File Name | TerminalServer.admx |
<!-- TS_PROMT_CREDS_CLIENT_COMP-AdmxBacked-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_PROMT_CREDS_CLIENT_COMP-Examples-End -->

<!-- TS_PROMT_CREDS_CLIENT_COMP-End -->

<!-- TS_RADC_DefaultConnection-Begin -->
## TS_RADC_DefaultConnection

<!-- TS_RADC_DefaultConnection-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_RADC_DefaultConnection-Applicability-End -->

<!-- TS_RADC_DefaultConnection-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_RADC_DefaultConnection
```
<!-- TS_RADC_DefaultConnection-OmaUri-End -->

<!-- TS_RADC_DefaultConnection-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies the default connection URL for RemoteApp and Desktop Connections. In addition to the capabilities that are common to all connections, the default connection URL allows document file types to be associated with RemoteApp programs.

The default connection URL must be configured in the form of< https://contoso.com/rdweb/Feed/webfeed.aspx>.

- If you enable this policy setting, the specified URL is configured as the default connection URL for the user and replaces any existing connection URL. The user can't change the default connection URL. The user's default logon credentials are used when setting up the default connection URL.

- If you disable or don't configure this policy setting, the user has no default connection URL.

> [!NOTE]
> RemoteApp programs that are installed through RemoteApp and Desktop Connections from an untrusted server can compromise the security of a user's account.
<!-- TS_RADC_DefaultConnection-Description-End -->

<!-- TS_RADC_DefaultConnection-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_RADC_DefaultConnection-Editable-End -->

<!-- TS_RADC_DefaultConnection-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_RADC_DefaultConnection-DFProperties-End -->

<!-- TS_RADC_DefaultConnection-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_RADC_DefaultConnection |
| Friendly Name | Specify default connection URL |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > RemoteApp and Desktop Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Workspaces |
| ADMX File Name | TerminalServer.admx |
<!-- TS_RADC_DefaultConnection-AdmxBacked-End -->

<!-- TS_RADC_DefaultConnection-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_RADC_DefaultConnection-Examples-End -->

<!-- TS_RADC_DefaultConnection-End -->

<!-- TS_RDSAppX_WaitForRegistration-Begin -->
## TS_RDSAppX_WaitForRegistration

<!-- TS_RDSAppX_WaitForRegistration-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_RDSAppX_WaitForRegistration-Applicability-End -->

<!-- TS_RDSAppX_WaitForRegistration-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_RDSAppX_WaitForRegistration
```
<!-- TS_RDSAppX_WaitForRegistration-OmaUri-End -->

<!-- TS_RDSAppX_WaitForRegistration-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the app registration is completed before showing the Start screen to the user.

By default, when a new user signs in to a computer, the Start screen is shown and apps are registered in the background. However, some apps may not work until app registration is complete.

- If you enable this policy setting, user sign-in is blocked for up to 6 minutes to complete the app registration. You can use this policy setting when customizing the Start screen on Remote Desktop Session Host servers.

- If you disable or don't configure this policy setting, the Start screen is shown and apps are registered in the background.
<!-- TS_RDSAppX_WaitForRegistration-Description-End -->

<!-- TS_RDSAppX_WaitForRegistration-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_RDSAppX_WaitForRegistration-Editable-End -->

<!-- TS_RDSAppX_WaitForRegistration-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_RDSAppX_WaitForRegistration-DFProperties-End -->

<!-- TS_RDSAppX_WaitForRegistration-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_RDSAppX_WaitForRegistration |
| Friendly Name | Suspend user sign-in to complete app registration |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\AllUserInstallAgent |
| Registry Value Name | LogonWaitForPackageRegistration |
| ADMX File Name | TerminalServer.admx |
<!-- TS_RDSAppX_WaitForRegistration-AdmxBacked-End -->

<!-- TS_RDSAppX_WaitForRegistration-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_RDSAppX_WaitForRegistration-Examples-End -->

<!-- TS_RDSAppX_WaitForRegistration-End -->

<!-- TS_RemoteControl_1-Begin -->
## TS_RemoteControl_1

<!-- TS_RemoteControl_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_RemoteControl_1-Applicability-End -->

<!-- TS_RemoteControl_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_RemoteControl_1
```
<!-- TS_RemoteControl_1-OmaUri-End -->

<!-- TS_RemoteControl_1-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting, administrators can interact with a user's Remote Desktop Services session based on the option selected. Select the desired level of control and permission from the options list:

1. No remote control allowed: Disallows an administrator to use remote control or view a remote user session.

1. Full Control with user's permission: Allows the administrator to interact with the session, with the user's consent.

1. Full Control without user's permission: Allows the administrator to interact with the session, without the user's consent.

1. View Session with user's permission: Allows the administrator to watch the session of a remote user with the user's consent.

1. View Session without user's permission: Allows the administrator to watch the session of a remote user without the user's consent.

- If you disable this policy setting, administrators can interact with a user's Remote Desktop Services session, with the user's consent.
<!-- TS_RemoteControl_1-Description-End -->

<!-- TS_RemoteControl_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_RemoteControl_1-Editable-End -->

<!-- TS_RemoteControl_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_RemoteControl_1-DFProperties-End -->

<!-- TS_RemoteControl_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_RemoteControl_1 |
| Friendly Name | Set rules for remote control of Remote Desktop Services user sessions |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_RemoteControl_1-AdmxBacked-End -->

<!-- TS_RemoteControl_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_RemoteControl_1-Examples-End -->

<!-- TS_RemoteControl_1-End -->

<!-- TS_RemoteControl_2-Begin -->
## TS_RemoteControl_2

<!-- TS_RemoteControl_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_RemoteControl_2-Applicability-End -->

<!-- TS_RemoteControl_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_RemoteControl_2
```
<!-- TS_RemoteControl_2-OmaUri-End -->

<!-- TS_RemoteControl_2-Description-Begin -->
<!-- Description-Source-ADMX -->

- If you enable this policy setting, administrators can interact with a user's Remote Desktop Services session based on the option selected. Select the desired level of control and permission from the options list:

1. No remote control allowed: Disallows an administrator to use remote control or view a remote user session.

1. Full Control with user's permission: Allows the administrator to interact with the session, with the user's consent.

1. Full Control without user's permission: Allows the administrator to interact with the session, without the user's consent.

1. View Session with user's permission: Allows the administrator to watch the session of a remote user with the user's consent.

1. View Session without user's permission: Allows the administrator to watch the session of a remote user without the user's consent.

- If you disable this policy setting, administrators can interact with a user's Remote Desktop Services session, with the user's consent.
<!-- TS_RemoteControl_2-Description-End -->

<!-- TS_RemoteControl_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_RemoteControl_2-Editable-End -->

<!-- TS_RemoteControl_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_RemoteControl_2-DFProperties-End -->

<!-- TS_RemoteControl_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_RemoteControl_2 |
| Friendly Name | Set rules for remote control of Remote Desktop Services user sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_RemoteControl_2-AdmxBacked-End -->

<!-- TS_RemoteControl_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_RemoteControl_2-Examples-End -->

<!-- TS_RemoteControl_2-End -->

<!-- TS_RemoteDesktopVirtualGraphics-Begin -->
## TS_RemoteDesktopVirtualGraphics

<!-- TS_RemoteDesktopVirtualGraphics-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_RemoteDesktopVirtualGraphics-Applicability-End -->

<!-- TS_RemoteDesktopVirtualGraphics-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_RemoteDesktopVirtualGraphics
```
<!-- TS_RemoteDesktopVirtualGraphics-OmaUri-End -->

<!-- TS_RemoteDesktopVirtualGraphics-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the visual experience that remote users will have in Remote Desktop Connection (RDC) connections that use RemoteFX. You can use this policy to balance the network bandwidth usage with the type of graphics experience that's delivered.

Depending on the requirements of your users, you can reduce network bandwidth usage by reducing the screen capture rate. You can also reduce network bandwidth usage by reducing the image quality (increasing the amount of image compression that's performed).

If you have a higher than average bandwidth network, you can maximize the utilization of bandwidth by selecting the highest setting for screen capture rate and the highest setting for image quality.

By default, Remote Desktop Connection sessions that use RemoteFX are optimized for a balanced experience over LAN conditions. If you disable or don't configure this policy setting, Remote Desktop Connection sessions that use RemoteFX will be the same as if the medium screen capture rate and the medium image compression settings were selected (the default behavior).
<!-- TS_RemoteDesktopVirtualGraphics-Description-End -->

<!-- TS_RemoteDesktopVirtualGraphics-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_RemoteDesktopVirtualGraphics-Editable-End -->

<!-- TS_RemoteDesktopVirtualGraphics-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_RemoteDesktopVirtualGraphics-DFProperties-End -->

<!-- TS_RemoteDesktopVirtualGraphics-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_RemoteDesktopVirtualGraphics |
| Friendly Name | Optimize visual experience when using RemoteFX |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment > RemoteFX for Windows Server 2008 R2 |
| Registry Key Name | Software\Policies\Microsoft\Windows NT\Terminal Services\ |
| ADMX File Name | TerminalServer.admx |
<!-- TS_RemoteDesktopVirtualGraphics-AdmxBacked-End -->

<!-- TS_RemoteDesktopVirtualGraphics-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_RemoteDesktopVirtualGraphics-Examples-End -->

<!-- TS_RemoteDesktopVirtualGraphics-End -->

<!-- TS_SD_ClustName-Begin -->
## TS_SD_ClustName

<!-- TS_SD_ClustName-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SD_ClustName-Applicability-End -->

<!-- TS_SD_ClustName-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SD_ClustName
```
<!-- TS_SD_ClustName-OmaUri-End -->

<!-- TS_SD_ClustName-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the name of a farm to join in RD Connection Broker. RD Connection Broker uses the farm name to determine which RD Session Host servers are in the same RD Session Host server farm. Therefore, you must use the same farm name for all RD Session Host servers in the same load-balanced farm. The farm name doesn't have to correspond to a name in Active Directory Domain Services.

If you specify a new farm name, a new farm is created in RD Connection Broker. If you specify an existing farm name, the server joins that farm in RD Connection Broker.

- If you enable this policy setting, you must specify the name of a farm in RD Connection Broker.

- If you disable or don't configure this policy setting, the farm name isn't specified at the Group Policy level.

Note:

1. This policy setting isn't effective unless both the Join RD Connection Broker and the Configure RD Connection Broker server name policy settings are enabled and configured by using Group Policy.

1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
<!-- TS_SD_ClustName-Description-End -->

<!-- TS_SD_ClustName-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SD_ClustName-Editable-End -->

<!-- TS_SD_ClustName-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SD_ClustName-DFProperties-End -->

<!-- TS_SD_ClustName-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SD_ClustName |
| Friendly Name | Configure RD Connection Broker farm name |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > RD Connection Broker |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SD_ClustName-AdmxBacked-End -->

<!-- TS_SD_ClustName-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SD_ClustName-Examples-End -->

<!-- TS_SD_ClustName-End -->

<!-- TS_SD_EXPOSE_ADDRESS-Begin -->
## TS_SD_EXPOSE_ADDRESS

<!-- TS_SD_EXPOSE_ADDRESS-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SD_EXPOSE_ADDRESS-Applicability-End -->

<!-- TS_SD_EXPOSE_ADDRESS-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SD_EXPOSE_ADDRESS
```
<!-- TS_SD_EXPOSE_ADDRESS-OmaUri-End -->

<!-- TS_SD_EXPOSE_ADDRESS-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the redirection method to use when a client device reconnects to an existing Remote Desktop Services session in a load-balanced RD Session Host server farm. This setting applies to an RD Session Host server that's configured to use RD Connection Broker and not to the RD Connection Broker server.

- If you enable this policy setting, a Remote Desktop Services client queries the RD Connection Broker server and is redirected to their existing session by using the IP address of the RD Session Host server where their session exists. To use this redirection method, client computers must be able to connect directly by IP address to RD Session Host servers in the farm.

- If you disable this policy setting, the IP address of the RD Session Host server isn't sent to the client. Instead, the IP address is embedded in a token. When a client reconnects to the load balancer, the routing token is used to redirect the client to their existing session on the correct RD Session Host server in the farm. Only disable this setting when your network load-balancing solution supports the use of RD Connection Broker routing tokens and you don't want clients to directly connect by IP address to RD Session Host servers in the load-balanced farm.

- If you don't configure this policy setting, the Use IP address redirection policy setting isn't enforced at the group Group policy Policy level and the default will be used. This setting is enabled by default.

Note:

1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
<!-- TS_SD_EXPOSE_ADDRESS-Description-End -->

<!-- TS_SD_EXPOSE_ADDRESS-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SD_EXPOSE_ADDRESS-Editable-End -->

<!-- TS_SD_EXPOSE_ADDRESS-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SD_EXPOSE_ADDRESS-DFProperties-End -->

<!-- TS_SD_EXPOSE_ADDRESS-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SD_EXPOSE_ADDRESS |
| Friendly Name | Use IP Address Redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > RD Connection Broker |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | SessionDirectoryExposeServerIP |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SD_EXPOSE_ADDRESS-AdmxBacked-End -->

<!-- TS_SD_EXPOSE_ADDRESS-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SD_EXPOSE_ADDRESS-Examples-End -->

<!-- TS_SD_EXPOSE_ADDRESS-End -->

<!-- TS_SD_Loc-Begin -->
## TS_SD_Loc

<!-- TS_SD_Loc-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SD_Loc-Applicability-End -->

<!-- TS_SD_Loc-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SD_Loc
```
<!-- TS_SD_Loc-OmaUri-End -->

<!-- TS_SD_Loc-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the RD Connection Broker server that the RD Session Host server uses to track and redirect user sessions for a load-balanced RD Session Host server farm. The specified server must be running the Remote Desktop Connection Broker service. All RD Session Host servers in a load-balanced farm should use the same RD Connection Broker server.

- If you enable this policy setting, you must specify the RD Connection Broker server by using its fully qualified domain name (FQDN). In Windows Server 2012, for a high availability setup with multiple RD Connection Broker servers, you must provide a semi-colon separated list of the FQDNs of all the RD Connection Broker servers.

- If you disable or don't configure this policy setting, the policy setting isn't specified at the Group Policy level.

Note:

1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.

1. This policy setting isn't effective unless the Join RD Connection Broker policy setting is enabled.

1. To be an active member of an RD Session Host server farm, the computer account for each RD Session Host server in the farm must be a member of one of the following local groups on the RD Connection Broker server: Session Directory Computers, Session Broker Computers, or RDS Endpoint Servers.
<!-- TS_SD_Loc-Description-End -->

<!-- TS_SD_Loc-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SD_Loc-Editable-End -->

<!-- TS_SD_Loc-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SD_Loc-DFProperties-End -->

<!-- TS_SD_Loc-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SD_Loc |
| Friendly Name | Configure RD Connection Broker server name |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > RD Connection Broker |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SD_Loc-AdmxBacked-End -->

<!-- TS_SD_Loc-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SD_Loc-Examples-End -->

<!-- TS_SD_Loc-End -->

<!-- TS_SECURITY_LAYER_POLICY-Begin -->
## TS_SECURITY_LAYER_POLICY

<!-- TS_SECURITY_LAYER_POLICY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SECURITY_LAYER_POLICY-Applicability-End -->

<!-- TS_SECURITY_LAYER_POLICY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SECURITY_LAYER_POLICY
```
<!-- TS_SECURITY_LAYER_POLICY-OmaUri-End -->

<!-- TS_SECURITY_LAYER_POLICY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to require the use of a specific security layer to secure communications between clients and RD Session Host servers during Remote Desktop Protocol (RDP) connections.

- If you enable this policy setting, all communications between clients and RD Session Host servers during remote connections must use the security method specified in this setting. The following security methods are available:

* Negotiate: The Negotiate method enforces the most secure method that's supported by the client. If Transport Layer Security (TLS) version 1.0 is supported, it's used to authenticate the RD Session Host server. If TLS isn't supported, native Remote Desktop Protocol (RDP) encryption is used to secure communications, but the RD Session Host server isn't authenticated. Native RDP encryption (as opposed to SSL encryption) isn't recommended.

* RDP: The RDP method uses native RDP encryption to secure communications between the client and RD Session Host server. If you select this setting, the RD Session Host server isn't authenticated. Native RDP encryption (as opposed to SSL encryption) isn't recommended.

* SSL (TLS 1.0): The SSL method requires the use of TLS 1.0 to authenticate the RD Session Host server. If TLS isn't supported, the connection fails. This is the recommended setting for this policy.

- If you disable or don't configure this policy setting, the security method to be used for remote connections to RD Session Host servers isn't specified at the Group Policy level.
<!-- TS_SECURITY_LAYER_POLICY-Description-End -->

<!-- TS_SECURITY_LAYER_POLICY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SECURITY_LAYER_POLICY-Editable-End -->

<!-- TS_SECURITY_LAYER_POLICY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SECURITY_LAYER_POLICY-DFProperties-End -->

<!-- TS_SECURITY_LAYER_POLICY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SECURITY_LAYER_POLICY |
| Friendly Name | Require use of specific security layer for remote (RDP) connections |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SECURITY_LAYER_POLICY-AdmxBacked-End -->

<!-- TS_SECURITY_LAYER_POLICY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SECURITY_LAYER_POLICY-Examples-End -->

<!-- TS_SECURITY_LAYER_POLICY-End -->

<!-- TS_SELECT_NETWORK_DETECT-Begin -->
## TS_SELECT_NETWORK_DETECT

<!-- TS_SELECT_NETWORK_DETECT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SELECT_NETWORK_DETECT-Applicability-End -->

<!-- TS_SELECT_NETWORK_DETECT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SELECT_NETWORK_DETECT
```
<!-- TS_SELECT_NETWORK_DETECT-OmaUri-End -->

<!-- TS_SELECT_NETWORK_DETECT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify how the Remote Desktop Protocol will try to detect the network quality (bandwidth and latency).

You can choose to disable Connect Time Detect, Continuous Network Detect, or both Connect Time Detect and Continuous Network Detect.

If you disable Connect Time Detect, Remote Desktop Protocol won't determine the network quality at the connect time, and it will assume that all traffic to this server originates from a low-speed connection.

If you disable Continuous Network Detect, Remote Desktop Protocol won't try to adapt the remote user experience to varying network quality.

If you disable Connect Time Detect and Continuous Network Detect, Remote Desktop Protocol won't try to determine the network quality at the connect time; instead it will assume that all traffic to this server originates from a low-speed connection, and it won't try to adapt the user experience to varying network quality.

If you disable or don't configure this policy setting, Remote Desktop Protocol will spend up to a few seconds trying to determine the network quality prior to the connection, and it will continuously try to adapt the user experience to varying network quality.
<!-- TS_SELECT_NETWORK_DETECT-Description-End -->

<!-- TS_SELECT_NETWORK_DETECT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SELECT_NETWORK_DETECT-Editable-End -->

<!-- TS_SELECT_NETWORK_DETECT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SELECT_NETWORK_DETECT-DFProperties-End -->

<!-- TS_SELECT_NETWORK_DETECT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SELECT_NETWORK_DETECT |
| Friendly Name | Select network detection on the server |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SELECT_NETWORK_DETECT-AdmxBacked-End -->

<!-- TS_SELECT_NETWORK_DETECT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SELECT_NETWORK_DETECT-Examples-End -->

<!-- TS_SELECT_NETWORK_DETECT-End -->

<!-- TS_SELECT_TRANSPORT-Begin -->
## TS_SELECT_TRANSPORT

<!-- TS_SELECT_TRANSPORT-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SELECT_TRANSPORT-Applicability-End -->

<!-- TS_SELECT_TRANSPORT-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SELECT_TRANSPORT
```
<!-- TS_SELECT_TRANSPORT-OmaUri-End -->

<!-- TS_SELECT_TRANSPORT-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify which protocols can be used for Remote Desktop Protocol (RDP) access to this server.

- If you enable this policy setting, you must specify if you would like RDP to use UDP.

You can select one of the following options: "Use both UDP and TCP", "Use only TCP" or "Use either UDP or TCP (default)".

If you select "Use either UDP or TCP" and the UDP connection is successful, most of the RDP traffic will use UDP.

If the UDP connection isn't successful or if you select "Use only TCP," all of the RDP traffic will use TCP.

- If you disable or don't configure this policy setting, RDP will choose the optimal protocols for delivering the best user experience.
<!-- TS_SELECT_TRANSPORT-Description-End -->

<!-- TS_SELECT_TRANSPORT-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SELECT_TRANSPORT-Editable-End -->

<!-- TS_SELECT_TRANSPORT-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SELECT_TRANSPORT-DFProperties-End -->

<!-- TS_SELECT_TRANSPORT-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SELECT_TRANSPORT |
| Friendly Name | Select RDP transport protocols |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SELECT_TRANSPORT-AdmxBacked-End -->

<!-- TS_SELECT_TRANSPORT-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SELECT_TRANSPORT-Examples-End -->

<!-- TS_SELECT_TRANSPORT-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Begin -->
## TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Applicability-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP
```
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-OmaUri-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to enable RemoteApp programs to use advanced graphics, including support for transparency, live thumbnails, and seamless application moves. This policy setting applies only to RemoteApp programs and doesn't apply to remote desktop sessions.

- If you enable or don't configure this policy setting, RemoteApp programs published from this RD Session Host server will use these advanced graphics.

- If you disable this policy setting, RemoteApp programs published from this RD Session Host server won't use these advanced graphics. You may want to choose this option if you discover that applications published as RemoteApp programs don't support these advanced graphics.
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Description-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Editable-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-DFProperties-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP |
| Friendly Name | Use advanced RemoteFX graphics for RemoteApp |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableRemoteFXAdvancedRemoteApp |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-AdmxBacked-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-Examples-End -->

<!-- TS_SERVER_ADVANCED_REMOTEFX_REMOTEAPP-End -->

<!-- TS_SERVER_AUTH-Begin -->
## TS_SERVER_AUTH

<!-- TS_SERVER_AUTH-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_AUTH-Applicability-End -->

<!-- TS_SERVER_AUTH-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_AUTH
```
<!-- TS_SERVER_AUTH-OmaUri-End -->

<!-- TS_SERVER_AUTH-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether the client will establish a connection to the RD Session Host server when the client can't authenticate the RD Session Host server.

- If you enable this policy setting, you must specify one of the following settings:

Always connect, even if authentication fails: The client connects to the RD Session Host server even if the client can't authenticate the RD Session Host server.

Warn me if authentication fails: The client attempts to authenticate the RD Session Host server. If the RD Session Host server can be authenticated, the client establishes a connection to the RD Session Host server. If the RD Session Host server can't be authenticated, the user is prompted to choose whether to connect to the RD Session Host server without authenticating the RD Session Host server.

Don't connect if authentication fails: The client establishes a connection to the RD Session Host server only if the RD Session Host server can be authenticated.

- If you disable or don't configure this policy setting, the authentication setting that's specified in Remote Desktop Connection or in the .rdp file determines whether the client establishes a connection to the RD Session Host server when the client can't authenticate the RD Session Host server.
<!-- TS_SERVER_AUTH-Description-End -->

<!-- TS_SERVER_AUTH-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_AUTH-Editable-End -->

<!-- TS_SERVER_AUTH-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_AUTH-DFProperties-End -->

<!-- TS_SERVER_AUTH-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_AUTH |
| Friendly Name | Configure server authentication for client |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_AUTH-AdmxBacked-End -->

<!-- TS_SERVER_AUTH-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_AUTH-Examples-End -->

<!-- TS_SERVER_AUTH-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Begin -->
## TS_SERVER_AVC_HW_ENCODE_PREFERRED

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Applicability-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_AVC_HW_ENCODE_PREFERRED
```
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-OmaUri-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you enable H.264/AVC hardware encoding support for Remote Desktop Connections. When you enable hardware encoding, if an error occurs, we will attempt to use software encoding. If you disable or don't configure this policy, we will always use software encoding.
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Description-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Editable-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-DFProperties-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_AVC_HW_ENCODE_PREFERRED |
| Friendly Name | Configure H.264/AVC hardware encoding for Remote Desktop Connections |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AVCHardwareEncodePreferred |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-AdmxBacked-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-Examples-End -->

<!-- TS_SERVER_AVC_HW_ENCODE_PREFERRED-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-Begin -->
## TS_SERVER_AVC444_MODE_PREFERRED

<!-- TS_SERVER_AVC444_MODE_PREFERRED-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_AVC444_MODE_PREFERRED-Applicability-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_AVC444_MODE_PREFERRED
```
<!-- TS_SERVER_AVC444_MODE_PREFERRED-OmaUri-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting prioritizes the H.264/AVC 444 graphics mode for non-RemoteFX vGPU scenarios. When you use this setting on the RDP server, the server will use H.264/AVC 444 as the codec in an RDP 10 connection where both the client and server can use H.264/AVC 444.
<!-- TS_SERVER_AVC444_MODE_PREFERRED-Description-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_AVC444_MODE_PREFERRED-Editable-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_AVC444_MODE_PREFERRED-DFProperties-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_AVC444_MODE_PREFERRED |
| Friendly Name | Prioritize H.264/AVC 444 graphics mode for Remote Desktop Connections |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | AVC444ModePreferred |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_AVC444_MODE_PREFERRED-AdmxBacked-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_AVC444_MODE_PREFERRED-Examples-End -->

<!-- TS_SERVER_AVC444_MODE_PREFERRED-End -->

<!-- TS_SERVER_COMPRESSOR-Begin -->
## TS_SERVER_COMPRESSOR

<!-- TS_SERVER_COMPRESSOR-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_COMPRESSOR-Applicability-End -->

<!-- TS_SERVER_COMPRESSOR-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_COMPRESSOR
```
<!-- TS_SERVER_COMPRESSOR-OmaUri-End -->

<!-- TS_SERVER_COMPRESSOR-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify which Remote Desktop Protocol (RDP) compression algorithm to use.

By default, servers use an RDP compression algorithm that's based on the server's hardware configuration.

- If you enable this policy setting, you can specify which RDP compression algorithm to use. If you select the algorithm that's optimized to use less memory, this option is less memory-intensive, but uses more network bandwidth. If you select the algorithm that's optimized to use less network bandwidth, this option uses less network bandwidth, but is more memory-intensive. Additionally, a third option is available that balances memory usage and network bandwidth. In Windows 8 only the compression algorithm that balances memory usage and bandwidth is used.

You can also choose not to use an RDP compression algorithm. Choosing not to use an RDP compression algorithm will use more network bandwidth and is only recommended if you are using a hardware device that's designed to optimize network traffic. Even if you choose not to use an RDP compression algorithm, some graphics data will still be compressed.

- If you disable or don't configure this policy setting, the default RDP compression algorithm will be used.
<!-- TS_SERVER_COMPRESSOR-Description-End -->

<!-- TS_SERVER_COMPRESSOR-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_COMPRESSOR-Editable-End -->

<!-- TS_SERVER_COMPRESSOR-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_COMPRESSOR-DFProperties-End -->

<!-- TS_SERVER_COMPRESSOR-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_COMPRESSOR |
| Friendly Name | Configure compression for RemoteFX data |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_COMPRESSOR-AdmxBacked-End -->

<!-- TS_SERVER_COMPRESSOR-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_COMPRESSOR-Examples-End -->

<!-- TS_SERVER_COMPRESSOR-End -->

<!-- TS_SERVER_IMAGE_QUALITY-Begin -->
## TS_SERVER_IMAGE_QUALITY

<!-- TS_SERVER_IMAGE_QUALITY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_IMAGE_QUALITY-Applicability-End -->

<!-- TS_SERVER_IMAGE_QUALITY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_IMAGE_QUALITY
```
<!-- TS_SERVER_IMAGE_QUALITY-OmaUri-End -->

<!-- TS_SERVER_IMAGE_QUALITY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the visual quality for remote users when connecting to this computer by using Remote Desktop Connection. You can use this policy setting to balance the network bandwidth usage with the visual quality that's delivered.

- If you enable this policy setting and set quality to Low, RemoteFX Adaptive Graphics uses an encoding mechanism that results in low quality images. This mode consumes the lowest amount of network bandwidth of the quality modes.

- If you enable this policy setting and set quality to Medium, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images. This mode provides better graphics quality than low quality and uses less bandwidth than high quality.

- If you enable this policy setting and set quality to High, RemoteFX Adaptive Graphics uses an encoding mechanism that results in high quality images and consumes moderate network bandwidth.

- If you enable this policy setting and set quality to Lossless, RemoteFX Adaptive Graphics uses lossless encoding. In this mode, the color integrity of the graphics data isn't impacted. However, this setting results in a significant increase in network bandwidth consumption. We recommend that you set this for very specific cases only.

- If you disable or don't configure this policy setting, RemoteFX Adaptive Graphics uses an encoding mechanism that results in medium quality images.
<!-- TS_SERVER_IMAGE_QUALITY-Description-End -->

<!-- TS_SERVER_IMAGE_QUALITY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_IMAGE_QUALITY-Editable-End -->

<!-- TS_SERVER_IMAGE_QUALITY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_IMAGE_QUALITY-DFProperties-End -->

<!-- TS_SERVER_IMAGE_QUALITY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_IMAGE_QUALITY |
| Friendly Name | Configure image quality for RemoteFX Adaptive Graphics |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_IMAGE_QUALITY-AdmxBacked-End -->

<!-- TS_SERVER_IMAGE_QUALITY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_IMAGE_QUALITY-Examples-End -->

<!-- TS_SERVER_IMAGE_QUALITY-End -->

<!-- TS_SERVER_LEGACY_RFX-Begin -->
## TS_SERVER_LEGACY_RFX

<!-- TS_SERVER_LEGACY_RFX-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_LEGACY_RFX-Applicability-End -->

<!-- TS_SERVER_LEGACY_RFX-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_LEGACY_RFX
```
<!-- TS_SERVER_LEGACY_RFX-OmaUri-End -->

<!-- TS_SERVER_LEGACY_RFX-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure graphics encoding to use the RemoteFX Codec on the Remote Desktop Session Host server so that the sessions are compatible with non-Windows thin client devices designed for Windows Server 2008 R2 SP1. These clients only support the Windows Server 2008 R2 SP1 RemoteFX Codec.

- If you enable this policy setting, users' sessions on this server will only use the Windows Server 2008 R2 SP1 RemoteFX Codec for encoding. This mode is compatible with thin client devices that only support the Windows Server 2008 R2 SP1 RemoteFX Codec.

- If you disable or don't configure this policy setting, non-Windows thin clients that only support the Windows Server 2008 R2 SP1 RemoteFX Codec won't be able to connect to this server. This policy setting applies only to clients that are using Remote Desktop Protocol (RDP) 7.1, and doesn't affect clients that are using other RDP versions.
<!-- TS_SERVER_LEGACY_RFX-Description-End -->

<!-- TS_SERVER_LEGACY_RFX-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_LEGACY_RFX-Editable-End -->

<!-- TS_SERVER_LEGACY_RFX-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_LEGACY_RFX-DFProperties-End -->

<!-- TS_SERVER_LEGACY_RFX-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_LEGACY_RFX |
| Friendly Name | Enable RemoteFX encoding for RemoteFX clients designed for Windows Server 2008 R2 SP1 |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableVirtualizedGraphics |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_LEGACY_RFX-AdmxBacked-End -->

<!-- TS_SERVER_LEGACY_RFX-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_LEGACY_RFX-Examples-End -->

<!-- TS_SERVER_LEGACY_RFX-End -->

<!-- TS_SERVER_PROFILE-Begin -->
## TS_SERVER_PROFILE

<!-- TS_SERVER_PROFILE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_PROFILE-Applicability-End -->

<!-- TS_SERVER_PROFILE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_PROFILE
```
<!-- TS_SERVER_PROFILE-OmaUri-End -->

<!-- TS_SERVER_PROFILE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows the administrator to configure the RemoteFX experience for Remote Desktop Session Host or Remote Desktop Virtualization Host servers. By default, the system will choose the best experience based on available network bandwidth.

- If you enable this policy setting, the RemoteFX experience could be set to one of the following options:

1. Let the system choose the experience for the network condition
1. Optimize for server scalability.

1. Optimize for minimum bandwidth usage.

- If you disable or don't configure this policy setting, the RemoteFX experience will change dynamically based on the network condition".
<!-- TS_SERVER_PROFILE-Description-End -->

<!-- TS_SERVER_PROFILE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_PROFILE-Editable-End -->

<!-- TS_SERVER_PROFILE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_PROFILE-DFProperties-End -->

<!-- TS_SERVER_PROFILE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_PROFILE |
| Friendly Name | Configure RemoteFX Adaptive Graphics |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_PROFILE-AdmxBacked-End -->

<!-- TS_SERVER_PROFILE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_PROFILE-Examples-End -->

<!-- TS_SERVER_PROFILE-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Begin -->
## TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Applicability-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME
```
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-OmaUri-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Description-Begin -->
<!-- Description-Source-Not-Found -->
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Description-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Editable-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-DFProperties-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-AdmxBacked-Begin -->
<!-- ADMX-Not-Found -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-AdmxBacked-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-Examples-End -->

<!-- TS_SERVER_REMOTEAPP_USE_SHELLAPPRUNTIME-End -->

<!-- TS_SERVER_VISEXP-Begin -->
## TS_SERVER_VISEXP

<!-- TS_SERVER_VISEXP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_VISEXP-Applicability-End -->

<!-- TS_SERVER_VISEXP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_VISEXP
```
<!-- TS_SERVER_VISEXP-OmaUri-End -->

<!-- TS_SERVER_VISEXP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the visual experience that remote users receive in Remote Desktop Services sessions. Remote sessions on the remote computer are then optimized to support this visual experience.

By default, Remote Desktop Services sessions are optimized for rich multimedia, such as applications that use Silverlight or Windows Presentation Foundation.

- If you enable this policy setting, you must select the visual experience for which you want to optimize Remote Desktop Services sessions. You can select either Rich multimedia or Text.

- If you disable or don't configure this policy setting, Remote Desktop Services sessions are optimized for rich multimedia.
<!-- TS_SERVER_VISEXP-Description-End -->

<!-- TS_SERVER_VISEXP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_VISEXP-Editable-End -->

<!-- TS_SERVER_VISEXP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_VISEXP-DFProperties-End -->

<!-- TS_SERVER_VISEXP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_VISEXP |
| Friendly Name | Optimize visual experience for Remote Desktop Service Sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment > RemoteFX for Windows Server 2008 R2 |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_VISEXP-AdmxBacked-End -->

<!-- TS_SERVER_VISEXP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_VISEXP-Examples-End -->

<!-- TS_SERVER_VISEXP-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Begin -->
## TS_SERVER_WDDM_GRAPHICS_DRIVER

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Applicability-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SERVER_WDDM_GRAPHICS_DRIVER
```
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-OmaUri-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting lets you enable WDDM graphics display driver for Remote Desktop Connections.

- If you enable or don't configure this policy setting, Remote Desktop Connections will use WDDM graphics display driver.

- If you disable this policy setting, Remote Desktop Connections will NOT use WDDM graphics display driver. In this case, the Remote Desktop Connections will use XDDM graphics display driver.

For this change to take effect, you must restart Windows.
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Description-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Editable-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-DFProperties-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SERVER_WDDM_GRAPHICS_DRIVER |
| Friendly Name | Use WDDM graphics display driver for Remote Desktop Connections |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableWddmDriver |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-AdmxBacked-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-Examples-End -->

<!-- TS_SERVER_WDDM_GRAPHICS_DRIVER-End -->

<!-- TS_Session_End_On_Limit_1-Begin -->
## TS_Session_End_On_Limit_1

<!-- TS_Session_End_On_Limit_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_Session_End_On_Limit_1-Applicability-End -->

<!-- TS_Session_End_On_Limit_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_Session_End_On_Limit_1
```
<!-- TS_Session_End_On_Limit_1-OmaUri-End -->

<!-- TS_Session_End_On_Limit_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to end a Remote Desktop Services session that has timed out instead of disconnecting it.

You can use this setting to direct Remote Desktop Services to end a session (that is, the user is logged off and the session is deleted from the server) after time limits for active or idle sessions are reached. By default, Remote Desktop Services disconnects sessions that reach their time limits.

Time limits are set locally by the server administrator or by using Group Policy. See the policy settings Set time limit for active Remote Desktop Services sessions and Set time limit for active but idle Remote Desktop Services sessions policy settings.

- If you enable this policy setting, Remote Desktop Services ends any session that reaches its time-out limit.

- If you disable this policy setting, Remote Desktop Services always disconnects a timed-out session, even if specified otherwise by the server administrator.

- If you don't configure this policy setting, Remote Desktop Services disconnects a timed-out session, unless specified otherwise in local settings.

> [!NOTE]
> This policy setting only applies to time-out limits that are explicitly set by the administrator. This policy setting doesn't apply to time-out events that occur due to connectivity or network conditions. This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting takes precedence.
<!-- TS_Session_End_On_Limit_1-Description-End -->

<!-- TS_Session_End_On_Limit_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_Session_End_On_Limit_1-Editable-End -->

<!-- TS_Session_End_On_Limit_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_Session_End_On_Limit_1-DFProperties-End -->

<!-- TS_Session_End_On_Limit_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_Session_End_On_Limit_1 |
| Friendly Name | End session when time limits are reached |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fResetBroken |
| ADMX File Name | TerminalServer.admx |
<!-- TS_Session_End_On_Limit_1-AdmxBacked-End -->

<!-- TS_Session_End_On_Limit_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_Session_End_On_Limit_1-Examples-End -->

<!-- TS_Session_End_On_Limit_1-End -->

<!-- TS_Session_End_On_Limit_2-Begin -->
## TS_Session_End_On_Limit_2

<!-- TS_Session_End_On_Limit_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_Session_End_On_Limit_2-Applicability-End -->

<!-- TS_Session_End_On_Limit_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_Session_End_On_Limit_2
```
<!-- TS_Session_End_On_Limit_2-OmaUri-End -->

<!-- TS_Session_End_On_Limit_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to end a Remote Desktop Services session that has timed out instead of disconnecting it.

You can use this setting to direct Remote Desktop Services to end a session (that is, the user is logged off and the session is deleted from the server) after time limits for active or idle sessions are reached. By default, Remote Desktop Services disconnects sessions that reach their time limits.

Time limits are set locally by the server administrator or by using Group Policy. See the policy settings Set time limit for active Remote Desktop Services sessions and Set time limit for active but idle Remote Desktop Services sessions policy settings.

- If you enable this policy setting, Remote Desktop Services ends any session that reaches its time-out limit.

- If you disable this policy setting, Remote Desktop Services always disconnects a timed-out session, even if specified otherwise by the server administrator.

- If you don't configure this policy setting, Remote Desktop Services disconnects a timed-out session, unless specified otherwise in local settings.

> [!NOTE]
> This policy setting only applies to time-out limits that are explicitly set by the administrator. This policy setting doesn't apply to time-out events that occur due to connectivity or network conditions. This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting takes precedence.
<!-- TS_Session_End_On_Limit_2-Description-End -->

<!-- TS_Session_End_On_Limit_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_Session_End_On_Limit_2-Editable-End -->

<!-- TS_Session_End_On_Limit_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_Session_End_On_Limit_2-DFProperties-End -->

<!-- TS_Session_End_On_Limit_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_Session_End_On_Limit_2 |
| Friendly Name | End session when time limits are reached |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fResetBroken |
| ADMX File Name | TerminalServer.admx |
<!-- TS_Session_End_On_Limit_2-AdmxBacked-End -->

<!-- TS_Session_End_On_Limit_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_Session_End_On_Limit_2-Examples-End -->

<!-- TS_Session_End_On_Limit_2-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-Begin -->
## TS_SESSIONS_Disconnected_Timeout_1

<!-- TS_SESSIONS_Disconnected_Timeout_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Disconnected_Timeout_1-Applicability-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_1
```
<!-- TS_SESSIONS_Disconnected_Timeout_1-OmaUri-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a time limit for disconnected Remote Desktop Services sessions.

You can use this policy setting to specify the maximum amount of time that a disconnected session remains active on the server. By default, Remote Desktop Services allows users to disconnect from a Remote Desktop Services session without logging off and ending the session.

When a session is in a disconnected state, running programs are kept active even though the user is no longer actively connected. By default, these disconnected sessions are maintained for an unlimited time on the server.

- If you enable this policy setting, disconnected sessions are deleted from the server after the specified amount of time. To enforce the default behavior that disconnected sessions are maintained for an unlimited time, select Never. If you have a console session, disconnected session time limits don't apply.

- If you disable or don't configure this policy setting, this policy setting isn't specified at the Group Policy level. Be y default, Remote Desktop Services disconnected sessions are maintained for an unlimited amount of time.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Disconnected_Timeout_1-Description-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Disconnected_Timeout_1-Editable-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Disconnected_Timeout_1-DFProperties-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Disconnected_Timeout_1 |
| Friendly Name | Set time limit for disconnected sessions |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Disconnected_Timeout_1-AdmxBacked-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Disconnected_Timeout_1-Examples-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_1-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-Begin -->
## TS_SESSIONS_Disconnected_Timeout_2

<!-- TS_SESSIONS_Disconnected_Timeout_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Disconnected_Timeout_2-Applicability-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Disconnected_Timeout_2
```
<!-- TS_SESSIONS_Disconnected_Timeout_2-OmaUri-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to configure a time limit for disconnected Remote Desktop Services sessions.

You can use this policy setting to specify the maximum amount of time that a disconnected session remains active on the server. By default, Remote Desktop Services allows users to disconnect from a Remote Desktop Services session without logging off and ending the session.

When a session is in a disconnected state, running programs are kept active even though the user is no longer actively connected. By default, these disconnected sessions are maintained for an unlimited time on the server.

- If you enable this policy setting, disconnected sessions are deleted from the server after the specified amount of time. To enforce the default behavior that disconnected sessions are maintained for an unlimited time, select Never. If you have a console session, disconnected session time limits don't apply.

- If you disable or don't configure this policy setting, this policy setting isn't specified at the Group Policy level. Be y default, Remote Desktop Services disconnected sessions are maintained for an unlimited amount of time.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Disconnected_Timeout_2-Description-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Disconnected_Timeout_2-Editable-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Disconnected_Timeout_2-DFProperties-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Disconnected_Timeout_2 |
| Friendly Name | Set time limit for disconnected sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Disconnected_Timeout_2-AdmxBacked-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Disconnected_Timeout_2-Examples-End -->

<!-- TS_SESSIONS_Disconnected_Timeout_2-End -->

<!-- TS_SESSIONS_Idle_Limit_1-Begin -->
## TS_SESSIONS_Idle_Limit_1

<!-- TS_SESSIONS_Idle_Limit_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Idle_Limit_1-Applicability-End -->

<!-- TS_SESSIONS_Idle_Limit_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_1
```
<!-- TS_SESSIONS_Idle_Limit_1-OmaUri-End -->

<!-- TS_SESSIONS_Idle_Limit_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum amount of time that an active Remote Desktop Services session can be idle (without user input) before it's automatically disconnected.

- If you enable this policy setting, you must select the desired time limit in the Idle session limit list. Remote Desktop Services will automatically disconnect active but idle sessions after the specified amount of time. The user receives a warning two minutes before the session disconnects, which allows the user to press a key or move the mouse to keep the session active. If you have a console session, idle session time limits don't apply.

- If you disable or don't configure this policy setting, the time limit isn't specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active but idle for an unlimited amount of time.

If you want Remote Desktop Services to end instead of disconnect a session when the time limit's reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Idle_Limit_1-Description-End -->

<!-- TS_SESSIONS_Idle_Limit_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Idle_Limit_1-Editable-End -->

<!-- TS_SESSIONS_Idle_Limit_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Idle_Limit_1-DFProperties-End -->

<!-- TS_SESSIONS_Idle_Limit_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Idle_Limit_1 |
| Friendly Name | Set time limit for active but idle Remote Desktop Services sessions |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Idle_Limit_1-AdmxBacked-End -->

<!-- TS_SESSIONS_Idle_Limit_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Idle_Limit_1-Examples-End -->

<!-- TS_SESSIONS_Idle_Limit_1-End -->

<!-- TS_SESSIONS_Idle_Limit_2-Begin -->
## TS_SESSIONS_Idle_Limit_2

<!-- TS_SESSIONS_Idle_Limit_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Idle_Limit_2-Applicability-End -->

<!-- TS_SESSIONS_Idle_Limit_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Idle_Limit_2
```
<!-- TS_SESSIONS_Idle_Limit_2-OmaUri-End -->

<!-- TS_SESSIONS_Idle_Limit_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum amount of time that an active Remote Desktop Services session can be idle (without user input) before it's automatically disconnected.

- If you enable this policy setting, you must select the desired time limit in the Idle session limit list. Remote Desktop Services will automatically disconnect active but idle sessions after the specified amount of time. The user receives a warning two minutes before the session disconnects, which allows the user to press a key or move the mouse to keep the session active. If you have a console session, idle session time limits don't apply.

- If you disable or don't configure this policy setting, the time limit isn't specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active but idle for an unlimited amount of time.

If you want Remote Desktop Services to end instead of disconnect a session when the time limit's reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Idle_Limit_2-Description-End -->

<!-- TS_SESSIONS_Idle_Limit_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Idle_Limit_2-Editable-End -->

<!-- TS_SESSIONS_Idle_Limit_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Idle_Limit_2-DFProperties-End -->

<!-- TS_SESSIONS_Idle_Limit_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Idle_Limit_2 |
| Friendly Name | Set time limit for active but idle Remote Desktop Services sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Idle_Limit_2-AdmxBacked-End -->

<!-- TS_SESSIONS_Idle_Limit_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Idle_Limit_2-Examples-End -->

<!-- TS_SESSIONS_Idle_Limit_2-End -->

<!-- TS_SESSIONS_Limits_1-Begin -->
## TS_SESSIONS_Limits_1

<!-- TS_SESSIONS_Limits_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Limits_1-Applicability-End -->

<!-- TS_SESSIONS_Limits_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Limits_1
```
<!-- TS_SESSIONS_Limits_1-OmaUri-End -->

<!-- TS_SESSIONS_Limits_1-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum amount of time that a Remote Desktop Services session can be active before it's automatically disconnected.

- If you enable this policy setting, you must select the desired time limit in the Active session limit list. Remote Desktop Services will automatically disconnect active sessions after the specified amount of time. The user receives a warning two minutes before the Remote Desktop Services session disconnects, which allows the user to save open files and close programs. If you have a console session, active session time limits don't apply.

- If you disable or don't configure this policy setting, this policy setting isn't specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active for an unlimited amount of time.

If you want Remote Desktop Services to end instead of disconnect a session when the time limit's reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Limits_1-Description-End -->

<!-- TS_SESSIONS_Limits_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Limits_1-Editable-End -->

<!-- TS_SESSIONS_Limits_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Limits_1-DFProperties-End -->

<!-- TS_SESSIONS_Limits_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Limits_1 |
| Friendly Name | Set time limit for active Remote Desktop Services sessions |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Limits_1-AdmxBacked-End -->

<!-- TS_SESSIONS_Limits_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Limits_1-Examples-End -->

<!-- TS_SESSIONS_Limits_1-End -->

<!-- TS_SESSIONS_Limits_2-Begin -->
## TS_SESSIONS_Limits_2

<!-- TS_SESSIONS_Limits_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SESSIONS_Limits_2-Applicability-End -->

<!-- TS_SESSIONS_Limits_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SESSIONS_Limits_2
```
<!-- TS_SESSIONS_Limits_2-OmaUri-End -->

<!-- TS_SESSIONS_Limits_2-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the maximum amount of time that a Remote Desktop Services session can be active before it's automatically disconnected.

- If you enable this policy setting, you must select the desired time limit in the Active session limit list. Remote Desktop Services will automatically disconnect active sessions after the specified amount of time. The user receives a warning two minutes before the Remote Desktop Services session disconnects, which allows the user to save open files and close programs. If you have a console session, active session time limits don't apply.

- If you disable or don't configure this policy setting, this policy setting isn't specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active for an unlimited amount of time.

If you want Remote Desktop Services to end instead of disconnect a session when the time limit's reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.

> [!NOTE]
> This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
<!-- TS_SESSIONS_Limits_2-Description-End -->

<!-- TS_SESSIONS_Limits_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SESSIONS_Limits_2-Editable-End -->

<!-- TS_SESSIONS_Limits_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SESSIONS_Limits_2-DFProperties-End -->

<!-- TS_SESSIONS_Limits_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SESSIONS_Limits_2 |
| Friendly Name | Set time limit for active Remote Desktop Services sessions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Session Time Limits |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SESSIONS_Limits_2-AdmxBacked-End -->

<!-- TS_SESSIONS_Limits_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SESSIONS_Limits_2-Examples-End -->

<!-- TS_SESSIONS_Limits_2-End -->

<!-- TS_SINGLE_SESSION-Begin -->
## TS_SINGLE_SESSION

<!-- TS_SINGLE_SESSION-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SINGLE_SESSION-Applicability-End -->

<!-- TS_SINGLE_SESSION-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SINGLE_SESSION
```
<!-- TS_SINGLE_SESSION-OmaUri-End -->

<!-- TS_SINGLE_SESSION-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to restrict users to a single Remote Desktop Services session.

- If you enable this policy setting, users who log on remotely by using Remote Desktop Services will be restricted to a single session (either active or disconnected) on that server. If the user leaves the session in a disconnected state, the user automatically reconnects to that session at the next logon.

- If you disable this policy setting, users are allowed to make unlimited simultaneous remote connections by using Remote Desktop Services.

- If you don't configure this policy setting, this policy setting isn't specified at the Group Policy level.
<!-- TS_SINGLE_SESSION-Description-End -->

<!-- TS_SINGLE_SESSION-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SINGLE_SESSION-Editable-End -->

<!-- TS_SINGLE_SESSION-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SINGLE_SESSION-DFProperties-End -->

<!-- TS_SINGLE_SESSION-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SINGLE_SESSION |
| Friendly Name | Restrict Remote Desktop Services users to a single Remote Desktop Services session |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Connections |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fSingleSessionPerUser |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SINGLE_SESSION-AdmxBacked-End -->

<!-- TS_SINGLE_SESSION-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SINGLE_SESSION-Examples-End -->

<!-- TS_SINGLE_SESSION-End -->

<!-- TS_SMART_CARD-Begin -->
## TS_SMART_CARD

<!-- TS_SMART_CARD-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_SMART_CARD-Applicability-End -->

<!-- TS_SMART_CARD-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_SMART_CARD
```
<!-- TS_SMART_CARD-OmaUri-End -->

<!-- TS_SMART_CARD-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to control the redirection of smart card devices in a Remote Desktop Services session.

- If you enable this policy setting, Remote Desktop Services users can't use a smart card to log on to a Remote Desktop Services session.

- If you disable or don't configure this policy setting, smart card device redirection is allowed. By default, Remote Desktop Services automatically redirects smart card devices on connection.

> [!NOTE]
> The client computer must be running at least Microsoft Windows 2000 Server or at least Microsoft Windows XP Professional and the target server must be joined to a domain.
<!-- TS_SMART_CARD-Description-End -->

<!-- TS_SMART_CARD-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_SMART_CARD-Editable-End -->

<!-- TS_SMART_CARD-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_SMART_CARD-DFProperties-End -->

<!-- TS_SMART_CARD-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_SMART_CARD |
| Friendly Name | Do not allow smart card device redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableSmartCard |
| ADMX File Name | TerminalServer.admx |
<!-- TS_SMART_CARD-AdmxBacked-End -->

<!-- TS_SMART_CARD-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_SMART_CARD-Examples-End -->

<!-- TS_SMART_CARD-End -->

<!-- TS_START_PROGRAM_1-Begin -->
## TS_START_PROGRAM_1

<!-- TS_START_PROGRAM_1-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ❌ Device <br> ✅ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_START_PROGRAM_1-Applicability-End -->

<!-- TS_START_PROGRAM_1-OmaUri-Begin -->
```User
./User/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_START_PROGRAM_1
```
<!-- TS_START_PROGRAM_1-OmaUri-End -->

<!-- TS_START_PROGRAM_1-Description-Begin -->
<!-- Description-Source-ADMX -->
Configures Remote Desktop Services to run a specified program automatically upon connection.

You can use this setting to specify a program to run automatically when a user logs on to a remote computer.

By default, Remote Desktop Services sessions provide access to the full Windows desktop, unless otherwise specified with this setting, by the server administrator, or by the user in configuring the client connection. Enabling this setting overrides the "Start Program" settings set by the server administrator or user. The Start menu and Windows Desktop aren't displayed, and when the user exits the program the session is automatically logged off.

To use this setting, in Program path and file name, type the fully qualified path and file name of the executable file to be run when the user logs on. If necessary, in Working Directory, type the fully qualified path to the starting directory for the program. If you leave Working Directory blank, the program runs with its default working directory. If the specified program path, file name, or working directory isn't the name of a valid directory, the RD Session Host server connection fails with an error message.

If the status is set to Enabled, Remote Desktop Services sessions automatically run the specified program and use the specified Working Directory (or the program default directory, if Working Directory isn't specified) as the working directory for the program.

If the status is set to Disabled or Not Configured, Remote Desktop Services sessions start with the full desktop, unless the server administrator or user specify otherwise. (See "Computer Configuration\Administrative Templates\System\Logon\Run these programs at user logon" setting).

> [!NOTE]
> This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting overrides.
<!-- TS_START_PROGRAM_1-Description-End -->

<!-- TS_START_PROGRAM_1-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_START_PROGRAM_1-Editable-End -->

<!-- TS_START_PROGRAM_1-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_START_PROGRAM_1-DFProperties-End -->

<!-- TS_START_PROGRAM_1-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_START_PROGRAM_1 |
| Friendly Name | Start a program on connection |
| Location | User Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fInheritInitialProgram |
| ADMX File Name | TerminalServer.admx |
<!-- TS_START_PROGRAM_1-AdmxBacked-End -->

<!-- TS_START_PROGRAM_1-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_START_PROGRAM_1-Examples-End -->

<!-- TS_START_PROGRAM_1-End -->

<!-- TS_START_PROGRAM_2-Begin -->
## TS_START_PROGRAM_2

<!-- TS_START_PROGRAM_2-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_START_PROGRAM_2-Applicability-End -->

<!-- TS_START_PROGRAM_2-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_START_PROGRAM_2
```
<!-- TS_START_PROGRAM_2-OmaUri-End -->

<!-- TS_START_PROGRAM_2-Description-Begin -->
<!-- Description-Source-ADMX -->
Configures Remote Desktop Services to run a specified program automatically upon connection.

You can use this setting to specify a program to run automatically when a user logs on to a remote computer.

By default, Remote Desktop Services sessions provide access to the full Windows desktop, unless otherwise specified with this setting, by the server administrator, or by the user in configuring the client connection. Enabling this setting overrides the "Start Program" settings set by the server administrator or user. The Start menu and Windows Desktop aren't displayed, and when the user exits the program the session is automatically logged off.

To use this setting, in Program path and file name, type the fully qualified path and file name of the executable file to be run when the user logs on. If necessary, in Working Directory, type the fully qualified path to the starting directory for the program. If you leave Working Directory blank, the program runs with its default working directory. If the specified program path, file name, or working directory isn't the name of a valid directory, the RD Session Host server connection fails with an error message.

If the status is set to Enabled, Remote Desktop Services sessions automatically run the specified program and use the specified Working Directory (or the program default directory, if Working Directory isn't specified) as the working directory for the program.

If the status is set to Disabled or Not Configured, Remote Desktop Services sessions start with the full desktop, unless the server administrator or user specify otherwise. (See "Computer Configuration\Administrative Templates\System\Logon\Run these programs at user logon" setting).

> [!NOTE]
> This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting overrides.
<!-- TS_START_PROGRAM_2-Description-End -->

<!-- TS_START_PROGRAM_2-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_START_PROGRAM_2-Editable-End -->

<!-- TS_START_PROGRAM_2-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_START_PROGRAM_2-DFProperties-End -->

<!-- TS_START_PROGRAM_2-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_START_PROGRAM_2 |
| Friendly Name | Start a program on connection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_START_PROGRAM_2-AdmxBacked-End -->

<!-- TS_START_PROGRAM_2-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_START_PROGRAM_2-Examples-End -->

<!-- TS_START_PROGRAM_2-End -->

<!-- TS_TEMP_DELETE-Begin -->
## TS_TEMP_DELETE

<!-- TS_TEMP_DELETE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_TEMP_DELETE-Applicability-End -->

<!-- TS_TEMP_DELETE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_TEMP_DELETE
```
<!-- TS_TEMP_DELETE-OmaUri-End -->

<!-- TS_TEMP_DELETE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether Remote Desktop Services retains a user's per-session temporary folders at logoff.

You can use this setting to maintain a user's session-specific temporary folders on a remote computer, even if the user logs off from a session. By default, Remote Desktop Services deletes a user's temporary folders when the user logs off.

- If you enable this policy setting, a user's per-session temporary folders are retained when the user logs off from a session.

- If you disable this policy setting, temporary folders are deleted when a user logs off, even if the server administrator specifies otherwise.

- If you don't configure this policy setting, Remote Desktop Services deletes the temporary folders from the remote computer at logoff, unless specified otherwise by the server administrator.

> [!NOTE]
> This setting only takes effect if per-session temporary folders are in use on the server. If you enable the Don't use temporary folders per session policy setting, this policy setting has no effect.
<!-- TS_TEMP_DELETE-Description-End -->

<!-- TS_TEMP_DELETE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_TEMP_DELETE-Editable-End -->

<!-- TS_TEMP_DELETE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_TEMP_DELETE-DFProperties-End -->

<!-- TS_TEMP_DELETE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_TEMP_DELETE |
| Friendly Name | Do not delete temp folders upon exit |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Temporary folders |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | DeleteTempDirsOnExit |
| ADMX File Name | TerminalServer.admx |
<!-- TS_TEMP_DELETE-AdmxBacked-End -->

<!-- TS_TEMP_DELETE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_TEMP_DELETE-Examples-End -->

<!-- TS_TEMP_DELETE-End -->

<!-- TS_TEMP_PER_SESSION-Begin -->
## TS_TEMP_PER_SESSION

<!-- TS_TEMP_PER_SESSION-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_TEMP_PER_SESSION-Applicability-End -->

<!-- TS_TEMP_PER_SESSION-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_TEMP_PER_SESSION
```
<!-- TS_TEMP_PER_SESSION-OmaUri-End -->

<!-- TS_TEMP_PER_SESSION-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to prevent Remote Desktop Services from creating session-specific temporary folders.

You can use this policy setting to disable the creation of separate temporary folders on a remote computer for each session. By default, Remote Desktop Services creates a separate temporary folder for each active session that a user maintains on a remote computer. These temporary folders are created on the remote computer in a Temp folder under the user's profile folder and are named with the sessionid.

- If you enable this policy setting, per-session temporary folders aren't created. Instead, a user's temporary files for all sessions on the remote computer are stored in a common Temp folder under the user's profile folder on the remote computer.

- If you disable this policy setting, per-session temporary folders are always created, even if the server administrator specifies otherwise.

- If you don't configure this policy setting, per-session temporary folders are created unless the server administrator specifies otherwise.
<!-- TS_TEMP_PER_SESSION-Description-End -->

<!-- TS_TEMP_PER_SESSION-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_TEMP_PER_SESSION-Editable-End -->

<!-- TS_TEMP_PER_SESSION-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_TEMP_PER_SESSION-DFProperties-End -->

<!-- TS_TEMP_PER_SESSION-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_TEMP_PER_SESSION |
| Friendly Name | Do not use temporary folders per session |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Temporary folders |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | PerSessionTempDir |
| ADMX File Name | TerminalServer.admx |
<!-- TS_TEMP_PER_SESSION-AdmxBacked-End -->

<!-- TS_TEMP_PER_SESSION-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_TEMP_PER_SESSION-Examples-End -->

<!-- TS_TEMP_PER_SESSION-End -->

<!-- TS_TIME_ZONE-Begin -->
## TS_TIME_ZONE

<!-- TS_TIME_ZONE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_TIME_ZONE-Applicability-End -->

<!-- TS_TIME_ZONE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_TIME_ZONE
```
<!-- TS_TIME_ZONE-OmaUri-End -->

<!-- TS_TIME_ZONE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the client computer redirects its time zone settings to the Remote Desktop Services session.

- If you enable this policy setting, clients that are capable of time zone redirection send their time zone information to the server. The server base time is then used to calculate the current session time (current session time = server base time + client time zone).

- If you disable or don't configure this policy setting, the client computer doesn't redirect its time zone information and the session time zone is the same as the server time zone.

> [!NOTE]
> Time zone redirection is possible only when connecting to at least a Microsoft Windows Server 2003 terminal server with a client using RDP 5.1 and later.
<!-- TS_TIME_ZONE-Description-End -->

<!-- TS_TIME_ZONE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_TIME_ZONE-Editable-End -->

<!-- TS_TIME_ZONE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_TIME_ZONE-DFProperties-End -->

<!-- TS_TIME_ZONE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_TIME_ZONE |
| Friendly Name | Allow time zone redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fEnableTimeZoneRedirection |
| ADMX File Name | TerminalServer.admx |
<!-- TS_TIME_ZONE-AdmxBacked-End -->

<!-- TS_TIME_ZONE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_TIME_ZONE-Examples-End -->

<!-- TS_TIME_ZONE-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-Begin -->
## TS_TSCC_PERMISSIONS_POLICY

<!-- TS_TSCC_PERMISSIONS_POLICY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_TSCC_PERMISSIONS_POLICY-Applicability-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_TSCC_PERMISSIONS_POLICY
```
<!-- TS_TSCC_PERMISSIONS_POLICY-OmaUri-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting specifies whether to disable the administrator rights to customize security permissions for the Remote Desktop Session Host server.

You can use this setting to prevent administrators from making changes to the user groups allowed to connect remotely to the RD Session Host server. By default, administrators are able to make such changes.

- If you enable this policy setting the default security descriptors for existing groups on the RD Session Host server can't be changed. All the security descriptors are read-only.

- If you disable or don't configure this policy setting, server administrators have full read/write permissions to the user security descriptors by using the Remote Desktop Session WMI Provider.

> [!NOTE]
> The preferred method of managing user access is by adding a user to the Remote Desktop Users group.
<!-- TS_TSCC_PERMISSIONS_POLICY-Description-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_TSCC_PERMISSIONS_POLICY-Editable-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_TSCC_PERMISSIONS_POLICY-DFProperties-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_TSCC_PERMISSIONS_POLICY |
| Friendly Name | Do not allow local administrators to customize permissions |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fWritableTSCCPermTab |
| ADMX File Name | TerminalServer.admx |
<!-- TS_TSCC_PERMISSIONS_POLICY-AdmxBacked-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_TSCC_PERMISSIONS_POLICY-Examples-End -->

<!-- TS_TSCC_PERMISSIONS_POLICY-End -->

<!-- TS_TURNOFF_SINGLEAPP-Begin -->
## TS_TURNOFF_SINGLEAPP

<!-- TS_TURNOFF_SINGLEAPP-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_TURNOFF_SINGLEAPP-Applicability-End -->

<!-- TS_TURNOFF_SINGLEAPP-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_TURNOFF_SINGLEAPP
```
<!-- TS_TURNOFF_SINGLEAPP-OmaUri-End -->

<!-- TS_TURNOFF_SINGLEAPP-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether the desktop is always displayed after a client connects to a remote computer or an initial program can run. It can be used to require that the desktop be displayed after a client connects to a remote computer, even if an initial program is already specified in the default user profile, Remote Desktop Connection, Remote Desktop Services client, or through Group Policy.

- If you enable this policy setting, the desktop is always displayed when a client connects to a remote computer. This policy setting overrides any initial program policy settings.

- If you disable or don't configure this policy setting, an initial program can be specified that runs on the remote computer after the client connects to the remote computer. If an initial program isn't specified, the desktop is always displayed on the remote computer after the client connects to the remote computer.

> [!NOTE]
> If this policy setting is enabled, then the "Start a program on connection" policy setting is ignored.
<!-- TS_TURNOFF_SINGLEAPP-Description-End -->

<!-- TS_TURNOFF_SINGLEAPP-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_TURNOFF_SINGLEAPP-Editable-End -->

<!-- TS_TURNOFF_SINGLEAPP-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_TURNOFF_SINGLEAPP-DFProperties-End -->

<!-- TS_TURNOFF_SINGLEAPP-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_TURNOFF_SINGLEAPP |
| Friendly Name | Always show desktop on connection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Remote Session Environment |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | fTurnOffSingleAppMode |
| ADMX File Name | TerminalServer.admx |
<!-- TS_TURNOFF_SINGLEAPP-AdmxBacked-End -->

<!-- TS_TURNOFF_SINGLEAPP-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_TURNOFF_SINGLEAPP-Examples-End -->

<!-- TS_TURNOFF_SINGLEAPP-End -->

<!-- TS_UIA-Begin -->
## TS_UIA

<!-- TS_UIA-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_UIA-Applicability-End -->

<!-- TS_UIA-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_UIA
```
<!-- TS_UIA-OmaUri-End -->

<!-- TS_UIA-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting determines whether User Interface (UI) Automation client applications running on the local computer can access UI elements on the server.

UI Automation gives programs access to most UI elements, which lets you use assistive technology products like Magnifier and Narrator that need to interact with the UI in order to work properly. UI information also allows automated test scripts to interact with the UI.

Remote Desktop sessions don't currently support UI Automation redirection.

- If you enable or don't configure this policy setting, any UI Automation clients on your local computer can interact with remote apps. For example, you can use your local computer's Narrator and Magnifier clients to interact with UI on a web page you opened in a remote session.

- If you disable this policy setting, UI Automation clients running on your local computer can't interact with remote apps.
<!-- TS_UIA-Description-End -->

<!-- TS_UIA-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_UIA-Editable-End -->

<!-- TS_UIA-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_UIA-DFProperties-End -->

<!-- TS_UIA-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_UIA |
| Friendly Name | Allow UI Automation redirection |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Device and Resource Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | EnableUiaRedirection |
| ADMX File Name | TerminalServer.admx |
<!-- TS_UIA-AdmxBacked-End -->

<!-- TS_UIA-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_UIA-Examples-End -->

<!-- TS_UIA-End -->

<!-- TS_USB_REDIRECTION_DISABLE-Begin -->
## TS_USB_REDIRECTION_DISABLE

<!-- TS_USB_REDIRECTION_DISABLE-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_USB_REDIRECTION_DISABLE-Applicability-End -->

<!-- TS_USB_REDIRECTION_DISABLE-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_USB_REDIRECTION_DISABLE
```
<!-- TS_USB_REDIRECTION_DISABLE-OmaUri-End -->

<!-- TS_USB_REDIRECTION_DISABLE-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to permit RDP redirection of other supported RemoteFX USB devices from this computer. Redirected RemoteFX USB devices won't be available for local usage on this computer.

- If you enable this policy setting, you can choose to give the ability to redirect other supported RemoteFX USB devices over RDP to all users or only to users who are in the Administrators group on the computer.

- If you disable or don't configure this policy setting, other supported RemoteFX USB devices aren't available for RDP redirection by using any user account.

For this change to take effect, you must restart Windows.
<!-- TS_USB_REDIRECTION_DISABLE-Description-End -->

<!-- TS_USB_REDIRECTION_DISABLE-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_USB_REDIRECTION_DISABLE-Editable-End -->

<!-- TS_USB_REDIRECTION_DISABLE-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_USB_REDIRECTION_DISABLE-DFProperties-End -->

<!-- TS_USB_REDIRECTION_DISABLE-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_USB_REDIRECTION_DISABLE |
| Friendly Name | Allow RDP redirection of other supported RemoteFX USB devices from this computer |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Connection Client > RemoteFX USB Device Redirection |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services\Client |
| ADMX File Name | TerminalServer.admx |
<!-- TS_USB_REDIRECTION_DISABLE-AdmxBacked-End -->

<!-- TS_USB_REDIRECTION_DISABLE-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_USB_REDIRECTION_DISABLE-Examples-End -->

<!-- TS_USB_REDIRECTION_DISABLE-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-Begin -->
## TS_USER_AUTHENTICATION_POLICY

<!-- TS_USER_AUTHENTICATION_POLICY-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_USER_AUTHENTICATION_POLICY-Applicability-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_USER_AUTHENTICATION_POLICY
```
<!-- TS_USER_AUTHENTICATION_POLICY-OmaUri-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether to require user authentication for remote connections to the RD Session Host server by using Network Level Authentication. This policy setting enhances security by requiring that user authentication occur earlier in the remote connection process.

- If you enable this policy setting, only client computers that support Network Level Authentication can connect to the RD Session Host server.

To determine whether a client computer supports Network Level Authentication, start Remote Desktop Connection on the client computer, click the icon in the upper-left corner of the Remote Desktop Connection dialog box, and then click About. In the About Remote Desktop Connection dialog box, look for the phrase Network Level Authentication supported.

- If you disable this policy setting, Network Level Authentication isn't required for user authentication before allowing remote connections to the RD Session Host server.

- If you don't configure this policy setting, the local setting on the target computer will be enforced. On Windows Server 2012 and Windows 8, Network Level Authentication is enforced by default.

> [!IMPORTANT]
> Disabling this policy setting provides less security because user authentication will occur later in the remote connection process.
<!-- TS_USER_AUTHENTICATION_POLICY-Description-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_USER_AUTHENTICATION_POLICY-Editable-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_USER_AUTHENTICATION_POLICY-DFProperties-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_USER_AUTHENTICATION_POLICY |
| Friendly Name | Require user authentication for remote connections by using Network Level Authentication |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Security |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | UserAuthentication |
| ADMX File Name | TerminalServer.admx |
<!-- TS_USER_AUTHENTICATION_POLICY-AdmxBacked-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_USER_AUTHENTICATION_POLICY-Examples-End -->

<!-- TS_USER_AUTHENTICATION_POLICY-End -->

<!-- TS_USER_HOME-Begin -->
## TS_USER_HOME

<!-- TS_USER_HOME-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_USER_HOME-Applicability-End -->

<!-- TS_USER_HOME-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_USER_HOME
```
<!-- TS_USER_HOME-OmaUri-End -->

<!-- TS_USER_HOME-Description-Begin -->
<!-- Description-Source-ADMX -->
Specifies whether Remote Desktop Services uses the specified network share or local directory path as the root of the user's home directory for a Remote Desktop Services session.

To use this setting, select the location for the home directory (network or local) from the Location drop-down list. If you choose to place the directory on a network share, type the Home Dir Root Path in the form \\Computername\Sharename, and then select the drive letter to which you want the network share to be mapped.

If you choose to keep the home directory on the local computer, type the Home Dir Root Path in the form "Drive:\Path" (without quotes), without environment variables or ellipses. Don't specify a placeholder for user alias, because Remote Desktop Services automatically appends this at logon.

> [!NOTE]
> The Drive Letter field is ignored if you choose to specify a local path. If you choose to specify a local path but then type the name of a network share in Home Dir Root Path, Remote Desktop Services places user home directories in the network location.

If the status is set to Enabled, Remote Desktop Services creates the user's home directory in the specified location on the local computer or the network. The home directory path for each user is the specified Home Dir Root Path and the user's alias.

If the status is set to Disabled or Not Configured, the user's home directory is as specified at the server.
<!-- TS_USER_HOME-Description-End -->

<!-- TS_USER_HOME-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_USER_HOME-Editable-End -->

<!-- TS_USER_HOME-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_USER_HOME-DFProperties-End -->

<!-- TS_USER_HOME-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_USER_HOME |
| Friendly Name | Set Remote Desktop Services User Home Directory |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Profiles |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_USER_HOME-AdmxBacked-End -->

<!-- TS_USER_HOME-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_USER_HOME-Examples-End -->

<!-- TS_USER_HOME-End -->

<!-- TS_USER_MANDATORY_PROFILES-Begin -->
## TS_USER_MANDATORY_PROFILES

<!-- TS_USER_MANDATORY_PROFILES-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_USER_MANDATORY_PROFILES-Applicability-End -->

<!-- TS_USER_MANDATORY_PROFILES-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_USER_MANDATORY_PROFILES
```
<!-- TS_USER_MANDATORY_PROFILES-OmaUri-End -->

<!-- TS_USER_MANDATORY_PROFILES-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify whether Remote Desktop Services uses a mandatory profile for all users connecting remotely to the RD Session Host server.

- If you enable this policy setting, Remote Desktop Services uses the path specified in the "Set path for Remote Desktop Services Roaming User Profile" policy setting as the root folder for the mandatory user profile. All users connecting remotely to the RD Session Host server use the same user profile.

- If you disable or don't configure this policy setting, mandatory user profiles aren't used by users connecting remotely to the RD Session Host server.

> [!NOTE]
> For this policy setting to take effect, you must also enable and configure the "Set path for Remote Desktop Services Roaming User Profile" policy setting.
<!-- TS_USER_MANDATORY_PROFILES-Description-End -->

<!-- TS_USER_MANDATORY_PROFILES-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_USER_MANDATORY_PROFILES-Editable-End -->

<!-- TS_USER_MANDATORY_PROFILES-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_USER_MANDATORY_PROFILES-DFProperties-End -->

<!-- TS_USER_MANDATORY_PROFILES-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_USER_MANDATORY_PROFILES |
| Friendly Name | Use mandatory profiles on the RD Session Host server |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Profiles |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| Registry Value Name | WFDontAppendUserNameToProfile |
| ADMX File Name | TerminalServer.admx |
<!-- TS_USER_MANDATORY_PROFILES-AdmxBacked-End -->

<!-- TS_USER_MANDATORY_PROFILES-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_USER_MANDATORY_PROFILES-Examples-End -->

<!-- TS_USER_MANDATORY_PROFILES-End -->

<!-- TS_USER_PROFILES-Begin -->
## TS_USER_PROFILES

<!-- TS_USER_PROFILES-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 2004 [10.0.19041.1202] and later <br> ✅ Windows 10, version 2009 [10.0.19042.1202] and later <br> ✅ Windows 10, version 21H1 [10.0.19043.1202] and later <br> ✅ Windows 11, version 21H2 [10.0.22000] and later |
<!-- TS_USER_PROFILES-Applicability-End -->

<!-- TS_USER_PROFILES-OmaUri-Begin -->
```Device
./Device/Vendor/MSFT/Policy/Config/ADMX_TerminalServer/TS_USER_PROFILES
```
<!-- TS_USER_PROFILES-OmaUri-End -->

<!-- TS_USER_PROFILES-Description-Begin -->
<!-- Description-Source-ADMX -->
This policy setting allows you to specify the network path that Remote Desktop Services uses for roaming user profiles.

By default, Remote Desktop Services stores all user profiles locally on the RD Session Host server. You can use this policy setting to specify a network share where user profiles can be centrally stored, allowing a user to access the same profile for sessions on all RD Session Host servers that are configured to use the network share for user profiles.

- If you enable this policy setting, Remote Desktop Services uses the specified path as the root directory for all user profiles. The profiles are contained in subfolders named for the account name of each user.

To configure this policy setting, type the path to the network share in the form of \\Computername\Sharename. Don't specify a placeholder for the user account name, because Remote Desktop Services automatically adds this when the user logs on and the profile is created. If the specified network share doesn't exist, Remote Desktop Services displays an error message on the RD Session Host server and will store the user profiles locally on the RD Session Host server.

- If you disable or don't configure this policy setting, user profiles are stored locally on the RD Session Host server. You can configure a user's profile path on the Remote Desktop Services Profile tab on the user's account Properties dialog box.

Note:

1. The roaming user profiles enabled by the policy setting apply only to Remote Desktop Services connections. A user might also have a Windows roaming user profile configured. The Remote Desktop Services roaming user profile always takes precedence in a Remote Desktop Services session.

1. To configure a mandatory Remote Desktop Services roaming user profile for all users connecting remotely to the RD Session Host server, use this policy setting together with the "Use mandatory profiles on the RD Session Host server" policy setting located in Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Profiles. The path set in the "Set path for Remote Desktop Services Roaming User Profile" policy setting should contain the mandatory profile.
<!-- TS_USER_PROFILES-Description-End -->

<!-- TS_USER_PROFILES-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- TS_USER_PROFILES-Editable-End -->

<!-- TS_USER_PROFILES-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- TS_USER_PROFILES-DFProperties-End -->

<!-- TS_USER_PROFILES-AdmxBacked-Begin -->
[!INCLUDE [ADMX-backed policy note](includes/mdm-admx-policy-note.md)]

**ADMX mapping**:

| Name | Value |
|:--|:--|
| Name | TS_USER_PROFILES |
| Friendly Name | Set path for Remote Desktop Services Roaming User Profile |
| Location | Computer Configuration |
| Path | Windows Components > Remote Desktop Services > Remote Desktop Session Host > Profiles |
| Registry Key Name | SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services |
| ADMX File Name | TerminalServer.admx |
<!-- TS_USER_PROFILES-AdmxBacked-End -->

<!-- TS_USER_PROFILES-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- TS_USER_PROFILES-Examples-End -->

<!-- TS_USER_PROFILES-End -->

<!-- ADMX_TerminalServer-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
<!-- ADMX_TerminalServer-CspMoreInfo-End -->

<!-- ADMX_TerminalServer-End -->

## Related articles

[Policy configuration service provider](policy-configuration-service-provider.md)
