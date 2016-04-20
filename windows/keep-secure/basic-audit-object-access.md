---
title: Audit object access (Windows 10)
description: Determines whether to audit the event of a user accessing an object--for example, a file, folder, registry key, printer, and so forth--that has its own system access control list (SACL) specified.
ms.assetid: D15B6D67-7886-44C2-9972-3F192D5407EA
ms.prod: W10
ms.mktglfcycl: deploy
ms.sitesec: library
author: brianlic-msft
---

# Audit object access


**Applies to**

-   Windows 10

Determines whether to audit the event of a user accessing an object--for example, a file, folder, registry key, printer, and so forth--that has its own system access control list (SACL) specified.

If you define this policy setting, you can specify whether to audit successes, audit failures, or not audit the event type at all. Success audits generate an audit entry when a user successfully accesses an object that has an appropriate SACL specified. Failure audits generate an audit entry when a user unsuccessfully attempts to access an object that has a SACL specified.

To set this value to **No auditing**, in the **Properties** dialog box for this policy setting, select the Define these policy settings check box and clear the **Success** and **Failure** check boxes.

**Note**  You can set a SACL on a file system object using the **Security** tab in that object's **Properties** dialog box.

 

**Default:** No auditing.

## Configure this audit setting


You can configure this security setting by opening the appropriate policy under Computer Configuration\\Windows Settings\\Security Settings\\Local Policies\\Audit Policy.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Object access events</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">560</td>
<td align="left">Access was granted to an already existing object.</td>
</tr>
<tr class="even">
<td align="left">562</td>
<td align="left">A handle to an object was closed.</td>
</tr>
<tr class="odd">
<td align="left">563</td>
<td align="left">An attempt was made to open an object with the intent to delete it.
<div class="alert">
<strong>Note</strong>  This is used by file systems when the FILE_DELETE_ON_CLOSE flag is specified in Createfile().
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">564</td>
<td align="left">A protected object was deleted.</td>
</tr>
<tr class="odd">
<td align="left">565</td>
<td align="left">Access was granted to an already existing object type.</td>
</tr>
<tr class="even">
<td align="left">567</td>
<td align="left">A permission associated with a handle was used.
<div class="alert">
<strong>Note</strong>  A handle is created with certain granted permissions (Read, Write, and so on). When the handle is used, up to one audit is generated for each of the permissions that was used.
</div>
<div>
 
</div></td>
</tr>
<tr class="odd">
<td align="left">568</td>
<td align="left">An attempt was made to create a hard link to a file that is being audited.</td>
</tr>
<tr class="even">
<td align="left">569</td>
<td align="left">The resource manager in Authorization Manager attempted to create a client context.</td>
</tr>
<tr class="odd">
<td align="left">570</td>
<td align="left">A client attempted to access an object.
<div class="alert">
<strong>Note</strong>  An event will be generated for every attempted operation on the object.
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left">571</td>
<td align="left">The client context was deleted by the Authorization Manager application.</td>
</tr>
<tr class="odd">
<td align="left">572</td>
<td align="left">The administrator manager initialized the application.</td>
</tr>
<tr class="even">
<td align="left">772</td>
<td align="left">The certificate manager denied a pending certificate request.</td>
</tr>
<tr class="odd">
<td align="left">773</td>
<td align="left">Certificate Services received a resubmitted certificate request.</td>
</tr>
<tr class="even">
<td align="left">774</td>
<td align="left">Certificate Services revoked a certificate.</td>
</tr>
<tr class="odd">
<td align="left">775</td>
<td align="left">Certificate Services received a request to publish the certificate revocation list (CRL).</td>
</tr>
<tr class="even">
<td align="left">776</td>
<td align="left">Certificate Services published the certificate revocation list (CRL).</td>
</tr>
<tr class="odd">
<td align="left">777</td>
<td align="left">A certificate request extension was made.</td>
</tr>
<tr class="even">
<td align="left">778</td>
<td align="left">One or more certificate request attributes changed.</td>
</tr>
<tr class="odd">
<td align="left">779</td>
<td align="left">Certificate Services received a request to shutdown.</td>
</tr>
<tr class="even">
<td align="left">780</td>
<td align="left">Certificate Services backup started.</td>
</tr>
<tr class="odd">
<td align="left">781</td>
<td align="left">Certificate Services backup completed</td>
</tr>
<tr class="even">
<td align="left">782</td>
<td align="left">Certificate Services restore started.</td>
</tr>
<tr class="odd">
<td align="left">783</td>
<td align="left">Certificate Services restore completed.</td>
</tr>
<tr class="even">
<td align="left">784</td>
<td align="left">Certificate Services started.</td>
</tr>
<tr class="odd">
<td align="left">785</td>
<td align="left">Certificate Services stopped.</td>
</tr>
<tr class="even">
<td align="left">786</td>
<td align="left">The security permissions for Certificate Services changed.</td>
</tr>
<tr class="odd">
<td align="left">787</td>
<td align="left">Certificate Services retrieved an archived key.</td>
</tr>
<tr class="even">
<td align="left">788</td>
<td align="left">Certificate Services imported a certificate into its database.</td>
</tr>
<tr class="odd">
<td align="left">789</td>
<td align="left">The audit filter for Certificate Services changed.</td>
</tr>
<tr class="even">
<td align="left">790</td>
<td align="left">Certificate Services received a certificate request.</td>
</tr>
<tr class="odd">
<td align="left">791</td>
<td align="left">Certificate Services approved a certificate request and issued a certificate.</td>
</tr>
<tr class="even">
<td align="left">792</td>
<td align="left">Certificate Services denied a certificate request.</td>
</tr>
<tr class="odd">
<td align="left">793</td>
<td align="left">Certificate Services set the status of a certificate request to pending.</td>
</tr>
<tr class="even">
<td align="left">794</td>
<td align="left">The certificate manager settings for Certificate Services changed.</td>
</tr>
<tr class="odd">
<td align="left">795</td>
<td align="left">A configuration entry changed in Certificate Services.</td>
</tr>
<tr class="even">
<td align="left">796</td>
<td align="left">A property of Certificate Services changed.</td>
</tr>
<tr class="odd">
<td align="left">797</td>
<td align="left">Certificate Services archived a key.</td>
</tr>
<tr class="even">
<td align="left">798</td>
<td align="left">Certificate Services imported and archived a key.</td>
</tr>
<tr class="odd">
<td align="left">799</td>
<td align="left">Certificate Services published the CA certificate to Active Directory.</td>
</tr>
<tr class="even">
<td align="left">800</td>
<td align="left">One or more rows have been deleted from the certificate database.</td>
</tr>
<tr class="odd">
<td align="left">801</td>
<td align="left">Role separation enabled.</td>
</tr>
</tbody>
</table>

 

## Related topics


[Basic security audit policy settings](basic-security-audit-policy-settings.md)

 

 





