---
title: Policy CSP - WindowsSandbox
description: Policy CSP - WindowsSandbox
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.localizationpriority: medium
ms.date: 10/14/2020
---

# Policy CSP - WindowsSandbox

> [!WARNING]
> Some information relates to prereleased products, which may be substantially modified before it's commercially released. Microsoft makes no warranties, expressed or implied, concerning the information provided here.


<hr/>

<!--Policies-->
## WindowsSandbox policies  

<dl>
  <dd>
    <a href="#windowssandbox-allowaudioinput">WindowsSandbox/AllowAudioInput</a>
  </dd>
  <dd>
    <a href="#windowssandbox-allowclipboardredirection">WindowsSandbox/AllowClipboardRedirection</a>
  </dd>
  <dd>
    <a href="#windowssandbox-allownetworking">WindowsSandbox/AllowNetworking</a>
  </dd>
  <dd>
    <a href="#windowssandbox-allowprinterredirection">WindowsSandbox/AllowPrinterRedirection</a>
  </dd>
  <dd>
    <a href="#windowssandbox-allowvgpu">WindowsSandbox/AllowVGPU</a>
  </dd>
  <dd>
    <a href="#windowssandbox-allowvideoinput">WindowsSandbox/AllowVideoInput</a>
  </dd>
</dl>


<hr/>

<!--Policy-->
<a href="" id="windowssandbox-allowaudioinput"></a>**WindowsSandbox/AllowAudioInput**

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable audio input to the Sandbox. 

> [!NOTE]
> There may be security implications of exposing host audio input to the container.

If this policy is not configured, end-users get the default behavior (audio input enabled). 

If audio input is disabled, a user will not be able to enable audio input from their own configuration file. 

If audio input is enabled, a user will be able to disable audio input from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:

- GP Friendly name: *Allow audio input in Windows Sandbox*
- GP name: *AllowAudioInput*
- GP path: *Windows Components/Windows Sandbox* 
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:  

- 0 - Disabled
- 1 (default) - Enabled

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>


<!--Policy-->
<a href="" id="windowssandbox-allowclipboardredirection"></a>**WindowsSandbox/AllowClipboardRedirection**  

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable sharing of the host clipboard with the sandbox.

If this policy is not configured, end-users get the default behavior (clipboard redirection enabled. 

If clipboard sharing is disabled, a user will not be able to enable clipboard sharing from their own configuration file. 

If clipboard sharing is enabled, a user will be able to disable clipboard sharing from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:

- GP Friendly name: *Allow clipboard sharing with Windows Sandbox*
- GP name: *AllowClipboardRedirection*
- GP path: *Windows Components/Windows Sandbox*
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:  

- 0 - Disabled
- 1 (default) - Enabled


<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowssandbox-allownetworking"></a>**WindowsSandbox/AllowNetworking**  

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable networking in Windows Sandbox. Disabling network access can decrease the attack surface exposed by the Sandbox. Enabling networking can expose untrusted applications to the internal network.

If this policy is not configured, end-users get the default behavior (networking enabled).

If networking is disabled, a user will not be able to enable networking from their own configuration file.

If networking is enabled, a user will be able to disable networking from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:

- GP Friendly name: *Allow networking in Windows Sandbox*
- GP name: *AllowNetworking*
- GP path: *Windows Components/Windows Sandbox*
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:  
- 0 - Disabled
- 1 (default) - Enabled

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowssandbox-allowprinterredirection"></a>**WindowsSandbox/AllowPrinterRedirection**  

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable printer sharing from the host into the Sandbox. 

If this policy is not configured, end-users get the default behavior (printer sharing disabled). 

If printer sharing is disabled, a user will not be able to enable printer sharing from their own configuration file. 

If printer sharing is enabled, a user will be able to disable printer sharing from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:

- GP Friendly name: *Allow printer sharing with Windows Sandbox*
- GP name: *AllowPrinterRedirection*
- GP path: *Windows Components/Windows Sandbox* 
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:

- 0 - Disabled
- 1 (default) - Enabled

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowssandbox-allowvgpu"></a>**WindowsSandbox/AllowVGPU**  

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable virtualized GPU for Windows Sandbox.

> [!NOTE]
> Enabling virtualized GPU can potentially increase the attack surface of Windows Sandbox. 

If this policy is not configured, end-users get the default behavior (vGPU is disabled). 

If vGPU is disabled, a user will not be able to enable vGPU support from their own configuration file. 

If vGPU is enabled, a user will be able to disable vGPU support from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info:

- GP Friendly name: *Allow vGPU sharing for Windows Sandbox*
- GP name: *AllowVGPU*
- GP path: *Windows Components/Windows Sandbox*
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:

- 0 (default) - Disabled
- 1 - Enabled

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--Policy-->
<a href="" id="windowssandbox-allowvideoinput"></a>**WindowsSandbox/AllowVideoInput**  

Available in the latest Windows 10 insider preview build.

<!--SupportedSKUs-->
<table>
<tr>
    <th>Windows Edition</th>
    <th>Supported?</th>
</tr>
<tr>
    <td>Home</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Pro</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Business</td>
    <td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
<tr>
    <td>Enterprise</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
<tr>
    <td>Education</td>
    <td><img src="images/checkmark.png" alt="check mark" /></td>
</tr>
</table>

<!--/SupportedSKUs-->
<hr/>

<!--Scope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--/Scope-->
<!--Description-->
This policy setting allows the IT admin to enable or disable video input to the Sandbox. 

> [!NOTE]
> There may be security implications of exposing host video input to the container.

If this policy is not configured, users get the default behavior (video input disabled). 

If video input is disabled, users will not be able to enable video input from their own configuration file. 

If video input is enabled, users will be able to disable video input from their own configuration file to make the device more secure.

> [!NOTE]
> You must restart Windows Sandbox for any changes to this policy setting to take effect.

<!--/Description-->
<!--ADMXMapped-->
ADMX Info: 
- GP Friendly name: *Allow video input in Windows Sandbox*
- GP name: *AllowVideoInput*
- GP path: *Windows Components/Windows Sandbox*
- GP ADMX file name: *WindowsSandbox.admx*

<!--/ADMXMapped-->
<!--SupportedValues-->
The following are the supported values:

- 0 (default) - Disabled
- 1 - Enabled

<!--/SupportedValues-->
<!--Example-->

<!--/Example-->
<!--Validation-->

<!--/Validation-->
<!--/Policy-->

<hr/>

<!--/Policies-->
