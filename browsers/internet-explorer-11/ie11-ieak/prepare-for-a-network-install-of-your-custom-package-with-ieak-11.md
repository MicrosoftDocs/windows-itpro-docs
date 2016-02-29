---
title: Prepare for a network install of your custom package with IEAK 11
description: Prepare for a network install of your custom package with IEAK 11
ms.assetid: 2c66d22a-4a94-47cc-82ab-7274abe1dfd6
ms.prod: IE11
ms.mktglfcycl: plan
ms.sitesec: library
---

# Prepare for a network install of your custom package with IEAK 11


Employees can install your custom browser package using a network server. However, you must either lower the intranet security level or make the server a trusted site.

![](images/wedge.gif)**To lower your intranet security**

1.  In Internet Explorer 11, click **Tools**, **Internet Options**, and then the **Security** tab.

2.  Click **Local intranet**, and then **Sites**.

3.  Uncheck **Automatically detect intranet network**, uncheck **Include all network paths (UNC)**, and then click **OK**.

![](images/wedge.gif)**To make your server a trusted site**

1.  From the **Security** tab, click **Trusted sites**, and then **Sites**.

2.  Type the location of the server with the downloadable custom browser package, and then click **Add**.

    Repeat this step for every server that’ll include the custom browser package for download.

 

 





