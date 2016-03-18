---
Description: Browser cache changes and roaming profiles
ms.assetid: 85f0cd01-6f82-4bd1-9c0b-285af1ce3436
author: eross-msft
ms.prod: IE11
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: performance
title: Browser cache changes and roaming profiles (Internet Explorer 11 for IT Pros)
---

# Browser cache changes and roaming profiles
We’ve redesigned the browser cache to improve the performance, flexibility, reliability, and scalability of Internet Explorer and the apps that rely on the Windows Internet (WinINet) cache. Our new database design stops multiple clients from simultaneously accessing and using cached information, while also providing a higher level of data integrity.

You won’t notice any changes to the management of your roaming profile data if you use our new database implementation in conjunction with the [roaming user profile guidelines](http://go.microsoft.com/fwlink/p/?LinkId=401544). This means that IE data that’s stored in the `AppData\Roaming` user profile folder is still be uploaded to your normal profile storage location after a user successfully logs off.<p>**Note**<br>Cookies in a roaming profile can only be set by Internet Explorer for the desktop, with Enhanced Protected Mode turned off. Cookies set by the immersive version of IE or by Windows Store apps, can’t be part of a roaming profile. For more information about persistent cookies and roaming, see [Persistent cookies are not roamed in Internet Explorer](http://go.microsoft.com/fwlink/p/?LinkId=401545).

To get the best results while using roaming profiles, we strongly recommend the following:

-   Create a separate roaming repository for each domain account that uses roaming.

-   Restrict roaming user profiles so they work on only one computer at a time. Using a single roaming profile on multiple computers isn’t supported (via console or Remote Desktop) and can cause unpredictable results, including cookie loss.

-   Allow all computers that let users sign-on with a roaming profile have identical IE cookie policies and settings.

-   Make sure to delete the user’s local roaming profile at sign off for any computer using user profile roaming. You can do this by turning on the **Delete cached copies of roaming profiles** Group Policy Object.

 

 



