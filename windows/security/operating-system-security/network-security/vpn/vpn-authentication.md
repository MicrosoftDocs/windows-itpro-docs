---
title: VPN authentication options 
description: Learn about the EAP authentication methods that Windows supports in VPNs to provide secure authentication using username/password and certificate-based methods.
ms.date: 08/03/2023
ms.topic: conceptual
---

# VPN authentication options

In addition to older and less-secure password-based authentication methods (which should be avoided), the built-in VPN solution uses Extensible Authentication Protocol (EAP) to provide secure authentication using both user name and password, and certificate-based methods. You can only configure EAP-based authentication if you select a built-in VPN type (IKEv2, L2TP, PPTP or Automatic).

Windows supports a number of EAP authentication methods.

- EAP-Microsoft Challenge Handshake Authentication Protocol version 2 (EAP-MSCHAPv2):
  - User name and password authentication
  - Winlogon credentials - can specify authentication with computer sign-in credentials

- EAP-Transport Layer Security (EAP-TLS):
  - Supports the following types of certificate authentication:
    - Certificate with keys in the software Key Storage Provider (KSP)
    - Certificate with keys in Trusted Platform Module (TPM) KSP
    - Smart card certificates
    - Windows Hello for Business certificate

  - Certificate filtering:
    - Certificate filtering can be enabled to search for a particular certificate to use to authenticate with
    - Filtering can be Issuer-based or extended key usage (EKU)-based

  - Server validation - with TLS, server validation can be toggled on or off:
    - Server name - specify the server to validate
    - Server certificate - trusted root certificate to validate the server
    - Notification - specify if the user should get a notification asking whether to trust the server or not

- [Protected Extensible Authentication Protocol (PEAP)](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc754179(v=ws.11)):
  - Server validation - with PEAP, server validation can be toggled on or off:
    - Server name - specify the server to validate
    - Server certificate - trusted root certificate to validate the server
    - Notification - specify if the user should get a notification asking whether to trust the server or not

  - Inner method - the outer method creates a secure tunnel inside while the inner method is used to complete the authentication:
    - EAP-MSCHAPv2
    - EAP-TLS

  - Fast Reconnect: reduces the delay between an authentication request by a client and the response by the Network Policy Server (NPS) or other Remote Authentication Dial-in User Service (RADIUS) server. This reduces resource requirements for both client and server, and minimizes the number of times that users are prompted for credentials.

  - [Cryptobinding](/openspecs/windows_protocols/ms-peap/757a16c7-0826-4ba9-bb71-8c3f1339e937): By deriving and exchanging values from the PEAP phase 1 key material (**Tunnel Key**) and from the PEAP phase 2 inner EAP method key material (**Inner Session Key**), it's possible to prove that the two authentications terminate at the same two entities (PEAP peer and PEAP server). This process, termed "cryptobinding", is used to protect the PEAP negotiation against "Man in the Middle" attacks.

- Tunneled Transport Layer Security (TTLS)
  - Inner method
    - Non-EAP
      - Password Authentication Protocol (PAP)
      - CHAP
      - MSCHAP
      - MSCHAPv2
    - EAP
      - MSCHAPv2
      - TLS
  - Server validation: in TTLS, the server must be validated. The following can be configured:
    - Server name
    - Trusted root certificate for server certificate
    - Whether there should be a server validation notification

For a UWP VPN plug-in, the app vendor controls the authentication method to be used. The following credential types can be used:

- Smart card
- Certificate
- Windows Hello for Business
- User name and password
- One-time password
- Custom credential type

## Configure authentication

See [EAP configuration](/windows/client-management/mdm/eap-configuration) for EAP XML configuration.

>[!NOTE]
>To configure Windows Hello for Business authentication, follow the steps in [EAP configuration](/windows/client-management/mdm/eap-configuration) to create a smart card certificate. [Learn more about Windows Hello for Business.](../../../identity-protection/hello-for-business/hello-identity-verification.md).

The following image shows the field for EAP XML in a Microsoft Intune VPN profile. The EAP XML field only appears when you select a built-in connection type (automatic, IKEv2, L2TP, PPTP).

:::image type="content" source="images/vpn-eap-xml.png" alt-text="Screenshot showing EAP XML configuration in Intune profile.":::

## Related topics

- [VPN technical guide](vpn-guide.md)
- [VPN connection types](vpn-connection-type.md)
- [VPN routing decisions](vpn-routing.md)
- [VPN and conditional access](vpn-conditional-access.md)
- [VPN name resolution](vpn-name-resolution.md)
- [VPN auto-triggered profile options](vpn-auto-trigger-profile.md)
- [VPN security features](vpn-security-features.md)
- [VPN profile options](vpn-profile-options.md)
- [Extensible Authentication Protocol (EAP) for network access](/windows-server/networking/technologies/extensible-authentication-protocol/network-access)
