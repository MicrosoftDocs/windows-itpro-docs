---
description: Info about the features included in Enterprise Mode with Internet Explorer 11.
ms.assetid: 3c77e9f3-eb21-46d9-b5aa-f9b2341cfefa
author: eross-msft
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: appcompat
title: What is Enterprise Mode (Internet Explorer 11 for IT Pros)
---

# What is Enterprise Mode?

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Enterprise Mode, a compatibility mode that runs on Internet Explorer 11 on Windows 8.1 Update and Windows 7 devices, lets websites render using a modified browser configuration that’s designed to emulate either Windows Internet Explorer 7 or Windows Internet Explorer 8, avoiding the common compatibility problems associated with web apps written and tested on older versions of Internet Explorer.

Many customers identify web app compatibility as a significant cost to upgrading because web apps need to be tested and upgraded before adopting a new browser. The improved compatibility provided by Enterprise Mode can help give customers confidence to upgrade to the latest version of IE. In particular, IE11 lets customers benefit from modern web standards, increased performance, improved security, and better reliability.

## Enterprise Mode features

Enterprise Mode includes the following features:

-   **Improved web app and website compatibility.** Through improved emulation, Enterprise Mode lets many legacy web apps run unmodified on IE11, supporting a number of site patterns that aren’t currently supported by existing document modes.

-   **Tool-based management for website lists.** Use the Enterprise Mode Site List Manager tool to add website domains and domain paths and to specify whether a site renders using Enterprise Mode. <p>
Download the [Enterprise Mode Site List Manager for Windows 10](http://go.microsoft.com/fwlink/p/?LinkId=716853) tool or the [Enterprise Mode Site List Manager for Windows 7 and Windows 8.1](http://go.microsoft.com/fwlink/p/?LinkID=394378) tool, based on your operating system and schema.

-   **Centralized control.** You can specify the websites or web apps to interpret using Enterprise Mode, through an XML file on a website or stored locally. Domains and paths within those domains can be treated differently, allowing granular control. Use Group Policy to let users turn Enterprise Mode on or off from the **Tools** menu and to decide whether the Enterprise browser profile appears on the **Emulation** tab of the F12 developer tools.<p>**Important**<br>All centrally-made decisions override any locally-made choices. 

-   **Integrated browsing.** When Enterprise Mode is set up, users can browse the web normally, letting the browser change modes automatically to accommodate Enterprise Mode sites.

-   **Data gathering.** You can configure Enterprise Mode to collect local override data, posting back to a named server. This lets you "crowd source" compatibility testing from key users; gathering their findings to add to your central site list.

 

 



