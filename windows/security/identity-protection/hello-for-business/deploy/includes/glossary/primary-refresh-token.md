---
ms.date: 01/03/2024
ms.topic: include
---

## Primary refresh token

Single sign on (SSO) relies on special tokens obtained for each of the types of applications above. These special tokens are then used to obtain access tokens to specific applications. In the traditional Windows Integrated authentication case using Kerberos, this token is a Kerberos TGT (ticket-granting ticket). For Microsoft Entra ID and AD FS applications, this token is a _primary refresh token_ (PRT). It's a [JSON Web Token](https://openid.net/specs/draft-jones-json-web-token-07.html) that contains claims about both the user and the device.

The PRT is initially obtained during Windows user sign-in or unlock in a similar way the Kerberos TGT is obtained. This behavior is true for both Microsoft Entra joined and Microsoft Entra hybrid joined devices. For personal devices registered with Microsoft Entra ID, the PRT is initially obtained upon Add Work or School Account. For a personal device the account to unlock the device isn't the work account, but a consumer account. For example, hotmail.com, live.com, or outlook.com.

The PRT is needed for SSO. Without it, the user will be prompted for credentials when accessing applications every time. The PRT also contains information about the device. If you have any [device-based conditional access](/azure/active-directory/conditional-access/concept-conditional-access-grant) policy set on an application, without the PRT, access will be denied.
