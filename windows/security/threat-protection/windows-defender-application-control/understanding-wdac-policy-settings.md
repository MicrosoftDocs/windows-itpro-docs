---
title: Understanding WDAC secure settings.
description: Learn about secure settings in Windows Defender Application Control.
keywords: security, malware
ms.assetid: 8d6e0474-c475-411b-b095-1c61adb2bdbb
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
audience: ITPro
ms.collection: M365-security-compliance
author: jogeurte
ms.reviewer: jogeurte
ms.author: dansimp
manager: dansimp
ms.date: 10/11/2021
ms.technology: mde
---

# Understanding WDAC Policy Settings
Windows Defender Application Control (WDAC) Policies expose a Settings section where policy authors can define arbitrary secure settings. Secure Settings provide local admin tamper-free settings for secure boot enabled systems, with policy signing enabled. Settings consist of a Provider, Key, and ValueName, as well as a setting value. Setting values can be of type boolean, ulong, binary, and string. Applications can query for policy settings using WldpQuerySecurityPolicy. <br/>

An example settings section of a WDAC Policy:
```xml
<Settings>
  <Setting Provider="Contoso" Key="FooApplication" ValueName="DisableMacroExecution">
    <Value>
      <Boolean>true</Boolean>
    </Value>
  </Setting>
</Settings>
```

### Example Scenario
An application that may want to restrict its capabilities, when used on a system with an active WDAC policy. Application authors can define a WDAC policy, setting their application queries, in order to disable certain features. For example, if Contoso’s Foo Application wants to disable a risky feature, such as macro execution, they can define a WDAC policy setting, and query for it at runtime. Contoso can then instruct IT administrators to configure the setting in their WDAC policy, if they don’t want Foo Application to execute macros on a system with a WDAC policy.<br/>


### WldpQuerySecurityPolicy
API that queries the secure settings of a WDAC policy.

### Syntax
``` C++
HRESULT WINAPI WldpQuerySecurityPolicy(
    _In_ const UNICODE_STRING * Provider,
    _In_ const UNICODE_STRING * Key,
    _In_ const UNICODE_STRING * ValueName,
    _Out_ PWLDP_SECURE_SETTING_VALUE_TYPE ValueType,
    _Out_writes_bytes_opt_(*ValueSize) PVOID Value,
    _Inout_ PULONG ValueSize)
```

### Parameters
Provider [in]
Setting Provider name.

#### Key [in]
Key name of the Key-Value pair under Setting Provider "Provider".

#### ValueName [in]
The value name of the "Key-Value" pair.

#### ValueType [in, out]
Pointer to receive the value type.

#### Value [in, out]
Pointer to a buffer to receive the value. The buffer should be of size “ValueSize”. If this value is NULL, this function will return the required buffer size for Value.

#### ValueSize [in, out]
On input, it indicates the buffer size of "Value". On successful return, it indicates the size of data written to Value buffer.

#### Return Value
This method returns S_OK if successful or a failure code otherwise.

#### Remarks
See [WDAC Policy Settings] for more information on WDAC policy settings. 
