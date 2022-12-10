---
title: Windows identity and user security
description: Get an overview of identity security in Windows 11 and Windows 10
ms.reviewer: 
manager: aaroncz
ms.author: paoloma
author: paolomatarazzo
ms.prod: windows-client
ms.technology: itpro-security
ms.date: 12/31/2017
ms.topic: article
---

# Windows identity and privacy
 
Malicious actors launch millions of password attacks every day. Weak passwords, password spraying, and phishing are the entry point for many attacks. Knowing that the right user is accessing the right device and the right data is critical to keeping your business, family, and self, safe and secure.  Windows Hello, Windows Hello for Business, and Credential Guard enable customers to move to passwordless multifactor authentication (MFA). MFA can reduce the risk of compromise in organizations.

| Security capabilities | Description |
|:---|:---|
| Securing user identity with Windows Hello  |  Windows Hello and Windows Hello for Business replace password-based authentication with a stronger authentication model to sign into your device using a passcode (PIN) or other biometric based authentication. This PIN or biometric based authentication is only valid on the device that you registered it for and cannot be used on another deviceLearn more: [Windows Hello for Business](identity-protection\hello-for-business\hello-overview.md) |
| Windows Defender Credential Guard and Remote Credential Guard | Windows Defender Credential Guard helps protects your systems from credential theft attack techniques (pass-the-hash or pass-the-ticket) as well as helping prevent malware from accessing system secrets even if the process is running with admin privileges. Windows Defender Remote Credential Guard helps you protect your credentials over a Remote Desktop connection by redirecting Kerberos requests back to the device that's requesting the connection. It also provides single sign-on experiences for Remote Desktop sessions. Learn more: [Protect derived domain credentials with Windows Defender Credential Guard](identity-protection/credential-guard/credential-guard-how-it-works.md) and [Protect Remote Desktop credentials with Windows Defender Remote Credential Guard](identity-protection/remote-credential-guard.md)|
| FIDO Alliance | Fast Identity Online (FIDO) defined protocols are becoming the open standard for providing strong authentication that helps prevent phishing and are user-friendly and privacy-respecting. Windows 11 supports the use of device sign-in with FIDO 2 security keys, and with Microsoft Edge or other modern browsers, supports the use of secure FIDO-backed credentials to keep user accounts protected. Learn more about the [FIDO Alliance](https://fidoalliance.org/). |
| Microsoft Authenticator | The Microsoft Authenticator app is a perfect companion to help keep secure with Windows 11. It allows easy, secure sign-ins for all your online accounts using multi-factor authentication, passwordless phone sign-in, or password autofill. You also have additional account management options for your Microsoft personal, work, or school accounts. Microsoft Authenticator can be used to set up multi-factor authentication for your users. Learn more: [Enable passwordless sign-in with the Microsoft Authenticator app](/azure/active-directory/authentication/howto-authentication-passwordless-phone).  |
| Smart Cards | Smart cards are tamper-resistant portable storage devices that can enhance the security of tasks in Windows, such as authenticating clients, signing code, securing e-mail, and signing in with Windows domain accounts. Learn more about [Smart Cards](identity-protection/smart-cards/smart-card-windows-smart-card-technical-reference.md).|
| Access Control | Access control is the process of authorizing users, groups, and computers to access objects and assets on a network or computer. Computers can control the use of system and network resources through the interrelated mechanisms of authentication and authorization. Learn more: [Access Control](identity-protection/access-control/access-control.md).|
