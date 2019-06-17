---
author: eavena
ms.author: eravena
ms.date:  10/02/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms:topic: include
---

<!-- ## Send all intranet sites to Internet Explorer 11 -->
>*Supported versions: Microsoft Edge on Windows 10*<br>
>*Default setting:  Disabled or not configured*

[!INCLUDE [send-all-intranet-sites-to-ie-shortdesc](../shortdesc/send-all-intranet-sites-to-ie-shortdesc.md)] 

>[!TIP]
>Microsoft Edge does not support ActiveX controls, Browser Helper Objects, VBScript, or other legacy technology. If you have websites or web apps that still use this technology and needs IE11 to run, you can add them to the Enterprise Mode site list, using Enterprise Mode Site List Manager. 


### Supported values

|                Group Policy                 | MDM | Registry |                                                                                                                                                                                                                                                                                                                                           Description                                                                                                                                                                                                                                                                                                                                            |                 Most restricted                  |
|---------------------------------------------|:---:|:--------:|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:------------------------------------------------:|
| Disabled or not configured<br>**(default)** |  0  |    0     |                                                                                                                                                                                                                                                                                                            All sites, including intranet sites, open in Microsoft Edge automatically.                                                                                                                                                                                                                                                                                                            | ![Most restricted value](/images/check-gn.png) |
|                   Enabled                   |  1  |    1     | Only intranet sites open in Internet Explorer 11 automatically.<p><p>Enabling this policy opens all intranet sites in IE11 automatically, even if the users have Microsoft Edge as their default browser.<ol><li>In Group Policy Editor, navigate to:<p><p>**Computer Configuration\\Administrative Templates\\Windows Components\\File Explorer\\Set a default associations configuration file**</li><li>Click **Enable** and then refresh the policy to view the affected sites in Microsoft Edge.<p><p>A message opens stating that the page needs to open in IE. At the same time, the page opens in IE11 automatically; in a new frame if it is not yet running, or in a new tab.</li></ol> |                                                  |

---


### ADMX info and settings
#### ADMX info
- **GP English name:** Send all intranet sites to Internet Explorer 11 
- **GP name:** SendIntranetTraffictoInternetExplorer
- **GP path:** Windows Components/Microsoft Edge
- **GP ADMX file name:** MicrosoftEdge.admx

#### MDM settings
- **MDM name:** Browser/[SendIntranetTraffictoInternetExplorer](https://docs.microsoft.com/windows/client-management/mdm/policy-csp-browser#browser-sendintranettraffictointernetexplorer)
- **Supported devices:** Desktop
- **URI full path:** ./Vendor/MSFT/Policy/Config/Browser/SendIntranetTraffictoInternetExplorer 
- **Data type:** Integer

#### Registry settings
- **Path:** HKLM\\Software\\Policies\\Microsoft\\MicrosoftEdge\\Main
- **Value name:** SendIntranetTraffictoInternetExplorer
- **Value type:** REG_DWORD

### Related Policies
- [Configure the Enterprise Mode Site List](../available-policies.md#configure-the-enterprise-mode-site-list): [!INCLUDE [configure-enterprise-mode-site-list-shortdesc](../shortdesc/configure-enterprise-mode-site-list-shortdesc.md)]

- [Show message when opening sites in Internet Explorer](../available-policies.md#show-message-when-opening-sites-in-internet-explorer): [!INCLUDE [show-message-when-opening-sites-in-ie-shortdesc](../shortdesc/show-message-when-opening-sites-in-ie-shortdesc.md)]


### Related topics
- [Blog: How Microsoft Edge and Internet Explorer 11 on Windows 10 work better together in the Enterprise](https://go.microsoft.com/fwlink/p/?LinkID=624035). Many customers depend on legacy features only available in older versions of Internet Explorer and are familiar with our Enterprise Mode tools for IE11. The Enterprise Mode has been extended to support to Microsoft Edge by opening any site specified on the Enterprise Mode Site List in IE11. IT Pros can use their existing IE11 Enterprise Mode Site List, or they can create a new one specifically for Microsoft Edge. By keeping Microsoft Edge as the default browser in Windows 10 and only opening legacy line of business sites in IE11 when necessary, you can help keep newer development projects on track, using the latest web standards on Microsoft Edge. 

- [Enterprise Mode for Internet Explorer 11 (IE11)](https://go.microsoft.com/fwlink/p/?linkid=618377).  Learn how to set up and use Enterprise Mode and the Enterprise Mode Site List Manager in your company.

- [Use the Enterprise Mode Site List Manager](https://docs.microsoft.com/internet-explorer/ie11-deploy-guide/use-the-enterprise-mode-site-list-manager). You can use IE11 and the Enterprise Mode Site List Manager to add individual website domains and domain paths and to specify whether the site renders using Enterprise Mode or the default mode.

<hr>
