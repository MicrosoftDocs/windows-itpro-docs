---
title: How to Add or Remove URL Redirection Information in a Deployed MED-V Workspace
description: How to Add or Remove URL Redirection Information in a Deployed MED-V Workspace
author: levinec
ms.assetid: bf55848d-bf77-452e-aaa5-4dd4868ff5bd
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 11/01/2016
---


# How to Add or Remove URL Redirection Information in a Deployed MED-V Workspace


To edit URL redirection information in a deployed MED-V workspace, we recommend that you update the system registry by using Group Policy. Although we do not recommend it, you can also rebuild and redeploy the MED-V workspace with the updated URL redirection information.

The registry key is usually located at:

Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\MEDV\\v2\\UserExperience

The following multi-string value must be present: `RedirectUrls`

The value data for `RedirectUrls` is a list of all of the URLs that you specified for redirection when you built the MED-V workspace package by using the **MED-V Workspace Packager**. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

You can add and remove URL redirection information by performing one of the following tasks:

-   [Edit the URL Redirection Registry Key and Deploy Using Group Policy](#bkmk-editreg)

-   [Edit the URL Redirection Text File and Rebuild the MED-V Workspace](#bkmk-edittext)

<a href="" id="bkmk-editreg"></a>**To update URL Redirection information by using Group Policy**

1.  Edit the registry key multi-string value that is named `RedirectUrls`. This value is typically located at:

    Computer\\HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\MEDV\\v2\\UserExperience

    If you are adding URLs to the registry key, enter them one per line, as was required when you built the MED-V workspace package. For more information, see [Create a MED-V Workspace Package](create-a-med-v-workspace-package.md).

2.  Deploy the updated registry key by using Group Policy. For more information about how to use Group Policy, see [Group Policy Software Installation](https://go.microsoft.com/fwlink/?LinkId=195931) (https://go.microsoft.com/fwlink/?LinkId=195931).

**Note**  
This method of editing URL redirection information is a MED-V best practice.

 

<a href="" id="bkmk-edittext"></a>**To rebuild the MED-V workspace by using an updated URL text file**

-   Another method of adding and removing URLs from the redirection list is to update the URL redirection text file and then use it to build a new MED-V workspace. You can then redeploy the MED-V workspace as before, by using your standard process of deployment, such as an ESD system.

    **Important**  
    We do not recommend this method of editing URL redirection information. In addition, any time that you redeploy the MED-V workspace back out to your enterprise, first time setup must run again, and any data saved in the virtual machine is lost.

     

## Related topics


[How to Test URL Redirection](how-to-test-url-redirection.md)

[Managing Applications Deployed to MED-V Workspaces](managing-applications-deployed-to-med-v-workspaces.md)

[Create a MED-V Workspace Package](create-a-med-v-workspace-package.md)

 

 





