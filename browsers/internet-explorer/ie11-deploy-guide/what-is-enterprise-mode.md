---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Info about the features included in Enterprise Mode with Internet Explorer 11.
author: lomayor
ms.prod: ie11
ms.assetid: 3c77e9f3-eb21-46d9-b5aa-f9b2341cfefa
ms.reviewer: 
audience: itpromanager: dansimp
ms.author: lomayor
title: Enterprise Mode and the Enterprise Mode Site List (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 10/25/2018
---


# Enterprise Mode and the Enterprise Mode Site List

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Internet Explorer and Microsoft Edge can work together to support your legacy web apps, while still defaulting to the higher bar for security and modern experiences enabled by Microsoft Edge. Working with multiple browsers can be difficult, particularly if you have a substantial number of internal sites. To help manage this dual-browser experience, we are introducing a new web tool specifically targeted towards larger organizations: the [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal).

## Available dual-browser experiences
If you have specific websites and apps that you know have compatibility problems with Microsoft Edge, you can use the Enterprise Mode site list so that the websites automatically open using Internet Explorer 11. Additionally, if you know that your intranet sites aren't going to work correctly with Microsoft Edge, you can set all intranet sites to open using IE11 automatically. 

Using Enterprise Mode means that you can continue to use Microsoft Edge as your default browser, while also ensuring that your apps continue working on IE11.

>[!TIP]
> If you are running an earlier version of Internet Explorer, we recommend upgrading to IE11, so that any legacy apps continue to work correctly.

For Windows 10 and Windows 10 Mobile, Microsoft Edge is the default browser experience. However, Microsoft Edge lets you continue to use IE11 for sites that are on your corporate intranet or included on your Enterprise Mode Site List. 


## What is Enterprise Mode?
Enterprise Mode, a compatibility mode that runs on Internet Explorer 11 on Windows 10, Windows 8.1, and Windows 7 devices, lets websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 7 or Windows Internet Explorer 8. Running in this mode helps to avoid many of the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.

Many customers identify web app compatibility as a significant cost to upgrading because web apps need to be tested and upgraded before adopting a new browser. The improved compatibility provided by Enterprise Mode can help give customers confidence to upgrade to IE11, letting customers benefit from modern web standards, increased performance, improved security, and better reliability.

### Enterprise Mode features
Enterprise Mode includes the following features:

- **Improved web app and website compatibility.** Through improved emulation, Enterprise Mode lets many legacy web apps run unmodified on IE11, supporting several site patterns that aren’t currently supported by existing document modes.

- **Tool-based management for website lists.** Use the Enterprise Mode Site List Manager to add website domains and domain paths and to specify whether a site renders using Enterprise Mode.
Download the [Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853) or the [Enterprise Mode Site List Manager (schema v.1)](https://go.microsoft.com/fwlink/p/?LinkID=394378), based on your operating system and schema.

- **Centralized control.** You can specify the websites or web apps to interpret using Enterprise Mode, through an XML file on a website or stored locally. Domains and paths within those domains can be treated differently, allowing granular control. Use Group Policy to let users turn Enterprise Mode on or off from the Tools menu and to decide whether the Enterprise browser profile appears on the Emulation tab of the F12 developer tools.

    >[!Important]
    >All centrally-made decisions override any locally-made choices. 

- **Integrated browsing.** When Enterprise Mode is set up, users can browse the web normally, letting the browser change modes automatically to accommodate Enterprise Mode sites.

- **Data gathering.** You can configure Enterprise Mode to collect local override data, posting back to a named server. This lets you "crowd source" compatibility testing from key users; gathering their findings to add to your central site list.

## Enterprise Mode and the Enterprise Mode Site List XML file
The Enterprise Mode Site List is an XML document that specifies a list of sites, their compat mode, and their intended browser. Using [Enterprise Mode Site List Manager (schema v.2)](https://go.microsoft.com/fwlink/p/?LinkId=716853), you can automatically start a webpage using a specific browser. In the case of IE11, the webpage can also be launched in a specific compat mode, so it always renders correctly. Your employees can easily view this site list by typing _about:compat_ in either Microsoft Edge or IE11.

Starting with Windows 10, version 1511 (also known as the Anniversary Update), you can also [restrict IE11 to only the legacy web apps that need it](https://blogs.windows.com/msedgedev/2016/05/19/edge14-ie11-better-together/), automatically sending sites not included in the Enterprise Mode Site List to Microsoft Edge.

### Site list xml file
This is a view of the [raw EMIE v2 schema.xml file](https://gist.github.com/kypflug/9e9961de771d2fcbd86b#file-emie-v2-schema-xml). There are equivalent Enterprise Mode Site List policies for both [Microsoft Edge](https://docs.microsoft.com/microsoft-edge/deploy/emie-to-improve-compatibility) and [Internet Explorer 11](turn-on-enterprise-mode-and-use-a-site-list.md). The Microsoft Edge list is used to determine which sites should open in IE11; while the IE11 list is used to determine the compat mode for a site, and which sites should open in Microsoft Edge. We recommend using one list for both browsers, where each policy points to the same XML file location.

```xml
<site-list version="205">
	<!--- File creation header --->
	<created-by>
		<tool>EnterpriseSiteListManager</tool>
		<version>10586</version>
		<date-created>20150728.135021</date-created>
	</created-by>
  	<!--- Begin Site List ---> 
	<site url="www.cpandl.com">
		<compat-mode>IE8Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="www.woodgrovebank.com">
		<compat-mode>default</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="adatum.com">
		<compat-mode>IE7Enterprise</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="relecloud.com"/>  
	<!-- default for self-closing XML tag is 
		<compat-mode>default</compat-mode>
		<open-in>none</open-in>
	-->
	<site url="relecloud.com/products">  
		<compat-mode>IE8Enterprise"</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="contoso.com/travel">
		<compat-mode>IE7</compat-mode>
		<open-in>IE11</open-in>
	</site>
	<site url="fabrikam.com">
		 <compat-mode>IE7</compat-mode>
		 <open-in>IE11</open-in>
	</site>
</site-list>

```

## Enterprise Mode Site List Manager and the Enterprise Mode Site List Portal tools
You can build and manage your Enterprise Mode Site List is by using any generic text editor. However, we’ve also provided a couple tools that can make that process even easier.

### Enterprise Mode Site List Manager
This tool helps you create error-free XML documents with simple n+1 versioning and URL verification. We recommend using this tool if your site list is relatively small. For more info about this tool, see the Use the [Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md) topics.

There are 2 versions of this tool, both supported on Windows 7, Windows 8.1, and Windows 10:

- [Enterprise Mode Site List Manager (schema v.1)](https://www.microsoft.com/download/details.aspx?id=42501). This is an older version of the schema that you must use if you want to create and update your Enterprise Mode Site List for devices running the v.1 version of the schema.

	We strongly recommend moving to the new schema, v.2. For more info, see [Enterprise Mode schema v.2 guidance](enterprise-mode-schema-version-2-guidance.md).

- [Enterprise Mode Site List Manager (schema v.2)](https://www.microsoft.com/download/details.aspx?id=49974). The updated version of the schema, including new functionality. You can use this version of the schema to create and update your Enterprise Mode Site List for devices running the v.2 version of the schema.

	If you open a v.1 version of your Enterprise Mode Site List using this version, it will update the schema to v.2, automatically. For more info, see [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md).

If your list is too large to add individual sites, or if you have more than one person managing the site list, we recommend using the Enterprise Site List Portal.

### Enterprise Mode Site List Portal
The [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management.

In addition to all the functionality of the Enterprise Mode Site List Manager tool, the Enterprise Mode Site List Portal helps you:

- Manage site lists from any device supporting Windows 7 or greater.

- Submit change requests.

- Operate offline through an on-premise solution.

- Provide role-based governance.

- Test configuration settings before releasing to a live environment.

Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

Because the tool is open-source, the source code is readily available for examination and experimentation. We encourage you to [fork the code, submit pull requests, and send us your feedback](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)! For more info about the Enterprise Mode Site List Portal, see the [Use the Enterprise Mode Site List Portal](use-the-enterprise-mode-portal.md) topics.

## Related topics

- [Enterprise Mode Site List Portal source code](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)

- [Technical guidance, tools, and resources on Enterprise browsing](https://technet.microsoft.com/ie)

- [Enterprise Mode Site List Manager (schema v.1)](https://www.microsoft.com/download/details.aspx?id=42501)

- [Enterprise Mode Site List Manager (schema v.2)](https://www.microsoft.com/download/details.aspx?id=49974)

- [Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md)

- [Collect data using Enterprise Site Discovery](collect-data-using-enterprise-site-discovery.md)

- [Web Application Compatibility Lab Kit](https://technet.microsoft.com/microsoft-edge/mt612809.aspx)

- [Microsoft Services Support](https://www.microsoft.com/microsoftservices/support.aspx)

- [Find a Microsoft partner on Pinpoint](https://partnercenter.microsoft.com/pcv/search)
