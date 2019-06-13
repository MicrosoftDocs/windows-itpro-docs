---
title: Managing MED-V Workspace Settings by Using a WMI
description: Managing MED-V Workspace Settings by Using a WMI
author: levinec
ms.assetid: 05a665a3-2309-46c1-babb-a3e3bbb0b1f9
ms.reviewer: 
manager: dansimp
ms.author: ellevin
ms.pagetype: mdop, virtualization
ms.mktglfcycl: deploy
ms.sitesec: library
ms.prod: w7
ms.date: 06/16/2016
---


# Managing MED-V Workspace Settings by Using a WMI


You can use Windows Management Instrumentation (WMI) in Microsoft Enterprise Desktop Virtualization (MED-V) 2.0 to manage your current configuration settings.

## To manage MED-V workspace settings with a WMI


A WMI browsing tool lets you view and edit the settings in a MED-V workspace. The WMI provider is implemented by using the WMI Provider Extension framework from the Microsoft .Net Framework 3.5.

The WMI provider is implemented in the **root\\microsoft\\medv** namespace and implements the class **Setting**. The class **Setting** contains properties that correspond to the settings in the system registry under the HKEY\_LOCAL\_MACHINE\\SOFTWARE\\Microsoft\\Medv registry key.

**Caution**  
WMI browsing tools can be used to delete or modify classes and instances. Deleting or modifying certain classes and instances can result in the loss of valuable data and cause MED-V to function unpredictably.

 

You can use your preferred WMI browsing tool to view and edit MED-V configuration settings by following these steps.

1.  Open your preferred WMI browsing tool with administrator permissions.

2.  Connect to the namespace **root\\microsoft\\medv**.

3.  Enumerate the instances to connect to the running instance. You want to connect to the instance of the class **Setting**.

    An **Object Editor** window opens. The MED-V configuration settings are listed as **Properties**.

Perform the following steps to edit a MED-V configuration setting in the WMI.

1.  In the list of **Properties** on the **Object Editor** window, double-click the name of the configuration setting you want to edit. For example, to edit MED-V URL redirection information, double-click the property **UxRedirectUrls**.

    A **Property Editor** window opens.

2.  Edit the value to update the configuration information. For example, to edit MED-V URL redirection information, add or remove a web address in the list.

3.  Save the updated property settings.

After you have finished viewing or editing MED-V configuration settings, close the WMI browsing tool.

**Important**  
In some cases, a restart of the MED-V workspace is required for changes to MED-V configuration settings to take effect.

 

The following code shows the Managed Object Format (MOF) file that defines the **Setting** class.

``` syntax
[dynamic: ToInstance, provider("TroubleShooting, Version=2.0.392.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35"), singleton: DisableOverride ToInstance ToSubClass]
class Setting : ConfigValueProvider
{
                boolean UxSmartCardLogonEnabled = TRUE;
                [read] string User;
                [implemented] void Clear([in] string propertyName);
};
```

The **Setting** class inherits from the **ConfigValueProvider** class. The following code shows the Managed Object Format (MOF) file that defines the **ConfigValueProvider** class.

``` syntax
[abstract]
class ConfigValueProvider
{
                [write] string DiagEventLogLevel;
                [write] boolean FtsAddUserToAdminGroupEnabled;
                [write] string FtsComputerNameMask;
                [write] sint32 FtsDeleteVMStateTimeout;
                [write] sint32 FtsDetachVfdTimeout;
                [write] string FtsDialogUrl;
                [write] sint32 FtsExplorerTimeout;
                [write] string FtsFailureDialogMsg;
                [write] string FtsLogFilePaths[];
                [write] sint32 FtsMaxPostponeTime;
                [write] sint32 FtsMaxRetryCount;
                [write] string FtsMode;
                [write] sint32 FtsNonInteractiveRetryTimeoutInc;
                [write] sint32 FtsNonInteractiveTimeout;
                [write] string FtsPostponeUtcDateTimeLimit;
                [write] string FtsRetryDialogMsg;
                [write] boolean FtsSetComputerNameEnabled;
                [write] boolean FtsSetJoinDomainEnabled;
                [write] boolean FtsSetMachineObjectOUEnabled;
                [write] boolean FtsSetRegionalSettingsEnabled;
                [write] boolean FtsSetUserDataEnabled;
                [write] string FtsStartDialogMsg;
                [write] sint32 FtsTaskCancelTimeout;
                [write] sint32 FtsTaskVMTurnOffTimeout;
                [write] sint32 FtsUpgradeTimeout;
                [write] boolean UxAppPublishingEnabled;
                [write] boolean UxAudioSharingEnabled;
                [write] boolean UxClipboardSharingEnabled;
                [write] boolean UxCredentialCacheEnabled;
                [write] sint32 UxDialogTimeout;
                [write] sint32 UxHideVmTimeout;
                [write] boolean UxLogonStartEnabled;
                [write] boolean UxPrinterSharingEnabled;
                [write] sint32 UxRebootAbsoluteDelayTimeout;
                [write] string UxRedirectUrls[];
                [write] boolean UxShowExit;
                [write] boolean UxSmartCardLogonEnabled;
                [write] boolean UxSmartCardSharingEnabled;
                [write] boolean UxUSBDeviceSharingEnabled;
                [write] string VmCloseAction;
                [write] sint32 VmGuestMemFromHostMem[];
                [write] sint32 VmGuestUpdateDuration;
                [write] string VmGuestUpdateTime;
                [write] sint32 VmHostMemToGuestMem[];
                [write] boolean VmHostMemToGuestMemCalcEnabled;
                [write] sint32 VmMemory;
                [write] boolean VmMultiUserEnabled;
                [write] string VmNetworkingMode;
                [write] sint32 VmTaskTimeout;
};
```

## Related topics


[Managing MED-V Workspace Configuration Settings](managing-med-v-workspace-configuration-settings.md)

[Manage MED-V Workspace Settings](manage-med-v-workspace-settings.md)

 

 





