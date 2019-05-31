---
ms.localizationpriority: medium
ms.mktglfcycl: deploy
ms.pagetype: appcompat
description: Windows Internet Explorer 8 introduced document modes as a way to move from the proprietary coding of web features to a more standardized type of coding that could run on multiple browsers and devices.
author: lomayor
ms.prod: ie11
ms.assetid: 00cb1f39-2b20-4d37-9436-62dc03a6320b
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: Deprecated document modes and Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---

# Deprecated document modes and Internet Explorer 11

**Applies to:**

-   Windows 10
-   Windows 8.1
-   Windows 7
-   Windows Server 2012 R2
-   Windows Server 2008 R2 with Service Pack 1 (SP1)

Windows Internet Explorer 8 introduced document modes as a way to move from the proprietary coding of web features to a more standardized type of coding that could run on multiple browsers and devices. Starting with Windows 10, we’re deprecating document modes.

This means that while Internet Explorer 11 will continue to support document modes, Microsoft Edge won’t. And because of that, it also means that if you want to use Microsoft Edge, you’re going to have to update your legacy webpages and apps to support modern features, browsers, and devices.

>**Note**<br>
>For specific details about the technologies and APIs that are no longer supported in Microsoft Edge, see [A break from the past, part 2: Saying goodbye to ActiveX, VBScript, attachEvent](https://go.microsoft.com/fwlink/p/?LinkId=615953).

## What is document mode?
Each release after Internet Explorer 8 has helped with the transition by introducing additional document modes that emulated previously supported versions, while also introducing support for features defined by industry standards. During this time, numerous websites and apps were updated to the latest and greatest industry standards, while many other sites and apps continued to simply rely on document modes to work properly.

Because our goal with Microsoft Edge is to give users the best site and app viewing experience possible, we’ve decided to stop support for document modes. All websites and apps using legacy features and code will need to be updated to rely on the new modern standards and practices.

If you have legacy sites and apps that can’t be updated to modern standards, you can continue to use IE11 and document modes. We recommend that you use the **IE11 Standards document mode** because it represents the highest support available for modern standards. You should also use the HTML5 document type declaration to turn on the latest supported standards while using IE11:`<!DOCTYPE html>`.

## Document modes and IE11
The compatibility improvements made in IE11 lets older websites just work in the latest standards mode, by default, without requiring emulation of the previous browser behavior. Because older websites are now just working, we’ve decided that Internet Explorer 10 document mode will be the last new document mode. Instead, developers will need to move to using the IE11 document mode going forward.

## Document mode selection flowchart
This flowchart shows how IE11 works when document modes are used.

![Flowchart detailing how document modes are chosen in IE11](images/docmode-decisions-sm.png)<br>
[Click this link to enlarge image](img-ie11-docmode-lg.md)

## Known Issues with Internet Explorer 8 document mode in Enterprise Mode
The default document mode for Enterprise Mode is Internet Explorer 8. While this mode provides a strong emulation of that browser, it isn’t an exact match. For example, Windows Internet Explorer 9 fundamentally changed how document modes work with iframes and document modes can’t undo architectural changes. It’s also a known issue that Windows 10 supports GDI font rendering while using Enterprise Mode, but uses natural metrics once outside of Enterprise Mode.

## Related topics
- [Enterprise Mode for Internet Explorer 11](enterprise-mode-overview-for-ie11.md)

 

 



