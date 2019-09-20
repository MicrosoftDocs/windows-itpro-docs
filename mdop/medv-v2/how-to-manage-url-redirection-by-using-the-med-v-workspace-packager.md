---
title: How to Manage URL Redirection by Using the MED-V Workspace Packager
description: How to Manage URL Redirection by Using the MED-V Workspace Packager
author: dansimp
ms.assetid: 1a8d25af-479f-42d3-bf5f-c7fd974bbf8c
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w10
ms.date: 08/30/2016
---


# How to Manage URL Redirection by Using the MED-V Workspace Packager


You can use the MED-V Workspace Packager to manage URL redirection in the MED-V workspace.

**To manage web address redirection in a MED-V workspace**

1.  To open the **MED-V Workspace Packager**, click **Start**, click **All Programs**, click **Microsoft Enterprise Desktop Virtualization**, and then click **MED-V Workspace Packager**.

2.  On the **MED-V Workspace Packager** main panel, click **Manage Web Redirection**.

3.  In the **Manage Web Redirection** window, you can type, paste, or import a list of the URLs that are redirected to Internet Explorer in the MED-V workspace.

    **Note**  
    URL redirection in MED-V only supports the protocols HTTP and HTTPS. MED-V does not provide support for FTP or any other protocols.



~~~
Enter each web address on a single line, for example:

http://www.contoso.com/webapps/webapp1

http://www.contoso.com/webapps/webapp2

http://\*.contoso.com

http://www.contoso.com/webapps/\*

**Important**  
If you import a text file that includes a URL that uses special characters (such as ~ ! @ \# and so on), make sure that you specify UTF-8 encoding when you save the text file. Special characters do not import correctly into the MED-V Workspace Packager if the text file was saved using the default ANSI encoding.
~~~



4. Click **Save as…** to save the updated URL redirection files in the specified folder. MED-V creates a registry file that contains the updated URL redirection information. Deploy the updated registry key by using Group Policy. For more information about how to use Group Policy, see [Group Policy Software Installation](https://go.microsoft.com/fwlink/?LinkId=195931) (https://go.microsoft.com/fwlink/?LinkId=195931).

   MED-V also creates a Windows PowerShell script in the specified folder that you can use to re-create the updated MED-V workspace package.

## Related topics


[How to Add or Remove URL Redirection Information in a Deployed MED-V Workspace](how-to-add-or-remove-url-redirection-information-in-a-deployed-med-v-workspace.md)

[Manage MED-V URL Redirection](manage-med-v-url-redirection.md)









