---
title: Deploy and configure App-V apps using MDM
description: Deploy and configure App-V apps using MDM
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 06/26/2017
ms.reviewer: 
manager: dansimp
---

# Deploy and configure App-V apps using MDM

## Executive summary

<p>Microsoft Application Virtualization (App-V) apps have typically been configured, deployed, and managed through on-premises group policies using System Center Configuration Manager (SCCM) or App-V server. In Windows 10, version 1703, App-V apps can be configured, deployed, and managed using mobile device management (MDM), matching their on-premises counterparts.</p>

<p>MDM services can be used to publish App-V packages to clients running Windows 10, version 1703 (or later). All capabilities such as App-V enablement, configuration, and publishing can be completed using the EnterpriseAppVManagement CSP.</p>

### EnterpriseAppVManagement CSP node structure

[EnterpriseAppVManagement CSP reference](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/enterpriseappvmanagement-csp)

![enterpriseappvmanagement csp](images/provisioning-csp-enterpriseappvmanagement.png)

<p>(./User/Vendor/MSFT/EnterpriseAppVManagement) contains the following sub-nodes.</p>

<p><b>AppVPublishing</b> - An exec action node that contains the App-V publishing configuration for an MDM device (applied globally to all users for that device) or a specific MDM user.</p>

- EnterpriseAppVManagement
  - AppVPackageManagement
  - **AppVPublishing**
    - LastSync
	  - LastError
	  - LastErrorDescription
	  - SyncStatusDescription
	  - SyncProgress
	- Sync
	  - PublishXML
  - AppVDynamicPolicy

<p>Sync command:</p>

[App-V Sync protocol reference]( https://msdn.microsoft.com/enus/library/mt739986.aspx)

<p><b>AppVDynamicPolicy</b> - A read/write node that contains the App-V dynamic configuration for an MDM device (applied globally to all users for that device) or a specific MDM user.</p>

- EnterpriseAppVManagement
  - AppVPackageManagement
  - AppVPublishing
  - **AppVDynamicPolicy**
    - [ConfigurationId]
	  - Policy

<p>Dynamic policy examples:</p>

[Dynamic configuration processing](https://technet.microsoft.com/itpro/windows/manage/appv-application-publishing-and-client-interaction#bkmk-dynamic-config">Dynamic configuration processing)

<p><b>AppVPackageManagement</b> - Primarily read-only App-V package inventory data for MDM servers to query current packages.</p>

- EnterpriseAppVManagement
  - **AppVPackageManagement**
    - [EnterpriseID]
	  - [PackageFamilyName]
	    - [PackageFullName]
		  - Name
		  - Version
		  - Publisher
		  - InstallLocation
		  - InstallDate
		  - Users
		  - AppVPackageID
		  - AppVVersionId
		  - AppVPackageUri
  - AppVPublishing
  - AppVDynamicPolicy

<p>The examples in the scenarios section demonstrate how the publishing document should be created to successfully publish packages, dynamic policies, and connection groups.</p>

## Scenarios addressed in App-V MDM functionality

<p>All App-V group policies will be reflected by having a corresponding CSP that can be set using the Policy CSP. The CSPs match all on-premises App-V configuration capabilities. In addition, new App-V package management capability has been added to closely match the App-V PowerShell functionality.</p>

<p>A complete list of App-V policies can be found here:</p>

[ADMX-backed policy reference](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-admx-backed)

[EnterpriseAppVManagement CSP reference](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/enterpriseappvmanagement-csp)

### SyncML examples

<p>The following SyncML examples address specific App-V client scenarios.</p>

#### Enable App-V client

<p>This example shows how to enable App-V on the device.</p>

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Meta>
			<Format>chr</Format>
			<Type>text/plain</Type>
		</Meta>
		<Target>
			<LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowAppvClient</LocURI>
		</Target>
		<Data><enabled/></Data>
	</Item>
</Replace>
```

#### Configure App-V client

<p>This example shows how to allow package scripts to run during package operations (publish, run, and unpublish).  Allowing package scripts assists in package deployments (add and publish of App-V apps).</p>

``` syntax
<Replace> 
	<CmdID>$CmdID$</CmdID> 
	<Item> 
		<Meta> 
			<Format>chr</Format> 
			<Type>text/plain</Type> 
		</Meta> 
		<Target> 
			<LocURI>./Device/Vendor/MSFT/Policy/Config/AppVirtualization/AllowPackageScripts</LocURI> 
		</Target> 
		<Data><enabled/></Data> 
	</Item> 
</Replace> 
```

<p>Complete list of App-V policies can be found here:</p>

[Policy CSP](https://msdn.microsoft.com/windows/hardware/commercialize/customize/mdm/policy-configuration-service-provider)

#### SyncML with package published for a device (global to all users for that device)

<p>This SyncML example shows how to publish a package globally on an MDM enrolled device for all device users.</p>

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXM L</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages>
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="fd6b51c7-959e-4d04-ac36-a8244a5693d0" PackageId="565d8479-394d-439c-824d0e09b7ee732c"/>
				</Packages>
				<NoGroup>
					<Package PackageId="565d8479-394d-439c-824d0e09b7ee732c"/>
				</NoGroup> 
			</Publishing>
		</Data>
	</Item>
</Exec> 
```

<p>*PackageUrl can be a UNC or HTTP/HTTPS endpoint.</p>

#### SyncML with package (with dynamic configuration policy) published for a device (global to all users on that device)

<p>This SyncML example shows how to publish a package globally, with a policy that adds two shortcuts for the package, on an MDM enrolled device.</p>

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVDynamicPolicy/38/Policy</ LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<DeploymentConfiguration PackageId="57650ac1-1731-4b4c-899ca25548374dab" DisplayName="Skype_RS2Win10_X64" xmlns="http://schemas.microsoft.com/appv/2010/deploymentconfiguration">
				<MachineConfiguration></MachineConfiguration>
				<UserConfiguration>
					<Subsystems>
						<Shortcuts Enabled="true">
							<Extensions>
								<Extension Category="AppV.Shortcut">
									<Shortcut>
										<File>[{ThisPCDesktopFolder}]\Skype_FromMDM.lnk</File>
										<Target>[{ProgramFilesX86}]\Skype\Phone\Skype.exe</Target>
										<Icon>[{Windows}]\Installer\{FC965A47-4839-40CA-B61818F486F042C6}\SkypeIcon.exe.0.ico</Icon>
										<Arguments/>
										<WorkingDirectory>[{ProgramFilesX86}]\Skype\</WorkingDirectory> 
										<AppUserModelId>Skype.Desktop.Application</AppUserModelId>
										<Description>Launch Skype</Description>
										<ShowCommand>1</ShowCommand>
										<ApplicationId>[{ProgramFilesX86}]\Skype\Phone\Skype.exe</ApplicationId>
									</Shortcut>
								</Extension>
								<Extension Category="AppV.Shortcut">
									<Shortcut>
										<File>[{Common Desktop}]\Skype_FromMDMAlso.lnk</File>
										<Target>[{ProgramFilesX86}]\Skype\Phone\Skype.exe</Target>
										<Icon>[{Windows}]\Installer\{FC965A47-4839-40CA-B61818F486F042C6}\SkypeIcon.exe.0.ico</Icon>
										<Arguments/>
										<WorkingDirectory>[{ProgramFilesX86}]\Skype\</WorkingDirectory>
										<AppUserModelId>Skype.Desktop.Application</AppUserModelId>
										<Description>Launch Skype</Description>
										<ShowCommand>1</ShowCommand>
										<ApplicationId>[{ProgramFilesX86}]\Skype\Phone\Skype.exe</ApplicationId>
									</Shortcut>
								</Extension>
							</Extensions>
						</Shortcuts>
					</Subsystems>
				</UserConfiguration>
			</DeploymentConfiguration>
		</Data>
	</Item>
</Replace>
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXM L</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages>
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="05fcf098-c949-4ea4-9aee-757abd33e0e4" PackageId="57650ac11731-4b4c-899c-a25548374dab">
						<DeploymentConfiguration ConfigurationId="38" Path="38" Timestamp="2012-08-27T16:14:30.87" /></Package>
				</Packages>
				<NoGroup>
					<Package PackageId="57650ac1-1731-4b4c-899ca25548374dab"/>
				</NoGroup>
			</Publishing>
		</Data>
	</Item>
</Exec>
```

<p>*PackageUrl can be a UNC or HTTP/HTTPS endpoint.</p>

#### SyncML with package (using user config deployment) published for a specific user

<p>This SyncML example shows how to publish a package for a specific MDM user.</p>

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./User/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./User/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXML< /LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages>
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="c68b054c-ff5f-45a6-9b41-788f2194e3c1" PackageId="e9a51aaf-5d9a48df-96e2-3372a278bca4"></Package>
				</Packages>
				<NoGroup>
					<Package PackageId="e9a51aaf-5d9a-48df-96e23372a278bca4"/>
				</NoGroup>
			</Publishing>
		</Data>
	</Item>
</Exec> 
```	

#### SyncML for publishing mixed-mode connection group containing global and user-published packages

<p>This SyncML example shows how to publish a connection group, and group applications and plugins together.</p>

> [!NOTE]
> The user connection group has the user-only package as optional in this example, which implies users without the optional package can continue to launch the global package within the same connection group.

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXM L</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages>
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="05fcf098-c949-4ea4-9aee-757abd33e0e4" PackageId="57650ac11731-4b4c-899c-a25548374dab"></Package>
				</Packages>
			</Publishing>
		</Data>
	</Item>
</Exec>
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./User/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
	<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./User/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXML< /LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages> 
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="c68b054c-ff5f-45a6-9b41-788f2194e3c1" PackageId="e9a51aaf-5d9a48df-96e2-3372a278bca4"></Package>
					<Package PackageUrl="http://hostname/serverpackages/apppackage.appv" VersionId="fd6b51c7-959e-4d04-ac36-a8244a5693d0" PackageId="565d8479-394d-439c-824d0e09b7ee732c"></Package>
				</Packages>
				<NoGroup>
					<Package PackageId="565d8479-394d-439c-824d0e09b7ee732c"/>
				</NoGroup>
				<Groups>
					<Group GroupId="98d5cebd-165f-403b-a426-7a1f6ae9c399" VersionId="AE76602B-5613-4BAD-9EE5-1728FA55B699" Priority="46" Name="Try7">
						<Package PackageId="57650ac1-1731-4b4c-899ca25548374dab" VersionId="05fcf098-c949-4ea4-9aee-757abd33e0e4" VersionOptional="false" PackageOptional="false"/>
						<Package PackageId="e9a51aaf-5d9a-48df-96e23372a278bca4" VersionOptional="true" PackageOptional="true"/>
					</Group>
				</Groups>
			</Publishing>
		</Data>
	</Item>
</Exec> 
```

#### Unpublish example SyncML for all global packages

<p>This SyncML example shows how to unpublish all global packages on the device by sending an empty package and connection group list in the SyncML.</p>

``` syntax
<Replace>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">node</Format>
		</Meta>
	</Item>
</Replace>
<Exec>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPublishing/Sync/PublishXML</LocURI>
		</Target>
		<Meta>
			<Format xmlns="syncml:metinf">xml</Format>
			<Type xmlns="syncml:metinf">text/plain</Type>
		</Meta>
		<Data>
			<Publishing Protocol="2.0">
				<Packages></Packages>
				<NoGroup></NoGroup>
			</Publishing>
		</Data>
	</Item>
</Exec>
```

#### Query packages on a device

<p>These SyncML examples return all global, and user-published packages on the device.</p>

``` syntax
<Get>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./Device/Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement?list=StructData</LocURI>
		</Target>
	</Item>
</Get>
```

``` syntax
<Get>
	<CmdID>$CmdID$</CmdID>
	<Item>
		<Target>
			<LocURI>./User/Vendor/MSFT/EnterpriseAppVManagement/AppVPackageManagement?list=StructData</LocURI>
		</Target>
	</Item>
</Get> 
```
