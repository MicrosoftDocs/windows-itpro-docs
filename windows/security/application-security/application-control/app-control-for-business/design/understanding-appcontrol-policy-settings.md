---
title: Understanding App Control for Business secure settings
description: Learn about secure settings in App Control for Business.
ms.localizationpriority: medium
ms.date: 09/11/2024
ms.topic: conceptual
---

# Understanding App Control Policy Settings

App Control for Business policies expose a Settings section where policy authors can define arbitrary secure settings. Secure Settings provide local admin tamper-free settings for secure boot enabled systems, with policy signing enabled. Settings consist of a Provider, Key, ValueName, and a setting value. Setting values can be of type boolean, ulong, binary, and string. Applications can query for policy settings using WldpQuerySecurityPolicy.

An example settings section of an App Control for Business policy:

```xml
<Settings>
  <Setting Provider="Contoso" Key="FooApplication" ValueName="DisableMacroExecution">
    <Value>
      <Boolean>true</Boolean>
    </Value>
  </Setting>
</Settings>
```

## Example Scenario

An application that may want to restrict its capabilities, when used on a system with an active App Control for Business policy. Application authors can define an App Control policy, setting their application queries, in order to disable certain features. For example, if Contoso's Foo Application wants to disable a risky feature, such as macro execution, they can define an App Control policy setting, and query for it at runtime. Contoso can then instruct IT administrators to configure the setting in their App Control policy, if they don't want Foo Application to execute macros on a system with an App Control policy.

## WldpQuerySecurityPolicy

API that queries the secure settings of an App Control for Business policy.

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

Pointer to a buffer to receive the value. The buffer should be of size "ValueSize". If this value is NULL, this function returns the required buffer size for Value.

#### ValueSize [in, out]

On input, it indicates the buffer size of "Value". On successful return, it indicates the size of data written to Value buffer.

#### Return Value

This method returns S_OK if successful or a failure code otherwise.
