---
title: Enterprise app management
description: This topic covers one of the key mobile device management (MDM) features in Windows 10 for managing the lifecycle of apps across all of Windows.
ms.assetid: 225DEE61-C3E3-4F75-BC79-5068759DFE99
ms.reviewer: 
manager: dansimp
ms.author: dansimp
ms.topic: article
ms.prod: w10
ms.technology: windows
author: dansimp
ms.date: 09/22/2017
---

# Enterprise app management

This topic covers one of the key mobile device management (MDM) features in Windows 10 for managing the lifecycle of apps across all of Windows. It is the ability to manage both Store and non-Store apps as part of the native MDM capabilities. New in Windows 10 is the ability to take inventory of all your apps.

## Application management goals

Windows 10 offers the ability for management servers to:

-   Install apps directly from the Microsoft Store for Business
-   Deploy offline Store apps and licenses
-   Deploy line-of-business (LOB) apps (non-Store apps)
-   Inventory all apps for a user (Store and non-Store apps)
-   Inventory all apps for a device (Store and non-Store apps)
-   Uninstall all apps for a user (Store and non-Store apps)
-   Provision apps so they are installed for all users of a device running Windows 10 for desktop editions (Home, Pro, Enterprise, and Education)
-   Remove the provisioned app on the device running Windows 10 for desktop editions

## Inventory your apps

Windows 10 lets you inventory all apps deployed to a user and all apps for all users of a device on Windows 10 for desktop editions. The [EnterpriseModernAppManagement](enterprisemodernappmanagement-csp.md) configuration service provider (CSP) inventories packaged apps and does not include traditional Win32 apps installed via MSI or executables. When the apps are inventoried they are separated based on the following app classifications:

-   Store - Apps that are from the Microsoft Store. Apps can be directly installed from the Store or delivered with the enterprise from the Store for Business
-   nonStore - Apps that were not acquired from the Microsoft Store.
-   System - Apps that are part of the OS. You cannot uninstall these apps. This classification is read-only and can only be inventoried.

These classifications are represented as nodes in the EnterpriseModernAppManagement CSP.

The following diagram shows the EnterpriseModernAppManagement CSP in a tree format.

![enterprisemodernappmanagement csp diagram](images/provisioning-csp-enterprisemodernappmanagement.png)

Each app displays one package family name and 1-n package full names for installed apps. The apps are categorized based on their origin (Store, nonStore, System).

Inventory can be performed recursively at any level from the AppManagement node through the package full name. Inventory can also be performed only for a specific inventory attribute.

Inventory is specific to the package full name and lists bundled packs and resources packs as applicable under the package family name.

> **Note**  On Windows 10 Mobile, XAP packages have the product ID in place of both the package family name and package full name.

 
Here are the nodes for each package full name:

-   Name
-   Version
-   Publisher
-   Architecture
-   InstallLocation
-   IsFramework
-   IsBundle
-   InstallDate
-   ResourceID
-   RequiresReinstall
-   PackageStatus
-   Users
-   IsProvisioned

For detailed descriptions of each node, see [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md).

### App inventory

You can use the EnterpriseModernAppManagement CSP to query for all apps installed for a user or device. The query returns all apps regardless if they were installed via MDM or other methods. Inventory can be performed at the user or device level. Inventory at the device level will return information for all users on the device.

Note that performing a full inventory of a device can be resource intensive on the client based on the hardware and number of apps that are installed. The data returned can also be very large. You may want to chunk these requests to reduce the impact to clients and network traffic.

Here is an example of a query for all apps on the device.

``` syntax
<!-- Get all apps under AppManagement -->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

Here is an example of a query for a specific app for a user.

``` syntax
<!-- Get all information of a specific app for a user -->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

### Store license inventory

You can use the EnterpriseModernAppManagement CSP to query for all app licenses installed for a user or device. The query returns all app licenses regardless if they were installed via MDM or other methods. Inventory can be performed at the user or device level. Inventory at the device level will return information for all users on the device.

Here are the nodes for each license ID:

-   LicenseCategory
-   LicenseUsage
-   RequestedID

For detailed descriptions of each node, see [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md).

> **Note**  The LicenseID in the CSP is the content ID for the license.


Here is an example of a query for all app licenses on a device.

``` syntax
<!-- Get all app licenses for the device -->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

Here is an example of a query for all app licenses for a user.

``` syntax
<!-- Get a specific app license for a user -->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{license id}?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

## Enable the device to install non-Store apps

There are two basic types of apps you can deploy: Store apps and enterprise signed apps. To deploy enterprise signed apps, you must enable a setting on the device to allow trusted apps. The apps can be signed by a Microsoft approved root (such as Symantec), an enterprise deployed root or apps that are self-signed. This section covers the steps to configure the device for non-store app deployment.

### Unlock the device for non-Store apps

To deploy app that are not from the Microsoft Store, you must configure the ApplicationManagement/AllowAllTrustedApps policy. This policy allows the installation of non-Store apps on the device provided that there is a chain to a certificate on the device. The app can be signed with a root certificate on the device (such as Symantec Enterprise), an enterprise owned root certificate, or a peer trust certificate deployed on the device. For more information about deploying user license, see [Deploy an offline license to a user](#deploy-an-offline-license-to-a-user).

The AllowAllTrustedApps policy enables the installation apps that are trusted by a certificate in the Trusted People on the device or a root certificate in the Trusted Root of the device. The policy is not configured by default, which means only apps from the Microsoft Store can be installed. If the management server implicitly sets the value to off, the setting is disabled in the settings panel on the device.

For more information about the AllowAllTrustedApps policy, see [Policy CSP](policy-configuration-service-provider.md).

Here are some examples.

``` syntax
<!-- Get policy (Default)-->
<Get>
  <CmdID>1</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/Policy/Result/ApplicationManagement/AllowAllTrustedApps?list=StructData</LocURI>
    </Target>
    </Item>
</Get>
<!-- Update policy -->
<Replace>
  <CmdID>2</CmdID>
  <Item>
    <Target>                        
      <LocURI>./Vendor/MSFT/Policy/Config/ApplicationManagement/AllowAllTrustedApps</LocURI>
    </Target>
    <Meta> 
      <Format>int</Format> 
      <Type>text/plain</Type> 
    </Meta> 
    <Data>1</Data>                        
  </Item>
</Replace>
```

### Unlock the device for developer mode

Development of apps on Windows 10 no longer requires a special license. You can enable debugging and deployment of non-packaged apps using ApplicationManagement/AllowDeveloperUnlock policy in Policy CSP.

AllowDeveloperUnlock policy enables the development mode on the device. The AllowDeveloperUnlock is not configured by default, which means only Microsoft Store apps can be installed. If the management server explicitly sets the value to off, the setting is disabled in the settings panel on the device.

Deployment of apps to Windows 10 for desktop editions requires that there is a chain to a certificate on the device. The app can be signed with a root certificate on the device (such as Symantec Enterprise), an enterprise owned root certificate, or a peer trust certificate deployed on the device. Deployment to Windows 10 Mobile does not validate whether the non-Store apps have a valid root of trust on the device.

For more information about the AllowDeveloperUnlock policy, see [Policy CSP](policy-configuration-service-provider.md).

Here is an example.

``` syntax
<!-- Get policy (Default)-->
<Get>
  <CmdID>1</CmdID>
  <Item>
    <Target>
      <LocURI>./Vendor/MSFT/Policy/Result/ApplicationManagement/AllowDeveloperUnlock?list=StructData</LocURI>
    </Target>
  </Item>
</Get>
<!-- Update policy -->
<Replace>
  <CmdID>2</CmdID>
  <Item>
    <Target>                  
      <LocURI>./Vendor/MSFT/Policy/Config/ApplicationManagement/AllowDeveloperUnlock</LocURI>
    </Target>
    <Meta> 
      <Format>int</Format> 
      <Type>text/plain</Type> 
    </Meta> 
    <Data>1</Data>                        
  </Item>
</Replace>
```

## Install your apps

You can install apps to a specific user or to all users of a device. Apps are installed directly from the Microsoft Store or in some cases from a host location, such as a local disk, UNC path, or HTTPS location. Use the AppInstallation node of the [EnterpriseModernAppManagement CSP](enterprisemodernappmanagement-csp.md) to install apps.

### Deploy apps to user from the Store

To deploy an app to a user directly from the Microsoft Store, the management server performs an Add and Exec commands on the AppInstallation node of the EnterpriseModernAppManagement CSP. This is only supported in the user context and not supported in the device context.

If you purchased an app from the Store for Business and the app is specified for an online license, the app and license must be acquired directly from the Microsoft Store.

Here are the requirements for this scenario:

-   The app is assigned to a user Azure Active Directory (AAD) identity in the Store for Business. You can do this directly in the Store for Business or through a management server.
-   The device requires connectivity to the Microsoft Store.
-   Microsoft Store services must be enabled on the device. Note that the UI for the Microsoft Store can be disabled by the enterprise admin.
-   The user must be signed in with their AAD identity.

Here are some examples.

``` syntax
<Exec>
   <CmdID>1</CmdID>
          <Item>
            <Target>
              <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/StoreInstall</LocURI>
            </Target>
            <Meta>
                <Format xmlns="syncml:metinf">xml</Format>
            </Meta>
            <Data><Application id="{ProductID}" flags="0" skuid=" "/></Data>
          </Item>
</Exec>
```

Here are the changes from the previous release:

1.  The "{CatID}" reference should be updated to "{ProductID}". This value is acquired as a part of the Store for Business management tool.
2.  The value for flags can be "0" or "1"

    When using "0" the management tool calls back to the Store for Business sync to assign a user a seat of an application. When using "1" the management tool does not call back in to the Store for Business sync to assign a user a seat of an application. The CSP will claim a seat if one is available.

3.  The skuid is a new parameter that is required. This value is acquired as a part of the Store for Business to management tool sync.

### Deploy an offline license to a user

If you purchased an app from the Store for Business, the app license must be deployed to the device.

The app license only needs to be deployed as part of the initial installation of the app. During an update, only the app is deployed to the user.

In the SyncML, you need to specify the following information in the Exec command:

-   License ID - This is specified in the LocURI. The License ID for the offline license is referred to as the "Content ID" in the license file. You can retrieve this information from the Base64 encoded license download from the Store for Business.
-   License Content - This is specified in the data section. The License Content is the Base64 encoded blob of the license.

Here is an example of an offline license installation.

``` syntax
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>          
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{LicenseID}/AddLicense</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data><License Content="{LicenseBlob}"></Data>
   </Item>
</Exec>
```

<a href="" id="deploy-from-hosted-loc"></a>
### Deploy apps to a user from a hosted location

If you purchased an app from the Store for Business and the app is specified for an offline license or the app is a non-Store app, the app must be deployed from a hosted location.

Here are the requirements for this scenario:

-   The location of the app can be a local files system (C:\\StagedApps\\app1.appx), a UNC path (\\\\server\\share\\app1.apx), or an HTTPS location (https://contoso.com/app1.appx\_
-   The user must have permission to access the content location. For HTTPs, you can use server authentication or certificate authentication using a certificate associated with the enrollment. HTTP locations are supported, but not recommended because of lack of authentication requirements.
-   The device does not need to have connectivity to the Microsoft Store, store services, or the have the Microsoft Store UI be enabled.
-   The user must be logged in, but association with AAD identity is not required.

> **Note**  You must unlock the device to deploy nonStore apps or you must deploy the app license before deploying the offline apps. For details, see [Deploy an offline license to a user](#deploy-an-offline-license-to-a-user).

 
The Add command for the package family name is required to ensure proper removal of the app at unenrollment.

Here is an example of a line-of-business app installation.

``` syntax
<!-- Add PackageFamilyName -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}</LocURI>
      </Target>
   </Item>
</Add> 
<!-- Install appx -->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data><Application PackageUri="\\server\share\HelloWorld10.appx" /></Data>
   </Item>
</Exec>
```

Here is an example of an app installation with dependencies.

``` syntax
<!-- Add PackageFamilyName -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName</LocURI>
      </Target>
   </Item>
</Add> 
<!-- Install appx with deployment options and framework dependencies-->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data>
         <Application PackageUri="\\server\share\HelloWorld10.appx" DeploymentOptions="0" >
            <Dependencies>
                      <Dependency PackageUri=”\\server\share\HelloWorldFramework.appx” />
                <Dependency PackageUri=”\\server2\share\HelloMarsFramework.appx” />
            </Dependencies>
        </Application>
      </Data>
   </Item>
</Exec>
```

Here is an example of an app installation with dependencies and optional packages.

``` syntax
<!-- Add PackageFamilyName -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName</LocURI>
      </Target>
   </Item>
</Add> 
<!-- Install appx with deployment options and framework dependencies-->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data>
         <Application PackageUri="\\server\share\HelloWorld10.appx" DeploymentOptions="0" >
            <Dependencies>
                <Dependency PackageUri=”\\server\share\HelloWorldFramework.appx” />
                <Dependency PackageUri=”\\server2\share\HelloMarsFramework.appx” />
            </Dependencies>
            <OptionalPackages>
                <Package PackageUri=”\\server\share\OptionalPackage1.appx” 
                         PackageFamilyName="/{PackageFamilyName}" />
                <Package PackageUri=”\\server2\share\OptionalPackage2.appx” 
                         PackageFamilyName="/{PackageFamilyName}" />
            </OptionalPackages>
        </Application>
      </Data>
   </Item>
</Exec>
```

### Provision apps for all users of a device

Provisioning allows you to stage the app to the device and all users of the device can have the app registered on their next login. This is only supported for app purchased from the Store for Business and the app is specified for an offline license or the app is a non-Store app. The app must be offered from a hosted location. The app is installed as a local system. To install to a local file share, the 'local system' of the device must have access to the share.

Here are the requirements for this scenario:

-   The location of the app can be the local files system (C:\\StagedApps\\app1.appx), a UNC path (\\\\server\\share\\app1.apx), or an HTTPS location (https://contoso.com/app1.appx\_
-   The user must have permission to access the content location. For HTTPs, you can use server authentication or certificate authentication using a certificate associated with the enrollment. HTTP locations are supported, but not recommended because of lack of authentication requirements.
-   The device does not need to have connectivity to the Microsoft Store, or store services enabled.
-   The device does not need any AAD identity or domain membership.
-   For nonStore app, your device must be unlocked.
-   For Store offline apps, the required licenses must be deployed prior to deploying the apps.

To provision app for all users of a device from a hosted location, the management server performs an Add and Exec command on the AppInstallation node in the device context. The Add command for the package family name is required to ensure proper removal of the app at unenrollment.

> **Note**  When you remove the provisioned app, it will not remove it from the users that already installed the app.

 

Here is an example of app installation.

> **Note**  This is only supported in Windows 10 for desktop editions.


``` syntax
<!-- Add PackageFamilyName -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName</LocURI>
      </Target>
   </Item>
</Add> 
<!-- Provision appx to device -->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data><Application PackageUri="\\server\share\HelloWorld10.appx" /></Data>
   </Item>
</Exec>
```

The HostedInstall Exec command contains a Data node that requires an embedded XML. Here are the requirements for the data XML:

-   Application node has a required parameter, PackageURI, which can be a local file location, UNC, or HTTPs location.
-   Dependencies can be specified if required to be installed with the package. This is optional.

The DeploymentOptions parameter is only available in the user context.

Here is an example of app installation with dependencies.

> **Note**  This is only supported in Windows 10 for desktop editions.


``` syntax
<!-- Add PackageFamilyName -->
<Add>
   <CmdID>0</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName</LocURI>
      </Target>
   </Item>
</Add> 
<!-- Provision appx with framework dependencies-->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI>
      </Target>
      <Meta>
         <Format xmlns="syncml:metinf">xml</Format>
      </Meta>
      <Data>
         <Application PackageUri="\\server\share\HelloWorld10.appx" />
            <Dependencies>
                     <Dependency PackageUri=”\\server\share\HelloWorldFramework.appx” />
               <Dependency PackageUri="\\server2\share\HelloMarsFramework.appx"/>
            </Dependencies>
         </Application>
      </Data>
   </Item>
</Exec>
```

### Get status of app installations

When an app installation is completed, a Windows notification is sent. You can also query the status of using the AppInstallation node. Here is the list of information you can get back in the query:

-   Status - indicates the status of app installation.
    -   NOT\_INSTALLED (0) - The node was added, but the execution was not completed.
    -   INSTALLING (1) - Execution has started, but the deployment has not completed. If the deployment completes regardless of suceess this value is updated.
    -   FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription.
    -   INSTALLED (3) - Once an install is successful this node is cleaned up, however in the event the clean up actio has not completed, this state may briefly appear.
-   LastError - This is the last error reported by the app deployment server.
-   LastErrorDescription - Describes the last error reported by the app deployment server.
-   Status - This is an integer that indicates the progress of the app installation. In cases of an https location, this shows the estimated download progress.

    Status is not available for provisioning and only used for user-based installations. For provisioning, the value is always 0.

When an app is installed successfully, the node is cleaned up and no longer present. The status of the app can be reported under the AppManagement node.

Here is an example of a query for a specific app installation.

``` syntax
<!-- Get all app status under AppInstallation for a specific app-->
<Get>
   <CmdID>2</CmdID>
   <Item>
      <Target>    
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

Here is an example of a query for all app installations.

``` syntax
<!-- Get all app status under AppInstallation-->
<Get>
   <CmdID>2</CmdID>
   <Item>
      <Target>    
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
```

### Alert for installation completion

Application installations can take some time to complete, hence they are done asynchronously. When the Exec command is completed, the client sends a notification to the management server with a status, whether it's a failure or success.

Here is an example of an alert.

``` syntax
<Alert>
    <CmdID>4</CmdID>
    <Data>1226</Data>
        <Item>
            <Source>
                <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/HostedInstall</LocURI> 
            </Source>
            <Meta>
                <Type xmlns="syncml:metinf">Reversed-Domain-Name:com.microsoft.mdm.EnterpriseHostedAppInstall.result</Type>
                <Format xmlns="syncml:metinf">int</Format>
            </Meta>
            <Data>0</Data>
        </Item>
</Alert>
```

For user-based installation, use the ./User path and for provisioning of apps, use the ./Device path.

The Data field value of 0 (zero) indicates sucess, otherwise it is an error code. If there is a failure, you can get more details from the AppInstallation node.

> **Note**  At this time, the alert for Store app installation is not yet available.


## Uninstall your apps

You can uninstall apps from users from Windows 10 devices. To uninstall an app, you delete it from the AppManagement node of the CSP. Within the AppManagement node, packages are organized based on their origin according to the following nodes:

-   AppStore - These apps are for the Microsoft Store. Apps can be directly installed from the store or delivered to the enterprise from the Store for Business.
-   nonStore - These apps that were not acquired from the Microsoft Store.
-   System - These apps are part of the OS. You cannot uninstall these apps.

To uninstall an app, you delete it under the origin node, package family name, and package full name. To uninstall a XAP, use the product ID in place of the package family nane and package full name.

Here is an example for uninstalling all versions of an app for a user.

``` syntax
<!-- Uninstall App for a Package Family-->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}</LocURI>
      </Target>
   </Item>
</Delete>
```

Here is an example for uninstalling a specific version of the app for a user.

``` syntax
<!-- Uninstall App for a specific package full name-->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}</LocURI>
      </Target>
   </Item>
</Delete>
```

### Removed provisioned apps from a device

You can remove provisioned apps from a device for a specific version or for all versions of a package family. When a provisioned app is removed, it is not available to future users for the device. Logged in users who has the app registered to them will continue to have access to the app. If you want to removed the app for those users, you must explicitly uninstall the app for those users.

> **Note**  You can only remove an app that has an inventory value IsProvisioned = 1.

 
Removing provisioned app occurs in the device context.

Here is an example for removing a provisioned app from a device.

``` syntax
<!— Remove Provisioned App for a Package Family-->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}</LocURI>
      </Target>
   </Item>
</Delete>
```

Here is an example for removing a specific version of a provisioned app from a device:

``` syntax
<!-- Remove Provisioned App for a specific package full name-->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/{PackageFullName}</LocURI>
      </Target>
   </Item>
</Delete>
```

### Remove a store app license

You can remove app licenses from a device per app based on the content ID.

Here is an example for removing an app license for a user.

``` syntax
<!-- Remove App License for a User-->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{license id}</LocURI>
      </Target>
   </Item>
</Delete>
```

Here is an example for removing an app license for a provisioned package (device context).

``` syntax
<!-- Remove App License for a provisioned package (device) -->
<Delete>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppLicenses/StoreLicenses/{license id}</LocURI>
      </Target>
   </Item>
</Delete>
```

### Alert for app uninstallation

Uninstallation of an app can take some time complete, hence the uninstallation is performed asynchronously. When the Exec command is completed, the client sends a notification to the management server with a status, whether it's a failure or success.

For user-based uninstallation, use ./User in the LocURI, and for provisioning, use ./Device in the LocURI.

Here is an example. There is only one uninstall for hosted and store apps.

``` syntax
<Alert>
    <Data>1226</Data>
    <Item>
        <Source>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/{PackageFamilyName}</LocURI>
        </Source>
        <Meta>
            <Type xmlns="syncml:metinf">Reversed-Domain-Name:com.microsoft.mdm.EnterpriseAppUninstall.result</Type>
            <Format xmlns="syncml:metinf">int</Format>
        </Meta>
        <Data>0</Data>
    </Item>
</Alert>
```

## Update your apps

Apps installed on a device can be updated using the management server. Apps can be updated directly from the store or installed from a hosted location.

### Update apps directly from the store

To update an app from Microsoft Store, the device requires contact with the store services.

Here is an example of an update scan.

``` syntax
<!— Initiate a update scan for a user-->
<Exec>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/UpdateScan</LocURI>
      </Target>
   </Item>
</Exec>
```

Here is an example of a status check.

``` syntax
<!— Get last error related to the update scan-->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/LastScanError</LocURI>
      </Target>
   </Item>
</Get>
```

### Update apps from a hosted location

Updating an existing app follows the same process as an initial installation. For more information, see [Deploy apps to a user from a hosted location](#deploy-apps-to-a-user-from-a-hosted-location).


### Update provisioned apps

A provisioned app automatically updates when an app update is sent to the user. You can also update a provisioned app using the same process as an initial provisioning. For more information about initial provisioning, see [Provision apps for all users of a device](#provision-apps-for-all-users-of-a-device).

### Prevent app from automatic updates

You can prevent specific apps from being automatically updated. This allows you to turn on auto-updates for apps, with specific apps excluded as defined by the IT admin.

Turning off updates only applies to updates from the Microsoft Store at the device level. This feature is not available at a user level. You can still update an app if the offline packages is pushed from hosted install location.

Here is an example.

``` syntax
<!— Prevent app from being automatically updated-->
<Replace>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}/DoNotUpdate</LocURI>
         </Target>
      <Meta>
         <Format xmlns="syncml:metinf">int</Format>
         <Type xmlns="syncml:metinf">text/plain</Type>
      </Meta>
      <Data>1</Data></Item>
</Replace>
```

## Additional app management scenarios

The following subsections provide information about additional settings configurations.

### Restrict app installation to the system volume

You can install app on non-system volumes, such as a secondary partition or removable media (USB or SD cards). Using the RestrictApptoSystemVolume policy, you can prevent apps from getting installed or moved to non-system volumes. For more information about this policy, see [Policy CSP](policy-configuration-service-provider.md).

> **Note**  This is only supported in mobile devices.


Here is an example.

``` syntax
<!-- Get policy (Default)-->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/Policy/Result/ApplicationManagement/RestrictAppToSystemVolume?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
<!-- Update policy -->
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/Policy/Config/ApplicationManagement/RestrictAppToSystemVolume</LocURI>
      </Target>
   <Meta> 
      <Format>int</Format> 
      <Type>text/plain</Type> 
   </Meta> 
   <Data>1</Data>                        
</Item>
</Replace>
```

### Restrict AppData to the system volume

In Windows 10 Mobile IT administrators can set a policy to restrict user application data for a Microsoft Store app to the system volume, regardless of where the package is installed or moved.

> **Note**  The feature is only for Windows 10 Mobile.

 
The RestrictAppDataToSystemVolume policy in [Policy CSP](policy-configuration-service-provider.md) enables you to restrict all user application data to stay on the system volume. When the policy is not configured or if it is disabled, and you move a package or when it is installed to a difference volume, then the user application data will moved to the same volume. You can set this policy to 0 (off, default) or 1.

Here is an example.

``` syntax
<!-- Get policy (Default)-->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/Policy/Result/ApplicationManagement/RestrictAppDataToSystemVolume?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
<!-- Update policy -->
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>                  
         <LocURI>./Vendor/MSFT/Policy/Config/ApplicationManagement/RestrictAppDataToSystemVolume</LocURI>
      </Target>
   <Meta> 
      <Format>int</Format> 
      <Type>text/plain</Type> 
   </Meta> 
   <Data>1</Data>                        
   </Item>
</Replace>
```

### Enable shared user app data

The Universal Windows app has the ability to share application data between the users of the device. The ability to share data can be set at a package family level or per device.

> **Note**  This is only applicable to multi-user devices.


The AllowSharedUserAppData policy in [Policy CSP](policy-configuration-service-provider.md) enables or disables app packages to share data between app packages when there are multiple users. If you enable this policy, applications can share data between packages in their package family. Data can be shared through ShareLocal folder for that package family and local machine. This folder is available through the Windows.Storage API.

If you disable this policy, applications cannot share user application data among multiple users. However, pre-written shared data will persist. The clean pre-written shared data, use DISM ((/Get-ProvisionedAppxPackage to detect if there is any shared data, and /Remove-SharedAppxData to remove it).

The valid values are 0 (off, default value) and 1 (on).

Here is an example.

``` syntax
<!-- Get policy (Default)-->
<Get>
   <CmdID>1</CmdID>
   <Item>
      <Target>
         <LocURI>./Vendor/MSFT/Policy/Result/ApplicationManagement/AllowSharedUserAppData?list=StructData</LocURI>
      </Target>
   </Item>
</Get>
<!-- Update policy -->
<Replace>
   <CmdID>2</CmdID>
   <Item>
      <Target>                  
         <LocURI>./Vendor/MSFT/Policy/Config/ApplicationManagement/AllowSharedUserAppData</LocURI>
      </Target>
   <Meta> 
      <Format>int</Format> 
      <Type>text/plain</Type> 
   </Meta> 
   <Data>1</Data>                        
   </Item>
</Replace>
```

 






