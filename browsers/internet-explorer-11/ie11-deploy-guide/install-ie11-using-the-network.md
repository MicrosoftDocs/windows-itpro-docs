---
Description: 'Install Internet Explorer 11 (IE11) - Network'
MS-HAID: 'p\_ie11deploy.install\_internet\_explorer\_11\_\_ie11\_\_\_\_network'
MSHAttr: 'PreferredLib:/library'
title: Install Internet Explorer 11 (IE11) using your network (Internet Explorer 11 for IT Pros)
---

# Install Internet Explorer 11 (IE11) using your network

You can install Internet Explorer 11 (IE11) over your network by putting your custom IE11 installation package in a shared network folder and letting your employees run the Setup program on their own computers. You can create the network folder structure manually, or you can run IEAK 11.

**Note**  
If you support multiple architectures and operating systems, create a subfolder for each combination. If you support multiple languages, create a subfolder for each localized installation file.

 

![](../common/wedge.gif)**To manually create the folder structure**

-   Copy your custom IE11 installation file into a folder on your network, making sure it's available to your employees.

![](../common/wedge.gif)**To create the folder structure using IEAK 11**

-   Run the Internet Explorer Customization Wizard 11 using the **Full Installation Package** option.

    The wizard automatically puts your custom installation files in your \\*build\_directory*\\Flat folder. Where *build\_directory* is the location of your other build files.

    **Note**  
    Use the localized versions of the IE Customization Wizard 11 to create localized IE11 installation packages.

     

 

 



