---
title: Server requirements for using OMA DM to manage Windows devices
description: Learn about the general server requirements for using OMA DM to manage Windows devices, including the supported versions of OMA DM.
MS-HAID: 
  - 'p\_phDeviceMgmt.server\_requirements\_for\_oma\_dm'
  - 'p\_phDeviceMgmt.server\_requirements\_windows\_mdm'
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# Server requirements for using OMA DM to manage Windows devices

The following list shows the general server requirements for using OMA DM to manage Windows devices:

-   The OMA DM server must support the OMA DM v1.1.2 or later protocol.

-   Secure Sockets Layer (SSL) must be on the OMA DM server, and it must provide server certificate-based authentication, data integrity check, and data encryption. If the certificate isn't issued by a commercial Certification Authority whose root certificate is pre-installed in the device, you must provision the enterprise root certificate in the device's Root store.

-   To authenticate the client at the application level, you must use either Basic or MD5 client authentication.

-   The server MD5 nonce must be renewed in each DM session. The DM client sends the new server nonce for the next session to the server over the Status element in every DM session.

-   The MD5 binary nonce is sent over XML B64 encoded format, but the octal form of the binary data should be used when the service calculates the hash.

    For more information about Basic or MD5 client authentication, MD5 hash, and MD5 nonce, see the OMA Device Management Security specification (OMA-TS-DM\_Security-V1\_2\_1-20080617-A), available from the [OMA website](https://go.microsoft.com/fwlink/p/?LinkId=526900).

-   The server must support HTTPS.

 





