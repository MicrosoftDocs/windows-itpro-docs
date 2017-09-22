---
title: EnterpriseModernAppManagement CSP
description: EnterpriseModernAppManagement CSP
ms.assetid: 9DD0741A-A229-41A0-A85A-93E185207C42
ms.author: maricia
ms.topic: article
ms.prod: w10
ms.technology: windows
author: nickbrower
ms.date: 06/19/2017
---

# EnterpriseModernAppManagement CSP

The EnterpriseModernAppManagement configuration service provider (CSP) is used for the provisioning and reporting of modern enterprise apps. For details about how to use this CSP to for reporting apps inventory, installation and removal of apps for users, provisioning apps to devices, and managing app licenses, see [Enterprise app management](enterprise-app-management.md).

> [!Note]
> Windows Holographic only supports per-user configuration of the EnterpriseModernAppManagement CSP.

The following image shows the EnterpriseModernAppManagement configuration service provider in tree format.

![enterprisemodernappmanagement csp diagram](images/provisioning-csp-enterprisemodernappmanagement.png)

<a href="" id="device-or-user-context"></a>**Device or User context**  
<p style="margin-left: 20px">For user context, use **./User/Vendor/MSFT** path and for device context, use **./Device/Vendor/MSFT** path.

> [!Note]
> Windows Holographic and Windows 10 Mobile only support per-user configuration of the EnterpriseModernAppManagement CSP.

<a href="" id="appmanagement"></a>**AppManagement**  
<p style="margin-left: 20px">Required. Used for inventory and app management (post-install).

<a href="" id="appmanagement-updatescan"></a>**AppManagement/UpdateScan**  
<p style="margin-left: 20px">Required. Used to start the Windows Update scan.

<p style="margin-left: 20px">Supported operation is Execute.

<a href="" id="appmanagement-lastscanerror"></a>**AppManagement/LastScanError**  
<p style="margin-left: 20px">Required. Reports the last error code returned by the update scan.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="appmanagement-appinventoryresults"></a>**AppManagement/AppInventoryResults**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Returns the results for app inventory that was created after the AppInventoryQuery operation.

<p style="margin-left: 20px">Supported operation is Get.

<p style="margin-left: 20px">Here's an example of AppInventoryResults operation.

``` syntax
<Get>
   <CmdID>11</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryResults</LocURI>
      </Target>
   </Item>
</Get>
```

<a href="" id="appmanagement-appinventoryquery"></a>**AppManagement/AppInventoryQuery**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Specifies the query for app inventory.

<p style="margin-left: 20px">Query parameters:

-   Output - Specifies the parameters for the information returned in AppInventoryResults operation. Mutiple value must be separate by |. Valid values are:
    -   PackagesName - returns the *PackageFamilyName* and *PackageFullName* of the app. Default if nothing is specified.
    -   PackageDetails - returns all inventory attributes of the package. This includes all information from PackageNames parameter, but does not validate RequiresReinstall.
    -   RequiredReinstall - Validates the app status of the apps in the inventory query to determine if they require a reinstallation. This attribute may impact system performance depending on the number of apps installed. Requiring reinstall occurs when resource package updates or when the app is in a tampered state.
-   Source - specifies the app classification that aligns to the existing inventory nodes. You can use a specific filter or if no filter is specified then all sources will be returned. If no value is specified, all classifications are returned. Valid values are:
    -   AppStore - This classification is for apps that were acquired from Microsoft Store. These were apps directly installed from Microsoft Store or enterprise apps from Microsoft Store for Business.
    -   nonStore - This classification is for apps that were not acquired from the Microsoft Store.
    -   System - Apps that are part of the OS. You cannot uninstall these apps. This classification is read-only and can only be inventoried.
-   PackageTypeFilter - Specifies one or multiple types of packages you can use to query the user or device. Multiple values must be separated by |. Valid values are:

    -   Main - returns the main installed package.
    -   Bundle - returns installed bundle packages.
    -   Framework - returns installed framework packages.
    -   Resource - returns installed resources packages. Resources are either language, scale, or DirectX resources. They are parts of a bundle.
    -   XAP - returns XAP package types.
    -   All - returns all package types.

    If no value is specified, the combination of Main, Bundle, Framework, and XAP are returned.

-   PackageFamilyName - specifies the name of a particular package. If you specify this parameter, it returns the Package Family name if the package contains this value.

    If you do not specify this value, then all packages are returned.

-   Publisher - specifies the publisher of a particular package. If you specify this parameter, it returns the publisher if the value exists in the Publisher field.

    If you do not specify this value, then all publishers are returned.


<p style="margin-left: 20px">Supported operation is Get and Replace.

<p style="margin-left: 20px">The following example sets the inventory query for the package names and checks the status for reinstallation for all main packages that are nonStore apps.

``` syntax
<Replace>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppInventoryQuery</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data><Inventory Output="PackageNames|RequiresReinstall" Source="nonStore" PackageTypeFilter="Main" /></Data>
   </Item>
</Replace>
```
<a href="" id="appmanagement-removepackage"></a>**AppManagement/RemovePackage**  
<p style="margin-left: 20px">Added in Windows 10, version 1703. Used to remove packages.

<p style="margin-left: 20px">Parameters:
<ul>
   <li>Package
      <ul>
         <li>Name: Specifies the PackageFullName of the particular package to remove.</li>
         <li>RemoveForAllUsers: 
            <ul>
               <li>0 (default) – Package will be un-provisioned so that new users do not receive the package. The package will remain installed for current users.</li>
               <li>1 – Package will be removed for all users.</li>
            </ul>
         </li>
      </ul>
   </li>
   <li>User (optional): Specifies the SID of the particular user for whom to remove the package; only the package for the specified user can be removed. Not required for ./User/Vendor/MSFT.</li>
</ul>
    
    
<p style="margin-left: 20px">Supported operation is Execute.

<p style="margin-left: 20px">The following example removes a package for the specified user:

```XML
<Exec>
   <CmdID>10</CmdID>
   <Item>
      <Target>
              <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/RemovePackage</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data>
          <Package Name= "{PackageFullName}"/>
      </Data>
   </Item>
</Exec>
```
<p style="margin-left: 20px">The following example removes a package for all users:

````XML
<Exec>
   <CmdID>10</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/RemovePackage</LocURI>
      </Target>
      <Meta><Format xmlns="syncml:metinf">xml</Format></Meta>
      <Data>
          <Package Name="{PackageFullName}" RemoveForAllUsers=1 />
      </Data>
   </Item>
</Exec>
````

<a href="" id="appmanagement-nonstore"></a>**AppManagement/nonStore**  
<p style="margin-left: 20px">Used to manage enterprise apps or developer apps that were not acquired from the Microsoft Store.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="appmanagement-system"></a>**AppManagement/System**  
<p style="margin-left: 20px">Reports apps installed as part of the operating system.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="appmanagement-appstore"></a>**AppManagement/AppStore**  
<p style="margin-left: 20px">Required. Used for managing apps from the Microsoft Store.

<p style="margin-left: 20px">Supported operations are Get and Delete.

<a href="" id="----packagefamilyname"></a>**.../****_PackageFamilyName_**  
<p style="margin-left: 20px">Optional. Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.

<p style="margin-left: 20px">Supported operations are Get and Delete.

> [!Note]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.


<p style="margin-left: 20px">Here's an example for uninstalling an app:

``` syntax
<SyncML xmlns="SYNCML:SYNCML1.2">
  <SyncBody>
        <!-- Uninstall app -->
        <delete>
           <CmdID>2</CmdID>
              <Item>
                 <Target>
                    <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/%7b12345678-9012-3456-7890-123456789012%7D</LocURI>
                 </Target>
              </Item>
        </delete>
     <Final/>
  </SyncBody>
</SyncML>
```

<a href="" id="----packagefamilyname-packagefullname"></a>**.../*PackageFamilyName*/****_PackageFullName_**  
<p style="margin-left: 20px">Optional. Full name of the package installed.

<p style="margin-left: 20px">Supported operations are Get and Delete.

> [!Note]
> XAP files use a product ID in place of PackageFullName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.

 
<a href="" id="----packagefamilyname-packagefullname-name"></a>**.../*PackageFamilyName*/*PackageFullName*/Name**  
<p style="margin-left: 20px">Required. Name of the app. Value type is string.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-version"></a>**.../*PackageFamilyName*/*PackageFullName*/Version**  
<p style="margin-left: 20px">Required. Version of the app. Value type is string.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-publisher"></a>**.../*PackageFamilyName*/*PackageFullName*/Publisher**  
<p style="margin-left: 20px">Required. Publisher name of the app. Value type is string.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-architecture"></a>**.../*PackageFamilyName*/*PackageFullName*/Architecture**  
<p style="margin-left: 20px">Required. Architecture of installed package. Value type is string.

> [!Note]
> Not applicable to XAP files.

 

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-installlocation"></a>**.../*PackageFamilyName*/*PackageFullName*/InstallLocation**  
<p style="margin-left: 20px">Required. Install location of the app on the device. Value type is string.

> [!Note]
> Not applicable to XAP files.

 

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-isframework"></a>**.../*PackageFamilyName*/*PackageFullName*/IsFramework**  
<p style="margin-left: 20px">Required. Whether or not the app is a framework package. Value type is int. The value is 1 if the app is a framework package and 0 (zero) for all other cases.

> [!Note]
> Not applicable to XAP files.

 
<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-isbundle"></a>**.../*PackageFamilyName*/*PackageFullName*/IsBundle**  
<p style="margin-left: 20px">Required. The value is 1 if the package is an app bundle and 0 (zero) for all other cases. Value type is int.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-installdate"></a>**.../*PackageFamilyName*/*PackageFullName*/InstallDate**  
<p style="margin-left: 20px">Required. Date the app was installed. Value type is string.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-resourceid"></a>**.../*PackageFamilyName*/*PackageFullName*/ResourceID**  
<p style="margin-left: 20px">Required. Resource ID of the app. This is null for the main app, ~ for a bundle, and contains resource information for resources packages. Value type is string.

> [!Note]
> Not applicable to XAP files.

 
<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-packagestatus"></a>**.../*PackageFamilyName*/*PackageFullName*/PackageStatus**  
<p style="margin-left: 20px">Required. Provides information about the status of the package. Value type is int. Valid values are:

-   OK (0) - The package is usable.
-   LicenseIssue (1) - The license of the package is not valid.
-   Modified (2) - The package payload was modified by an unknown source.
-   Tampered (4) - The package payload was tampered intentionally.
-   Disabled (8) - The package is not available for use. It can still be serviced.

> [!Note]
> Not applicable to XAP files.

 

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-requiresreinstall"></a>**.../*PackageFamilyName*/*PackageFullName*/RequiresReinstall**  
<p style="margin-left: 20px">Required. Specifies whether the package state has changed and requires a reinstallation of the app. This can occur when new app resources are required, such as when a device has a change in language preference or a new DPI. It can also occur of the package was corrupted. If the value is 1, reinstallation of the app is performed. Value type is int.

> [!Note]
> Not applicable to XAP files.

 
<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-users"></a>**.../*PackageFamilyName*/*PackageFullName*/Users**  
<p style="margin-left: 20px">Required. Registered users of the app. If the query is at the device level, it returns all the registered users of the device. If you query the user context, it will only return the current user. Value type is string.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-packagefullname-isprovisioned"></a>**.../*PackageFamilyName*/*PackageFullName*/IsProvisioned**  
<p style="margin-left: 20px">Required. The value is 0 or 1 that indicates if the app is provisioned on the device. The value type is int.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="----packagefamilyname-donotupdate"></a>**.../*PackageFamilyName*/DoNotUpdate**  
<p style="margin-left: 20px">Required. Specifies whether you want to block a specific app from being updated via auto-updates.

<p style="margin-left: 20px">Supported operations are Add, Get, Delete, and Replace.

<a href="" id="----packagefamilyname-appsettingpolicy---only-for---user-vendor-msft-"></a>**.../*PackageFamilyName*/AppSettingPolicy** (only for ./User/Vendor/MSFT)  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Interior node for all managed app setting values. This node is only supported in the user context.

<a href="" id="----packagefamilyname-appsettingpolicy-settingvalue---only-for---user-vendor-msft-"></a>**.../*PackageFamilyName*/AppSettingPolicy/****_SettingValue_** (only for ./User/Vendor/MSFT)  
<p style="margin-left: 20px">Added in Windows 10, version 1511. The *SettingValue* and data represent a key value pair to be configured for the app. The node represents the name of the key and the data represents the value. You can find this value in LocalSettings in the Managed.App.Settings container.

<p style="margin-left: 20px">This setting only works for apps that support the feature and it is only supported in the user context.

<p style="margin-left: 20px">Value type is string. Supported operations are Add, Get, Replace, and Delete.

<p style="margin-left: 20px">The following example sets the value for the 'Server'

``` syntax
<!— Configure app settings -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy/Server</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">chr</Format>
      </Meta>
      <Data>server1.contoso.com</Data>
   </Item>
</Add>
```

<p style="margin-left: 20px">The following example gets all managed app settings for a specific app.

``` syntax
<!—Get app settings -->
<Get>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/PackageFamilyName/AppSettingPolicy?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

<a href="" id="appinstallation"></a>**AppInstallation**  
<p style="margin-left: 20px">Required node. Used to perform app installation.

<a href="" id="appinstallation-packagefamilyname"></a>**AppInstallation/****_PackageFamilyName_**  
<p style="margin-left: 20px">Optional node. Package family name (PFN) of the app. There is one for each PFN on the device when reporting inventory. These items are rooted under their signing origin.

<p style="margin-left: 20px">Supported operations are Get and Add.

> [!Note]
> XAP files use a product ID in place of PackageFamilyName. Here's an example of XAP product ID (including the braces), {12345678-9012-3456-7890-123456789012}.

 
<a href="" id="appinstallation-packagefamilyname-storeinstall"></a>**AppInstallation/*PackageFamilyName*/StoreInstall**  
<p style="margin-left: 20px">Required. Command to perform an install of an app and a license from the Microsoft Store.

<p style="margin-left: 20px">Supported operation is Execute, Add, Delete, and Get.

<a href="" id="appinstallation-packagefamilyname-hostedinstall"></a>**AppInstallation/*PackageFamilyName*/HostedInstall**  
<p style="margin-left: 20px">Required. Command to perform an install of an app package from a hosted location (this can be a local drive, a UNC, or https data source).

<p style="margin-left: 20px">Supported operation is Execute, Add, Delete, and Get.

<a href="" id="appinstallation-packagefamilyname-lasterror"></a>**AppInstallation/*PackageFamilyName*/LastError**  
<p style="margin-left: 20px">Required. Last error relating to the app installation.

<p style="margin-left: 20px">Supported operation is Get.

> [!Note]
> This element is not present after the app is installed.

 

<a href="" id="appinstallation-packagefamilyname-lasterrordescription"></a>**AppInstallation/*PackageFamilyName*/LastErrorDescription**  
<p style="margin-left: 20px">Required. Description of last error relating to the app installation.

<p style="margin-left: 20px">Supported operation is Get.

> [!Note]
> This element is not present after the app is installed.

 
<a href="" id="appinstallation-packagefamilyname-status"></a>**AppInstallation/*PackageFamilyName*/Status**  
<p style="margin-left: 20px">Required. Status of app installation. The following values are returned:

-   NOT\_INSTALLED (0) - The node was added, but the execution has not completed.
-   INSTALLING (1) - Execution has started, but the deployment has not completed. If the deployment completes regardless of success, this value is updated.
-   FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription.
-   INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up action has not completed, this state may briefly appear.

<p style="margin-left: 20px">Supported operation is Get.

> [!Note]
> This element is not present after the app is installed.

 
<a href="" id="appinstallation-packagefamilyname-progessstatus"></a>**AppInstallation/*PackageFamilyName*/ProgessStatus**  
<p style="margin-left: 20px">Required. An integer the indicates the progress of the app installation. For https locations, this indicates the download progress. ProgressStatus is not available for provisioning and it is only for user-based installations. In provisioning, the value is always 0 (zero).

<p style="margin-left: 20px">Supported operation is Get.

> [!Note]
> This element is not present after the app is installed.

 
<a href="" id="applicenses"></a>**AppLicenses**  
<p style="margin-left: 20px">Required node. Used to manage licenses for app scenarios.

<a href="" id="applicenses-storelicenses"></a>**AppLicenses/StoreLicenses**  
<p style="margin-left: 20px">Required node. Used to manage licenses for store apps.

<a href="" id="applicenses-storelicenses-licenseid"></a>**AppLicenses/StoreLicenses/****_LicenseID_**  
<p style="margin-left: 20px">Optional node. License ID for a store installed app. The license ID is generally the PFN of the app.

<p style="margin-left: 20px">Supported operations are Add, Get, and Delete.

<a href="" id="applicenses-storelicenses-licenseid-licensecategory"></a>**AppLicenses/StoreLicenses/*LicenseID*/LicenseCategory**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Category of license that is used to classify various license sources. Valid value:

-   Unknown - unknown license category
-   Retail - license sold through retail channels, typically from the Microsoft Store
-   Enterprise - license sold through the enterprise sales channel, typically from the Store for Business
-   OEM - license issued to an OEM
-   Developer - developer license, typically installed during the app development or side-loading scernarios.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="applicenses-storelicenses-licenseid-licenseusage"></a>**AppLicenses/StoreLicenses/*LicenseID*/LicenseUsage**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Indicates the allowed usage for the license. Valid values:

-   Unknown - usage is unknown
-   Online - the license is only valid for online usage. This is for applications with concurrence requirements, such as an app used on several computers, but can only be used on one at any given time.
-   Offline - license is valid for use offline. You don't need a connection to the internet to use this license.
-   Enterprise Root -

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="applicenses-storelicenses-licenseid-requesterid"></a>**AppLicenses/StoreLicenses/*LicenseID*/RequesterID**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Identifier for the entity that requested the license, such as the client who acquired the license. For example, all licenses issued by the Store for Business for a particular enterprise client has the same RequesterID.

<p style="margin-left: 20px">Supported operation is Get.

<a href="" id="applicenses-storelicenses-licenseid-addlicense"></a>**AppLicenses/StoreLicenses/*LicenseID*/AddLicense**  
<p style="margin-left: 20px">Required. Command to add license.

<p style="margin-left: 20px">Supported operation is Execute.

<a href="" id="applicenses-storelicenses-licenseid-getlicensefromstore"></a>**AppLicenses/StoreLicenses/*LicenseID*/GetLicenseFromStore**  
<p style="margin-left: 20px">Added in Windows 10, version 1511. Required. Command to get license from the store.

<p style="margin-left: 20px">Supported operation is Execute.

## Examples


<p style="margin-left: 20px">For examples of how to use this CSP to for reporting apps inventory, installation and removal of apps for users, provisioning apps to devices, and managing app licenses, see [Enterprise app management](enterprise-app-management.md).

<p style="margin-left: 20px">Query the device for a specific app subcategory, such as nonStore apps.

``` syntax
<Get>
  <CmdID>1</CmdID>
  <Item>
    <Target>
      <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore</LocURI>
    </Target>
  </Item>
</Get>
```

<p style="margin-left: 20px">The result contains a list of apps, such as &lt;Data&gt;App1/App2/App3&lt;/Data&gt;.

<p style="margin-left: 20px">Subsequent query for a specific app for its properties.

``` syntax
  
<Get>
   <CmdID>1</CmdID>
   <Item>
     <Target>
       <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/App1?list=StructData</LocURI>
     </Target>
   </Item>
</Get>
<Get>
  <CmdID>2</CmdID>
  <Item>
    <Target>
      <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/nonStore/App2?list=StructData</LocURI>
    </Target>
  </Item>
</Get>
```

## Related topics

[Configuration service provider reference](configuration-service-provider-reference.md)

 

 






