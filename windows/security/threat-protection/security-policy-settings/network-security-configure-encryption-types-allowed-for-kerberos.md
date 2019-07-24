---
title: Network security Configure encryption types allowed for Kerberos Win7 only (Windows 10)
description: Describes the best practices, location, values and security considerations for the Network security Configure encryption types allowed for Kerberos Win7 only security policy setting.
ms.assetid: 303d32cc-415b-44ba-96c0-133934046ece
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Network security: Configure encryption types allowed for Kerberos

**Applies to**
-   Windows 10

Describes the best practices, location, values and security considerations for the **Network security: Configure encryption types allowed for Kerberos** security policy setting.

## Reference

This policy setting allows you to set the encryption types that the Kerberos protocol is allowed to use. If it is not selected, the encryption type will not be allowed. This setting might affect compatibility with client computers or services and applications. Multiple selections are permitted.

For more information, see [article 977321](https://support.microsoft.com/kb/977321) in the Microsoft Knowledge Base.

The following table lists and explains the allowed encryption types.

 
| Encryption type | Description and version support |
| - | - |
| DES_CBC_CRC | Data Encryption Standard with Cipher Block Chaining using the Cyclic Redundancy Check function<br/>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, and Windows Server 2008. The Windows 7, Windows 10 and Windows Server 2008 R2 operating systems do not support DES| by default.
| DES_CBC_MD5| Data Encryption Standard with Cipher Block Chaining using the Message-Digest algorithm 5 checksum function<br/>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, and Windows Server 2008. The Windows 7, Windows 10 and Windows Server 2008 R2 operating systems do not support DES by default. |
| RC4_HMAC_MD5| Rivest Cipher 4 with Hashed Message Authentication Code using the Message-Digest algorithm 5 checksum function<br/>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, Windows Server 2008, Windows 7, Windows 10 and Windows Server 2008 R2.|
| AES128_HMAC_SHA1| Advanced Encryption Standard in 128 bit cipher block with Hashed Message Authentication Code using the Secure Hash Algorithm (1).<br/>Not supported in Windows 2000 Server, Windows XP, or Windows Server 2003. Supported in Windows Vista, Windows Server 2008, Windows 7, Windows 10 and Windows Server 2008 R2. |
| AES256_HMAC_SHA1| Advanced Encryption Standard in 256 bit cipher block with Hashed Message Authentication Code using the Secure Hash Algorithm (1).<br/>Not supported in Windows 2000 Server, Windows XP, or Windows Server 2003. Supported in Windows Vista, Windows Server 2008, Windows 7, Windows 10 and Windows Server 2008 R2. |
| Future encryption types| Reserved by Microsoft for additional encryption types that might be implemented.|
 
 
### Possible values


The encryption type options include:

-   DES\_CBC\_CRC
-   DES\_CBC\_MD5
-   RC4\_HMAC\_MD5
-   AES128\_HMAC\_SHA1
-   AES256\_HMAC\_SHA1
-   Future encryption types

    As of the release of Windows 7 and Windows Server 2008 R2, this is reserved by Microsoft for additional encryption types that might be implemented.

### Best practices

You must analyze your environment to determine which encryption types will be supported and then select those that meet that evaluation.

### Location

Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options

### Default values

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Not defined|
| Default domain controller policy| Not defined|
| Stand-alone server default settings | Not defined|
| Domain controller effective default settings | The default OS setting applies, DES suites are not supported by default.|
| Member server effective default settings | The default OS setting applies, DES suites are not supported by default.|
| Effective GPO default settings on client computers | The default OS setting applies, DES suites are not supported by default.|

## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Windows Server 2008 R2, Windows 7 and Windows 10, do not support the DES cryptographic suites because stronger ones are available. To enable Kerberos interoperability with non-Windows versions of the Kerberos protocol, these suites can be enabled. However, doing so might open attack vectors on computers running
Windows Server 2008 R2, Windows 7 and Windows 10. You can also disable DES for your computers running Windows Vista and Windows Server 2008.

### Countermeasure

Do not configure this policy. This will force the computers running Windows Server 2008 R2, Windows 7 and Windows 10 to use the AES or RC4 cryptographic suites.

### Potential impact

If you do not select any of the encryption types, computers running Windows Server 2008 R2, Windows 7 and Windows 10, might have Kerberos authentication failures when connecting with computers running non-Windows versions of the Kerberos protocol.
 

If you do select any encryption type, you will lower the effectiveness of encryption for Kerberos authentication but you will improve interoperability with computers running older versions of Windows.
Contemporary non-Windows implementations of the Kerberos protocol support RC4 and AES 128-bit and AES 256-bit encryption. Most implementations, including the MIT Kerberos protocol and the Windows Kerberos protocol, are deprecating DES encryption.

## Related topics

- [Security Options](security-options.md)
