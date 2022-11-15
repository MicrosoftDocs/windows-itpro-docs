---
title: Personalization CSP
description: Use the Personalization CSP to lock screen and desktop background images, prevent users from changing the image, and use the settings in a provisioning package.
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/28/2022
ms.reviewer: 
manager: aaroncz
---

# Personalization CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|No|No|
|Pro|No|No|
|Windows SE|No|Yes|
|Business|No|No|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The Personalization CSP can set the lock screen and desktop background images. Setting these policies also prevents the user from changing the image. You can also use the Personalization settings in a provisioning package.

This CSP was added in Windows 10, version 1703.

> [!Note]
> Personalization CSP is supported in Windows Enterprise and Education SKUs. It works in Windows Professional if SetEduPolicies in [SharedPC CSP](sharedpc-csp.md) is set.

The following example shows the Personalization configuration service provider in tree format.
```
./Vendor/MSFT
Personalization
----DesktopImageUrl
----DesktopImageStatus
----LockScreenImageUrl
----LockScreenImageStatus
```
<a href="" id="personalization"></a>**./Vendor/MSFT/Personalization**
<p>Defines the root node for the Personalization configuration service provider.</p>

<a href="" id="desktopimageurl"></a>**DesktopImageUrl**
<p>Specify a jpg, jpeg or png image to be used as Desktop Image. This setting can take an http or https Url to a remote image to be downloaded, a file Url to a local image.</p>
<p>Value type is string. Supported operations are Add, Get, Delete, and Replace.</p>

<a href="" id="desktopimagestatus"></a>**DesktopImageStatus**
<p>Represents the status of the desktop image. Valid values:</p>
<ul>
<li>1 - Successfully downloaded or copied.</li>
<li>2 - Download or copy in progress.</li>
<li>3 - Download or copy failed.</li>
<li>4 - Unknown file type.</li>
<li>5 - Unsupported URL scheme.</li>
<li>6 - Max retry failed.</li>
<li>7 - Blocked, SKU not allowed</li>
</ul>
<p>Supporter operation is Get.</p>

> [!Note]
> This setting is only used to query status. To set the image, use the DesktopImageUrl setting.

<a href="" id="lockscreenimageurl"></a>**LockScreenImageUrl**
<p>Specify a jpg, jpeg or png image to be used as Lock Screen Image. This setting can take an http or https Url to a remote image to be downloaded, a file Url to a local image.</p>
<p>Value type is string. Supported operations are Add, Get, Delete, and Replace.</p>


<a href="" id="lockscreenimagestatus"></a>**LockScreenImageStatus**
<p>Represents the status of the lock screen image. Valid values:</p>
<ul>
<li>1 - Successfully downloaded or copied.</li>
<li>2 - Download or copy in progress.</li>
<li>3 - Download or copy failed.</li>
<li>4 - Unknown file type.</li>
<li>5 - Unsupported URL scheme.</li>
<li>6 - Max retry failed.</li>
<li>7 - Blocked, SKU not allowed</li>
</ul>
<p>Supporter operation is Get.</p>

> [!Note]
> This setting is only used to query status. To set the image, use the LockScreenImageUrl setting.


## Example SyncML

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



