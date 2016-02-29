---
title: Using IEAK 11 to Create Multiple Versions of the Custom Browser Package
description: Using IEAK 11 to Create Multiple Versions of the Custom Browser Package
ms.assetid: 4c5f3503-8c69-4691-ae97-1523091ab333
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
---

# Using IEAK 11 to Create Multiple Versions of the Custom Browser Package


You'll need to create multiple versions of your custom browser package if:

-   You support more than 1 version of Windows®.

-   You support more than 1 language.

-   You have custom installation packages with only minor differences. Like, having a different phone number or a different set of URLs in the **Favorites** folder.

The Internet Explorer Customization Wizard 11 stores your original settings in the Install.ins file and will show them each time you re-open the wizard. For more information about .ins files, see [Using Internet Settings (.INS) Files](using-internet-settings--ins--files.md).

![](images/wedge.gif)**To create multiple versions of your browser package**

1.  Use the IE Customization Wizard 11 to create a custom browser package. For more information about how to run the wizard, start with the [File Locations: Internet Explorer Customization Wizard](file-locations-internet-explorer-customization-wizard.md) topic.

2.  Go to the Cie\\Custom folder and rename the Install.ins file to a name that reflects the version. Like, if you need a version for your employees in Texas, you could name the file Texas.ins.

3.  Run the wizard again, choosing the newly renamed folder as the destination directory for your output files.

    **Important**  
    Except for the **Title bar** text, **Favorites**, **Links bar**, **Home** page, and **Search bar**, keep all of your wizard settings the same for all of your build computers.

     

4.  Repeat this process until you’ve created a package for each version of your custom installation package.

 

 





