---
ms.localizationpriority: medium
ms.mktglfcycl: support
description: Info about where features went in the IEAK11, where the Favorites, Command, and Status bars went, and where the search bar went.
author: lomayor
ms.prod: ie11
ms.assetid: 7324faff-ccb6-4e14-ad91-af12dbca575e
ms.reviewer: 
manager: dansimp
ms.author: lomayor
title: User interface problems with Internet Explorer 11 (Internet Explorer 11 for IT Pros)
ms.sitesec: library
ms.date: 07/27/2017
---


# User interface problems with Internet Explorer 11
Some of the features in both Internet Explorer 11 and IEAK 11 have moved around. Here are some of the more common changes.

## Where did features go in the Internet Explorer Customization Wizard 11?
Various installation or set up choices can prevent you from seeing certain pages in the Internet Explorer Customization Wizard 11. If, after going through the entire Wizard you still haven't found the screen you were looking for, try:

-   Making sure you picked the right version of IEAK 11 during installation. Most administrators should pick the **Internal** version, which has more screens and options available.

-   Making sure you picked all of the features you wanted from the **Feature Selection** page of the IE Customization Wizard 11. If you don't pick a feature, the associated page won't appear.

## Where are the security zone settings?
You can see your security zone settings by opening Internet Explorer for the desktop, clicking **Internet Options** from the **Tools** menu, and then clicking **Security**.

## Where did the Favorites, Command, and Status bars go?
For IE11, the UI has been changed to provide just the controls needed to support essential functionality, hiding anything considered non-essential, such as the **Favorites Bar**, **Command Bar**, **Menu Bar**, and **Status Bar**. This is intended to help focus users on the content of the page, rather than the browser itself. However, if you want these bars to appear, you can turn them back on using Group Policy settings.

 **To turn the toolbars back on**

- Right click in the IE toolbar heading and choose to turn on the **Command bar**, **Favorites bar**, and **Status bar** from the menu.
  <p>-OR-<p>
  In IE, press <strong>ALT+V</strong> to show the <strong>View</strong> menu, press <strong>T</strong> to enter the <strong>Toolbars</strong> menu, and then press:

  -   **C** to turn on the **Command Bar**

  -   **F** to turn on the **Favorites Bar**

  -   **S** to turn on the **Status Bar**

## Where did the search box go?
IE11 uses the **One Box** feature, which lets users type search terms directly into the **Address bar**. Any text entered into the **Address bar** that doesn't appear to be a URL is automatically sent to the currently selected search provider.

>[!NOTE]
>Depending on how you've set up your intranet search, the text entry might resolve to an intranet site. For more information about this, see  [Intranet problems with Internet Explorer 11](intranet-problems-and-ie11.md).

 

 

 



