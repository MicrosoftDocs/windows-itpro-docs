---
title: Policy CSP - Start
description: Policy CSP - Start
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 11/01/2017
---

# Policy CSP - Start



<hr/>

<!--StartPolicies-->
## Start policies  

<dl>
  <dd>
    <a href="#start-allowpinnedfolderdocuments">Start/AllowPinnedFolderDocuments</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderdownloads">Start/AllowPinnedFolderDownloads</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderfileexplorer">Start/AllowPinnedFolderFileExplorer</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderhomegroup">Start/AllowPinnedFolderHomeGroup</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldermusic">Start/AllowPinnedFolderMusic</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldernetwork">Start/AllowPinnedFolderNetwork</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderpersonalfolder">Start/AllowPinnedFolderPersonalFolder</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfolderpictures">Start/AllowPinnedFolderPictures</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldersettings">Start/AllowPinnedFolderSettings</a>
  </dd>
  <dd>
    <a href="#start-allowpinnedfoldervideos">Start/AllowPinnedFolderVideos</a>
  </dd>
  <dd>
    <a href="#start-forcestartsize">Start/ForceStartSize</a>
  </dd>
  <dd>
    <a href="#start-hideapplist">Start/HideAppList</a>
  </dd>
  <dd>
    <a href="#start-hidechangeaccountsettings">Start/HideChangeAccountSettings</a>
  </dd>
  <dd>
    <a href="#start-hidefrequentlyusedapps">Start/HideFrequentlyUsedApps</a>
  </dd>
  <dd>
    <a href="#start-hidehibernate">Start/HideHibernate</a>
  </dd>
  <dd>
    <a href="#start-hidelock">Start/HideLock</a>
  </dd>
  <dd>
    <a href="#start-hidepeoplebar">Start/HidePeopleBar</a>
  </dd>
  <dd>
    <a href="#start-hidepowerbutton">Start/HidePowerButton</a>
  </dd>
  <dd>
    <a href="#start-hiderecentjumplists">Start/HideRecentJumplists</a>
  </dd>
  <dd>
    <a href="#start-hiderecentlyaddedapps">Start/HideRecentlyAddedApps</a>
  </dd>
  <dd>
    <a href="#start-hiderestart">Start/HideRestart</a>
  </dd>
  <dd>
    <a href="#start-hideshutdown">Start/HideShutDown</a>
  </dd>
  <dd>
    <a href="#start-hidesignout">Start/HideSignOut</a>
  </dd>
  <dd>
    <a href="#start-hidesleep">Start/HideSleep</a>
  </dd>
  <dd>
    <a href="#start-hideswitchaccount">Start/HideSwitchAccount</a>
  </dd>
  <dd>
    <a href="#start-hideusertile">Start/HideUserTile</a>
  </dd>
  <dd>
    <a href="#start-importedgeassets">Start/ImportEdgeAssets</a>
  </dd>
  <dd>
    <a href="#start-nopinningtotaskbar">Start/NoPinningToTaskbar</a>
  </dd>
  <dd>
    <a href="#start-startlayout">Start/StartLayout</a>
  </dd>
</dl>

<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderdocuments"></a>**Start/AllowPinnedFolderDocuments**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Documents shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderdownloads"></a>**Start/AllowPinnedFolderDownloads**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Downloads shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderfileexplorer"></a>**Start/AllowPinnedFolderFileExplorer**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the File Explorer shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderhomegroup"></a>**Start/AllowPinnedFolderHomeGroup**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the HomeGroup shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldermusic"></a>**Start/AllowPinnedFolderMusic**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Music shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldernetwork"></a>**Start/AllowPinnedFolderNetwork**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Network shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderpersonalfolder"></a>**Start/AllowPinnedFolderPersonalFolder**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the PersonalFolder shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfolderpictures"></a>**Start/AllowPinnedFolderPictures**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Pictures shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldersettings"></a>**Start/AllowPinnedFolderSettings**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Settings shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-allowpinnedfoldervideos"></a>**Start/AllowPinnedFolderVideos**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy controls the visibility of the Videos shortcut on the Start menu.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 – The shortcut is hidden and disables the setting in the Settings app.
-   1 – The shortcut is visible and disables the setting in the Settings app.
-   65535 (default) - There is no enforced configuration and the setting can be changed by the user.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-forcestartsize"></a>**Start/ForceStartSize**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy is only enforced in Windows 10 for desktop and not supported in Windows 10 Mobile.


<p style="margin-left: 20px">Forces the start screen size.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – Do not force size of Start.
-   1 – Force non-fullscreen size of Start.
-   2 - Force a fullscreen size of Start.

<p style="margin-left: 20px">If there is policy configuration conflict, the latest configuration request is applied to the device.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hideapplist"></a>**Start/HideAppList**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Allows IT Admins to configure Start by collapsing or removing the all apps list.

> [!Note]
> There were issues reported with the previous release of this policy and a fix was added in Windows 10, version 1709. 

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – None.
-   1 – Hide all apps list.
-   2 - Hide all apps list, and Disable "Show app list in Start menu" in Settings app.
-   3 - Hide all apps list, remove all apps button, and Disable "Show app list in Start menu" in Settings app.

<p style="margin-left: 20px">To validate on Desktop, do the following:

-   1 - Enable policy and restart explorer.exe
-   2a - If set to '1': Verify that the all apps list is collapsed, and that the Settings toggle is not grayed out.
-   2b - If set to '2': Verify that the all apps list is collapsed, and that the Settings toggle is grayed out.
-   2c - If set to '3': Verify that there is no way of opening the all apps list from Start, and that the Settings toggle is grayed out.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidechangeaccountsettings"></a>**Start/HideChangeAccountSettings**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Change account settings" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Change account settings" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidefrequentlyusedapps"></a>**Start/HideFrequentlyUsedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding most used apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show most used apps" in the Settings app.
2.   Use some apps to get them into the most used group in Start.
3.   Enable policy.
4.   Restart explorer.exe
5.   Check that  "Show most used apps" Settings toggle is grayed out.
6.   Check that most used apps do not appear in Start.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidehibernate"></a>**Start/HideHibernate**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Hibernate" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Laptop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Hibernate" is not available.

> [!NOTE]
> This policy can only be verified on laptops as "Hibernate" does not appear on regular PC's.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidelock"></a>**Start/HideLock**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Lock" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Lock" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidepeoplebar"></a>**Start/HidePeopleBar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>3</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->

<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1709. Enabling this policy removes the people icon from the taskbar as well as the corresponding settings toggle. It also prevents users from pinning people to the taskbar.

<p style="margin-left: 20px">Value type is integer.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidepowerbutton"></a>**Start/HidePowerButton**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding the Power button from appearing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, and verify the power button is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hiderecentjumplists"></a>**Start/HideRecentJumplists**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding recently opened items in the jumplists from appearing.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show recently opened items in Jump Lists on Start of the taskbar" in Settings.
2.   Pin Photos to the taskbar, and open some images in the photos app.
3.   Right click the pinned photos app and verify that a jumplist of recently opened items pops up.
4.   Toggle "Show recently opened items in Jump Lists on Start of the taskbar" in Settings to clear jump lists.
5.   Enable policy.
6.   Restart explorer.exe
7.   Check that Settings toggle is grayed out.
8.   Repeat Step 2.
9.   Right Click pinned photos app and verify that there is no jumplist of recent items.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hiderecentlyaddedapps"></a>**Start/HideRecentlyAddedApps**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding recently added apps.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable "Show recently added apps" in the Settings app.
2.   Check if there are recently added apps in Start (if not, install some).
3.   Enable policy.
4.   Restart explorer.exe
5.   Check that "Show recently added apps" Settings toggle is grayed out.
6.   Check that recently added apps do not appear in Start.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hiderestart"></a>**Start/HideRestart**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Restart" and "Update and restart" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Restart" and "Update and restart" are not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hideshutdown"></a>**Start/HideShutDown**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Shut down" and "Update and shut down" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify "Shut down" and "Update and shut down" are not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidesignout"></a>**Start/HideSignOut**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Sign out" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify "Sign out" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hidesleep"></a>**Start/HideSleep**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Sleep" from appearing in the Power button.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the Power button, and verify that "Sleep" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hideswitchaccount"></a>**Start/HideSwitchAccount**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding "Switch account" from appearing in the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Open Start, click on the user tile, and verify that "Switch account" is not available.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-hideusertile"></a>**Start/HideUserTile**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure Start by hiding the user tile.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (do not hide).
-   1 - True (hide).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Log off.
3.   Log in, and verify that the user tile is gone from Start.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-importedgeassets"></a>**Start/ImportEdgeAssets**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!NOTE]
> This policy requires reboot to take effect.

<p style="margin-left: 20px">Added in Windows 10, version 1703. This policy imports Edge assets (e.g. .png/.jpg files) for secondary tiles into its local app data path which allows the StartLayout policy to pin Edge secondary tiles as weblink that tie to the image asset files.

> [!IMPORTANT]
> Please note that the import happens only when StartLayout policy is changed. So it is better to always change ImportEdgeAssets policy at the same time as StartLayout policy whenever there are Edge secondary tiles to be pinned from StartLayout policy.

<p style="margin-left: 20px">The value set for this policy is an XML string containing Edge assets.  For an example XML string, see [Add image for secondary Microsoft Edge tiles](https://docs.microsoft.com/en-us/windows/configuration/start-secondary-tiles).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Set policy with an XML for Edge assets.
2.   Set StartLayout policy to anything so that it would trigger the Edge assets import.
3.   Sign out/in.
4.   Verify that all Edge assets defined in XML show up in %LOCALAPPDATA%\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\LocalState path.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-nopinningtotaskbar"></a>**Start/NoPinningToTaskbar**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/checkmark.png" alt="check mark" /><sup>2</sup></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
<p style="margin-left: 20px">Added in Windows 10, version 1703. Allows IT Admins to configure the taskbar by disabling pinning and unpinning apps on the taskbar.

<p style="margin-left: 20px">The following list shows the supported values:

-   0 (default) – False (pinning enabled).
-   1 - True (pinning disabled).

<p style="margin-left: 20px">To validate on Desktop, do the following:

1.   Enable policy.
2.   Right click on a program pinned to taskbar.
3.   Verify that "Unpin from taskbar" menu does not show.
4.   Open Start and right click on one of the app list icons.
5.   Verify that More->Pin to taskbar menu does not show.

<!--EndDescription-->
<!--EndPolicy-->
<hr/>
<!--StartPolicy-->
<a href="" id="start-startlayout"></a>**Start/StartLayout**  

<!--StartSKU-->
<table>
<tr>
	<th>Home</th>
	<th>Pro</th>
	<th>Business</th>
	<th>Enterprise</th>
	<th>Education</th>
	<th>Mobile</th>
	<th>Mobile Enterprise</th>
</tr>
<tr>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/checkmark.png" alt="check mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
	<td><img src="images/crossmark.png" alt="cross mark" /></td>
</tr>
</table>

<!--EndSKU-->
<!--StartScope-->
[Scope](./policy-configuration-service-provider.md#policy-scope):

> [!div class = "checklist"]
> * User
> * Device

<hr/>

<!--EndScope-->
<!--StartDescription-->
> [!IMPORTANT]
> Added in Windows 10 version 1703: In addition to being able to set this node on a per user-basis, it can now also be set on a per-device basis. For more information, see [Policy scope](./policy-configuration-service-provider.md#policy-scope)

<p style="margin-left: 20px">Allows you to override the default Start layout and prevents the user from changing it. If both user and device policies are set, the user policy will be used. Apps pinned to the taskbar can also be changed with this policy

<p style="margin-left: 20px">For further details on how to customize the Start layout, please see [Customize and export Start layout](https://docs.microsoft.com/en-us/windows/configuration/customize-and-export-start-layout) and [Configure Windows 10 taskbar](https://docs.microsoft.com/en-us/windows/configuration/configure-windows-10-taskbar).

<!--EndDescription-->
<!--EndPolicy-->
<hr/>

Footnote:

-   1 - Added in Windows 10, version 1607.
-   2 - Added in Windows 10, version 1703.
-   3 - Added in Windows 10, version 1709.

<!--EndPolicies-->

