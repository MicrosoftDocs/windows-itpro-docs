---
title: Privacy in Update Compliance
ms.reviewer: 
manager: laurawi
description: an overview of the Feature Update Status report
ms.prod: w10
ms.mktglfcycl: deploy
ms.pagetype: deploy
audience: itpro
itproauthor: jaimeo
author: jaimeo
ms.author: jaimeo
ms.collection: M365-analytics
ms.topic: article
---

# Privacy in Update Compliance

Update Compliance is fully committed to privacy, centering on these tenets:

- **Transparency:** Windows 10 diagnostic data events that are required for Update Compliance's operation are fully documented (see the links for additional information) so you can review them with your company's security and compliance teams. The Diagnostic Data Viewer lets you see diagnostic data sent from a given device (see [Diagnostic Data Viewer Overview](/windows/configuration/diagnostic-data-viewer-overview) for details).
- **Control:** You ultimately control the level of diagnostic data you wish to share. In Windows 10, version 1709 we added a new policy to Limit enhanced diagnostic data to the minimum required by Windows Analytics.
- **Security:** Your data is protected with strong security and encryption.
- **Trust:** Update Compliance supports the Online Services Terms.

> [!IMPORTANT]
> Update Compliance is a Windows service hosted in Azure that uses Windows diagnostic data. You should be aware that Update Compliance doesn't meet [US Government community compliance (GCC)](/office365/servicedescriptions/office-365-platform-service-description/office-365-us-government/gcc#us-government-community-compliance) requirements. For a list of GCC offerings for Microsoft products and services, see the [Microsoft Trust Center](/compliance/regulatory/offering-home). Update Compliance is available in the Azure Commercial cloud, but not available for GCC High or United States Department of Defense customers. 

## Data flow for Update Compliance

The data flow sequence is as follows:

1. Diagnostic data is sent from devices to the Microsoft Diagnostic Data Management service, which is hosted in the US.
2. An IT Administrator creates an Azure Log Analytics workspace. They then choose the location this workspace will store data and receives a Commercial ID for that workspace. The Commercial ID is added to each device in an organization by way of Group Policy, MDM or registry key.
3. Each day Microsoft produces a "snapshot" of IT-focused insights for each workspace in the Diagnostic Data Management Service, identifying devices by Commercial ID.
4. These snapshots are copied to transient storage, used solely for Update Compliance where they are partitioned by Commercial ID.
5. The snapshots are then copied to the appropriate Azure Log Analytics workspace, where the Update Compliance experience pulls the information from to populate visuals.

## FAQ

### Can Update Compliance be used without a direct client connection to the Microsoft Data Management Service?

No, the entire service is powered by Windows diagnostic data, which requires that devices have this direct connectivity.

### Can I choose the data center location?

Yes for Azure Log Analytics, but no for the Microsoft Data Management Service (which is hosted in the US).

## Related topics

See related topics for additional background information on privacy and treatment of diagnostic data:

- [Windows 10 and the GDPR for IT Decision Makers](/windows/privacy/gdpr-it-guidance)
- [Configure Windows diagnostic data in your organization](/windows/configuration/configure-windows-diagnostic-data-in-your-organization)
- [Diagnostic Data Viewer Overview](/windows/configuration/diagnostic-data-viewer-overview)
- [Licensing Terms and Documentation](https://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=31)
- [Confidence in the trusted cloud](https://azure.microsoft.com/support/trust-center/)
- [Trust Center](https://www.microsoft.com/trustcenter)
