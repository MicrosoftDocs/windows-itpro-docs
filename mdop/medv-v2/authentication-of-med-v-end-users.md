---
title: Authentication of MED-V End Users
description: Authentication of MED-V End Users
author: dansimp
ms.assetid: aaf96eb6-91d1-4f4d-9854-5fc73c7ae7ab
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Authentication of MED-V End Users


The authentication of Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 end users is a very important security issue. In this context, authentication refers to verifying the identity of the MED-V end user.

The following section provides information and guidance about end-user authentication in MED-V.

## User Authentication in MED-V


Authentication in MED-V generally occurs at two levels: when a user first accesses MED-V and every time that they change their password.

Depending on how you have configured MED-V settings for authentication, the end user is typically prompted at some point to enter their password, either the first time MED-V is started or the first time that they try to open a published application.

There are several aspects of end-user authentication that you can control, including the following:

Whether the credentials the end user enters are stored in Credential Manager

In what manner the end user is presented with the option of entering and saving their password

Depending on your company’s preferred process for managing end-user authentication, you can specify whether credential caching occurs for a particular MED-V workspace. Caching the credentials of an end user is helpful because they are only prompted one time for their password. If the end user is not allowed to save their password or they decide not to, every time that they start a new MED-V session, they must enter it again. For example, if MED-V is configured to start when the end user logs on to the host but Authentication is disabled, the end user is only prompted one time during logon. In this case, credentials are valid until the end user logs off from the host.

If it is necessary, you can use Credential Manager to remove any stored end-user credentials.

By default, credential storing is disabled, but you can change this setting through one of the following methods:

**While you are creating the MED-V workspace package**. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

**After you have deployed the MED-V workspace**. Edit the MED-V cmdlet parameter UxCredentialCacheEnabled to set the Terminal Services registry key. For more information, see Windows PowerShell Help.

After MED-V workspace deployment, you can set your preference for end-user authentication by modifying the Terminal Services policy named DisablePasswordSaving. DisablePasswordSaving controls whether the password saving check box appears on the RDP client dialog window and whether the MED-V credential prompt is displayed.

Following is the policy path for the Terminal Services policy named DisablePasswordSaving.

**Regedit:**

HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Virtual Machine\\Policies\\DisablePasswordSaving

**Note**  
The changes that you make to DisablePasswordSaving only affect the RDP prompt to a virtual machine.



The following table lists the different ways you can configure your settings for credential storing and the effects of the different configurations:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Value</th>
<th align="left">Configuration</th>
<th align="left">Result</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>DisablePasswordSaving</p></td>
<td align="left"><p><strong>Disabled</strong></p></td>
<td align="left"><p>The MED-V prompt is presented and a check box to accept is available and cleared. If the end user selects the check box, credentials are cached for subsequent use. The end user also has the benefit of only being prompted when the password expires.</p>
<p></p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p></p></td>
<td align="left"><p>If the end user does not select the check box, the Remote Desktop Connection (RDC) Client prompt is presented instead of the MED-V prompt, and the check box to accept is cleared. If the end user selects the check box, the RDC Client credential is stored for later use.</p>
<div class="alert">
<strong>Important</strong><br/><p>RDC does not validate credentials when the end user enters them. If the end user caches the credentials through the RDC prompt, there is a risk that incorrect credentials might be stored. In this case, the incorrect credentials must be deleted in the Windows Credential Manager.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p>DisablePasswordSaving</p></td>
<td align="left"><p><strong>Enabled</strong></p></td>
<td align="left"><div class="alert">
<strong>Note</strong><br/><p>This configuration is more secure because it does not allow end user credentials to be cached.</p>
</div>
<div>

</div></td>
</tr>
</tbody>
</table>



By default, the MED-V installation sets a registry key in the guest to suppress the "password about to expire" prompt. The end user is only prompted for a password change on the host. Credentials that are updated on the host are passed to the guest.

**Caution**  
If you use Group Policy in your environment, know that it can override the registry key causing the password prompts from the guest to reappear.



### Security Concerns with Authentication

Even though caching the end user’s credentials provides the best user experience, you must be aware of the risks involved.

When credential caching is enabled, the end user’s domain credential is stored in a reversible format within the Windows Credential Manager. As a result, an attacker could write a tool that runs as either a system level process or an end user process and that retrieves the end user's credentials. You can only lessen this risk by setting DisablePasswordSaving to **Enabled**.

This same concern exists when MED-V authentication is disabled but the Terminal Services policy setting is enabled.

## Related topics


[Security Best Practices for MED-V Operations](security-best-practices-for-med-v-operations.md)









