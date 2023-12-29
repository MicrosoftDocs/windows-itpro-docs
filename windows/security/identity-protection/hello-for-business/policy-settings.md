---
title: Windows Hello for Business policy settings
description: Learn about the policy settings to configure Configure Windows Hello for Business.
ms.topic: reference
ms.date: 01/03/2024
---

# Windows Hello for Business policy settings

The list of settings is sorted alphabetically and organized in four categories:

- **Feature settings**: used to enable Windows Hello for Business and configure basic options
- **PIN setting**: used to configure PIN authentication, like PIN complexity and recovery
- **Biometric setting**: used to configure biometric authentication
- **Smart card settings**: used to configure smart card authentication used in conjunction with Windows Hello for Business

Select one of the tabs to see the list of available settings:

# [:::image type="icon" source="images/hello.svg"::: **Feature settings**](#tab/feature)

|Setting Name|CSP|GPO|
|-|-|-|
|[Configure device unlock factors](#configure-device-unlock-factors)|✅|✅|
|[Configure dynamic lock factors](#configure-dynamic-lock-factors)|✅|✅|
|[Use a hardware security device](#use-a-hardware-security-device)|✅|✅|
|[Use certificate for on-premises authentication](#use-certificate-for-on-premises-authentication)|✅|✅|
|[Use cloud (Kerberos) trust for on-premises authentication](#use-cloud-trust-for-on-premises-authentication)|✅|✅|
|[Use Windows Hello for Business](#use-windows-hello-for-business)|✅|✅|

[!INCLUDE [configure-device-unlock-factors](includes/configure-device-unlock-factors.md)]
[!INCLUDE [configure-dynamic-lock-factors](includes/configure-dynamic-lock-factors.md)]
[!INCLUDE [use-a-hardware-security-device](includes/use-a-hardware-security-device.md)]
[!INCLUDE [use-certificate-for-on-premises-authentication](includes/use-certificate-for-on-premises-authentication.md)]
[!INCLUDE [use-cloud-trust-for-on-premises-authentication](includes/use-cloud-trust-for-on-premises-authentication.md)]
[!INCLUDE [use-windows-hello-for-business](includes/use-windows-hello-for-business.md)]

# [:::image type="icon" source="images/pin.svg"::: **PIN settings**](#tab/pin)

|Setting Name|CSP|GPO|
|-|-|-|-|
|[Expiration](#expiration)|✅|✅|
|[History](#history)|✅|✅|
|[Maximum PIN length](#maximum-pin-length)|✅|✅|
|[Minimum PIN length](#minimum-pin-length)|✅|✅|
|[Require digits](#require-digits)|✅|✅|
|[Require lowercase letters](#require-lowercase-letters)|✅|✅|
|[Require special characters](#require-special-characters)|✅|✅|
|[Require uppercase letters](#require-uppercase-letters)|✅|✅|

[!INCLUDE [expiration](includes/expiration.md)]
[!INCLUDE [history](includes/history.md)]
[!INCLUDE [maximum-pin-length](includes/maximum-pin-length.md)]
[!INCLUDE [minimum-pin-length](includes/minimum-pin-length.md)]
[!INCLUDE [require-digits](includes/require-digits.md)]
[!INCLUDE [require-lowercase-letters](includes/require-lowercase-letters.md)]
[!INCLUDE [require-special-characters](includes/require-special-characters.md)]
[!INCLUDE [require-uppercase-letters](includes/require-uppercase-letters.md)]
[!INCLUDE [use-pin-recovery](includes/use-pin-recovery.md)]

# [:::image type="icon" source="images/fingerprint.svg"::: **Biometric settings**](#tab/bio)

|Setting Name|CSP|GPO|
|-|-|-|
|[Configure enhanced anti-spoofing](#configure-enhanced-anti-spoofing)|✅|✅|
|[Enable ESS with Supported Peripherals](#enable-ess-with-supported-peripherals)|✅|✅|
|[Use biometrics](#use-biometrics)|✅|✅|

[!INCLUDE [configure-enhanced-anti-spoofing](includes/configure-enhanced-anti-spoofing.md)]
[!INCLUDE [enable-ess-with-supported-peripherals](includes/enable-ess-with-supported-peripherals.md)]
[!INCLUDE [use-biometrics](includes/use-biometrics.md)]


# [:::image type="icon" source="images/smartcard.svg"::: **Smart card settings**](#tab/smartcard)

|Setting Name|CSP|GPO|
|-|-|-|
|[Turn off smart card emulation](#turn-off-smart-card-emulation)|❌|✅|
|[Allow enumeration of emulated smart card for all users](#allow-enumeration-of-emulated-smart-card-for-all-users)|❌|✅|
|[Use Windows Hello for Business certificates as smart card certificates](#use-windows-hello-for-business-certificates-as-smart-card-certificates)|✅|✅|


[!INCLUDE [allow-enumeration-of-emulated-smart-card-for-all-users](includes/allow-enumeration-of-emulated-smart-card-for-all-users.md)]
[!INCLUDE [turn-off-smart-card-emulation](includes/turn-off-smart-card-emulation.md)]
[!INCLUDE [use-windows-hello-for-business-certificates-as-smart-card-certificates](includes/use-windows-hello-for-business-certificates-as-smart-card-certificates.md)]
---
