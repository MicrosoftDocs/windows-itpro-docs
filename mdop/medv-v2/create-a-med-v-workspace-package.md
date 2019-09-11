---
title: Create a MED-V Workspace Package
description: Create a MED-V Workspace Package
author: dansimp
ms.assetid: 3f75fe73-41ac-4389-ae21-5efb2d437f4d
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# Create a MED-V Workspace Package


A MED-V workspace is the Windows XP desktop environment where end users interact with the virtual machine provided by MED-V. The administrator creates and customizes the MED-V workspace. The workspace consists of an image and the Group Policy that defines the rules and functionality of the MED-V workspace.

You can create multiple MED-V workspaces, each customized with its own configuration, settings, and rules. A user, group, or multiple users or groups can be associated with each MED-V workspace. The customization makes that MED-V workspace available only for that user or group.

Use the **MED-V Workspace Packager** to create MED-V workspaces. The **MED-V Workspace Packager** is divided into two main sections:

-   A main panel that includes three buttons that you use to create and manage MED-V workspaces. The **Create a MED-V Workspace Package** button opens the **Create MED-V Workspace Package Wizard** that you use to create your MED-V workspaces.

-   A **Help Center** on the right-hand side of the window that provides information and guidance to help you create, test, and manage your MED-V workspaces.

**Important**  
Before you can use the **MED-V Workspace Packager**, you must first make sure that the Windows PowerShell execution policy is set to Unrestricted.

`Set-ExecutionPolicy Unrestricted`

In addition, the SAN policy for the computer on which the **MED-V Workspace Packager** is run must be set to “Online All”. To check the setting of the SAN policy, run the following commands at a command prompt with administrative credentials:

`diskpart.exe`

`DISKPART> san`

`DISKPART> exit`

If it is necessary, change the SAN policy to "Online All" by typing the following commands at the command prompt with administrative credentials:

`diskpart.exe`

`DISKPART> san policy=onlineall`

`DISKPART> exit`



**Important**  
If automatic disk encryption software is installed on the computer that you use to mount the virtual hard disk and build the MED-V workspace package, you must disable the software before you start. Otherwise, you cannot use the MED-V workspace on any other computer.



The information we provide here can help you create your MED-V workspace deployment package.

## <a href="" id="bkmk-prereq"></a>Prerequisites


Before you start to build your MED-V workspace deployment package, verify that you have access to the following items:

-   **A prepared Windows XP image**

    For more information about how to create a Windows XP image for use with MED-V, see [Prepare a MED-V Image](prepare-a-med-v-image.md).

-   **A text file or list that contains URL redirection information**

    Your URL redirection text file or list contains those URLs that you want redirected from the host computer to Internet Explorer in the MED-V workspace. When you are using the packaging wizard to create your MED-V workspace, you import, type, or copy and paste this redirection information as one of the steps in the package creation process.

    **Note**  
    URL redirection in MED-V only supports the protocols HTTP and HTTPS. MED-V does not provide support for FTP or any other protocols.



~~~
Enter each web address on a single line, for example:

http://www.contoso.com/webapps/webapp1

http://www.contoso.com/webapps/webapp2

http://\*.contoso.com

http://www.contoso.com/webapps/\*

**Important**  
If you import a text file that includes a URL that uses special characters (such as ~ ! @ \# and so on), make sure that you specify UTF-8 encoding when you save the text file. Special characters do not import correctly into the MED-V Workspace Packager if the text file was saved using the default ANSI encoding.
~~~



## Packaging a MED-V Workspace for a Language Other than the Language of the MED-V Workspace Packager Computer


By default, the MED-V workspace supports characters in both the language of the computer and in English. To create a MED-V workspace for a language other than the one installed on the computer, specify **-loc \[locale\]** in the PowerShell script (.ps1) after the MED-V workspace name.

To create a MED-V workspace package in a language other than the default language of the MED-V Workspace Packager computer, generate a script in the default language by running the MED-V Workspace Packager and then modifying the output script as required for your locale. The script is located in the MED-V workspace output directory that was specified during packaging. The names of the locale settings are on the .WXL files in the following directory:

C:\\Program Files\\Microsoft Enterprise Desktop Virtualization\\WindowsPowerShell\\Modules\\Microsoft.Medv.Administration.Commands.WorkspacePackager\\locale

## Creating a MED-V Workspace Package


To create a MED-V workspace package, follow these steps:

****

1.  To open the **MED-V Workspace Packager**, click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Workspace Packager**.

2.  On the **MED-V Workspace Packager** main panel, click **Create a MED-V Workspace Package**.

    The MED-V **Create MED-V Workspace Package Wizard** appears. The wizard consists of the following pages:

    <table>
    <colgroup>
    <col width="50%" />
    <col width="50%" />
    </colgroup>
    <tbody>
    <tr class="odd">
    <td align="left"><p><strong>Package Information</strong></p></td>
    <td align="left"><p>Specify a name for the MED-V workspace and select a folder where the MED-V workspace package files are saved.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Select Windows XP Image</strong></p></td>
    <td align="left"><p>Specify your prepared Windows XP Virtual PC image.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>First Time Setup</strong></p></td>
    <td align="left"><p>Specify the setup process that MED-V follows during first time setup.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>MED-V Messages</strong></p></td>
    <td align="left"><p>Specify the messages and optional URL for Help information that the end user sees during first time setup.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Naming Computers</strong></p></td>
    <td align="left"><p>Specify how the MED-V virtual machine is named.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Copy Settings from Host</strong></p></td>
    <td align="left"><p>Specify how the settings for the MED-V workspace are defined.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Startup and Networking</strong></p></td>
    <td align="left"><p>Specify the settings for starting the MED-V workspace, networking, and user credentials.</p></td>
    </tr>
    <tr class="even">
    <td align="left"><p><strong>Web Redirection</strong></p></td>
    <td align="left"><p>Specify a text file or a list of the URLs you want redirected to Internet Explorer in the MED-V workspace.</p></td>
    </tr>
    <tr class="odd">
    <td align="left"><p><strong>Summary</strong></p></td>
    <td align="left"><p>Verify your MED-V workspace settings and start to build your MED-V workspace deployment package.</p></td>
    </tr>
    </tbody>
    </table>



3.  On the **Package Information** page, enter a name for the MED-V workspace and select a folder where the MED-V workspace package files are saved.

    **Warning**  
    You must name the MED-V workspace and specify a folder to continue.



~~~
After you have finished, click **Next**.
~~~

4. On the **Select Windows XP Image** page, specify the location of your prepared MED-V Windows XP Virtual PC image (.vhd file).

   **Warning**  
   You must specify a Windows XP VHD image to continue.



~~~
After you have finished, click **Next**.
~~~

5. On the **First Time Setup** page, select whether you want first time setup to run while attended or unattended and whether you want the MED-V workspace used separately or used by all end users on a shared computer.

   If you select **Unattended setup, without any notification**, the end user is not informed before first time setup is run and the virtual machine is not shown to the end user during first time setup. In addition, the **MED-V Messages** page of the wizard is hidden because no messages are required if first time setup runs in a completely unattended mode.

   If you select **Unattended setup, but notify end users before first time setup begins**, the end user is informed before first time setup is run. However, the virtual machine is not shown to the end user during first time setup.

   Select **Attended setup** if the end user must enter information during first time setup.

   The default behavior is **Unattended setup, but notify end users before first time setup begins**.

   **Caution**  
   If you created the Sysprep.inf file so that Mini-Setup requires user input to complete, you must select **Attended setup** or problems might occur during first time setup.



~~~
You can also specify how a MED-V workspace is used on computers that are shared by multiple end users. You can decide that you want to create a unique MED-V workspace for each end user or that you want the MED-V workspace made available to all end users who share the computer. The default is that the MED-V workspace is unique for each end user.

**Important**  
We recommend that you disable the fast user switching feature in Windows if you configure the MED-V workspace to be accessed by all users on a shared computer. Problems can occur if an end user logs on by using the fast user switching feature in Windows when another user is still logged on.



**Tip**  
When you create a name mask for the MED-V workspace on the **Naming Computers** page, make sure that each virtual machine on a shared computer has a unique computer name.



You can also specify whether the MED-V workspace is added to the Administrators group or administrator credentials are managed outside MED-V. By default, the MED-V workspace is not automatically added to the Administrators group.

After you have finished, click **Next**.
~~~

6. On the **MED-V Messages** page, specify the following messages that the end user sees during first time setup:

   -   The message that the end user sees when first time setup starts.

   -   The message that the end user sees if first time setup fails or an error occurs.

   **Note**  
   The **MED-V Messages** page of the wizard is hidden if you selected **Unattended setup, without any notification** on the **First Time Setup** page.



~~~
You can also specify an optional URL location for help information that is provided to the end user when first time setup is running.

For example, the URL can point to an internal IT webpage with answers to questions such as "How long will this take and how will I know when it has completed?" or "What do you do if you get an error message?"

**Note**  
If you specify a URL, a link is shown during first time setup that points the end user to this help information. If you do not specify a URL, no link is provided.



After you have finished, click **Next**.
~~~

7. On the **Naming Computers** page, you can specify whether computer naming is managed by MED-V or by a system management tool, such as Sysprep. The default is that computer naming is managed by a system management tool.

   If you specify that computer naming is managed by MED-V, select a predefined computer naming convention (mask) from the drop-down list. A preview of a sample computer name appears that is based on the computer that you are using to build the MED-V workspace package.

   If you select one of the custom naming conventions, the fields you can specify are limited to the following characters:

   -   The prefix and suffix fields are limited to the characters A-Z, a-z, 0-9, and the special characters ! @ \# $ % ^ & ( ) - \_ ' { } . and ~.

   -   The hostname and username fields are limited to the digits 0 through 9.

   **Important**  
   Computer names must be unique and are limited to a maximum of 15 characters. When you decide on your computer naming method, consider end users who have multiple computers or that share a computer, and avoid using computer name masks that could cause a collision on the network.



~~~
**Caution**  
The computer name settings that you specify on this page override those specified in the Sysprep.inf answer file.



After you have finished, click **Next**.
~~~

8. On the **Copy Settings from Host** page, you can select the following settings to specify how the MED-V workspace is configured:

   **Caution**  
   The settings that you specify on this page that are copied from the host computer to the MED-V workspace override those specified in the Sysprep.inf answer file.



~~~
<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<tbody>
<tr class="odd">
<td align="left"><p><strong>Copy regional settings</strong></p></td>
<td align="left"><p>Select this check box to copy the regional settings from the host computer to the MED-V workspace.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>If you select this check box, the following settings are set in the Sysprep.inf file:</p>
<pre class="syntax" space="preserve"><code>[RegionalSettings]
Language
SystemLocale
UserLocale
UserLocale_DefaultUser
InputLocale
InputLocale_DefaultUser
</code></pre></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Copy user settings</strong></p></td>
<td align="left"><p>Select this check box to copy certain user settings, such as user name and company name, from the host to the MED-V workspace.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><p>If you select this check box, the following settings are set in the Sysprep.inf file:</p>
<pre class="syntax" space="preserve"><code>[UserData]
OrgName
FullName</code></pre>
<div class="alert">
<strong>Note</strong>  
<p>Personal settings, such as Internet browsing history, are not copied over to the MED-V workspace.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Copy domain name</strong></p></td>
<td align="left"><p>Select this check box to let the guest join the same domain as the host.</p></td>
</tr>
<tr class="even">
<td align="left"><p></p></td>
<td align="left"><div class="alert">
<strong>Important</strong>  
<p>The MED-V guest must be configured to join a domain that lets users log on by using the credentials that they use to log on to the MED-V host.</p>
</div>
<div>

</div></td>
</tr>
<tr class="odd">
<td align="left"><p><strong>Copy domain organizational unit</strong></p></td>
<td align="left"><p>Select this check box to copy the domain organizational unit from the host computer to the MED-V workspace. This check box is only enabled if you select to copy the domain name from the host computer.</p></td>
</tr>
</tbody>
</table>



After you have finished, click **Next**.
~~~

9. On the **Startup and Networking** page, you can change the default behavior for the following settings:

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
   <td align="left"><p>The MED-V workspace starts in one of two ways: either when the end user logs on or when they first start an action that requires MED-V, such as opening a published application or entering a URL that requires redirection.</p>
   <p>You can either define this setting for the end user or let the end user control how MED-V starts.</p>
   <div class="alert">
   <strong>Note</strong><br/><p>If you specify that the end user decides, the default behavior they experience is that the MED-V workspace starts when they log on. They can change the default by right-clicking the MED-V icon in the notification area and selecting <strong>MED-V User Settings</strong>. If you define this setting for the end user, they cannot change how MED-V starts.</p>
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
   <td align="left"><p><strong>Shared</strong> - The MED-V workspace uses Network Address Translation (NAT) to share the host&#39;s IP for outgoing traffic.</p>
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
   <strong>Important</strong><br/><p>Even though caching the end user’s credentials provides the best user experience, you should be aware of the risks involved.</p>
   <p>The end user’s domain credential is stored in a reversible format in the Windows Credential Manager. As a result, an attacker could write a program that retrieves the password and could gain access to the user’s credentials. You can only lessen this risk by disabling the storing of end-user credentials.</p>
   </div>
   <div>

   </div></td>
   </tr>
   </tbody>
   </table>



~~~
After you have finished, click **Next**.
~~~

10. On the **Web Redirection** page, you can enter, paste, or import a list of the URLs that are redirected to Internet Explorer in the MED-V workspace. For more information about how to configure your URL redirection information, see [Prerequisites](#bkmk-prereq).

   You can also specify how Internet Explorer in the MED-V workspace is configured for end users. By default, the Internet zone security level is set to High. Also, certain default browsing capabilities, such as the address bar, are removed. This default configuration of Internet Explorer in the MED-V workspace provides a more secure browsing environment for end users.

   **Caution**  
   By changing the default settings, you can customize Internet Explorer in the MED-V workspace. However, realize that if you change the default settings so as to make them less secure, you can expose your organization to those security risks that are present in older versions of Internet Explorer. For more information, see [Security Best Practices for MED-V Operations](security-best-practices-for-med-v-operations.md).



~~~
After you have finished, click **Next**.
~~~

11. On the **Summary** page, you can review the packaging settings for this MED-V workspace. If you want to change any settings, click the **Previous** button to return to the relevant page. After you have finished reviewing the settings, click **Create**.

   The **Completion** page of the **Create MED-V Workspace Package Wizard** opens to show the progress of the package creation.

   **Note**  
   The MED-V workspace package creation process might take several minutes to complete, depending on the size of the VHD specified.



~~~
If the MED-V workspace package is created successfully, the **Completion** page displays a list of the files that you created and their respective locations. The following is a list of the files that are created and their descriptions:

-   **setup.exe**—an installation program that you deploy and run on end-user computers to install the MED-V workspaces.

-   **&lt;*workspace\_name*&gt;.msi**—an installer file that you deploy to the end-user computers. The setup.exe file will run this file to install the MED-V workspaces.

-   **&lt;*vhd\_name*&gt;.medv**—a compressed VHD file that you deploy to the end-user computers. The setup.exe file uses it when it installs the MED-V workspaces.

-   **&lt;*workspace\_name*&gt;.reg**—the configuration settings that are installed when the setup.exe, &lt;*workspace\_name*&gt;.msi, and &lt;*vhd\_name*&gt;.medv files are deployed and setup.exe is run.

-   **&lt;*workspace\_name*&gt;.ps1**—a Windows PowerShell script that you can use to rebuild the registry file and re-build the MED-V workspace package.

    **Important**  
    Before deployment, you can edit configuration settings by updating the .ps1 file that has your preferred method of script editing, such as Windows PowerShell. After you change the .ps1 file, use that file to rebuild the MED-V workspace package that you deploy to your enterprise. For more information, see [Configuring Advanced Settings by Using Windows PowerShell](configuring-advanced-settings-by-using-windows-powershell.md).

    However, after the MED-V workspace is deployed, you must edit configuration settings through the registry. For a list and description of the configuration settings, see [Managing MED-V Workspace Configuration Settings](managing-med-v-workspace-configuration-settings.md).
~~~



12. Click **Close** to close the packaging wizard and return to the **MED-V Workspace Packager**.

Your MED-V workspace package is now ready for testing before deployment.

## Related topics


[Configuring Advanced Settings by Using Windows PowerShell](configuring-advanced-settings-by-using-windows-powershell.md)

[Testing the MED-V Workspace Package](testing-the-med-v-workspace-package.md)

[Prepare a MED-V Image](prepare-a-med-v-image.md)









