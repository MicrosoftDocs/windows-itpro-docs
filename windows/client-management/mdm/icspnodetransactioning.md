---
title: ICSPNodeTransactioning
description: ICSPNodeTransactioning
ms.assetid: 24dc518a-4a8d-41fe-9bc6-217bbbdf6a3f
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: manikadhiman
ms.date: 06/26/2017
---

# ICSPNodeTransactioning

This is an optional interface that enables a configuration service provider to define its own transactioning scheme (internal transactioning) for an individual node. Transactioning supports the ability to roll back previous actions on a node. The majority of nodes use external transactioning, which is handled automatically, and do not need to implement this interface. For more information about internal and external transactioning, including how to handle the `RollbackAction` functions, see "Determine node operations" in [Designing a custom configuration service provider](design-a-custom-windows-csp.md).

``` syntax
interface ICSPNodeTransactioning : IUnknown
{
    HRESULT PersistRollbackAddState([in] IConfigManager2URI* puriChild, 
                                    [in] CFG_DATATYPE DataType, 
                                    [in] VARIANT varValue, 
                                    [in] ISequentialStream* pRollbackStream, 
                                    [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackCopyState([in] IConfigManager2URI* puriDestination, 
                                     [in] ISequentialStream* pRollbackStream, 
                                     [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackDeleteChildState([in] IConfigManager2URI* puriChild, 
                                            [in] ISequentialStream* pRollbackStream, 
                                            [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackClearState([in] ISequentialStream* pRollbackStream, 
                                      [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackExecuteState([in] VARIANT varUserData, 
                                        [in] ISequentialStream* pRollbackStream, 
                                        [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackMoveState([in] IConfigManager2URI* puriDestination, 
                                     [in] ISequentialStream* pRollbackStream, 
                                     [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackSetValueState([in] VARIANT varValue, 
                                         [in] ISequentialStream* pRollbackStream, 
                                         [in] ISequentialStream* pUninstallStream);
    HRESULT PersistRollbackSetPropertyState([in] REFGUID guidProperty, 
                                            [in] VARIANT varValue, 
                                            [in] ISequentialStream* pRollbackStream, 
                                            [in] ISequentialStream* pUninstallStream); 
    HRESULT PersistRollbackDeletePropertyState([in] REFGUID guidProperty, 
                                               [in] ISequentialStream* pRollbackStream, 
                                               [in] ISequentialStream* pUninstallStream);
    HRESULT RollbackAdd([in] ISequentialStream* pUndoStream, 
                        [in] BOOL fRecoveryRollback);
    HRESULT RollbackCopy([in] ISequentialStream* pUndoStream, 
                         [in] BOOL fRecoveryRollback);
    HRESULT RollbackDeleteChild([in] ISequentialStream* pUndoStream, 
                                [in] BOOL fRecoveryRollback);
    HRESULT RollbackClear([in] ISequentialStream* pUndoStream, 
                          [in] BOOL fRecoveryRollback);
    HRESULT RollbackExecute([in] ISequentialStream* pUndoStream, 
                            [in] BOOL fRecoveryRollback);
    HRESULT RollbackMove([in] ISequentialStream* pUndoStream, 
                         [in] BOOL fRecoveryRollback);
    HRESULT RollbackSetValue([in] ISequentialStream* pUndoStream, 
                             [in] BOOL fRecoveryRollback);
    HRESULT RollbackSetProperty([in] ISequentialStream* pUndoStream, 
                                [in] BOOL fRecoveryRollback);
    HRESULT RollbackDeleteProperty([in] ISequentialStream* pUndoStream, 
                                   [in] BOOL fRecoveryRollback);

    HRESULT Commit();
};
```

## Related topics

[Create a custom configuration service provider](create-a-custom-configuration-service-provider.md)

 





