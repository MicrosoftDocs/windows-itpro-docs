---
title: Personalization CSP
description: Learn more about the Personalization CSP.
author: vinaypamnani-msft
manager: aaroncz
ms.author: vinpa
ms.date: 08/10/2023
ms.localizationpriority: medium
ms.prod: windows-client
ms.technology: itpro-manage
ms.topic: reference
---

<!-- Auto-Generated CSP Document -->

<!-- Personalization-Begin -->
# Personalization CSP

<!-- Personalization-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
The Personalization CSP can set the lock screen and desktop background images. Setting these policies also prevents the user from changing the image. You can also use the Personalization settings in a provisioning package.

> [!IMPORTANT]
> Personalization CSP is supported in Windows Enterprise and Education SKUs. It works in Windows Professional only when SetEduPolicies in [SharedPC CSP](sharedpc-csp.md) is set.
<!-- Personalization-Editable-End -->

<!-- Personalization-Tree-Begin -->
The following list shows the Personalization configuration service provider nodes:

- ./Vendor/MSFT/Personalization
  - [DesktopImageStatus](#desktopimagestatus)
  - [DesktopImageUrl](#desktopimageurl)
  - [LockScreenImageStatus](#lockscreenimagestatus)
  - [LockScreenImageUrl](#lockscreenimageurl)
<!-- Personalization-Tree-End -->

<!-- Device-DesktopImageStatus-Begin -->
## DesktopImageStatus

<!-- Device-DesktopImageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-DesktopImageStatus-Applicability-End -->

<!-- Device-DesktopImageStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/Personalization/DesktopImageStatus
```
<!-- Device-DesktopImageStatus-OmaUri-End -->

<!-- Device-DesktopImageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This represents the status of the DesktopImage. 1 - Successfully downloaded or copied. 2 - Download/Copy in progress. 3 - Download/Copy failed. 4 - Unknown file type. 5 - Unsupported Url scheme. 6 - Max retry failed.
<!-- Device-DesktopImageStatus-Description-End -->

<!-- Device-DesktopImageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DesktopImageStatus-Editable-End -->

<!-- Device-DesktopImageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-DesktopImageStatus-DFProperties-End -->

<!-- Device-DesktopImageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DesktopImageStatus-Examples-End -->

<!-- Device-DesktopImageStatus-End -->

<!-- Device-DesktopImageUrl-Begin -->
## DesktopImageUrl

<!-- Device-DesktopImageUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-DesktopImageUrl-Applicability-End -->

<!-- Device-DesktopImageUrl-OmaUri-Begin -->
```Device
./Vendor/MSFT/Personalization/DesktopImageUrl
```
<!-- Device-DesktopImageUrl-OmaUri-End -->

<!-- Device-DesktopImageUrl-Description-Begin -->
<!-- Description-Source-DDF -->
A http or https Url to a jpg, jpeg or png image that needs to be downloaded and used as the Desktop Image or a file Url to a local image on the file system that needs to be used as the Desktop Image.
<!-- Device-DesktopImageUrl-Description-End -->

<!-- Device-DesktopImageUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-DesktopImageUrl-Editable-End -->

<!-- Device-DesktopImageUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-DesktopImageUrl-DFProperties-End -->

<!-- Device-DesktopImageUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-DesktopImageUrl-Examples-End -->

<!-- Device-DesktopImageUrl-End -->

<!-- Device-LockScreenImageStatus-Begin -->
## LockScreenImageStatus

<!-- Device-LockScreenImageStatus-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-LockScreenImageStatus-Applicability-End -->

<!-- Device-LockScreenImageStatus-OmaUri-Begin -->
```Device
./Vendor/MSFT/Personalization/LockScreenImageStatus
```
<!-- Device-LockScreenImageStatus-OmaUri-End -->

<!-- Device-LockScreenImageStatus-Description-Begin -->
<!-- Description-Source-DDF -->
This represents the status of the LockScreenImage. 1 - Successfully downloaded or copied. 2 - Download/Copy in progress. 3 - Download/Copy failed. 4 - Unknown file type. 5 - Unsupported Url scheme. 6 - Max retry failed.
<!-- Device-LockScreenImageStatus-Description-End -->

<!-- Device-LockScreenImageStatus-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LockScreenImageStatus-Editable-End -->

<!-- Device-LockScreenImageStatus-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `int` |
| Access Type | Get |
<!-- Device-LockScreenImageStatus-DFProperties-End -->

<!-- Device-LockScreenImageStatus-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LockScreenImageStatus-Examples-End -->

<!-- Device-LockScreenImageStatus-End -->

<!-- Device-LockScreenImageUrl-Begin -->
## LockScreenImageUrl

<!-- Device-LockScreenImageUrl-Applicability-Begin -->
| Scope | Editions | Applicable OS |
|:--|:--|:--|
| ✅ Device <br> ❌ User | ✅ Pro <br> ✅ Enterprise <br> ✅ Education <br> ✅ Windows SE <br> ✅ IoT Enterprise / IoT Enterprise LTSC | ✅ Windows 10, version 1709 [10.0.16299] and later |
<!-- Device-LockScreenImageUrl-Applicability-End -->

<!-- Device-LockScreenImageUrl-OmaUri-Begin -->
```Device
./Vendor/MSFT/Personalization/LockScreenImageUrl
```
<!-- Device-LockScreenImageUrl-OmaUri-End -->

<!-- Device-LockScreenImageUrl-Description-Begin -->
<!-- Description-Source-DDF -->
A http or https Url to a jpg, jpeg or png image that neeeds to be downloaded and used as the Lock Screen Image or a file Url to a local image on the file system that needs to be used as the Lock Screen Image.
<!-- Device-LockScreenImageUrl-Description-End -->

<!-- Device-LockScreenImageUrl-Editable-Begin -->
<!-- Add any additional information about this policy here. Anything outside this section will get overwritten. -->
<!-- Device-LockScreenImageUrl-Editable-End -->

<!-- Device-LockScreenImageUrl-DFProperties-Begin -->
**Description framework properties**:

| Property name | Property value |
|:--|:--|
| Format | `chr` (string) |
| Access Type | Add, Delete, Get, Replace |
<!-- Device-LockScreenImageUrl-DFProperties-End -->

<!-- Device-LockScreenImageUrl-Examples-Begin -->
<!-- Add any examples for this policy here. Examples outside this section will get overwritten. -->
<!-- Device-LockScreenImageUrl-Examples-End -->

<!-- Device-LockScreenImageUrl-End -->

<!-- Personalization-CspMoreInfo-Begin -->
<!-- Add any additional information about this CSP here. Anything outside this section will get overwritten. -->
## Example

```xml
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
    <Replace>
      <CmdID>1</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/Personalization/LockScreenImageUrl
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>https://www.contoso.com/desktopimage.jpeg</Data>
      </Item>
    </Replace>
    <Replace>
      <CmdID>2</CmdID>
      <Item>
        <Target>
          <LocURI>
            ./Vendor/MSFT/Personalization/DesktopImageUrl
          </LocURI>
        </Target>
        <Meta>
          <Format xmlns="syncml:metinf">chr</Format>
          <Type>text/plain</Type>
        </Meta>
        <Data>https://www.contoso.com/lockscreenimage.JPG</Data>
      </Item>
    </Replace>
    <Final/>
  </SyncBody>
</SyncML>
```
<!-- Personalization-CspMoreInfo-End -->

<!-- Personalization-End -->

## Related articles

[Configuration service provider reference](configuration-service-provider-reference.md)
