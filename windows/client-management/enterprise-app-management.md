---
title: Enterprise app management
description: This article covers one of the key mobile device management (MDM) features for managing the lifecycle of apps across Windows devices.
ms.topic: conceptual
ms.date: 07/08/2024
---

# Enterprise app management

This article discusses one of the key features of Windows' Mobile Device Management (MDM) capabilities: the ability to manage apps' lifecycle on all Windows devices. This includes both Store and non-Store apps, which can be managed natively through MDM.

By using Windows MDM to manage app lifecycles, administrators can deploy and manage updates, remove outdated or unused apps, and ensure that all devices have the necessary apps installed to meet the organization's needs. This feature streamlines the app management process and saves time and effort for IT professionals.

## Application management goals

Windows offers the ability for management servers to:

- Install apps directly from the Microsoft Store for Business
- Deploy offline Store apps and licenses
- Deploy line-of-business (LOB) apps (non-Store apps)
- Inventory all apps for a user (Store and non-Store apps)
- Inventory all apps for a device (Store and non-Store apps)
- Uninstall all apps for a user (Store and non-Store apps)
- Provision apps so they're installed for all users of a device running Windows desktop editions (Home, Pro, Enterprise, and Education)
- Remove the provisioned app on the device running Windows desktop editions

## Inventory apps

Windows lets you inventory all apps deployed to a user, and inventory all apps for all users of a Windows device. The [EnterpriseModernAppManagement](mdm/enterprisemodernappmanagement-csp.md) configuration service provider (CSP) inventories packaged apps and doesn't include traditional Win32 apps installed via MSI or executables. When the apps are inventoried, they're separated based on the following app classifications:

- **Store**: Apps that have been acquired from the Microsoft Store, either directly or delivered with the enterprise from the Store for Business.
- **nonStore**: Apps that weren't acquired from the Microsoft Store.
- **System**: Apps that are part of the operating system and can't be uninstalled. This classification is read-only and can only be inventoried.

Each app is identified by one package family name and one or more package full names, and the apps are grouped based on their origin. The EnterpriseModernAppManagement CSP displays these classifications as nodes.

Inventory can be run recursively at any level from the AppManagement node through the package full name. You can also choose to inventory specific attributes only. The inventory is specific to the package full name and lists bundled and resource packs as applicable under the package family name.

For more information on each node, see the detailed descriptions provided in the [EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md).

### App inventory

You can use the EnterpriseModernAppManagement CSP to query for all apps installed for a user or device. The query returns all apps, even if they were installed using MDM or other methods. Inventory can run at the user or device level. Inventory at the device level returns information for all users on the device.

Doing a full inventory of a device can be resource-intensive based on the hardware and number of apps that are installed. The data returned can also be large. You may want to chunk these requests to reduce the impact to clients and network traffic.

- Example query for all apps on the device.

    ```xml
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

- Example query for a specific app for a user.

    ```xml
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

You can use the EnterpriseModernAppManagement CSP to query for all app licenses installed for a user or device. The query returns all app licenses, event if they were installed via MDM or other methods. Inventory can run at the user or device level. Inventory at the device level returns information for all users on the device.

For detailed descriptions of each node, see [EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md).

> [!NOTE]
> The LicenseID in the CSP is the content ID for the license.

- Here's an example of a query for all app licenses on a device.

    ```xml
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

- Here's an example of a query for all app licenses for a user.

    ```xml
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

There are two basic types of apps you can deploy:

- Store apps.
- Enterprise signed apps.

To deploy enterprise signed apps, you must enable a setting on the device to allow trusted apps. The apps can be signed by a Microsoft approved root (such as Symantec), an enterprise deployed root, or apps that are self-signed. This section covers the steps to configure the device for nonstore app deployment.

### Unlock the device for non-Store apps

To deploy apps that aren't from the Microsoft Store, you must configure the [ApplicationManagement/AllowAllTrustedApps](mdm/policy-csp-applicationmanagement.md) policy. This policy allows the installation of non-Store apps on the device if there's a chain to a certificate on the device. The app can be signed with a root certificate on the device (such as Symantec Enterprise), an enterprise owned root certificate, or a peer trust certificate deployed on the device. For more information about deploying user license, see [Deploy an offline license to a user](#deploy-an-offline-license-to-a-user).

The AllowAllTrustedApps policy enables the installation of apps that are trusted by a certificate in the Trusted People on the device, or a root certificate in the Trusted Root of the device. The policy isn't configured by default, which means only apps from the Microsoft Store can be installed. If the management server implicitly sets the value to off, the setting is disabled in the settings panel on the device.

Here's an example:

```xml
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

Development of apps on Windows devices no longer requires a special license. You can enable debugging and deployment of nonpackaged apps using [ApplicationManagement/AllowDeveloperUnlock](mdm/policy-csp-applicationmanagement.md) policy in Policy CSP.

AllowDeveloperUnlock policy enables the development mode on the device. The AllowDeveloperUnlock isn't configured by default, which means only Microsoft Store apps can be installed. If the management server explicitly sets the value to off, the setting is disabled in the settings panel on the device.

Deployment of apps to Windows devices requires that there's a chain to a certificate on the device. The app can be signed with a root certificate on the device (such as Symantec Enterprise), an enterprise owned root certificate, or a peer trust certificate deployed on the device.

Here's an example.

```xml
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

## Install apps

You can install apps to a specific user or to all users of a device. Apps are installed directly from the Microsoft Store. Or, they're installed from a host location, such as a local disk, UNC path, or HTTPS location. Use the AppInstallation node of the [EnterpriseModernAppManagement CSP](mdm/enterprisemodernappmanagement-csp.md) to install apps.

### Deploy apps to user from the Store

To deploy an app to a user directly from the Microsoft Store, the management server runs an Add and Exec command on the AppInstallation node of the EnterpriseModernAppManagement CSP. This feature is only supported in the user context, and not supported in the device context.

If you purchased an app from the Store for Business and the app is specified for an online license, then the app and license must be acquired directly from the Microsoft Store.

Here are the requirements for this scenario:

- The app is assigned to a user Microsoft Entra identity in the Store for Business. You can assign directly in the Store for Business or through a management server.
- The device requires connectivity to the Microsoft Store.
- Microsoft Store services must be enabled on the device. The UI for the Microsoft Store can be disabled by the enterprise admin.
- The user must be signed in with their Microsoft Entra identity.

Here's an example:

```xml
<Exec>
  <CmdID>1</CmdID>
  <Item>
    <Target>
      <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppInstallation/{PackageFamilyName}/StoreInstall</LocURI>
    </Target>
    <Meta>
      <Format xmlns="syncml:metinf">xml</Format>
    </Meta>
    <Data>
      <Application id="{ProductID}" flags="0" skuid=" " />
    </Data>
  </Item>
</Exec>
```

Here are the changes from the previous release:

1. The `{CatID}` reference should be updated to `{ProductID}`. This value is acquired as a part of the Store for Business management tool.
1. The value for flags can be 0 or 1.
   - **0**: The management tool calls back to the Store for Business sync to assign a user a seat of an application.
   - **1**: The management tool doesn't call back in to the Store for Business sync to assign a user a seat of an application. The CSP claims a seat if one is available.
1. The `skuid` is a new parameter that is required. This value is acquired as a part of the Store for Business to management tool sync.

### Deploy an offline license to a user

If you purchased an app from the Store for Business, the app license must be deployed to the device. The app license only needs to be deployed as part of the initial installation of the app. During an update, only the app is deployed to the user.

In the SyncML, you need to specify the following information in the `Exec` command:

- License ID - This ID is specified in the LocURI. The License ID for the offline license is referred to as the "Content ID" in the license file. You can retrieve this information from the Base 64 encoded license download from the Store for Business.
- License Content - This content is specified in the data section. The License Content is the Base 64 encoded blob of the license.

Here's an example of an offline license installation.

```xml
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

### Deploy apps to a user from a hosted location

If you purchased an app from the Store for Business and the app is specified for an offline license or the app is a non-Store app, the app must be deployed from a hosted location.

Here are the requirements for this scenario:

- The location of the app can be a local files system (C:\\StagedApps\\app1.appx), a UNC path (\\\\server\\share\\app1.apx), or an HTTPS location (`https://contoso.com/app1.appx`).
- The user must have permission to access the content location. For HTTPs, you can use server authentication or certificate authentication using a certificate associated with the enrollment. HTTP locations are supported, but not recommended because of lack of authentication requirements.
- The device doesn't need to have connectivity to the Microsoft Store, store services, or have the Microsoft Store UI be enabled.
- The user must be logged in, but association with Microsoft Entra identity isn't required.

> [!NOTE]
> You must unlock the device to deploy nonStore apps or you must deploy the app license before deploying the offline apps. For details, see [Deploy an offline license to a user](#deploy-an-offline-license-to-a-user).

The Add command for the package family name is required to ensure proper removal of the app at unenrollment.

- Here's an example of a line-of-business app installation.

    ```xml
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

- Here's an example of an app installation with dependencies.

    ```xml
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
                          <Dependency PackageUri="\\server\share\HelloWorldFramework.appx" />
                    <Dependency PackageUri="\\server2\share\HelloMarsFramework.appx" />
                </Dependencies>
            </Application>
          </Data>
       </Item>
    </Exec>
    ```

- Here's an example of an app installation with dependencies and optional packages.

    ```xml
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
                    <Dependency PackageUri="\\server\share\HelloWorldFramework.appx" />
                    <Dependency PackageUri="\\server2\share\HelloMarsFramework.appx" />
                </Dependencies>
                <OptionalPackages>
                    <Package PackageUri="\\server\share\OptionalPackage1.appx"
                             PackageFamilyName="/{PackageFamilyName}" />
                    <Package PackageUri="\\server2\share\OptionalPackage2.appx"
                             PackageFamilyName="/{PackageFamilyName}" />
                </OptionalPackages>
            </Application>
          </Data>
       </Item>
    </Exec>
    ```

### Provision apps for all users of a device

Provisioning allows you to stage the app to the device and all users of the device can have the app registered on their next sign in. This feature is only supported for app purchased from the Store for Business, and the app is specified for an offline license or the app is a non-Store app. The app must be offered from a hosted location. The app is installed as a local system. To install to a local file share, the 'local system' of the device must have access to the share.

Here are the requirements for this scenario:

- The location of the app can be the local files system (C:\\StagedApps\\app1.appx), a UNC path (\\\\server\\share\\app1.apx), or an HTTPS location (`https://contoso.com/app1.appx\`)
- The user must have permission to access the content location. For HTTPs, you can use server authentication or certificate authentication using a certificate associated with the enrollment. HTTP locations are supported, but not recommended because of lack of authentication requirements.
- The device doesn't need to have connectivity to the Microsoft Store, or store services enabled.
- The device doesn't need any Microsoft Entra identity or domain membership.
- For nonStore app, your device must be unlocked.
- For Store offline apps, the required licenses must be deployed before deploying the apps.

To provision app for all users of a device from a hosted location, the management server runs an Add and Exec command on the AppInstallation node in the device context. The Add command for the package family name is required to ensure proper removal of the app at unenrollment.

> [!NOTE]
> When you remove the provisioned app, it will not remove it from the users that already installed the app.

- Here's an example of app installation:

   ```xml
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

  - Application node has a required parameter, PackageURI, which can be a local file location, UNC, or HTTPS location.
  - Dependencies can be specified if necessary to be installed with the package. This is optional.

  The DeploymentOptions parameter is only available in the user context.

- Here's an example of app installation with dependencies.

   ```xml
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
                        <Dependency PackageUri="\\server\share\HelloWorldFramework.appx" />
                  <Dependency PackageUri="\\server2\share\HelloMarsFramework.appx"/>
               </Dependencies>
            </Application>
         </Data>
      </Item>
   </Exec>
   ```

### Get status of app installations

When an app installation is completed, a Windows notification is sent. You can also query the status of using the AppInstallation node. Here's the list of information you can get back in the query:

- Status - indicates the status of app installation.
  - NOT\_INSTALLED (0) - The node was added, but the execution wasn't completed.
  - INSTALLING (1) - Execution has started, but the deployment hasn't completed. If the deployment completes regardless of success, then this value is updated.
  - FAILED (2) - Installation failed. The details of the error can be found under LastError and LastErrorDescription.
  - INSTALLED (3) - Once an install is successful this node is cleaned up. If the clean-up action hasn't completed, then this state may briefly appear.
- LastError - The last error reported by the app deployment server.
- LastErrorDescription - Describes the last error reported by the app deployment server.
- Status - An integer that indicates the progress of the app installation. In cases of an HTTPS location, this status shows the estimated download progress. Status isn't available for provisioning and only used for user-based installations. For provisioning, the value is always 0.

When an app is installed successfully, the node is cleaned up and no longer present. The status of the app can be reported under the [AppManagement node](mdm/enterprisemodernappmanagement-csp.md#deviceappmanagement).

- Here's an example of a query for a specific app installation.

   ```xml
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

- Here's an example of a query for all app installations.

   ```xml
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

Application installations can take some time to complete. So, they're done asynchronously. When the Exec command is completed, the client sends a notification to the management server with a status, whether it's a failure or success.

Here's an example of an alert.

```xml
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

For user-based installation, use the `./User` path and for provisioning of apps, use the `./Device` path.

The Data field value of 0 (zero) indicates success. Otherwise it's an error code. If there's a failure, you can get more details from the AppInstallation node.

> [!NOTE]
> At this time, the alert for Store app installation isn't available.

## Uninstall your apps

You can uninstall apps from users from Windows devices. To uninstall an app, you delete it from the AppManagement node of the CSP. Within the AppManagement node, packages are organized based on their origin according to the following nodes:

- AppStore - These apps are for the Microsoft Store. Apps can be directly installed from the store or delivered to the enterprise from the Store for Business.
- nonStore - These apps that weren't acquired from the Microsoft Store.
- System - These apps are part of the OS. You can't uninstall these apps.

To uninstall an app, you delete it under the origin node, package family name, and package full name. To uninstall a XAP, use the product ID in place of the package family name and package full name.

 Here's an example for uninstalling all versions of an app for a user.

   ```xml
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

-Here's an example for uninstalling a specific version of the app for a user.

   ```xml
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

You can remove provisioned apps from a device for a specific version, or for all versions of a package family. When a provisioned app is removed, it isn't available to future users for the device. Logged in users who have the app registered to them continue to have access to the app. If you want to remove the app for those users, you must explicitly uninstall the app for those users.

> [!NOTE]
> You can only remove an app that has an inventory value IsProvisioned = 1.

Removing provisioned app occurs in the device context.

- Here's an example for removing a provisioned app from a device.

   ```xml
   <!- Remove Provisioned App for a Package Family-->
   <Delete>
      <CmdID>1</CmdID>
      <Item>
         <Target>
            <LocURI>./Device/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/AppStore/{PackageFamilyName}</LocURI>
         </Target>
      </Item>
   </Delete>
   ```

- Here's an example for removing a specific version of a provisioned app from a device:

   ```xml
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

- Here's an example for removing an app license for a user.

   ```xml
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

- Here's an example for removing an app license for a provisioned package (device context).

   ```xml
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

### Alert for app uninstall

Uninstallation of an app can take some time complete. So, the uninstall is run asynchronously. When the Exec command is completed, the client sends a notification to the management server with a status, whether it's a failure or success.

For user-based uninstallation, use ./User in the LocURI, and for provisioning, use ./Device in the LocURI.

Here's an example. There's only one uninstall for hosted and store apps.

```xml
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

- Here's an example of an update scan.

   ```xml
   <!- Initiate a update scan for a user-->
   <Exec>
      <CmdID>1</CmdID>
      <Item>
         <Target>
            <LocURI>./User/Vendor/MSFT/EnterpriseModernAppManagement/AppManagement/UpdateScan</LocURI>
         </Target>
      </Item>
   </Exec>
   ```

- Here's an example of a status check.

   ```xml
   <!- Get last error related to the update scan-->
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

You can prevent specific apps from being automatically updated. This feature allows you to turn on auto-updates for apps, with specific apps excluded as defined by the IT admin.

Turning off updates only applies to updates from the Microsoft Store at the device level. This feature isn't available at a user level. You can still update an app if the offline packages are pushed from hosted install location.

Here's an example.

```xml
<!- Prevent app from being automatically updated-->
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

## More app management scenarios

The following subsections provide information about more settings configurations.

### Enable shared user app data

The Universal Windows app can share application data between the users of the device. The ability to share data can be set at a package family level or per device.

> [!NOTE]
> This is only applicable to multi-user devices.

The [ApplicationManagement/AllowSharedUserAppData](mdm/policy-csp-applicationmanagement.md) policy enables or disables app packages to share data between app packages when there are multiple users. If you enable this policy, applications can share data between packages in their package family. Data can be shared through ShareLocal folder for that package family and local machine. This folder is available through the Windows.Storage API.

If you disable this policy, applications can't share user application data among multiple users. However, prewritten shared data persists. To clean prewritten shared data, use DISM (`/Get-ProvisionedAppxPackage` to detect if there's any shared data, and `/Remove-SharedAppxData` to remove it).

The valid values are 0 (off, default value) and 1 (on).

Here's an example.

```xml
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
