---
title: WebAuthn APIs 
description: Learn how to use WebAuthn APIs to enable passwordless authentication for your sites and apps.
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
audience: ITPro
author: GitPrakhar13
ms.author: prsriva
manager: dansimp
ms.collection: M365-identity-device-management
ms.topic: article
localizationpriority: medium
ms.date: 02/15/2019
ms.reviewer: 
---
# WebAuthn APIs for passwordless authentication on Windows

Passwords leave your customers vulnerable. When you use the new WebAuthn APIs in your sites and apps, your customers can use passwordless authentication.

Microsoft has long been a proponent of passwordless authentication. While we work towards that goal, we'd like to introduce you to the latest Windows 10 (version 1903) W3C/FIDO2 Win32 WebAuthn platform APIs. 

## What does this mean?

Using these APIs, developer partners and the developer community can use [Windows Hello](./index.yml) or [FIDO2 Security Keys](./microsoft-compatible-security-key.md) to implement passwordless multi-factor authentication for their applications on Windows devices.

Users of these apps or sites can use any browser that supports WebAuthn Windows 10 APIs for passwordless authentication. The native Windows 10 WebAuthn APIs are currently supported by Microsoft Edge on Windows 10 1809 or later and on the latest versions of other browsers. No matter which browser they use, they'll have a familiar and consistent experience on Windows 10, no matter which browser they use.

Developers should use the new Windows 10 APIs to support FIDO2 authentication keys in a consistent way for users. Moreover, developers can use all the transports that are available per FIDO2 specifications (USB, NFC, and BLE) without having to deal with the interaction and management overhead.

> [!NOTE]  
> When these APIs are in use, Windows 10 browsers or apps don't have direct access to the FIDO2 transports for FIDO-related messaging.

## Where can developers learn more?

The new Windows 10 APIs are documented on [GitHub](https://github.com/Microsoft/webauthn)

## All about FIDO2, CTAP2 and WebAuthn

To understand how FIDO2 authenticators work, review the following two specifications:

- [Web Authentication: An API for accessing Public Key Credentials](https://www.w3.org/TR/webauthn/), which is available at the W3C site. This document is known as the WebAuthn spec.

- [Client to Authenticator Protocol (CTAP)](https://fidoalliance.org/specs/fido-v2.0-id-20180227/fido-client-to-authenticator-protocol-v2.0-id-20180227.html), which is available at the [FIDO Alliance](http://fidoalliance.org/) site. (where hardware and platform folks have joined to solve the problem of Fast IDentity Online).

### The Big Picture

CTAP2 and WebAuthn define an abstraction layer that creates an ecosystem for strongly authenticated credentials. In this ecosystem, any interoperable client (such as a native app or browser) that runs on a given client device uses a standardized method to interact with any interoperable authenticator. Such authenticators include platform authenticators (which are built into the client device) or roaming authenticators (which connect to the client device by using USB, BLE, or NFC connections).

The authentication process starts when the user performs a specific user gesture that indicates consent for the operation. At the request of the client, the authenticator securely creates strong cryptographic keys and locally stores them.

After these client-specific keys are created, clients can request attestations for registration and authentication. The type of signature performed by the private key reflects the user gesture that was performed.  

The following diagram shows how CTAP and WebAuthn interact. The light blue dotted arrows represent interactions that depend on the specific implementation of the platform APIs.

:::image type="content" source="images/webauthnapis/webauthnapis-fido2-overview.png" alt-text="The diagram shows how the WebAuthn API interacts with the relying parties and the CTAPI2 API.":::

*Relationships of the components that participate in passwordless authentication*

A combined WebAuthn/CTAP2 dance includes the following cast of characters:

- **Client device**. The *client device* is the hardware hosting a given strong authentication. Laptops and phones are examples of client devices.  

- **Relying parties and clients**. *Relying parties* are web or native applications that consume strong credentials. The relying parties run on client devices.  

  - As a relying party, a native application can also act as a WebAuthn client to make direct WebAuthn calls.
  
  - As a relying party, a web application can't directly interact with the WebAuthn API. The relying party must broker the deal through the browser.  
  
  > [!NOTE]  
  > The preceding diagram doesn't depict single sign-on authentication. Don't confuse FIDO relying parties with federated relying parties.

- **WebAuthn API**. The *WebAuthn API* enables clients to make requests to authenticators. The client can request that the authenticator create a key, provide an assertion about a key, report capabilities, manage a PIN, and so forth.

- **CTAP2 platform/host**. The *platform* (also called the host in the CTAP2 spec) is the part of the client device that negotiates with authenticators. The platform is responsible for securely reporting the origin of the request and for calling the CTAP2 Concise Binary Object Representation (CBOR) APIs. If the platform isn't CTAP2-aware, the clients themselves take on more of the burden and the internals of the preceding diagram may differ.

- **Platform authenticator**. A *platform authenticator* usually resides on a client device. Examples of platform authenticators include fingerprint recognition technology that uses a built-in laptop fingerprint reader or facial recognition technology that uses a built-in smartphone camera. Cross-platform transport protocols such as USB, NFC or BLE can't access platform authenticators.

- **Roaming authenticator**. A *roaming authenticator* can connect to multiple client devices. Client devices must use a supported transport protocol to negotiate interactions. Examples of roaming authenticators include USB security keys, BLE-enabled smartphone applications, or NFC-enabled proximity cards. Roaming authenticators may support CTAP1, CTAP2, or both protocols.

Many relying parties and clients can interact with many authenticators on a single client device. A user can install multiple browsers that support WebAuthn, and might simultaneously have access to a built-in fingerprint reader, a plugged-in security key, and a BLE-enabled mobile app.

### Interoperability

Before there was WebAuthn and CTAP2, there was U2F and CTAP1. U2F is the FIDO Alliance’s universal second-factor specification and there are many authenticators that speak CTAP1 and manage U2F credentials. WebAuthn was designed to be interoperable with CTAP1 Authenticators. A relying party that uses WebAuthn can still use U2F credentials, as long as the relying party doesn't require FIDO2-only functionality.

FIDO2 authenticators have already implemented and WebAuthn relying parties might require the following optional features:

- Keys for multiple accounts can be stored per relying party
- Client PIN
- Location (the authenticator returns a location)
- [Hash-based Message Authentication Code (HMAC)-secret](/dotnet/api/system.security.cryptography.hmac) (enables offline scenarios)

The following options are cool and might be useful in the future, but haven't been seen in the wild yet:

- Transactional approval
- User verification index (servers can determine whether biometric data that's stored locally has changed over time)
- User verification method (the authenticator returns the exact method)
- Biometric performance bounds (the relying party can specify acceptable false acceptance and false rejection rates)

### Microsoft Implementation

The Microsoft FIDO2 implementation has been years in the making. Software and services are implemented independently as standards-compliant entities. As of the Windows 10 October 2018 release, all Microsoft components use the latest WebAuthn Candidate Release. It's a stable release that's not expected to normatively change before the specification is finally ratified. Because Microsoft is among the first in the world to deploy FIDO2, some combinations of popular non-Microsoft components won’t be interoperable yet.

Here's an approximate layout of where the Microsoft bits go:  

:::image type="content" source="images/webauthnapis/webauthnapis-fido2-overview-msft-version.png" alt-text="The diagram shows how the WebAuthn API interacts with the Microsoft relying parties and the CTAPI2 API.":::

*Microsoft's implementation of WebAuthn and CATP2 APIs*

- **WebAuthn relying party: Microsoft Account**. If you aren’t familiar with Microsoft Account, it's the sign-in service for services such as Skype, Xbox, Outlook, and many other sites. The sign-in experience uses client-side JavaScript to trigger Microsoft Edge to talk to the WebAuthn APIs. Microsoft Account requires that authenticators have the following capabilities:

  - Keys are stored locally on the authenticator and not on a server somewhere
  - Offline scenarios work (enabled by using HMAC)
  - Users can put keys for multiple user accounts on the same authenticator
  - If needed, authenticators can use a client PIN to unlock a TPM
  > [!IMPORTANT]  
  > Because Microsoft Account requires features and extensions that are unique to FIDO2 CTAP2 authenticators, it doesn't accept CTAP1 (U2F) credentials.

- **WebAuthn client: Microsoft Edge**. Microsoft Edge can handle the user interface for the WebAuthn and CTAP2 features that this article describes, and also supports the AppID extension. Microsoft Edge can interact with both CTAP1 and CTAP2 authenticators, which means that it can create and use both U2F and FIDO2 credentials. However, Microsoft Edge doesn't speak the U2F protocol, so relying parties must use only the WebAuthn specification. Microsoft Edge on Android does't support WebAuthn.

  > [!NOTE]  
  > For authoritative information about Microsoft Edge support for WebAuthn and CTAP, see [Legacy Microsoft Edge developer documentation](/microsoft-edge/dev-guide/windows-integration/web-authentication).

- **Platform: Windows 10**. Windows 10 hosts the Win32 Platform WebAuthn APIs.

- **Roaming Authenticators**. You might notice that there's no “Microsoft” roaming authenticator. That's because there's already a strong ecosystem of products that specialize in strong authentication, and every one of our customers (whether corporations or individuals) have different requirements for security, ease of use, distribution, and account recovery. To see the ever-growing list of FIDO2 certified authenticators, you can find that at [FIDO Certified Products](https://fidoalliance.org/certification/fido-certified-products/). The list includes built-in authenticators, roaming authenticators, and even chip manufacturers who have certified designs.
