---
title: Identifying the Number and Types of MED-V Workspaces
description: Identifying the Number and Types of MED-V Workspaces
author: levinec
ms.assetid: 11642253-6b1f-4c4a-a11e-48d8a360e1ea
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Identifying the Number and Types of MED-V Workspaces


MED-V creates a virtual environment for running applications that require Windows XP or that require a version of Internet Explorer that differs from the version on the host computer. This virtual environment is known as a MED-V workspace.

Depending on the application compatibility requirements faced by your organization as you migrate to Windows 7, only certain users or departments might require MED-V workspaces. As you plan your deployment, you have to determine the number of MED-V workspaces required in your enterprise. You also have to define the requirements of each MED-V workspace.

## Identify the Number and Types of MED-V Workspaces


Identify the computers and groups in your enterprise for which you will be creating MED-V workspaces. Typically, these are the users who require access to those applications that cannot be migrated to Windows 7. Identify those applications that cannot be migrated and the users who require a MED-V workspace to run these applications.

You might also have intranet addresses that have not yet been optimized for Windows 7. The MED-V workspace provides an Internet Explorer browser through which end users can better access those web addresses that are not yet ready for the migration to Windows 7. As you are preparing and planning your MED-V deployment, you will have to identify and compile a list of the URL addresses to redirect from Internet Explorer on the host computer to Internet Explorer in the MED-V workspace.

Finally, you have to evaluate your disk space requirements. Most MED-V workspaces are 2 gigabytes (GB) or larger. The available disk space on a system can be consumed quickly, depending on the number of users and the configuration of MED-V. Also, your company’s preferred method of distribution can require additional space. Generally, you should free a minimum of 10 GB of disk space for a MED-V workspace, but this varies greatly, depending on the size of the image.

### Calculate the Disk Space Requirements for MED-V Workspaces

A MED-V workspace requires memory and disk space from the host computer on which it is installed. At a minimum, 2 GB of disk space are required on the host. Disk space is variable and depends on the number of applications and the data in a user’s MED-V workspace.

We recommend a minimum of 10 GB of disk space for MED-V. This amount allows for a basic Windows XP workspace and some basic installed applications and web redirection. It also provides available space for the host swap drive. In a basic configuration, MED-V and a single deployed MED-V workspace consume as much as 6 to 8 GB. If you include lots of applications on the MED-V workspace or have more than one user per computer, then you can use the following calculation to more accurately determine the disk space your MED-V workspace requires:

*Base VHD + (User per computer x (Difference Disk + Saved State))*

To calculate the required disk space, determine the following:

-   **Size of the base VHD** – the virtual hard disk that was used to create the MED-V workspace.

    **Important**  
    Do not use the .medv file size for your calculation because the .medv file is compressed.

     

-   **Users per computer** – MED-V creates a MED-V workspace for each user on a computer; the MED-V workspace consumes disk space as each user logs on and the MED-V workspace is created.

-   **Size of the differencing disk** – used to track the difference from the base VHD. This size varies as you add applications and software updates to the virtual hard disk. A differencing disk is created for each MED-V user when they start MED-V for the first time.

-   **Size of the Saved State file** – used to maintain state in the virtual machine. Typically, this is just a bit larger than the allocated RAM for the virtual machine. For example, 1 GB of RAM allocated creates a file about 1,081,000 KB.

The following example shows a calculation based on three users of a MED-V workspace that has a 2.6 GB virtual hard disk:

*2.6gb + (3 x (1.5gb + 1gb)) = 10.1gb*

**Note**  
A MED-V best practice is to calculate the required space by using a lab deployment to validate the requirements.

 

### Locate the Files to Determine File Size

The following locations contain the files for the computer and user settings:

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Type</th>
<th align="left">Location</th>
<th align="left">Files</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Base VHD</p></td>
<td align="left"><p>%ProgramData%\Microsoft\Medv\Workspace</p></td>
<td align="left"><p><em>InternalName</em>.vhd - Where <em>InternalName</em> is the name of the virtual hard disk that you selected in the MED-V Workspace Packager.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Differencing Disk</p></td>
<td align="left"><p>%LocalAppData%\Microsoft\MEDV\v2\Virtual Machines</p></td>
<td align="left"><p><em>WorkspaceName</em>.vhd</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Saved State File</p></td>
<td align="left"><p>%LocalAppData%\Microsoft\MEDV\v2\Virtual Machines</p></td>
<td align="left"><p><em>WorkspaceName</em>.vsv</p></td>
</tr>
</tbody>
</table>

 

### Calculate the Disk Space Requirements for Shared MED-V Workspaces

If you are calculating for a shared MED-V workspace deployment on a single computer, then the number of users per computer in your calculation is always “1” because MED-V only configures a single differencing disk for all users.

You can find the differencing disk and the saved state file for shared MED-V workspaces in %ProgramData%\\Microsoft\\Medv\\AllUsers.

## Related topics


[Define and Plan your MED-V Deployment](define-and-plan-your-med-v-deployment.md)

[Planning for MED-V](planning-for-med-v.md)

 

 





