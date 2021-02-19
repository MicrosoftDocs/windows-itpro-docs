

<!-- ## Configure the Enterprise Mode Site List -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured*


[!INCLUDE [configure-enterprise-mode-site-list-shortdesc](../shortdesc/configure-enterprise-mode-site-list-shortdesc.md)]

### Supported values

|                Group Policy                 | MDM | Registry |                                                                                                                                                                                                                                                                                                                                                    Description                                                                                                                                                                                                                                                                                                                                                    |
|---------------------------------------------|:---:|:--------:|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Disabled or not configured<br>**(default)** |  0  |    0     |                                                                                                                                                                                                                                                                                Turned off. Microsoft Edge does not check the Enterprise Mode Site List, and in this case, users might experience problems while using legacy apps.                                                                                                                                                                                                                                                                                |
|                   Enabled                   |  1  |    1     | Turned on. Microsoft Edge checks the Enterprise Mode Site List if configured.  If an XML file exists in the cache container, IE11 waits 65 seconds and then checks the local cache for a new version from the server. If the server has a different version, Microsoft Edge uses the server file and stores it in the cache container. If you already use a site list, Enterprise Mode continues to work during the 65 seconds, but uses the existing file.  To add the location to your site list, enter it in the **{URI}** box.<p>For details on how to configure the Enterprise Mode Site List, see [Interoperability and enterprise guidance](../group-policies/interoperability-enterprise-guidance-gp.md). |

---

### ADMX info and settings

#### ADMX info
- **GP English name:** Configure the Enterprise Mode Site List 
- **GP name:** EnterpriseModeSiteList
- **GP element:** EnterSiteListPrompt
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
-  **MDM name:** Browser/[EnterpriseModeSiteList](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-enterprisemodesitelist)
- **Supported devices:** Desktop and Mobile
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/EnterpriseModeSiteList 
- **Data type:** String

#### Registry settings
-  **Path:** HKLM\Software\Policies\Microsoft\MicrosoftEdge\Main\EnterpriseMode
- **Value name:** SiteList
- **Value type:** REG_SZ

### Related Policies

[Show message opening sites in IE](../available-policies.md#show-message-when-opening-sites-in-internet-explorer)

[!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](../shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]

### Related topics

-   [Use Enterprise Mode to improve compatibility](https://docs.microsoft.com/microsoft-edge/deploy/emie-to-improve-compatibility). If you have specific websites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to open using IE11 automatically. Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.

-   [Use the Enterprise Mode Site List Manager](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/use-the-enterprise-mode-site-list-manager). You can use IE11 and the Enterprise Mode Site List Manager to add individual website domains and domain paths and to specify whether the site renders using Enterprise Mode or the default mode.

-   [Enterprise Mode for Internet Explorer 11](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/enterprise-mode-overview-for-ie11). Learn how to set up and use Enterprise Mode and the Enterprise Mode Site List Manager in your company.

-   [Enterprise Mode and the Enterprise Mode Site List](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode). Internet Explorer and Microsoft Edge can work together to support your legacy web apps, while still defaulting to the higher bar for security and modern experiences enabled by Microsoft Edge. Working with multiple browsers can be difficult, particularly if you have a substantial number of internal sites. To help manage this dual-browser experience, we are introducing a new web tool targeted explicitly towards larger  organizations: the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal).

-   [Enterprise Mode and the Enterprise Mode Site List XML file](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/what-is-enterprise-mode#enterprise-mode-and-the-enterprise-mode-site-list-xml-file). The Enterprise Mode Site List is an XML document that specifies a list of sites, their compat mode, and their intended browser. When you use the Enterprise Mode Site List Manager schema v.2, you can automatically start a webpage using a specific browser. In the case of IE11, the webpage can also launch in a specific compat mode, so it always renders correctly. Your users can quickly view this site list by typing about:compat in either Microsoft Edge or IE11.



<hr>
