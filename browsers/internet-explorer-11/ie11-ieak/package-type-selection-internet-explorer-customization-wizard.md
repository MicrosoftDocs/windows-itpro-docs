---
title: 'Package Type Selection: Internet Explorer Customization Wizard'
description: Package Type Selection: Internet Explorer Customization Wizard
ms.assetid: dd91f788-d05e-4f45-9fd5-d951abf04f2c
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Package Type Selection: Internet Explorer Customization Wizard


The **Package Type Selection** page of the Internet Explorer Customization Wizard 11 lets you pick which type of media you’ll use to distribute your custom installation package. You can pick more than one type, if you need it.

![](images/wedge.gif) **To use the File Locations page**

1.  Check the **Full Installation Package** box if you’re going to build your package on, or move your package to, a local area network (LAN). This media package includes the Internet Explorer 11 installation files, and is named **IE11-Setup-Full.exe**, in the &lt;*systemdrive*&gt;:\\&lt;*destination\_folder*&gt;\\FLAT\\&lt;*OS\_version*&gt;\\&lt;*language\_code*&gt; folder.

    **Important**  
    You can't create a full installation package for deployment to Windows 10 computers. This only works for computers running Windows 7 or Windows 8.1.

     

2.  Check the **Configuration-only package** box if you want to update an existing installation of IE11. This media package is named **IE11- Setup-Branding.exe**, in the &lt;*systemdrive*&gt;:\\&lt;*destination\_folder*&gt;\\BrndOnly\\&lt;*OS\_version*&gt;\\&lt;*language\_code*&gt; folder.

    You can distribute this file on any media format or server. It customizes the IE11 features without re-installing IE.

    **Important**  
    You can’t include custom components in a configuration-only package.

     

3.  Click **Next** to go to the [Feature Selection: Internet Explorer Customization Wizard](feature-selection-internet-explorer-customization-wizard.md) page or **Back** to go to the [Language Selection: Internet Explorer Customization Wizard](language-selection-internet-explorer-customization-wizard.md).

 

 





