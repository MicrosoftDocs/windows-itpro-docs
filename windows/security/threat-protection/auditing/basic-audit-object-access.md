---
title: Audit object access (Windows 10)
description: Determines whether to audit the event of a user accessing an object--for example, a file, folder, registry key, printer, and so forth--that has its own system access control list (SACL) specified.
ms.assetid: D15B6D67-7886-44C2-9972-3F192D5407EA
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: none
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Audit object access

**Applies to**
-   Windows 10

Determines whether to audit the event of a user accessing an object--for example, a file, folder, registry key, printer, and so forth--that has its own system access control list (SACL) specified.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a user successfully accesses an object that has an appropriate SACL specified. Failure audits generate an audit entry when a user unsuccessfully attempts to access an object that has a SACL specified.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.

> **Note:**  You can set a SACL on a file system object using the **Security** tab in that object's **Properties** dialog box.

**Default:** No auditing.

## Configure this audit setting

You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.


| Object access events |                                                                                                                    Description                                                                                                                     |
|----------------------|----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
|         560          |                                                                                                 Access was granted to an already existing object.                                                                                                  |
|         562          |                                                                                                         A handle to an object was closed.                                                                                                          |
|         563          |                                An attempt was made to open an object with the intent to delete it.<br>\*\*Note: \*\*  This is used by file systems when the FILE_DELETE_ON_CLOSE flag is specified in Createfile().                                |
|         564          |                                                                                                          A protected object was deleted.                                                                                                           |
|         565          |                                                                                               Access was granted to an already existing object type.                                                                                               |
|         567          | A permission associated with a handle was used.<br>\*\*Note: \*\*  A handle is created with certain granted permissions (Read, Write, and so on). When the handle is used, up to one audit is generated for each of the permissions that was used. |
|         568          |                                                                                     An attempt was made to create a hard link to a file that is being audited.                                                                                     |
|         569          |                                                                                The resource manager in Authorization Manager attempted to create a client context.                                                                                 |
|         570          |                                                           A client attempted to access an object.<br>**Note:**  An event will be generated for every attempted operation on the object.                                                            |
|         571          |                                                                                      The client context was deleted by the Authorization Manager application.                                                                                      |
|         572          |                                                                                               The administrator manager initialized the application.                                                                                               |
|         772          |                                                                                           The certificate manager denied a pending certificate request.                                                                                            |
|         773          |                                                                                          Certificate Services received a resubmitted certificate request.                                                                                          |
|         774          |                                                                                                    Certificate Services revoked a certificate.                                                                                                     |
|         775          |                                                                             Certificate Services received a request to publish the certificate revocation list (CRL).                                                                              |
|         776          |                                                                                       Certificate Services published the certificate revocation list (CRL).                                                                                        |
|         777          |                                                                                                     A certificate request extension was made.                                                                                                      |
|         778          |                                                                                                One or more certificate request attributes changed.                                                                                                 |
|         779          |                                                                                                Certificate Services received a request to shutdown.                                                                                                |
|         780          |                                                                                                        Certificate Services backup started.                                                                                                        |
|         781          |                                                                                                       Certificate Services backup completed                                                                                                        |
|         782          |                                                                                                       Certificate Services restore started.                                                                                                        |
|         783          |                                                                                                      Certificate Services restore completed.                                                                                                       |
|         784          |                                                                                                           Certificate Services started.                                                                                                            |
|         785          |                                                                                                           Certificate Services stopped.                                                                                                            |
|         786          |                                                                                             The security permissions for Certificate Services changed.                                                                                             |
|         787          |                                                                                                  Certificate Services retrieved an archived key.                                                                                                   |
|         788          |                                                                                           Certificate Services imported a certificate into its database.                                                                                           |
|         789          |                                                                                                 The audit filter for Certificate Services changed.                                                                                                 |
|         790          |                                                                                                Certificate Services received a certificate request.                                                                                                |
|         791          |                                                                                   Certificate Services approved a certificate request and issued a certificate.                                                                                    |
|         792          |                                                                                                 Certificate Services denied a certificate request.                                                                                                 |
|         793          |                                                                                      Certificate Services set the status of a certificate request to pending.                                                                                      |
|         794          |                                                                                         The certificate manager settings for Certificate Services changed.                                                                                         |
|         795          |                                                                                               A configuration entry changed in Certificate Services.                                                                                               |
|         796          |                                                                                                    A property of Certificate Services changed.                                                                                                     |
|         797          |                                                                                                        Certificate Services archived a key.                                                                                                        |
|         798          |                                                                                                 Certificate Services imported and archived a key.                                                                                                  |
|         799          |                                                                                       Certificate Services published the CA certificate to Active Directory.                                                                                       |
|         800          |                                                                                         One or more rows have been deleted from the certificate database.                                                                                          |
|         801          |                                                                                                              Role separation enabled.                                                                                                              |

## Related topics

- [Basic security audit policy settings](basic-security-audit-policy-settings.md)


