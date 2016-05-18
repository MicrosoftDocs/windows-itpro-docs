---
title: Network security Configure encryption types allowed for Kerberos Win7 only (Windows 10)
description: Describes the best practices, location, values and security considerations for the Network security Configure encryption types allowed for Kerberos Win7 only security policy setting.
ms.assetid: 303d32cc-415b-44ba-96c0-133934046ece
ms.pagetype: security
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---
# Network security: Configure encryption types allowed for Kerberos Win7 only
**Applies to**
-   Windows 10
Describes the best practices, location, values and security considerations for the **Network security: Configure encryption types allowed for Kerberos Win7 only** security policy setting.
## Reference
This policy setting allows you to set the encryption types that the Kerberos protocol is allowed to use. If it is not selected, the encryption type will not be allowed. This setting might affect compatibility with client computers or services and applications. Multiple selections are permitted.
For more information, see [article 977321](http://support.microsoft.com/kb/977321) in the Microsoft Knowledge Base.
The following table lists and explains the allowed encryption types.
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Encryption type</th>
<th align="left">Description and version support</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>DES_CBC_CRC</p></td>
<td align="left"><p>Data Encryption Standard with Cipher Block Chaining using the Cyclic Redundancy Check function</p>
<p>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, and Windows Server 2008. The Windows 7 and Windows Server 2008 R2 operating systems do not support DES by default.</p></td>
</tr>
<tr class="even">
<td align="left"><p>DES_CBC_MD5</p></td>
<td align="left"><p>Data Encryption Standard with Cipher Block Chaining using the Message-Digest algorithm 5 checksum function</p>
<p>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, and Windows Server 2008. The Windows 7 and Windows Server 2008 R2 operating systems do not support DES by default.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>RC4_HMAC_MD5</p></td>
<td align="left"><p>Rivest Cipher 4 with Hashed Message Authentication Code using the Message-Digest algorithm 5 checksum function</p>
<p>Supported in Windows 2000 Server, Windows XP, Windows Server 2003, Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>AES128_HMAC_SHA1</p></td>
<td align="left"><p>Advanced Encryption Standard in 128 bit cipher block with Hashed Message Authentication Code using the Secure Hash Algorithm (1).</p>
<p>Not supported in Windows 2000 Server, Windows XP, or Windows Server 2003. Supported in Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>AES256_HMAC_SHA1</p></td>
<td align="left"><p>Advanced Encryption Standard in 256 bit cipher block with Hashed Message Authentication Code using the Secure Hash Algorithm (1).</p>
<p>Not supported in Windows 2000 Server, Windows XP, or Windows Server 2003. Supported in Windows Vista, Windows Server 2008, Windows 7, and Windows Server 2008 R2.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Future encryption types</p></td>
<td align="left"><p>Reserved by Microsoft for additional encryption types that might be implemented.</p></td>
</tr>
</tbody>
</table>
 
### Possible values
The encryption type options include:
-   DES\_CBC\_CRC
-   DES\_CBC\_MD5
-   RC4\_HMAC\_MD5
-   AES128\_HMAC\_SHA1
-   AES256\_HMAC\_SHA1
-   Future encryption types
    As of the release of Windows 7 and Windows Server 2008 R2, this is reserved by Microsoft for additional encryption types that might be implemented.
### Best practices
You must analyze your environment to determine which encryption types will be supported and then select those that meet that evaluation.
### Location
Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Security Options
### Default values
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Server type or Group Policy Object (GPO)</th>
<th align="left">Default value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Default domain policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Default domain controller policy</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Stand-alone server default settings</p></td>
<td align="left"><p>Not defined</p></td>
</tr>
<tr class="even">
<td align="left"><p>Domain controller effective default settings</p></td>
<td align="left"><p>None of these encryption types that are available in this policy are allowed.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Member server effective default settings</p></td>
<td align="left"><p>None of these encryption types that are available in this policy are allowed.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Effective GPO default settings on client computers</p></td>
<td align="left"><p>None of these encryption types that are available in this policy are allowed.</p></td>
</tr>
</tbody>
</table>
 
## Security considerations
This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.
### Vulnerability
Windows Server 2008 R2 and Windows 7 do not support the DES cryptographic suites because stronger ones are available. To enable Kerberos interoperability with non-Windows versions of the Kerberos protocol, these suites can be enabled. However, doing so might open attack vectors on computers running Windows Server 2008 R2 and Windows 7. You can also disable DES for your computers running Windows Vista and Windows Server 2008.
### Countermeasure
Do not configure this policy. This will force the computers running Windows Server 2008 R2 and Windows 7 to use the AES or RC4 cryptographic suites.
### Potential impact
If you do not select any of the encryption types, computers running Windows Server 2008 R2 and Windows 7 might have Kerberos authentication failures when connecting with computers running non-Windows versions of the Kerberos protocol.
If you do select any encryption type, you will lower the effectiveness of encryption for Kerberos authentication but you will improve interoperability with computers running older versions of Windows.
Contemporary non-Windows implementations of the Kerberos protocol support RC4 and AES 128-bit and AES 256-bit encryption. Most implementations, including the MIT Kerberos protocol and the Windows Kerberos protocol, are deprecating DES encryption.
## Related topics
[Security Options](security-options.md)
 
 
