---
title: SecurityPolicy CSP
description: The SecurityPolicy CSP is used to configure security policy settings for WAP push, OMA DM, Service Indication (SI), Service Loading (SL), and MMS.
ms.date: 06/26/2017
---

# SecurityPolicy CSP

The table below shows the applicability of Windows:

|Edition|Windows 10|Windows 11|
|--- |--- |--- |
|Home|Yes|Yes|
|Pro|Yes|Yes|
|Windows SE|No|Yes|
|Business|Yes|Yes|
|Enterprise|Yes|Yes|
|Education|Yes|Yes|

The SecurityPolicy configuration service provider is used to configure security policy settings for WAP push, OMA Client Provisioning, OMA DM, Service Indication (SI), Service Loading (SL), and MMS.

> [!NOTE]
> This configuration service provider requires the ID\_CAP\_CSP\_FOUNDATION and ID\_CAP\_DEVICE\_MANAGEMENT\_SECURITY\_POLICIES capabilities to be accessed from a network configuration application.

For the SecurityPolicy CSP, you cannot use the Replace command unless the node already exists.

The following example shows the SecurityPolicy configuration service provider management object in tree format as used by both OMA DM and OMA Client Provisioning.

```console
./Vendor/MSFT
SecurityPolicy
----PolicyID
```

<a href="" id="policyid"></a>***PolicyID***
Defines the security policy identifier as a decimal value.

The following security policies are supported.

- **PolicyID**: 4104 | Hex: 1008
  - **Policy name**: TPS Policy
  - **Policy description**: This setting indicates whether mobile operators can be assigned the Trusted Provisioning Server (TPS) SECROLE_OPERATOR_TPS role.
    - Default value: 1
    - Supported values:
      - 0: The TPS role assignment is disabled.
      - 1: The TPS role assignment is enabled, and can be assigned to mobile operators.

- **PolicyID**: 4105 | Hex: 1009
  - **Policy name**: Message Authentication Retry Policy
  - **Policy description**: This setting specifies the maximum number of times the user is allowed to try authenticating a Wireless Application Protocol (WAP) PIN-signed message.
    - Default value: 3
    - Supported values: 0 through 256

- **PolicyID**: 4108 | Hex: 100c
  - **Policy name**: Service Loading Policy
  - **Policy description**: This setting indicates whether SL messages are accepted, by specifying the security roles that can accept SL messages. An SL message downloads new services or provisioning XML to the device.
    - Default value: 256 (SECROLE_KNOWN_PPG)
    - Supported values: SECROLE_ANY_PUSH_SOURCE, SECROLE_KNOWN_PPG

- **PolicyID**: 4109 | Hex:100d
  - **Policy name**: Service Indication Policy
  - **Policy description**: This setting indicates whether SI messages are accepted, by specifying the security roles that can accept SI messages. An SI message is sent to the device to notify users of new services, service updates, and provisioning services.
    - Default value: 256 (SECROLE_KNOWN_PPG)
    - Supported values: SECROLE_ANY_PUSH_SOURCE, SECROLE_KNOWN_PPG

- **PolicyID**: 4111 | Hex:100f
  - **Policy name**: OTA Provisioning Policy
  - **Policy description**: This setting determines whether PIN signed OMA Client Provisioning messages will be processed. This policy's value specifies a role mask. If a message contains at least one of the following roles in the role mask, then the message is processed. To ensure properly signed OMA Client Provisioning messages are accepted by the configuration client, all of the roles that are set in 4141, 4142, and 4143 policies must also be set in this policy. For example, to ensure properly signed USERNETWPIN signed OMA Client Provisioning messages are accepted by the device, if policy 4143 is set to 4096 (SECROLE_ANY_PUSH_SOURCE) for a carrier-unlocked device, policy 4111 must also have the SECROLE_ANY_PUSH_SOURCE role set.
    - Default value: 384 (SECROLE_OPERATOR_TPS | SECROLE_KNOWN_PPG)
    - Supported values: SECROLE_KNOWN_PPG, SECROLE_ANY_PUSH_SOURCE, SECROLE_OPERATOR_TPS

- **PolicyID**: 4113 | Hex:1011
  - **Policy name**: WSP Push Policy
  - **Policy description**: This setting indicates whether Wireless Session Protocol (WSP) notifications from the WAP stack are routed.
    - Default value: 1
    - Supported values:
      - 0: Routing of WSP notifications isn't allowed.
      - 1: Routing of WSP notifications is allowed.

- **PolicyID**: 4132 | Hex:1024
  - **Policy name**: Network PIN signed OTA Provision Message User Prompt Policy
  - **Policy description**: This policy specifies whether the device will prompt a UI to get the user confirmation before processing a pure network pin signed OTA Provisioning message. If prompt, the user has the ability to discard the OTA provisioning message.
    - Default value: 0
    - Supported values:
      - 0: The device prompts a UI to get user confirmation when the OTA WAP provisioning message is signed purely with network pin.
      - 1: There's no user prompt.

- **PolicyID**: 4141 | Hex:102d
  - **Policy name**: OMA CP NETWPIN Policy
  - **Policy description**: This setting determines whether the OMA network PIN signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.
    - Default value: 0
    - Supported values: SECROLE_KNOWN_PPG, SECROLE_ANY_PUSH_SOURCE, SECROLE_OPERATOR_TPS

- **PolicyID**: 4142 | Hex:102e
  - **Policy name**: OMA CP USERPIN Policy
  - **Policy description**: This setting determines whether the OMA user PIN or user MAC signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.
    - Default value: 256
    - Supported values: SECROLE_OPERATOR_TPS, SECROLE_ANY_PUSH_SOURCE, SECROLE_KNOWN_PPG

- **PolicyID**: 4143 | Hex:102f
  - **Policy name**: OMA CP USERNETWPIN Policy
  - **Policy description**: This setting determines whether the OMA user network PIN signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.
    - Default value: 256
    - Supported values: SECROLE_KNOWN_PPG, SECROLE_ANY_PUSH_SOURCE, SECROLE_OPERATOR_TPS

- **PolicyID**: 4144 | Hex:1030
  - **Policy name**: MMS Message Policy
  - **Policy description**: This setting determines whether MMS messages will be processed. This policy's value specifies a role mask. If a message contains at least one of the roles in the role mask, then the message is processed.
    - Default value: 256 (SECROLE_KNOWN_PPG)
    - Supported values: SECROLE_KNOWN_PPG, SECROLE_ANY_PUSH_SOURCE


## Remarks

Security roles allow or restrict access to device resources. The security role is based on the message origin and how the message is signed. You can assign multiple roles to a message in the security policy XML document by combining the decimal values of the roles that you want to assign. For example, to assign both the SECROLE\_KNOWN\_PPG and SECROLE\_OPERATOR\_TPS roles, use the decimal value 384 (256+128).

The following security roles are supported.

|Security role|Decimal value|Description|
|--- |--- |--- |
|SECROLE_OPERATOR_TPS|128|Trusted Provisioning Server.<br>Assigned to WAP messages that come from a Push Initiator that is authenticated (SECROLE_PPG_AUTH) by a trusted Push Proxy Gateway (SECROLE_TRUSTED_PPG), and where the Uniform Resource Identifier (URI) of the Push Initiator corresponds to the URI of the Trusted Provisioning Server (TPS) on the device.<br>The mobile operator can determine whether this role and the SECROLE_OPERATOR role require the same permissions.|
|SECROLE_KNOWN_PPG|256|Known Push Proxy Gateway.<br>Messages assigned this role indicate that the device knows the address to the Push Proxy Gateway.|
|SECROLE_ANY_PUSH_SOURCE|4096|Push Router.<br>Messages received by the push router will be assigned to this role.|

## OMA Client Provisioning examples

Setting a security policy:

```xml
<wap-provisioningdoc>
    <characteristic type="SecurityPolicy">
        <parm name="4141" value="0"/>
    </characteristic>
<wap-provisioningdoc>
```

Querying a security policy:

```xml
<wap-provisioningdoc>
    <characteristic type="SecurityPolicy">
        <parm-query name="4141"/>
    </characteristic>
<wap-provisioningdoc>
```

## OMA DM examples

Setting a security policy:

```xml
<SyncML xmlns='SYNCML:SYNCML1.2'>
    <SyncHdr>
    …
    </SyncHdr>
    <SyncBody>
        <Replace>
            <CmdID>1</CmdID>
            <Item>
                <Target><LocURI>./Vendor/MSFT/SecurityPolicy/4141</LocURI></Target>
                <Meta>
                    <Format xmlns="syncml:metinf">int</Format>
                </Meta>
                <Data>0</Data>
            </Item>
        </Replace>
        <Final/>
    </SyncBody>
</SyncML>
```

Querying a security policy:

```xml
<SyncML xmlns='SYNCML:SYNCML1.2'>
    <SyncHdr>
    …
    </SyncHdr>
    <SyncBody>
        <Get>
            <CmdID>1</CmdID>
            <Item>
            <Target><LocURI>./Vendor/MSFT/SecurityPolicy/4141</LocURI></Target>
            </Item>
        </Get>
        <Final/>
    </SyncBody>
</SyncML>
```

## Microsoft Custom Elements

The following table shows the Microsoft custom elements that this Configuration Service Provider supports for OMA Client Provisioning.

|Elements|Available|
|--- |--- |
|parm-query|Yes|
|noparm|Yes. If this element is used, then the policy is set to 0 by default (corresponding to the most restrictive of policy values).|

## Related topics

[Configuration service provider reference](index.yml)
