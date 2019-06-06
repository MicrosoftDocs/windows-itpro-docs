---
title: How to Determine the BitLocker Encryption State of a Lost Computers
description: How to Determine the BitLocker Encryption State of a Lost Computers
author: msfttracyp
ms.assetid: 9440890a-9c63-463b-9113-f46071446388
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w8
ms.date: 06/16/2016
---


# How to Determine the BitLocker Encryption State of a Lost Computers


Microsoft BitLocker Administration and Monitoring (MBAM) enables you to determine the last known BitLocker encryption status of computers that are lost or stolen. Use the following procedure to determine whether the volumes have been encrypted on computers that are no longer in your possession.

**Determine a Computer's Last Known BitLocker Encryption state**

1.  Open the MBAM website.

    **Note**  
    The default address for the MBAM website is http://*&lt;computername&gt;*. Use the fully qualified server name for faster browsing results.

     

2.  Select the **Report** node from the navigation pane, and then select the **Computer Compliance Report**.

3.  Use the filter fields in the right-side pane to narrow the search results, and then click **Search**. Results will be shown below your search query.

4.  Take the appropriate action as determined by your policy for lost devices.

    **Note**  
    Device compliance is determined by the deployed BitLocker policies. You should verify these deployed policies when you are trying to determine the BitLocker encryption state of a device.

     

## Related topics


[Performing BitLocker Management with MBAM](performing-bitlocker-management-with-mbam.md)

 

 





