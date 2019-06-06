---
title: ICSPValidate
description: ICSPValidate
ms.assetid: b0993f2d-6269-412f-a329-af25fff34ca2
ms.reviewer: 
manager: dansimp
ms.author: v-madhi
ms.topic: article
ms.prod: w10
ms.technology: windows
author: v-madhi
ms.date: 06/26/2017
---

# ICSPValidate

This interface is optional. It is called by ConfigManager2 as it batches commands before transactioning begins. This allows the configuration service provider to validate the node before performing specific actions. It is generally only used for configuration service providers that need to expose UI.

``` syntax
interface ICSPValidate : IUnknown
{
    HRESULT ValidateAdd([in] IConfigNodeState* pNodeState,
                        [in] IConfigManager2URI* puriChild, 
                        [in] CFG_DATATYPE DataType,
                        [in] VARIANT varValue);
    HRESULT ValidateCopy([in] IConfigNodeState* pNodeState, 
                         [in] IConfigManager2URI* puriDestination);
    HRESULT ValidateDeleteChild([in] IConfigNodeState* pNodeState, 
                                [in] IConfigManager2URI* puriChild);
    HRESULT ValidateClear([in] IConfigNodeState* pNodeState);
    HRESULT ValidateExecute([in] IConfigNodeState* pNodeState, 
                            [in] VARIANT varUserData);
    HRESULT ValidateMove([in] IConfigNodeState* pNodeState, 
                         [in] IConfigManager2URI* puriDestination);
    HRESULT ValidateSetValue([in] IConfigNodeState* pNodeState, 
                             [in] VARIANT varValue);
    HRESULT ValidateSetProperty([in] IConfigNodeState* pNodeState, 
                                [in] REFGUID guidProperty, 
                                [in] VARIANT varValue);
    HRESULT ValidateDeleteProperty([in] IConfigNodeState* pNodeState, 
                                   [in] REFGUID guidProperty);
```

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 






