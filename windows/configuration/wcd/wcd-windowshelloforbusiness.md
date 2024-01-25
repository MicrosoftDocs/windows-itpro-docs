---
title: WindowsHelloForBusiness
description: This section describes the Windows Hello for Business settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer. 

ms.topic: reference
 

ms.date: 12/31/2017
--- 

# WindowsHelloForBusiness (Windows Configuration Designer reference) 


Use WindowsHelloForBusiness settings to specify whether [FIDO2 security keys for Windows Hello](https://blogs.windows.com/business/2018/04/17/windows-hello-fido2-security-keys/) can be used to sign in to a Windows device configured for [Shared PC mode](wcd-sharedpc.md). 

## Applies to 

| Setting groups | Windows client | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | 

| [SecurityKeys](#securitykeys) | ✅ |  |  |  | 

## SecurityKeys 

Select the value: 

- `0`: Security keys for Windows Hello are disabled.
- `1`: Security keys for Windows Hello are enabled on [Shared PCs](wcd-sharedpc.md).
