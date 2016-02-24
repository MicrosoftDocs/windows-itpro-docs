---
Description: 'File Locations: Internet Explorer Customization Wizard'
MS-HAID: 'p\_ieak\_ie11.file\_locations\_internet\_explorer\_customization\_wizard'
MSHAttr: 'PreferredLib:/library'
title: 'File Locations: Internet Explorer Customization Wizard'
---

# File Locations: Internet Explorer Customization Wizard


The **File Locations** page of the Internet Explorer Customization Wizard 11 lets you change the location of your folders, including:

-   Where you’ll create and store your custom installation package.

-   Where you’ll download and store Internet Explorer 11.

**Important**  
You can create a custom installation package on your hard drive and move it to an Internet or intranet server, or you can create it directly on a server. If you create the package on a web server that’s running from your hard drive, use the path to the web server as the destination folder location. Whatever location you choose, it must be protected by appropriate access control lists (ACLs). If the location is not protected, the custom package may be tampered with.

 

![](../common/wedge.gif)**To use the File Locations page**

1.  Browse to the location where you’ll store your finished custom IE installation package and the related subfolders.

    **Note**  
    Subfolders are created for each language version, based on operating system and media type. For example, if your destination folder is `C:\Inetpub\Wwwroot\Cie\Dist`, then the English-language version is created as `C:\Inetpub\Wwwroot\Cie\Dist\Flat\Win32\En` subfolders.

     

2.  Click **Advanced Options**.

    The **Advanced Options** box opens and lets you change how the wizard downloads and gets files, and how it imports settings from your .ins file.

3.  Check the box letting IE Customization Wizard 11 look for the latest components, using Automatic Version Synchronization.

    This option lets the wizard connect to the IE **Downloads** page to look for updated versions of IE since you last ran the wizard.

    **Important**  
    You must run Automatic Version Synchronization at least once to check for updated components.

     

4.  Browse to your .ins file location, and then click **Open**.

    By importing settings from an .ins file, you can re-use existing configurations. This saves you time if your packages have the same or similar settings.

5.  Browse to your component download folder.

    Automatic Version Synchronization automatically checks the component download folder to see if you have the latest version of IE. To keep this folder up-to-date, you shouldn’t change its location. However, if you want to keep both a previous version of IE and the latest version, we recommend you download the components to a different location.

6.  Click **OK** to close the **Advanced Options** box, and then click **Next** to go to the [Platform Selection: Internet Explorer Customization Wizard](platform_selection_internet_explorer_customization_wizard.md) page.

 

 



