---
title: Online or hybrid deployment using Skype Hybrid Voice environment (Surface Hub)
description: A Skype Hybrid Voice deployment requires special processing to set up a device account for your Microsoft Surface Hub.
keywords: hybrid deployment, Skype Hybrid Voice, Skype for Business Cloud PBX
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: surfacehub
author: jdeckerms
localizationpriority: medium
---

# Online or hybrid deployment using Skype Hybrid Voice environment (Surface Hub)

This topic explains how to enable Skype for Business Cloud PBX with on premises PSTN connectivity via Cloud Connector Edition or Skype for Business 2015 pool. In this option your Skype for Business home pools and Exchange servers are in the Cloud, however PSTN connected via on premises pool of Skype for Business 2015 or via a Cloud Connector edition. More about different Cloud PBX options is here https://technet.microsoft.com/en-us/library/mt612869.aspx 

If you deployed Skype for Business Cloud PBX with one of the hybrid voice options, please follow the steps below to enable the room account.  It is important to create a regular user account first, assign all hybrid voice options and phone numbers and only after this convert the account to a room account. If you do not follow this order you will not be able to assign a hybrid phone number. 


1.	Create a new user account for Surface Hub. In this example, I will use surfacehub2@adatum.biz account. The account can be created in local active directory and synchronized to the cloud or created directly in the cloud. 