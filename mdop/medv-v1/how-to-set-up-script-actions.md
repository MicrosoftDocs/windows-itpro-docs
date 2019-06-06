---
title: How to Set Up Script Actions
description: How to Set Up Script Actions
author: dansimp
ms.assetid: 367e28f1-d8c2-4845-a01b-2fff9128ccfd
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# How to Set Up Script Actions


The script actions editor allows the administrator to create actions to be performed during MED-V workspace setup, as well as to define the order in which they are performed.

The following is a list of actions that can be added to the domain setup script:

-   **Restart Windows**—Restart Windows.

-   **Join Domain**—If joining a domain, include this action and configure the user name, password, fully qualified domain name, NetBIOS domain name, and organization unit (optional).

-   **Check Connectivity**—Configure a server to connect to and verify that the MED-V workspace can connect to a network resource (such as the domain server).

-   **Command Line**—Configure a script in the MED-V workspace, and enter a command line that includes the path of the script and the script arguments.

-   **Rename Computer**—Rename the virtual machine computer based on the defined settings.

-   **Disable Auto-Logon**—Disable Windows Auto-Logon. This action should be added at the end of scripts that add the computer to the domain.

## <a href="" id="how-to-set-up-script-actions-"></a>How to Set Up Script Actions


**To set up script actions**

1.  On the **VM Setup** tab, click **Script Editor**.

2.  In the **Script Actions** dialog box, click **Add**, and on the submenu, click the desired actions.

3.  Configure the actions as described in the following tables.

    **Note**  
    **Rename Computer** is configured in the **VM Settings** tab. For more information, see [How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md).

     

    **Note**  
    To rename a computer, Windows must be restarted. It is recommended to add a Restart Windows action following a Rename Computer action.

     

4.  Set the order of the actions by selecting an action and clicking **Up** or **Down**.

5.  Click **OK**.

**Note**  
When running the Join Domain script, for the script to work, the user logged into the MED-V workspace virtual machine must have local administrator rights.

 

**Note**  
When running the Disable Auto-Logon script, it is recommended to disable the local guest account used for the auto-logon once the initial setup is complete.

 

### <a href="" id="bkmk-joindomainproperties"></a>

**Join Domain Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Credentials to use when joining the VM to the domain</p></td>
<td align="left"><p>Select one of the following credentials to use when joining the VM to the domain:</p>
<ul>
<li><p><strong>Use MED-V credentials</strong>—The end-user credentials.</p></li>
<li><p><strong>Use the following credentials</strong>—The credentials specified; enter a user name and password in the corresponding fields.</p></li>
</ul>
<div class="alert">
<strong>Note</strong>  
<p>The credentials you enter are visible to all MED-V workspace users. It is not recommended to provide domain administrator credentials.</p>
</div>
<div>
 
</div></td>
</tr>
<tr class="even">
<td align="left"><p>Domain to join</p></td>
<td align="left"><p>Select one of the following:</p>
<ul>
<li><p><strong>Use the domain name utilized in starting the Workspace</strong>—Join the domain entered by the end user when logging into the MED-V client.</p>
<p>To define the mapping from NetBIOS to fully qualified domain names, click <strong>Global domain mapping table</strong>. In the global domain mapping table, click <strong>Add</strong>, enter a <strong>NetBIOS domain name</strong> and a <strong>Fully qualified domain name</strong>, and click <strong>OK</strong>.</p></li>
<li><p><strong>Use the following domain name</strong>—Join the domain specified; enter a domain name and NetBIOS domain name in the corresponding fields.</p></li>
</ul></td>
</tr>
<tr class="odd">
<td align="left"><p>Organization Unit</p></td>
<td align="left"><p>An organization unit (OU) may be specified to join the computer to a specific OU. The format must follow an OU distinguished name: OU=&lt;Organization Unit&gt;,&lt;Domain Controller&gt; (for example, OU=QATest, DC=il, DC=MED-V, DC=com).</p>
<div class="alert">
<strong>Warning</strong>  
<p>Only a single level OU is supported as is shown in the example above.</p>
</div>
<div>
 
</div></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-checkconnectivityproperties"></a>

**Check Connectivity Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>IP Address</p></td>
<td align="left"><p>The IP Address of the server that you are verifying connection to.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Port</p></td>
<td align="left"><p>The port of the server that you are verifying connection to.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Timeout</p></td>
<td align="left"><p>The number of seconds to wait for a response before timing out.</p></td>
</tr>
</tbody>
</table>

 

### <a href="" id="bkmk-commandlineproperties"></a>

**Command-Line Properties**

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Property</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>Path</p></td>
<td align="left"><p>The path of the command line.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Arguments</p></td>
<td align="left"><p>Command-line arguments.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Wait for exit</p></td>
<td align="left"><p>Select the check box to wait for a return before continuing with the script actions.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Fail on error</p></td>
<td align="left"><p>Select this check box if the return is anything but the value specified.</p>
<p>Enter the value that will indicate the command as a success.</p>
<p>Default: <strong>0</strong></p></td>
</tr>
<tr class="odd">
<td align="left"><p>Perform only once</p></td>
<td align="left"><p>Select this check box to run the command line only once. If the script fails or is canceled, this command will not be performed again.</p></td>
</tr>
<tr class="even">
<td align="left"><p>This command line causes a restart of Windows in the Workspace</p></td>
<td align="left"><p>Select this check box if the command line causes a restart after completion.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Allow interaction</p></td>
<td align="left"><p>Select this check box if the command will require user interaction.</p></td>
</tr>
<tr class="even">
<td align="left"><p>Progress message</p></td>
<td align="left"><p>Message to be displayed to the user while the command is running.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>Failure message</p></td>
<td align="left"><p>Message to be displayed to the user if the command fails.</p></td>
</tr>
</tbody>
</table>

 

When configuring the command-line action, several variables can be used as defined in the following table.

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Parameter</th>
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>%MEDVUser%</p></td>
<td align="left"><p>An authenticated user name.</p></td>
<td align="left"><p>MED-V authenticated user name. The user name and password can be used in the join domain VM setup script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>%MEDVPassword%</p></td>
<td align="left"><p>An authenticated password.</p></td>
<td align="left"><p>MED-V authenticated password. The user name and password can be used in the join domain VM setup script.</p></td>
</tr>
<tr class="odd">
<td align="left"><p>%MEDVDomain%</p></td>
<td align="left"><p>Configured domain.</p></td>
<td align="left"><p>The domain configured in the MED-V authentication. It can be used on the VM setup script.</p></td>
</tr>
<tr class="even">
<td align="left"><p>%DesiredMachineName%</p></td>
<td align="left"><p>Computer name.</p></td>
<td align="left"><p>The unique computer name configured in the management application. It can be used in the VM setup script.</p></td>
</tr>
</tbody>
</table>

 

## Related topics


[How to Configure the Virtual Machine Setup for a MED-V Workspace](how-to-configure-the-virtual-machine-setup-for-a-med-v-workspacemedvv2.md)

[How to Configure VM Computer Name Pattern Properties](how-to-configure-vm-computer-name-pattern-propertiesmedvv2.md)

 

 





