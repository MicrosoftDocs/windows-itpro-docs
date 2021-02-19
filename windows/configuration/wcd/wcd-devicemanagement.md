---
title: DeviceManagement (Windows 10)
description: This section describes the DeviceManagement setting that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 04/30/2018
ms.reviewer: 
manager: dansimp
---

# DeviceManagement (Windows Configuration Designer reference)

Use to configure device management settings.

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| [Accounts](#accounts) | X  | X | X |  |  |
| [PGList](#pglist) | X  | X | X |  |  |
| [Policies](#policies) | X  | X | X |  |  |
| [TrustedProvisioningSource](#trustedprovisioningsource) | X  | X | X |  |  |

## Accounts

1. In **Available customizations**, select **Accounts**, enter a friendly name for the account, and then click **Add**.
2. In **Available customizations**, select the account that you just created. The following table describes the settings you can configure. Settings in **bold** are required.

| Setting | Description | 
| --- | --- |
| **Address** | Enter the OMA DM server address  |
| **AddressType** | Choose between **IPv4** and **URI** for the type of OMA DM server address. The default value of **URI** specifies that the OMA DM account address is a URI address. A value of **IPv4** specifies that the OMA DM account address is an IP address. |
| **AppID** | Select **w7** |
| Authentication > Credentials | 1. Select a credentials level (CLCRED or SRVCRED). A value of **CLCRED** indicates that the credentials client will authenticate itself to the OMA DM server at the OMA DM protocol level. A value of **SRVCRED** indicates that the credentials server will authenticate itself to the OMA DM Client at the OMA DM protocol level. </br>2. In **Available customizations**, select the level.</br>3. For **Data**, enter the authentication nonce as a Base64 encoded string.</br>4. For **Level**, select **CLCRED** or **SRVCRED**.</br>5. For **Name**, enter the authentication name.</br>6. For **Secret**, enter the password or secret used for authentication.</br>7. For **Type**, select between **Basic**, **Digest**, and **HMAC**. For **CLCRED**, the supported values are **BASIC** and **DIGEST**. For **SRVCRED**, the supported value is **DIGEST**.  |
| AuthenticationPreference | Select between **Basic**, **Digest**, and **HMAC** |
| BackCompatRetryDisabled | Specify whether to retry resending a package with an older protocol version (for example, 1.1) in the SyncHdr on subsequent attempts (not including the first time). The default value of "FALSE" indicates that backward-compatible retries are enabled. A value of "TRUE" indicates that backward-compatible retries are disabled.  |
| ConnectionRetries | Enter a number to specify how many retries the DM client performs when there are Connection Manager-level or wininet-level errors. The default value is `3`. |
| CRLCheck | Specify whether a CRL Check should be performed. Allows connection to the DM server to check the Certificate Revocation List (CRL). Set to **True** to enable SSL revocation. |
| DefaultEncoding | Select whether the OMA DM client will use **WBXML** or **XML** for the DM package when communicating with the server |
| DisableOnRoaming | Specify whether the client will connect while cellular roaming |
| InitialBackOffTime | Specify the initial amount of time (in milliseconds) that the DM client waits before attempting a connection retry  |
| InitiateSession | Specify whether a session should be started with the MDM server when the account is provisioned |
| MaxBackOffTime | Specify the maximum number of milliseconds to wait before attemption a connection retry |
| Name | Enter a display name for the management server  |
| Port | Enter the OMA DM server port |
| PrefConRef | Enter a URI to NAP management object or a connection GUID used by the device Connection Manager |
| ProtocolVersion | Select between **1.1** and **1.2** for the OMA DM protocol version that the server supports |
| **Role** | Select between **Enterprise** and **Mobile Operator** for the role mask that the DM session runs with when it communicates with the server |
| **ServerID** | Enter the OMA DM server's unique identifier for the current OMA DM account |
| SSLClientCertSearchCriteria | Specify the client certificate search criteria, by subject attribute and certificate stores. For details, see [DMAcc configuration service provider (CSP)](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/dmacc-csp). |
| UseHardwareDeviceID | Specify whether to use the hardware ID for the ./DevInfo/DevID parameter in the DM account to identify the device |
| UseNonceResync | Specify whether the OMA DM client should use the nonce resynchronization procedure if the server trigger notification fails authentication |


## PGList

1. In **Available customizations**, select **PGList**, enter a LogicalProxyName, and then click **Add**.
2. In **Available customizations**, select the LogicalProxyName that you just created, and then select **PhysicalProxies**.
3. Enter a PhysicalProxyName, and then click **Add**. The following table describes the settings you can configure for the physical proxy and for **Trust**. 

| Setting | Description | 
| --- | --- |
| Address | Enter the address of the physical proxy |
| AddressType | Select between **E164**, **IPV4**, and **IPV^** for the format and protocol of the PXADDR element for a physical proxy |
| MatchedNapID | Enter a string that defines the SMS bearer. This string must match the NAPID exactly. The value must contains MVID macro if it is an IPv4 PXADDRTYPE.  |
| PushEnabled | Select whether push operations are enabled  |
| Trust | Specify whether or not the physical proxies in this logical proxy are privileged  |


## Policies

The following table describes the settings you can configure for **Policies**.

| Setting | Description |
| --- | --- |
| MMS > MMSMessageRoles | Select between **SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**. If a message contains at least one of the roles in the selected role mask, then the message is processed.  |
| OMACP > NetwpinRoles | (Window 10, version 1709 and earlier only) Select a policy role to specify whether OMA network PIN-signed messages will be accepted. OMA Client Provisioning Network PIN policy determines whether the OMA network PIN signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.</br></br>Available roles are: **SECROLE_OPERATOR_TIPS**, **SECROLE_KNOWN_PPG**, **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, **SECROLE_OPERATOR_TPS_OR_SECROLE_ANY_PUSH_SOURCE**, **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**.</BR></br>**Note**  IMSI-based NETWPIN and USERNETWPIN may not work for dual SIM phones. The OMA-CP authentication provider only uses the IMSI from executor 0 (the current, active data SIM) when hashing these messages. OMA-CP payloads targeting executor 1 are rejected by the phone. For more information about executors, see Dual SIM. |
| OMACP > UsernetwpinRoles | (Window 10, version 1709 and earlier only) Select a policy role to specify whether the OMA user network PIN-signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.</br></br>Available roles are: **SECROLE_OPERATOR_TIPS**, **SECROLE_KNOWN_PPG**, **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, **SECROLE_OPERATOR_TPS_OR_SECROLE_ANY_PUSH_SOURCE**, **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**.</BR></br>**Note** IMSI-based NETWPIN and USERNETWPIN may not work for dual SIM phones. The OMA-CP authentication provider only uses the IMSI from executor 0 (the current, active data SIM) when hashing these messages. OMA-CP payloads targeting executor 1 are rejected by the phone. For more information about executors, see Dual SIM. |
| OMACP > UserpinRoles | (Window 10, version 1709 and earlier only) Select a policy role to specify whether the OMA user PIN or user MAC signed message will be accepted. OMA Client Provisioning User PIN policy determines whether the OMA user PIN or user MAC signed message will be accepted. The message's role mask and the policy's role mask are combined using the AND operator. If the result is non-zero, then the message is accepted.</br></br>Available roles are: **SECROLE_OPERATOR_TIPS**, **SECROLE_KNOWN_PPG**, **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, **SECROLE_OPERATOR_TPS_OR_SECROLE_ANY_PUSH_SOURCE**, **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_OPERATOR_TPS_OR_SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**. |
| SISL > ServiceIndicationRoles | Specify the security roles that can accept SI messages. Service Indication (SI) Message policy indicates whether SI messages are accepted by specifying the security roles that can accept SI messages. An SI message is sent to the phone to notify users of new services, service updates, and provisioning services.</br></br>Available roles are: **SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**. |
| SISL > ServiceLoadingRoles | Specify the security roles that can accept SL messages. Service Loading (SL) Message policy indicates whether SL messages are accepted by specifying the security roles that can accept SL messages. An SL message downloads new services or provisioning XML to the phone.</br></br>Available roles are: **SECROLE_KNOWN_PPG**, **SECROLE_ANY_PUSH_SOURCE**, and **SECROLE_KNOWN_PPG_OR_SECROLE_ANY_PUSH_SOURCE**. |
| WSP > WSPPushAllowed | Indicates whether Wireless Session Protocol (WSP) notifications from the WAP stack are routed.
## TrustedProvisioningSource

In **PROVURL**, enter the URL for a Trusted Provisioning Server (TPS).

## Related topics

- [DMAcc configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/dmacc-csp)
- [PXLOGICAL CSP](https://docs.microsoft.com/windows/client-management/mdm/pxlogical-csp)
