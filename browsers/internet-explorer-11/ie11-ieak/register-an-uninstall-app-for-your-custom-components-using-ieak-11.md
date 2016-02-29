---
title: Register an uninstall app for your custom components using IEAK 11
description: Register an uninstall app for your custom components using IEAK 11
ms.assetid: 4da1d408-af4a-4c89-a491-d6f005fd5005
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Register an uninstall app for your custom components using IEAK 11


Register the uninstall apps for any custom components you’ve included in your Internet Explorer 11 package. Registering these apps lets your employees remove the components later, using **Uninstall or change a program** in the Control Panel.

## <span id="Register_your_uninstallation_program"></span><span id="register_your_uninstallation_program"></span><span id="REGISTER_YOUR_UNINSTALLATION_PROGRAM"></span>Register your uninstallation program


While you’re running your custom component setup process, your app can add information to the subkeys in the `HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Uninstall\ApplicationName` registry key, registering your uninstallation program.

**Note**  
IE11 also uses this registry key to verify that the component installed successfully during setup.

 

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th align="left">Subkey</th>
<th align="left">Data type</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left"><p>DisplayName</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Friendly name for your uninstall app</p>
<p>This name must match what you type for the <strong>Uninstall Key</strong> in the <strong>Add a Custom Component</strong> page of the Internet Explorer Customization Wizard 11. For more information, see [Custom Components: Internet Explorer Customization Wizard](custom-components-internet-explorer-customization-wizard.md).</p></td>
</tr>
<tr class="even">
<td align="left"><p>UninstallString</p></td>
<td align="left"><p>String</p></td>
<td align="left"><p>Full command-line text, including the path, to uninstall your component</p>
<p>Don’t use a batch file or a sub-process</p></td>
</tr>
</tbody>
</table>

 

 

 





