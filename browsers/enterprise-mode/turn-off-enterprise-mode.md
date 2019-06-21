---
ms.localizationpriority: low
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: How to turn Enterprise Mode off temporarily while testing websites and how to turn it off completely if you no longer want to to use it.
author: eavena
ms.prod: ie11
ms.assetid: 5027c163-71e0-49b8-9dc0-f0a7310c7ae3
ms.reviewer: 
manager: dansimp
ms.author: eravena
title: Turn off Enterprise Mode (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# Turn off Enterprise Mode

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

It’s important that you test the sites you’re adding, or considering removing, from your Enterprise Mode site list. To make this testing easier, you can turn off the site list or the entire Enterprise Mode functionality. For example, you might have an intranet site on your list that you’ve upgraded to be compatible with the new web standards . If you test the site while the site list is active, Internet Explorer 11 will automatically switch to Enterprise Mode. By turning off the site list, you can see what the page actually looks like and decide whether to remove it from your site list.

In addition, if you no longer want your users to be able to turn Enterprise Mode on locally, you can remove Enterprise Mode from the local **Tools** menu.

**Important**<br>
Turning off both of these features turns off Enterprise Mode for your company. Turning off Enterprise Mode also causes any websites included in your employee’s manual site lists to not appear in Enterprise Mode.

  **To turn off the site list using Group Policy**

1.  Open your Group Policy editor, like Group Policy Management Console (GPMC).

2.  Go to the **Use the Enterprise Mode IE website list** setting, and then click **Disabled**.<p>
Enterprise Mode will no longer look for the site list, effectively turning off Enterprise Mode. However, if you previously turned on local control for your employees, Enterprise Mode will still be available from the **Tools** menu. You need to turn that part of the functionality off separately.

 **To turn off local control using Group Policy**

1.  Open your Group Policy editor, like Group Policy Management Console (GPMC).

2.  Go to the **Let users turn on and use Enterprise Mode from the Tools menu** setting, and then click **Disable**.

3.  Enterprise Mode no longer shows up on the **Tools** menu for your employees. However, if you are still using an Enterprise Mode site list, all of the globally listed sites will still appear in Enterprise Mode. If you want to turn off all of Enterprise Mode, you will need to also turn off the site list functionality.

 **To turn off the site list using the registry**

1.  Open a registry editor, such as regedit.exe.

2.  Go to `HKEY_CURRENT_USER\Software\Microsoft\Internet Explorer\Main\EnterpriseMode`, and then delete the **SiteList** value.<p>
You can also use HKEY_LOCAL_MACHINE, depending whether you want to turn off the Enterprise Mode site list for users or for computers.

3.  Close all and restart all instances of Internet Explorer.<p>
IE11 stops looking at the site list for rendering instructions. However, Enterprise Mode is still available to your users locally (if it was turned on).

 **To turn off local control using the registry**

1.  Open a registry editor, such as regedit.exe.

2.  Go `HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode`, and then delete the **Enable** value.<p>
You can also use HKEY_CURRENT_USER, depending whether you want to turn off Enterprise Mode for users or for computers.

3.  Close and restart all instances of IE.<p>
Enterprise Mode is no longer a user option on the **Tools** menu in IE11. However, IE11 still looks at the site list (if it was turned on).

## Related topics
- [What is Enterprise Mode?](what-is-enterprise-mode.md)
- [Turn on Enterprise Mode and use a site list](turn-on-enterprise-mode-and-use-a-site-list.md)
- [Turn on local control and logging for Enterprise Mode](turn-on-local-control-and-logging-for-enterprise-mode.md)
- [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)
 

 



