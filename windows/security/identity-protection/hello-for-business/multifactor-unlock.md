---
title: Multi-factor unlock
description: Learn how to configure Windows Hello for Business multi-factor unlock by extending Windows Hello with trusted signals.
ms.date: 01/03/2024
ms.topic: how-to
---

# Multi-factor unlock

Windows Hello for Business supports the use of a single credential (PIN and biometrics) for unlocking a device. Therefore, if any of those credentials are compromised (shoulder surfed), an attacker could gain access to the system.

Windows Hello for Business can be configured with *multi-factor unlock*, by extending Windows Hello with trusted signals. Administrators can configure devices to request a combination of factors and trusted signals to unlock them.

Multi-factor unlock is ideal for organizations that:

- Have expressed that PINs alone don't meet their security needs
- Want to prevent Information Workers from sharing credentials
- Want their organizations to comply with regulatory two-factor authentication policy
- Want to retain the familiar Windows sign-in user experience and not settle for a custom solution

## How it works

**First unlock factor credential provider** and **Second unlock credential provider** are responsible for the bulk of the configuration. Each of these components contains a globally unique identifier (GUID) that represents a different Windows credential provider. With the policy setting enabled, users unlock the device using at least one credential provider from each category before Windows allows the user to proceed to their desktop.

The policy setting has three components:

- First unlock factor credential provider
- Second unlock factor credential provider
- Signal rules for device unlock

## Configure unlock factors

> [!CAUTION]
> When the [DontDisplayLastUserName](/windows/security/threat-protection/security-policy-settings/interactive-logon-do-not-display-last-user-name) security policy is enabled, it is known to interfere with the ability to use multi factor unlock.

The **First unlock factor credential providers** and **Second unlock factor credential providers** portion of the policy setting each contain a comma separated list of credential providers.

Supported credential providers include:

|Credential Provider| GUID|
|:------------------|:----|
|PIN| `{D6886603-9D2F-4EB2-B667-1971041FA96B}`|  
|Fingerprint| `{BEC09223-B018-416D-A0AC-523971B639F5}`|
|Facial Recognition| `{8AF662BF-65A0-4D0A-A540-A338A999D36F}`|
|Trusted Signal<br>(Phone proximity, Network location) | `{27FBDB57-B613-4AF2-9D7E-4FA7A66C21AD}`|

> [!NOTE]
> Multifactor unlock does not support third-party credential providers or credential providers not listed in the above table.

The default credential providers for the **First unlock factor credential provider** include:

- PIN
- Fingerprint
- Facial Recognition

The default credential providers for the **Second unlock factor credential provider** include:

- Trusted Signal
- PIN

Configure a comma separated list of credential provider GUIDs you want to use as first and second unlock factors. While a credential provider can appear in both lists, a credential supported by that provider can only satisfy one of the unlock factors. Listed credential providers don't need to be in any specific order.

For example, if you include the PIN and fingerprint credential providers in both first and second factor lists, a user can use their fingerprint or PIN as the first unlock factor. Whichever factor you use to satisfy the first unlock factor can't be used to satisfy the second unlock factor. Each factor can therefore be used exactly once. The Trusted Signal provider can *only* be specified as part of the Second unlock factor credential provider list.

## Configure Signal Rules for the Trusted Signal Credential Provider

The **Signal rules for device unlock** setting contains the rules the Trusted Signal credential provider uses to satisfy unlocking the device.

### Rule element

You represent signal rules in XML. Each signal rule has a starting and ending `rule` element that contains the `schemaVersion` attribute and value. The current supported schema version is `1.0`.

#### Example

```xml
<rule schemaVersion="1.0">
</rule>
```

### Signal element

Each rule element has a `signal` element. All signal elements have a `type` element and `value`. The values supported are:

- bluetooth
- ipConfig
- wifi

#### Bluetooth

You define the bluetooth signal with more attributes in the signal element. The bluetooth configuration doesn't use any other elements. You can end the signal element with short ending tag `/>`.

|Attribute|Value|Required|
|---------|-----|--------|
|type|`bluetooth`|yes|
|scenario|`Authentication`|yes|
|classOfDevice|"*number*"|no|
|rssiMin|"*number*"|no|
|rssiMaxDelta|"*number*"|no|

For example:

```xml
<rule schemaVersion="1.0">
    <signal type="bluetooth" scenario="Authentication" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</rule>
```

The **classofDevice** attribute defaults to Phone and uses the values from the following table:

|Description|Value|
|:-------------|:-------:|
|Miscellaneous|0|
|Computer|256|
|Phone|512|
|LAN/Network Access Point|768|
|Audio/Video|1024|
|Peripheral|1280|
|Imaging|1536|
|Wearable|1792|
|Toy|2048|
|Health|2304|
|Uncategorized|7936|

The **rssiMin** attribute value signal indicates the strength needed for the device to be considered "in-range". The default value of **-10** enables a user to move about an average size office or cubicle without triggering Windows to lock the device. The **rssiMaxDelta** has a default value of **-10**, which instruct Windows to lock the device once the signal strength weakens by more than measurement of 10. 

RSSI measurements are relative, and lower as the bluetooth signals between the two paired devices reduces. A measurement of 0 is stronger than -10. A measurement of -10 is stronger than -60, and indicates that the devices are moving further apart from each other.

>[!IMPORTANT]
>Microsoft recommends using the default values for this policy setting. Measurements are relative, based on the varying conditions of each environment. Therefore, the same values may produce different results. Test policy settings in each environment prior to broadly deploying the setting. Use the rssiMIN and rssiMaxDelta values from the XML file created by the Group Policy Management Editor or remove both attributes to use the default values.

#### IP Configuration

You define IP configuration signals using one or more ipConfiguration elements. Each element has a string value. IpConfiguration elements don't have attributes or nested elements.

##### IPv4Prefix

The IPv4 network prefix represented in Internet standard dotted-decimal notation. A network prefix that uses the Classless Inter-Domain Routing (CIDR) notation is required as part of the network string. A network port must not be present in the network string. A **signal** element may only contain one **ipv4Prefix** element. For example:

```xml
<ipv4Prefix>192.168.100.0/24</ipv4Prefix>
```

The assigned IPv4 addresses in the range of 192.168.100.1 to 192.168.100.254 match this signal configuration.

##### IPv4Gateway

The IPv4 network gateway represented in Internet standard dotted-decimal notation. A network port or prefix must not be present in the network string. A **signal** element may only contain one **ipv4Gateway** element. For example:

```xml
<ipv4Gateway>192.168.100.10</ipv4Gateway>
```

##### IPv4DhcpServer

The IPv4 DHCP server represented in Internet standard dotted-decimal notation. A network port or prefix must not be present in the network string. A **signal** element may only contain one **ipv4DhcpServer** element. For example:

```xml
<ipv4DhcpServer>192.168.100.10</ipv4DhcpServer>
```

##### IPv4DnsServer

The IPv4 DNS server represented in Internet standard dotted-decimal notation. A network port or prefix must not be present in the network string.The **signal** element may contain one or more **ipv4DnsServer** elements.

**Example:**
```xml
<ipv4DnsServer>192.168.100.10</ipv4DnsServer>
```

##### IPv6Prefix

The IPv6 network prefix represented in IPv6 network using Internet standard hexadecimal encoding. A network prefix in CIDR notation is required as part of the network string. A network port or scope ID must not be present in the network string. A **signal** element may only contain one **ipv6Prefix** element. For example: 

```xml
<ipv6Prefix>21DA:D3::/48</ipv6Prefix>
```

##### IPv6Gateway

The IPv6 network gateway represented in Internet standard hexadecimal encoding. An IPv6 scope ID may be present in the network string. A network port or prefix must not be present in the network string. A **signal** element may only contain one **ipv6Gateway** element. For example:

```xml
<ipv6Gateway>21DA:00D3:0000:2F3B:02AA:00FF:FE28:9C5A%2</ipv6Gateway>
```

##### IPv6DhcpServer

The IPv6 DNS server represented in Internet standard hexadecimal encoding. An IPv6 scope ID may be present in the network string. A network port or prefix must not be present in the network string. A **signal** element may only contain one **ipv6DhcpServer** element. For example:

```xml
<ipv6DhcpServer>21DA:00D3:0000:2F3B:02AA:00FF:FE28:9C5A%2</ipv6DhcpServer
```

##### IPv6DnsServer

The IPv6 DNS server represented in Internet standard hexadecimal encoding. An IPv6 scope ID may be present in the network string. A network port or prefix must not be present in the network string. The **signal** element may contain one or more **ipv6DnsServer** elements. For example:

```xml
<ipv6DnsServer>21DA:00D3:0000:2F3B:02AA:00FF:FE28:9C5A%2</ipv6DnsServer>
```

##### dnsSuffix

The fully qualified domain name of your organization's internal DNS suffix where any part of the fully qualified domain name in this setting exists in the computer's primary DNS suffix. The **signal** element may contain one or more **dnsSuffix** elements. For example:

```xml
<dnsSuffix>corp.contoso.com</dnsSuffix>
```

#### Wi-Fi

You define Wi-Fi signals using one or more wifi elements. Each element has a string value. Wifi elements don't have attributes or nested elements.

##### SSID

Contains the service set identifier (SSID) of a wireless network. The SSID is the name of the wireless network. The SSID element is required. For example:

```xml
<ssid>corpnetwifi</ssid>
```

##### BSSID

Contains the basic service set identifier (BSSID) of a wireless access point. the BSSID is the mac address of the wireless access point. The BSSID element is optional. For example:

```xml
<bssid>12-ab-34-ff-e5-46</bssid>
```

##### Security

Contains the type of security the client uses when connecting to the wireless network. The security element is required and must contain one of the following values:<br>

|Value | Description|
|:----:|:-----------|
|Open| The wireless network is an open network that doesn't require any authentication or encryption.|
|WEP| The wireless network is protected using Wired Equivalent Privacy.|
|WPA-Personal| The wireless network is protected using Wi-Fi Protected Access.|
|WPA-Enterprise| The wireless network is protected using Wi-Fi Protected Access-Enterprise.|
|WPA2-Personal| The wireless network is protected using Wi-Fi Protected Access 2, which typically uses a pre-shared key.|
|WPA2-Enterprise| The wireless network is protected using Wi-Fi Protected Access 2-Enterprise.|

For example:

```xml
<security>WPA2-Enterprise</security> 
```

#### TrustedRootCA

Contains the thumbprint of the trusted root certificate of the wireless network. You can use any valid trusted root certificate. The value is represented as hexadecimal string, where each byte in the string is separated by a single space. The element is optional. For example:

```xml
<trustedRootCA>a2 91 34 aa 22 3a a2 3a 4a 78 a2 aa 75 a2 34 2a 3a 11 4a aa</trustedRootCA>
```

#### Sig_quality
Contains numeric value ranging from 0 to 100 to represent the wireless network's signal strength needed to be considered a trusted signal.

For example:

```xml
<sig_quality>80</sig_quality>
```

### Sample Trusted Signal Configurations

>[!IMPORTANT]
> These examples are wrapped for readability. Once properly formatted, the entire XML contents must be a single line.

#### Example 1

The following example configures an **IPConfig** signal type using **Ipv4Prefix**, **Ipv4DnsServer**, and **DnsSuffix** elements.

```xml
<rule schemaVersion="1.0"> 
    <signal type="ipConfig"> 
        <ipv4Prefix>10.10.10.0/24</ipv4Prefix>
        <ipv4DnsServer>10.10.0.1</ipv4DnsServer>
        <ipv4DnsServer>10.10.0.2</ipv4DnsServer>
        <dnsSuffix>corp.contoso.com</dnsSuffix> 
    </signal> 
</rule>
```

#### Example 2

The following example configures an **IpConfig** signal type using a **dnsSuffix** element and a **bluetooth** signal for phones. The example implies that either the IpConfig **or** the Bluetooth rule must evaluate to true, for the resulting signal evaluation to be true.

>[!NOTE]
>Separate each rule element using a comma.

```xml
<rule schemaVersion="1.0"> 
    <signal type="ipConfig"> 
        <dnsSuffix>corp.contoso.com</dnsSuffix> 
    </signal> 
</rule>,
<rule schemaVersion="1.0">
    <signal type="bluetooth" scenario="Authentication" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</rule>
```

#### Example 3

The following example configures the same as example 2 using compounding `and` elements. The example implies that the IpConfig **and** the Bluetooth rule must evaluate to true, for the resulting signal evaluation to be true.

```xml
<rule schemaVersion="1.0">
<and>
  <signal type="ipConfig">
   <dnsSuffix>corp.microsoft.com</dnsSuffix>
  </signal> 
  <signal type="bluetooth" scenario="Authentication" classOfDevice="512" rssiMin="-10" rssiMaxDelta="-10"/>
</and>
</rule>
```

#### Example 4

The following example configures **Wi-Fi** as a trusted signal.

```xml
<rule schemaVersion="1.0">
  <signal type="wifi">
    <ssid>contoso</ssid>
    <bssid>12-ab-34-ff-e5-46</bssid>
    <security>WPA2-Enterprise</security>
    <trustedRootCA>a2 91 34 aa 22 3a a2 3a 4a 78 a2 aa 75 a2 34 2a 3a 11 4a aa</trustedRootCA>
    <sig_quality>80</sig_quality>
  </signal>
</rule>
```

## Configure multi-factor unlock

To configure multi-factor unlock you can use:

- Microsoft Intune/CSP
- Group policy

>[!IMPORTANT]
>
> - PIN **must** be in at least one of the groups
> - Trusted signals **must** be combined with another credential provider
> - You can't use the same unlock factor to satisfy both categories. Therefore, if you include any credential provider in bothcategories, it means it can satisfy either category, but not both

[!INCLUDE [tab-intro](../../../../includes/configure/tab-intro.md)]

#### [:::image type="icon" source="../../images/icons/intune.svg" border="false"::: **Intune/CSP**](#tab/intune)

[!INCLUDE [intune-settings-catalog-1](../../../../includes/configure/intune-settings-catalog-1.md)]

| Category | Setting name |
|--|--|
| **Administrative Templates** > **Windows Hello for Business** | Device Unlock Plugins |

1. Configure first and second unlock factors using the information in [Configure Unlock Factors](#configure-unlock-factors)
1. If using trusted signals, configure the trusted signals used by the unlock factor using the information in [Configure Signal Rules for the Trusted Signal Credential Provider](#configure-signal-rules-for-the-trusted-signal-credential-provider)

[!INCLUDE [intune-settings-catalog-2](../../../../includes/configure/intune-settings-catalog-2.md)]

Alternatively, you can configure devices using a [custom policy][INT-1] with the [PassportForWork CSP][CSP-1].

| Setting |
|--------|
| ./Device/Vendor/MSFT/PassportForWork/[DeviceUnlock](/windows/client-management/mdm/passportforwork-csp#devicedeviceunlock)|

#### [:::image type="icon" source="../../images/icons/group-policy.svg" border="false"::: **GPO**](#tab/gpo)

[!INCLUDE [gpo-settings-1](../../../../includes/configure/gpo-settings-1.md)]

| Group policy path | Group policy setting | Value |
| - | - | - |
| **Computer Configuration** > **Administrative Templates** > **Windows Components** > **Windows Hello for Business**  | Configure device unlock factors | Enabled |

1. Configure first and second unlock factors using the information in [Configure Unlock Factors](#configure-unlock-factors)
1. If using trusted signals, configure the trusted signals used by the unlock factor using the information in [Configure Signal Rules for the Trusted Signal Credential Provider](#configure-signal-rules-for-the-trusted-signal-credential-provider)

[!INCLUDE [gpo-settings-2](../../../../includes/configure/gpo-settings-2.md)]

---

>[!IMPORTANT]
>You should remove all third party credential providers to ensure users cannot unlock their devices if they do not have the required factors. The fall back options are to use passwords or smart cards (both of which could be disabled as needed).

## User experience

Here's a brief video showing the user experience when multi-factor unlock is enabled:

1. The user first signs in with fingerprint + Bluetooth-paired phone
1. The user then signs in with fingerprint + PIN

> [!VIDEO https://learn-video.azurefd.net/vod/player?id=2bdf21db-30c9-4d8e-99ff-f3ae72c494fe alt-text="Video showing the user experience of multi-factor unlock using fingerprint+Bluetooth and fingerprint+PIN."]

## Troubleshoot

Multi-factor unlock writes events to event log under **Application and Services Logs\Microsoft\Windows\HelloForBusiness** with the category name **Device Unlock**.

### Events

|Event ID|Details|
|:------:|:------|
|3520|Unlock attempt initiated|
|5520|Unlock policy not configured|
|6520|Warning event|
|7520|Error event|
|8520|Success event|

<!--links-->

[CSP-1]: /windows/client-management/mdm/passportforwork-csp
[INT-1]: /mem/intune/configuration/settings-catalog
