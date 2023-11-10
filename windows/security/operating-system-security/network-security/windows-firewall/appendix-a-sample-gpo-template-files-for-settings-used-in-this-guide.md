---
title: Appendix A Sample GPO Template Files for Settings Used in this Guide 
description: Use sample template files import an XML file containing customized registry preferences into a Group Policy Object (GPO).
ms.prod: windows-client
ms.topic: conceptual
ms.date: 11/10/2023
---

# Appendix A: aample GPO template files for settings used in this guide

You can import an XML file containing customized registry preferences into a Group Policy Object (GPO) by using the Preferences feature of the Group Policy Management Console (GPMC).

To manually create the file, build the settings under **Computer Configuration** > **Preferences** > **Windows Settings** > **Registry**. After you create the settings, drag the container to the desktop. An .xml file is created there.

To import an .xml file to GPMC, drag it and drop it on the **Computer Configuration** > **Preferences** > **Windows Settings** > **Registry** node. If you copy the following sample XML code to a file, and then drag and drop it on the **Registry** node, it creates a **Server and Domain Isolation** collection with the six registry keys discussed in this guide.

The following sample file uses item-level targeting to ensure that the registry keys are applied only on the versions of Windows to which they apply.

> [!NOTE]
> The file shown here is for sample use only. It should be customized to meet the requirements of your organization's deployment. To customize this file, import it into a test GPO, modify the settings, and then drag the Server and Domain Isolation Settings node to your desktop. The new file will contain all of your customization.

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
         desc="<b>Enable PMTU Discovery</b><p>
            This setting configures whether computers can use PMTU
            discovery on the network.<p>
            <b>1</b> --  Enable<br>
            <b>0</b> --  Disable"
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
         desc="<b>IPsec Default Exemptions for Windows Server 2008
            and later</b><p>
            This setting determines which network traffic type is exempt
            from any IPsec authentication requirements.<p>
            <b>0</b>: Exempts multicast, broadcast, RSVP, Kerberos, ISAKMP<br>
            <b>1</b>: Exempts multicast, broadcast, ISAKMP<br>
            <b>2</b>: Exempts RSVP, Kerberos, ISAKMP<br>
            <b>3</b>: Exempts ISAKMP only"
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
