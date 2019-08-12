---
title: How to Edit MBAM 1.0 GPO Settings
description: How to Edit MBAM 1.0 GPO Settings
author: msfttracyp
ms.assetid: 03d12fbc-4302-43fc-9b38-440607d778a1
ms.reviewer: 
manager: dansimp
ms.author: tracyp
ms.pagetype: mdop, security
ms.mktglfcycl: manage
ms.sitesec: library
ms.prod: w10
ms.date: 06/16/2016
---


# How to Edit MBAM 1.0 GPO Settings


To successfully deploy Microsoft BitLocker Administration and Monitoring (MBAM), you must first determine the Group Policies that you will use in your implementation of Microsoft BitLocker Administration and Monitoring. For more information about the various available policies, see [Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md). After you have determined the policies that you are going to use, you then must modify one or more Group Policy Objects (GPO) that include the MBAM policy settings.

The following steps describe how to configure the basic, recommended Group Policy object (GPO) settings to enable MBAM to manage BitLocker encryption for your organization’s client computers.

**To edit the MBAM Client GPO settings**

1.  On a computer that has MBAM Group Policy template installed, make sure that MBAM services are enabled.

2.  Use the Group Policy Management Console (GPMC.msc) or the Advanced Group Policy Management (AGPM) MDOP product for these actions: Select **Computer configuration**, choose **Policies**, click **Administrative Templates**, select **Windows Components**, and then click **MDOP MBAM (BitLocker Management)**.

3.  Edit the Group Policy Object settings that are required to enable MBAM Client services on client computers. For each policy in the table that follows, select **Policy Group**, click the **Policy**, and then configure the **Setting**.

    Policy Group

    Policy

    Setting

    Client Management

    Configure MBAM Services

    Enabled. Set **MBAM Recovery and Hardware service endpoint** and **Select BitLocker recovery information to store**.

    Set **MBAM compliance service endpoint** and **Enter status report frequency in (minutes)**.

    Allow hardware compatibility checking

    Disabled. This policy is enabled by default, but is not needed for a basic MBAM implementation.

    Operating System Drive

    Operating system drive encryption settings

    Enabled. Set **Select protector for operating system drive**. This is required to save operating system drive data to the MBAM Key Recovery server.

    Removable Drive

    Control Use of BitLocker on removable drives

    Enabled. This is required if MBAM will save removable drive data to the MBAM Key Recovery server.

    Fixed Drive

    Control Use of BitLocker on fixed drives

    Enabled. This is required if MBAM will save fixed drive data to the MBAM Key Recovery server.

    Set **Choose how BitLocker-protected drives can be recovered** and **Allow data recovery agent**.



~~~
**Important**  
Depending on the policies that your organization decides to deploy, you may have to configure additional policies. See [Planning for MBAM 1.0 Group Policy Requirements](planning-for-mbam-10-group-policy-requirements.md) for Group Policy configuration details for all of the available MBAM GPO policy options.
~~~



## Related topics


[Deploying MBAM 1.0 Group Policy Objects](deploying-mbam-10-group-policy-objects.md)









