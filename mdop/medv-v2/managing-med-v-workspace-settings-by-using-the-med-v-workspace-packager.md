---
title: Managing MED-V Workspace Settings by Using the MED-V Workspace Packager
description: Managing MED-V Workspace Settings by Using the MED-V Workspace Packager
author: levinec
ms.assetid: e4b2c516-b9f8-44f9-9eae-caac6c2af3e7
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 08/30/2016
---


# Managing MED-V Workspace Settings by Using the MED-V Workspace Packager


You can use the MED-V Workspace Packager to manage certain settings in the MED-V workspace.

**To manage settings in a MED-V workspace**

1.  To open the **MED-V Workspace Packager**, click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Workspace Packager**.

2.  On the **MED-V Workspace Packager** main panel, click **Manage Settings**.

3.  In the **Manage Settings** window, you can configure the following MED-V workspace settings:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Start MED-V workspace</strong></p></td>
    <td align="left"><p>Choose whether to start the MED-V workspace at user logon, at first use, or to let the end user decide when the MED-V workspace starts.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p></p></td>
    <td align="left"><p>The MED-V workspace starts in one of two ways: either when the end user logs on or when they first perform an action that requires MED-V, such as opening a published application or entering a URL that requires redirection.</p>
    <p>You can either define this setting for the end user or let the end user control how MED-V starts.</p>
    <div class="alert">
    <strong>Note</strong>  
    <p>If you specify that the end user decides, the default behavior they experience is that the MED-V workspace starts when they log on. They can change the default by right-clicking the MED-V icon in the notification area and selecting <strong>MED-V User Settings</strong>. If you define this setting for the end user, they cannot change the way in which MED-V starts.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Networking</strong></p></td>
    <td align="left"><p>Select <strong>Shared</strong> or <strong>Bridged</strong> for your networking setting. The default is <strong>Shared</strong>.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p></p></td>
    <td align="left"><p><strong>Shared</strong> - The MED-V workspace uses Network Address Translation (NAT) to share the host's IP for outgoing traffic.</p>
    <p><strong>Bridged</strong> - The MED-V workspace has its own network address, typically obtained through DHCP.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Store credentials</strong></p></td>
    <td align="left"><p>Choose whether you want to store the end user credentials.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p></p></td>
    <td align="left"><p>The default behavior is that credential storing is disabled so that the end user must be authenticated every time that they log on.</p>
    <div class="alert">
    <strong>Important</strong>  
    <p>Even though caching the end user’s credentials provides the best user experience, you should be aware of the risks involved.</p>
    <p>The end user’s domain credential is stored in a reversible format in the Windows Credential Manager. An attacker could write a program that retrieves the password and thus gain access to the user’s credentials. You can only lessen this risk by disabling the storing of end user credentials.</p>
    </div>
    <div>
     
    </div></td>
    </tr>
    </tbody>
    </table>

     

4.  Click **Save as…** to save the updated configuration settings in the specified folder. MED-V creates a registry file that contains the updated settings. Deploy the updated registry file by using Group Policy. For more information about how to use Group Policy, see [Group Policy Software Installation](https://go.microsoft.com/fwlink/?LinkId=195931) (https://go.microsoft.com/fwlink/?LinkId=195931).

    MED-V also creates a Windows PowerShell script in the specified folder that you can use to re-create this updated registry file.

## Related topics


[Managing MED-V Workspace Configuration Settings](managing-med-v-workspace-configuration-settings.md)

[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)

 

 





