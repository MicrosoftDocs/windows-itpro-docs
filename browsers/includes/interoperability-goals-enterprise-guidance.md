---
author: eavena
ms.author: eravena
ms.date:  10/15/2018
ms.reviewer: 
manager: dansimp
ms.prod: edge
ms.topic: include
---

## Interoperability goals and enterprise guidance

Our primary goal is that your websites work in Microsoft Edge. To that end, we've made Microsoft Edge the default browser.

You must continue using IE11 if web apps use any of the following:

* ActiveX controls

* x-ua-compatible headers

* &lt;meta&gt; tags with an http-equivalent value of X-UA-Compatible header

* Enterprise mode or compatibility view to addressing compatibility issues

* legacy document modes

If you have uninstalled IE11, you can download it from the Microsoft Store or the [Internet Explorer 11 download page](https://go.microsoft.com/fwlink/p/?linkid=290956). Alternatively, you can use Enterprise Mode with Microsoft Edge to transition only the sites that need these technologies to load in IE11. 

>[!TIP]
>If you want to use Group Policy to set Internet Explorer as your default browser, you can find the info here, [Set the default browser using Group Policy](https://go.microsoft.com/fwlink/p/?LinkId=620714).  


|Technology  |Why it existed  |Why we don't need it anymore  |
|---------|---------|---------|
|ActiveX     |ActiveX is a binary extension model introduced in 1996 which allowed developers to embed native Windows technologies (COM/OLE) in web pages. These controls can be downloaded and installed from a site and were subsequently loaded in-process and rendered in Internet Explorer.         |         |
|Browser Helper Objects (BHO)     |BHOs are a binary extension model introduced in 1997 which enabled developers to write COM objects that were loaded in-process with the browser and could perform actions on available windows and modules. A common use was to build toolbars that installed into Internet Explorer.         |         |
|Document modes     | Starting with IE8, Internet Explorer introduced a new “document mode” with every release. These document modes could be requested via the x-ua-compatible header to put the browser into a mode which emulates legacy versions.        |Similar to other modern browsers, Microsoft Edge has a single “living” document mode. To minimize the compatibility burden, we test features behind switches in about:flags until stable and ready to be turned on by default.         |


---

