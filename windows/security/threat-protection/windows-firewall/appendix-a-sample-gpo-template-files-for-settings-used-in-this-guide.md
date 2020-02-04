---
title: Appendix A Sample GPO Template Files for Settings Used in this Guide (Windows 10)
description: Appendix A Sample GPO Template Files for Settings Used in this Guide
ms.assetid: 75930afd-ab1b-4e53-915b-a28787814b38
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 04/19/2017
---

# Appendix A: Sample GPO Template Files for Settings Used in this Guide

**Applies to**
-   Windows 10
-   Windows Server 2016

You can import an XML file containing customized registry preferences into a Group Policy Object (GPO) by using the Preferences feature of the Group Policy Management Console (GPMC).

To manually create the file, build the settings under **Computer Configuration**, **Preferences**, **Windows Settings**, **Registry**. After you have created the settings, drag the container to the desktop. An .xml file is created there.

To import an .xml file to GPMC, drag it and drop it on the **Registry** node under **Computer Configuration**, **Preferences**, **Windows Settings**. If you copy the following sample XML code to a file, and then drag and drop it on the **Registry** node, it creates a **Server and Domain Isolation** collection with the six registry keys discussed in this guide.

The following sample file uses item-level targeting to ensure that the registry keys are applied only on the versions of Windows to which they apply.

>**Note:**  The file shown here is for sample use only. It should be customized to meet the requirements of your organization’s deployment. To customize this file, import it into a test GPO, modify the settings, and then drag the Server and Domain Isolation Settings node to your desktop. The new file will contain all of your customization.

```xml
<?xml version="1.0" encoding="utf-8"?>

<Collection clsid="{53B533F5-224C-47e3-B01B-CA3B3F3FF4BF}" name="Server and Domain Isolation Settings">

<Registry
         clsid="{9CD4B2F4-923D-47f5-A062-E897DD1DAD50}"
         name="Enable PMTU Discovery"
         status="EnablePMTUDiscovery"
         image="12"
         changed="2008-05-30 20:37:37"
         uid="{52C38FD7-A081-404C-A8EA-B24A9614D0B5}"
         desc="&lt;b&gt;Enable PMTU Discovery&lt;/b&gt;&lt;p&gt;
            This setting configures whether computers can use PMTU
            discovery on the network.&lt;p&gt;
            &lt;b&gt;1&lt;/b&gt; --  Enable&lt;br&gt;
            &lt;b&gt;0&lt;/b&gt; --  Disable"
         bypassErrors="1">
   <Properties
         action="U"
         displayDecimal="1"
         default="0"
         hive="HKEY_LOCAL_MACHINE"
         key="System\CurrentControlSet\Services\TCPIP\Parameters"
         name="EnablePMTUDiscovery" type="REG_DWORD" value="00000001"/>
</Registry>

<Registry
         clsid="{9CD4B2F4-923D-47f5-A062-E897DD1DAD50}"
         name="IPsec Default Exemptions (Vista and W2K8)"
         status="NoDefaultExempt"
         image="12"
         changed="2008-05-30 20:33:32"
         uid="{AE5C505D-283E-4060-9A55-70659DFD56B6}"
         desc="&lt;b&gt;IPsec Default Exemptions for Windows Server 2008
            and later&lt;/b&gt;&lt;p&gt;
            This setting determines which network traffic type is exempt
            from any IPsec authentication requirements.&lt;p&gt;
            &lt;b&gt;0&lt;/b&gt;: Exempts multicast, broadcast, RSVP, Kerberos, ISAKMP&lt;br&gt;
            &lt;b&gt;1&lt;/b&gt;: Exempts multicast, broadcast, ISAKMP&lt;br&gt;
            &lt;b&gt;2&lt;/b&gt;: Exempts RSVP, Kerberos, ISAKMP&lt;br&gt;
            &lt;b&gt;3&lt;/b&gt;: Exempts ISAKMP only"
         bypassErrors="1">
   <Properties
         action="U"
         displayDecimal="1"
         default="0"
         hive="HKEY_LOCAL_MACHINE"
         key="SYSTEM\CurrentControlSet\Services\PolicyAgent"
         name="NoDefaultExempt"
         type="REG_DWORD"
         value="00000003"/>
   <Filters>
      <FilterOs
         bool="AND" not="0"
         class="NT" version="VISTA"
         type="NE" edition="NE" sp="NE"/>
      <FilterOs
         bool="OR" not="0"
         class="NT" version="2K8"
         type="NE" edition="NE" sp="NE"/>
   </Filters>
</Registry>

</Collection>
```
