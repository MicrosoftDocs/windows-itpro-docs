<!-- ## Configure the Enterprise Mode Site List -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured*


[!INCLUDE [configure-enterprise-mode-site-list-shortdesc](../shortdesc/configure-enterprise-mode-site-list-shortdesc.md)]

### Allowed values

|Group Policy  |MDM |Registry |Description |Most restricted |
|---|:---:|:---:|---|:---:|
|Disabled or not configured<br>**(default)** |0 |0 |Turned off. Microsoft Edge does not check the Enterprise Mode Site List, and in this case, users might experience problems while using legacy apps. | |
|Enabled |1 |1 |Turned on. Microsoft Edge checks the Enterprise Mode Site List if configured.  If an XML file exists in the cache container, IE11 waits 65 seconds and then checks the local cache for a new version from the server. If the server has a different version, Microsoft Edge uses the server file and stores it in the cache container. If you already use a site list, Enterprise Mode continues to work during the 65 second, but uses the existing file.  To add the location to your site list, enter it in the **{URI}** box.<p>For details on how to configure the Enterprise Mode Site List, see the [Instructions](#instructions) section below.   | |
---

### ADMX info and settings

#### ADMX info
- **GP English name:** Configure the Enterprise Mode Site List 
- **GP name:** EnterpriseModeSiteList
- **GP element:** EnterSiteListPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
-  **MDM name:** Browser/[EnterpriseModeSiteList](https://docs.microsoft.com/en-us/windows/client-management/mdm/policy-csp-browser#browser-enterprisemodesitelist)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList 
- **Data type:** String
 
#### Registry settings
-  **Path:** HLKM\Software\Policies\Microsoft\MicrosoftEdge\Main\EnterpriseMode
- **Value name:** SiteList
- **Value type:** REG_SZ

### Related Policies

[Show message opening sites in IE](../available-policies.md#show-message-when-opening-sites-in-internet-explorer):
[!INCLUDE
[show-message-when-opening-sites-in-ie-shortdesc](../shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]

### Related Documents

-   [Use Enterprise Mode to improve compatibility](https://docs.microsoft.com/en-us/microsoft-edge/deploy/emie-to-improve-compatibility). If you have specific web sites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the web sites will automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work properly with Microsoft Edge, you can set all intranet sites to automatically open using IE11. Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.

-   [Use the Enterprise Mode Site List Manager](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/use-the-enterprise-mode-site-list-manager). You can use IE11 and the Enterprise Mode Site List Manager to add individual website domains and domain paths and to specify whether the site renders using Enterprise Mode or the default mode.

-   [Enterprise Mode for Internet Explorer 11](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/enterprise-mode-overview-for-ie11). Learn how to set up and use Enterprise Mode and the Enterprise Mode Site List Manager in your company.

-   [Enterprise Mode and the Enterprise Mode Site List](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode). Internet Explorer and Microsoft Edge can work together to support your legacy web apps, while still defaulting to the higher bar for security and modern experiences enabled by Microsoft Edge. Working with multiple browsers can be difficult, particularly if you have a substantial number of internal sites. To help manage this dual-browser experience, we are introducing a new web tool specifically targeted towards larger  organizations: the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal).

-   [Enterprise Mode and the Enterprise Mode Site List XML file](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode#enterprise-mode-and-the-enterprise-mode-site-list-xml-file). The Enterprise Mode Site List is an XML document that specifies a list of sites, their compat mode, and their intended browser. Using Enterprise Mode Site List Manager (schema v.2), you can automatically start a webpage using a specific browser. In the case of IE11, the webpage can also be launched in a specific compat mode, so it always renders correctly. Your  users can easily view this site list by typing about:compat in either Microsoft Edge or IE11.

### Scenarios

Certain sites or web apps still use ActiveX controls, Browser Helper Objects, VBScript, or other legacy technology, which Microsoft Edge does not support. If you have web sites or web apps that still use this technology and need IE11 to run, you must use Enterprise Mode and the Enterprise Mode Site List to address common compatibility issues with legacy apps. Enterprise Mode is a compatibility
mode that runs on Internet Explorer 11 and Microsoft Edge on Windows 10 devices.

### Instructions


You build your Enterprise Mode list with the Enterprise Mode Site List Manager and apply it with Group Policy.
<!-- work on these instructions.  it seems like it doesn't flow from this policy to the Use the Enterprise Mode IE website list policy.  Give me more reasons to click on the link.  and why is it equivalent to the this policy? -->
To turn it on for IE 11, you enable [Use the Enterprise Mode IE website list](https://docs.microsoft.com/en-us/internet-explorer/ie11-deploy-guide/turn-on-enterprise-mode-and-use-a-site-list),
which is the equivalent to this Microsoft Edge policy.

>[!NOTE] 
>We recommend that you store and download your website list from a secure web server (https://), to help protect against data tampering. After the list is downloaded, it is stored locally on your user's computer so if the centralized file location is unavailable, they can still use Enterprise Mode.

- [Step 1. Turn on Enterprise Mode](#step-1-turn-on-enterprise-mode)
- [Step 2. (Optional) Import your Enterprise Mode Site List](#step-2-optional-import-your-enterprise-mode-site-list)
- [Step 3. Add sites to your list](#step-3-add-sites-to-your-list)
- [Step 4. Turn on Enterprise Mode and use a site list](#step-4-set-up-microsoft-edge-to-use-the-enterprise-mode-site-list)  
- [Step 5. Send all intranet sites to Internet Explorer 11](#step-5-send-all-intranet-sites-to-internet-explorer-11)

#### Step 1. Turn on Enterprise Mode

[!INCLUDE [turn-on-enterprise-mode-and-use-a-site-list](../../enterprise-mode/turn-on-enterprise-mode-and-use-a-site-list.md)]

#### Step 2. (Optional) Import your Enterprise Mode Site List

[!INCLUDE [import-into-the-enterprise-mode-site-list-mgr-include](../../includes/import-into-the-enterprise-mode-site-list-mgr-include.md)]

#### Step 3. Add sites to your list

1.  In the Enterprise Mode Site List Manager, click **Add**.

2.  In the **URL** box, type or paste the URL for the website experiencing compatibility problems, like *\<domain\>*.com or     *\<domain\>*.com/*\<path\>*.<p>You do not need to include the `http://` or `https://` designation. The tool automatically tries both versions during validation.

3.  In the **Notes about URL**, enter any comments about the website.<p>Administrators can only see comments while they are in this tool.

4.  Click in the **Open in IE** column next to the URL that should open in IE11.<p>The path within a domain can require a different compatibility mode from the  domain itself. For example, the domain might look fine in the default IE11 browser, but the path might have problems and require the use of Enterprise Mode. If you added the domain previously, your original compatibility choice is still selected. However, if the domain is new, Enterprise Mode is automatically selected.

5.  Click **Save** to validate your website and to add it to the site list for your enterprise.<p>If your site passes validation, it is added to the global compatibility list. If the site fails to pass validation, an error message displays explaining the problem. You can either cancel the site or ignore the validation problem and add it to your list anyway.

6.  On the **File** menu, go to where you want to save the file, and then click **Save to XML**.<p>You can save the file locally or to a network share. However, you must make sure you deploy it to the location specified in your Group Policy setting.

#### Step 4. Set up Microsoft Edge to use the Enterprise Mode Site List

add the steps here, if there are steps

#### Step 5. Send all intranet sites to Internet Explorer 11

Enabling the Send all intranet sites to Internet Explorer 11 policy automatically opens all intranet sites in IE11, even if the users have Microsoft Edge as their default browser.

1. In Group Policy Editor, navigate to:<p>**Computer Configuration\\Administrative Templates\\Windows Components\\File Explorer\\Set a default associations configuration file**

2. Click **Enabled** and then refresh the policy and then vew the affected sites in Microsoft Edge.<p>A message displays saying that the page needs to open in IE. At the same time, the page opens in IE11 automatically; in a new frame if it is not yet running, or in a new tab.

### Troubleshooting

- If an XML already exists, make sure it is syntactically correct.

- If an update or delete operation failed, check if the entry already exists in the site list.

- If a user is not able to sign in, the account might not have access. Check if the account is marked as active.

- Check if the Enterprise Mode Site List is loaded correctly by browsing to "about:compat" in both Microsoft Edge and Internet Explorer. Deselect the Microsoft Compatibility List to see your custom entries.


<hr>