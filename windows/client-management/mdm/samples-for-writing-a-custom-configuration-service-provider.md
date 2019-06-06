---
title: Samples for writing a custom configuration service provider
description: Samples for writing a custom configuration service provider
ms.assetid: ccda4d62-7ce1-483b-912f-25d50c974270
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# Samples for writing a custom configuration service provider

The following example shows how to retrieve Integrated Circuit Card Identifier (ICCID) and International Mobile Subscriber Identity (IMSI) for a dual SIM phone.

## Retrieving ICCID and IMSI for a dual SIM phone

The following sample is used in the [IConfigServiceProvider2::ConfigManagerNotification](iconfigserviceprovider2configmanagernotification.md) method implementation. It first retrieves the IConfigSession2 object, and then queries the ICCID with the IConfigSession2::GetSessionVariable method. To retrieve the IMSI, replace L”ICCID” with L”IMSI”.

``` syntax
case CFGMGR_NOTIFICATION_SETSESSIONOBJ:
    if (NULL != lpParam)
    {
        m_pSession = reinterpret_cast<IConfigSession2*>(lpParam);
        m_pSession->AddRef();
    }

    bstrContext = SysAllocString(L"ICCID");
    if (NULL == bstrContext)
    {
    hr = E_OUTOFMEMORY;
    goto Error;
    }

    hr = m_pSession->GetSessionVariable(bstrContext, &varValue);
    if (FAILED(hr))
    {
        goto Error;
    }
    break;
```

 





