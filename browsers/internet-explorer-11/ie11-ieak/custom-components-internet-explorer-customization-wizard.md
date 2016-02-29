---
title: 'Custom Components: Internet Explorer Customization Wizard'
description: Custom Components: Internet Explorer Customization Wizard
ms.assetid: 38a2b90f-c324-4dc8-ad30-8cd3e3e901d7
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Custom Components: Internet Explorer Customization Wizard


The **Custom Components** page of the Internet Explorer Customization Wizard 11 lets you add up to 10 additional components that your employees can install at the same time they install IE. These components can be created by Microsoft or your organization as either compressed cabinet (.cab) or self-extracting executable (.exe) files. If you’re using Microsoft components, make sure you have the latest version and software patches from the [Microsoft Support](http://go.microsoft.com/fwlink/?LinkId=258658) site. To include Microsoft Update components, you must bundle the associated files into a custom component.

**Important**  
You should sign any custom code that’s being downloaded over the Internet. The default settings of Internet Explorer 11 will automatically reject any unsigned code. For more information about digitally signing custom components, see [IEAK 11 and security](ieak-11-and-security.md).

 

![](../common/wedge.gif)**To use the Custom Component page**

1.  Click **Add**.

    The **Add a Custom Component** box appears.

2.  Type in the name of your component and then browse to the location of your file (either .cab or .exe).

3.  Pick when to install the component. This can be before IE, after IE, or after the computer restarts.

    **Important**  
    You should install your component before IE if you need to run a batch file to configure your employee settings. You should install your component after IE if you plan to install software updates.

     

4.  Check the **Only install if IE is installed successfully** box if your component should only install if IE installs successfully. For example, if you’re installing a security update that requires IE.

5.  If your component is a .cab file, you must provide the extraction command into the **Command** box.

6.  If your component has its own globally unique identifier (GUID), replace the value in the **GUID** box. Otherwise, keep the automatically generated GUID.

7.  Describe your component using up to 511 characters in the **Description** box.

8.  Type any command-line options that need to run while installing your component into the **Parameters** box. For example, if you want your component to install silently, without prompts. For more information about using options, see [IExpress command-line options](iexpress-command-line-options.md).

9.  Type the value that Microsoft Update Setup uses to check that the component installed successfully into the **Uninstall Key** box. This check is done by comparing your value to the value in the HKEY\_LOCAL\_MACHINE\\Software\\Microsoft\\Windows\\CurrentVersion\\Uninstall\\ApplicationName key.

10. Type a numeric serial number for your component into the **Version** box, using this format: *xxxx*, *xxxxxx*, *xxxx*, *xxxx*.

11. Click **Add**.

    The boxes clear and you can add another component. Click **Cancel** to go back to the **Custom Components** page.

12. Click **Edit** to change your custom component information, **Verify** to make sure the component is digitally signed, or **Remove** to delete the component from your custom installation package.

13. Click **Next** to go to the [Internal Install: Internet Explorer Customization Wizard](internal-install-internet-explorer-customization-wizard.md) page or **Back** to go to the [Automatic Version Synchronization: Internet Explorer Customization Wizard](automatic-version-synchronization-internet-explorer-customization-wizard.md).

 

 





