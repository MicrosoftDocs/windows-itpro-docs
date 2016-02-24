---
Description: Turn on Enterprise Mode and use a site list
MS-HAID: 'p\_ie11deploy.turn\_on\_enterprise\_mode\_and\_use\_a\_site\_list'
MSHAttr: 'PreferredLib:/library'
title: Turn on Enterprise Mode and use a site list
---

# Turn on Enterprise Mode and use a site list


**Last updated**

-   December 3, 2015

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Before you can use a site list with Enterprise Mode, you need to turn the functionality on and set up the system for centralized control. By allowing centralized control, you can create one global list of websites that render using Enterprise Mode. Approximately 65 seconds after Internet Explorer 11 starts, it looks for a properly formatted site list. If a new site list if found, with a different version number than the active list, IE11 loads and uses the newer version. After the initial check, IE11 won’t look for an updated list again until you restart the browser.

**Note**  
We recommend that you store and download your website list from a secure web sever (https://), to help protect against data tampering. After the list is downloaded, it's stored locally on your employee’s computers so if the centralized file location is unavailable, they can still use Enterprise Mode.

 

![](../common/wedge.gif)**To turn on Enterprise Mode using Group Policy**

1.  Open your Group Policy editor and go to the **Administrative Templates\\Windows Components\\Internet Explorer\\Use the Enterprise Mode IE website list** setting.

    Turning this setting on also requires you to create and store a site list. For more information about creating your site list, see the [Use the Enterprise Mode Site List Manager tool](use-the-enterprise-mode-site-list-manager-tool.md) topics.

    ![local group policy editor for using a site list](images/ie-emie-grouppolicysitelist.png)

2.  Click **Enabled**, and then in the **Options** area, type the location to your site list.

![](../common/wedge.gif)**To turn on Enterprise Mode using the registry**

1.  **To turn on Enterprise Mode for only the local user:** Open a registry editor, like regedit.exe and go to `HKEY_CURRENT_USER\Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode`.

    -or-

    **To turn on Enterprise Mode for all users on the PC:** Open a registry editor, like regedit.exe and go to `HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Internet Explorer\Main\EnterpriseMode`.

2.  Edit the `SiteList` registry key to point to where you want to keep your Enterprise Mode site list file. For example:

    ![enterprise mode with site list in the registry](images/ie-emie-registrysitelist.png)

    -   **HTTP location**: *“SiteList”=”http://localhost:8080/sites.xml”*

    -   **Local network**: *"SiteList"="\\\\network\\shares\\sites.xml"*

    -   **Local file**: *"SiteList"="file:///c:\\\\Users\\\\&lt;user&gt;\\\\Documents\\\\testList.xml"*

        All of your managed devices must have access to this location if you want them to be able to access and use Enterprise Mode and your site list. For information about how to create and use an Enterprise Mode site list, see [Use the Enterprise Mode Site List Manager tool](use-the-enterprise-mode-site-list-manager-tool.md).

## Related topics


[Download the Enterprise Mode Site List Manager for Windows 10 tool](http://go.microsoft.com/fwlink/?LinkId=716853)
[Download the Enterprise Mode Site List Manager for Windows 7 and Windows 8.1 tool](http://go.microsoft.com/fwlink/?LinkID=394378)
 

 



