---
title: Performance Guidance for Application Virtualization (Windows 10/11)
description: Learn how to configure App-V for optimal performance, optimize virtual app packages, and provide a better user experience with RDS and VDI.
author: aczechowski
ms.prod: w10
ms.date: 04/19/2017
ms.reviewer: 
manager: dougeby
ms.author: aaroncz
---

# Performance Guidance for Application Virtualization

**Applies to**:

- Windows 7 SP1
- Windows 10 
- Windows 11
- Server 2012 R2
- Server 2016

Learn how to configure App-V for optimal performance, optimize virtual app packages, and provide a better user experience with RDS and VDI.

Implementing multiple methods can help you improve the end-user experience. However, your environment may not support all methods.

You should read and understand the following information before reading this document.

-   [Application Virtualization (App-V) overview](appv-for-windows.md)

-   [Application Publishing and Client Interaction](appv-application-publishing-and-client-interaction.md)

-   [App-V Sequencing Guide](https://www.microsoft.com/download/details.aspx?id=27760)

> [!Note]
> Some terms used in this document may have different meanings depending on external source and context. For more information about terms used in this document followed by an asterisk `*`, review the [Application Virtualization Performance Guidance Terminology](#bkmk-terms1) section of this document.

Finally, this document will provide you with the information to configure the computer running App-V client and the environment for optimal performance. Optimize your virtual application packages for performance using the sequencer, and to understand how to use User Experience Virtualization (UE-V) or other user environment management technologies to provide the optimal user experience with App-V in both Remote Desktop Services (RDS) and non-persistent virtual desktop infrastructure (VDI).

To help determine what information is relevant to your environment, you should review each section’s brief overview and applicability checklist.

## <a href="" id="---------app-v-5-1-in-stateful--non-persistent-deployments"></a> App-V in stateful\* non-persistent deployments

This section provides information about an approach that helps ensure a user will have access to all virtual applications within seconds after logging in. This access is achieved by uniquely addressing the often long-running App-V publishing refresh. As you'll discover the basis of the approach, the fastest publishing refresh, is one that doesn’t have to actually do anything. Many conditions must be met and steps followed to provide the optimal user experience.

Use the information in the following section for more information:

[Usage Scenarios](#bkmk-us) - As you review the two scenarios, keep in mind that these scenarios are the approach extremes. Based on your usage requirements, you may choose to apply these steps to a subset of users and/or virtual applications packages.

-   Optimized for Performance – To provide the optimal experience, you can expect the base image to include some of the App-V virtual application package. This and other requirements are discussed.

-   Optimized for Storage – If you're concerned with the storage impact, following this scenario will help address those concerns.

[Preparing your Environment](#bkmk-pe)

-   Steps to Prepare the Base Image – Whether in a non-persistent VDI or RDSH environment, only a few steps must be completed in the base image to enable this approach.

-   Use UE-V as the User Profile Management (UPM) solution for the App-V approach – the cornerstone of this approach is the ability of a UEM solution to persist the contents of just a few registry and file locations. These locations constitute the user integrations\*. Be sure to review the specific requirements for the UPM solution.

[User Experience Walk-through](#bkmk-uewt)

-   Walk-through – It's a step-by-step walk-through of the App-V and UE-V operations and the expectations users should have.

-   Outcome – It describes the expected results.

[Impact to Package Lifecycle](#bkmk-plc)

[Enhancing the VDI Experience through Performance Optimization/Tuning](#bkmk-evdi)

### <a href="" id="applicability-checklist-"></a>Applicability Checklist

|Checklist|Deployment Environment|
|--- |--- |
|![Checklist box](images/checklistbox.gif)|Non-Persistent VDI or RDSH.|
|![Checklist box](images/checklistbox.gif)|User Experience Virtualization (UE-V), other UPM solutions or User Profile Disks (UPD).|

|Checklist|Expected Configuration|
|--- |--- |
|![Checklist box](images/checklistbox.gif)|User Experience Virtualization (UE-V) with the App-V user state template enabled or User Profile Management (UPM) software. Non-UE-V UPM software must be capable of triggering on Login or Process/Application Start and Logoff.|
|![Checklist box](images/checklistbox.gif)|App-V Shared Content Store (SCS) is configured or can be configured.|


|Checklist|IT Administration|
|--- |--- |
|![Checklist box](images/checklistbox.gif)|Admin may need to update the VM base image regularly to ensure optimal performance or Admin may need to manage multiple images for different user groups.|

### <a href="" id="bkmk-us"></a>Usage Scenarios

As you review the two scenarios, keep in mind that these scenarios represent the extremes. Based on your usage requirements, you may choose to apply these steps to a subset of users, virtual application packages, or both.

- **Performance**: To provide the most optimal user experience, this approach uses the capabilities of a UPM solution and requires extra image preparation and can incur some more image management overhead.

  The following section describes many performance improvements in stateful non-persistent deployments. For more information, see [Sequencing Steps to Optimize Packages for Publishing Performance](#sequencing-steps-to-optimize-packages-for-publishing-performance) (in this article).

- **Storage**: The general expectations of the previous scenario still apply here. However, keep in mind that VM images are typically stored in costly arrays; a slight alteration has been made to the approach. Don't pre-configure user-targeted virtual application packages in the base image.

  The impact of this alteration is detailed in the [User Experience Walk-through](#bkmk-uewt) (in this article).

### <a href="" id="bkmk-pe"></a>Preparing your Environment

The following information displays the required steps to prepare the base image and the UE-V or another UPM solution for the approach.

#### Prepare the Base Image

- **Performance**: 

  - Enable the App-V client as described in [Enable the App-V in-box client](appv-enable-the-app-v-desktop-client.md).
  - Enable UE-V and download the App-V Settings Template from the UE-V template Gallery, see the following steps.
  - Configure for Shared Content Store (SCS) mode. For more information, see [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md).
  - Configure Preserve User Integrations on Login Registry DWORD.
  - Pre-configure all user and global-targeted packages, for example, **Add-AppvClientPackage**.
  - Pre-configure all user- and global-targeted connection groups, for example, **Add-AppvClientConnectionGroup**.
  - Pre-publish all global-targeted packages. Or:
    - Perform a global publishing/refresh.
    - Perform a user publishing/refresh.
    - Unpublish all user-targeted packages.
    - Delete the following user-Virtual File System (VFS) entries:

      - `AppData\Local\Microsoft\AppV\Client\VFS`
      - `AppData\Roaming\Microsoft\AppV\Client\VFS`

- **Storage**: 

  - Enable the App-V client as described in [Enable the App-V in-box client](appv-enable-the-app-v-desktop-client.md).
  - Enable UE-V and download the App-V Settings Template from the UE-V template Gallery, see the following steps.
  - Configure for Shared Content Store (SCS) mode. For more information, see [Deploying the
  App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md).
  - Configure Preserve User Integrations on Login Registry DWORD.
  - Pre-configure all global-targeted packages, for example, **Add-AppvClientPackage**.
  - Pre-configure all global-targeted connection groups, for example, **Add-AppvClientConnectionGroup**.
  - Pre-publish all global-targeted packages.

#### Configurations

For critical App-V Client configurations and for a little more context and how-to, review the following configuration settings:

- **Shared Content Store (SCS) Mode**: When running the shared content store, only publishing data is maintained on hard disk; other virtual application assets are maintained in memory (RAM). Such a result helps to conserve local storage and minimize disk I/O per second (IOPS).

  This setting is recommended when low-latency connections are available between the App-V Client endpoint and the SCS content server, SAN.

  - Configurable in Windows PowerShell: `Set-AppvClientConfiguration -SharedContentStoreMode 1`
  - Configurable with Group Policy: See [Deploying the App-V Sequencer and Configuring the Client](appv-deploying-the-appv-sequencer-and-client.md).

- **PreserveUserIntegrationsOnLogin**: If you have not pre-configured (**Add-AppvClientPackage**) a specific package and this setting isn't configured, the App-V Client will de-integrate* the persisted user integrations, then reintegrate*.

  For every package that meets the above conditions, effectively twice the work will be done during publishing/refresh.
  
  If you don’t plan to pre-configure every available user package in the base image, use this setting.

  - Configure in the Registry under `HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Integration`.
  - Create the DWORD value **PreserveUserIntegrationsOnLogin** with a value of 1.
  - Restart the App-V client service or restart the computer running the App-V Client.

- **MaxConcurrentPublishingRefresh**: This setting determines the number of users that can perform a publishing refresh/sync at the same time. The default setting is no limit.

  Limiting the number of concurrent publishing refreshes prevents excessive CPU usage that could impact computer performance. This limit is  recommended in an RDS environment, where multiple users can log in to the same computer at the same time and perform a publishing refresh sync.

  If the concurrent publishing refresh threshold is reached, the time required to publish new applications and make them available to end users after they sign in could take an indeterminate amount of time.

  - Configure in the Registry under `HKEY_LOCAL_MACHINE\Software\Microsoft\AppV\Client\Publishing`.
  - Create the DWORD value **MaxConcurrentPublishingrefresh** with the desired maximum number of concurrent publishing refreshes.
  - The App-V client service and computer don't need to be restarted.

### Configure UE-V solution for App-V Approach

We recommend using User Experience Virtualization (UE-V) to capture and centralize application settings and Windows operating system settings for a specific user. These settings are then applied to the different computers that are accessed by the user, including desktop computers, laptop computers, and virtual desktop infrastructure (VDI) sessions. UE-V is optimized for RDS and VDI scenarios.

For more information, see:

- [User Experience Virtualization (UE-V) for Windows client overview](/windows/configuration/ue-v/uev-for-windows)

- [Get Started with UE-V](/windows/configuration/ue-v/uev-getting-started)

In essence all that is required is to enable the UE-V service and download the following Microsoft authored App-V settings template from the [Microsoft User Experience Virtualization (UE-V) template gallery](https://gallery.technet.microsoft.com/Authored-UE-V-Settings-bb442a33). Register the template. For more information about UE-V templates, see [User Experience Virtualization (UE-V) for Windows client overview](/windows/configuration/ue-v/uev-for-windows).

> [!Note]
> Without performing an additional configuration step, User Environment Virtualization (UE-V) won't be able to synchronize the Start menu shortcuts (.lnk files) on the target computer. The .lnk file type is excluded by default.

UE-V will only support removing the .lnk file type from the exclusion list in the RDS and VDI scenarios, where every user’s device will have the same set of applications installed to the same location and every .lnk file is valid for all the users’ devices. For example, UE-V wouldn't currently support the following two scenarios, because the net result will be that the shortcut will be valid on one but not all devices.

-   If a user has an application installed on one device with .lnk files enabled and the same native application installed on another device to a different installation root with .lnk files enabled.

-   If a user has an application installed on one device but not another with .lnk files enabled.

> [!Important]
> This topic describes how to change the Windows registry by using Registry Editor. If you change the Windows registry incorrectly, you can cause serious problems that might require you to reinstall Windows. You should make a backup copy of the registry files (System.dat and User.dat) before you change the registry. Microsoft cannot guarantee that the problems that might occur when you change the registry can be resolved. Change the registry at your own risk. 

Using the Microsoft Registry Editor (regedit.exe), navigate to `HKEY\_LOCAL\_MACHINE\Software\Microsoft\UEV\Agent\Configuration\ExcludedFileTypes` and remove `.lnk` from the excluded file types.

## Configure other User Profile Management (UPM) solutions for App-V Approach

The expectation in a stateful environment is that a UPM solution is implemented and can support persistence of user data across sessions and between logins.

The requirements for the UPM solution are as follows.

To enable an optimized sign-in experience, for example the App-V approach for the user, the solution must be capable of:

-   Persisting the below user integrations as part of the user profile/persona.

-   Triggering a user profile sync on sign in (or application start), which can guarantee that all user integrations are applied before publishing/refresh begin, or,

-   Attaching and detaching a user profile disk (UPD) or similar technology that contains the user integrations.

  > [!Note]
  > 
  > App-V is supported when using UPD only when the entire profile is stored on the user profile disk.
  > 
  > App-V packages are not supported when using UPD with selected folders stored in the user profile disk. The Copy on Write driver doesn't handle UPD selected folders.     

-   Capturing changes to the locations, which constitute the user integrations, prior to session sign out.

With App-V when you add a publishing server (**Add-AppvPublishingServer**) you can configure synchronization, for example refresh during a sign in and/or after a specified refresh interval. In both cases, a scheduled task is created.

In previous versions of App-V, both scheduled tasks were configured using a VBScript that would initiate the user and global refresh. Starting with Hotfix Package 4 for Application Virtualization 5.0 SP2, the user refresh on a sign in was initiated by **SyncAppvPublishingServer.exe**. This change was introduced to provide UPM solutions a trigger process. This process delays the publish /refresh to allow the UPM solution to apply the user integrations. It will exit once the publishing/refresh is complete.

### User Integrations

Registry – HKEY\_CURRENT\_USER

-   Path - Software\\Classes

    Exclude: Local Settings, ActivatableClasses, AppX\*

-   Path - Software\\Microsoft\\AppV

-   Path- Software\\Microsoft\\Windows\\CurrentVersion\\App Paths

### File Locations

-   Root – “Environment Variable” APPDATA

    Path – Microsoft\\AppV\\Client\\Catalog

-   Root – “Environment Variable” APPDATA

    Path – Microsoft\\AppV\\Client\\Integration

-   Root – “Environment Variable” APPDATA

    Path - Microsoft\\Windows\\Start Menu\\Programs

-   (To persist all desktop shortcuts, virtual and non-virtual)

    Root - “KnownFolder” {B4BFCC3A-DB2C-424C-B029-7FE99A87C641}FileMask - \*.lnk

### <a href="" id="bkmk-uewt"></a>User Experience Walk-through

This following process is a step-by-step walk-through of the App-V and UPM operations, and the users' expectations.

- **Performance**: After implementing this approach in the VDI/RDSH environment, on first login,
  - (Operation) A user-publishing/refresh is initiated. 

    (Expectation) If it's the first time that a user has published virtual applications (for example, non-persistent), this operation will take the usual duration of a publishing/refresh.

- (Operation) After the publishing/refresh, the UPM solution captures the user integrations.

    (Expectation) Depending on how the UPM solution is configured, this capture may occur as part of the sign-out process. This result will incur the same/similar overhead as persisting the user state.
 
  **On subsequent logins**:

  - (Operation) UPM solution applies the user integrations to the system prior to publishing/refresh.

    (Expectation) There will be shortcuts present on the desktop, or in the start menu, which work immediately. When the publishing/refresh completes (that is, package entitlements change), some may go away.

  - (Operation) Publishing/refresh will process unpublish and publish operations for changes in user package entitlements. 
 
    (Expectation) If there are no entitlement changes, publishing will complete in seconds. Otherwise, the publishing/refresh will increase relative to the number and complexity of virtual applications

    The publishing operation (**Publish-AppVClientPackage**) adds entries to the user catalog, maps entitlement to the user, identifies the local store, and finishes by completing any integration steps.  
  
  - (Operation) UPM solution will capture user integrations again at sign off.
 
     (Expectation) Same as previous.

  **Outcome**: 

  - Because the user integrations are entirely preserved, there will be no work for example, integration for the publishing/refresh to complete. All virtual applications will be available within seconds of sign in.
  - The publishing/refresh will process changes to the users-entitled virtual applications, which impacts the experience.

- **Storage**: After implementing this approach in the VDI/RDSH environment, on first login

  - (Operation) A user-publishing/refresh is initiated. 

    (Expectation):

    - If this instance is the first time a user has published virtual applications (for example, non-persistent), this will take the usual duration of a publishing/refresh.
    - First and subsequent logins will be impacted by pre-configuring of packages (add/refresh).
 
  - (Operation) After the publishing/refresh, the UPM solution captures the user integrations.

    (Expectation) Depending on how the UPM solution is configured, this capture may occur as part of the sign-off process. This result will incur the same/similar overhead as persisting the user state. 
 
  **On subsequent logins**:
 
  - (Operation) UPM solution applies the user integrations to the system prior to publishing/refresh.
  - (Operation) Add/refresh must pre-configure all user targeted applications.

    - (Expectation):
      - This may increase the time to application availability significantly (on the order of 10s of seconds).
      - This will increase the publishing refresh time relative to the number and complexity* of virtual applications.

   - (Operation) Publishing/refresh will process unpublish and publish operations for changes to user package entitlements.

  **Outcome**: Because the add/refresh must reconfigure all the virtual applications to the VM, the publishing refresh time on every login will be extended.
 
### <a href="" id="bkmk-plc"></a>Impact to Package Life Cycle

Upgrading a package is a crucial aspect of the package lifecycle. To help guarantee users have access to the appropriate upgraded (published) or downgraded (unpublished) virtual application packages, it's recommended you update the base image to reflect these changes. To understand why review the following section:

App-V 5.0 SP2 introduced the concept of pending states. In the past,

-   If an administrator changed entitlements or created a new version of a package (upgraded) and during a publishing/refresh that package was in-use, the unpublish or publish operation, respectively, would fail.

-   Now, if a package is in use, the operation will be pended. The unpublish and publish-pend operations will be processed on service restart or if another publish or unpublish command is issued. In the latter case, if the virtual application is in-use otherwise, the virtual application will remain in a pending state. For globally published packages, a restart (or service restart) often needed.

In a non-persistent environment, it's unlikely these pended operations will be processed. The pended operations, for example tasks are captured under **HKEY\_CURRENT\_USER** \\ **Software** \\ **Microsoft** \\ **AppV** \\ **Client** \\ **PendingTasks**. Although this location is persisted by the UPM solution, if it isn't applied to the environment prior to a sign in, it will not be processed.

### <a href="" id="bkmk-evdi"></a>Enhancing the VDI Experience through Performance Optimization Tuning

The following section contains lists with information about Microsoft documentation and downloads that may be useful when optimizing your environment for performance.

<!-- Following bold text used to say **.NET NGEN Blog and Script (Highly Recommended)**  but the script doesn't seem to exist any more. The link to the script was [Script](https://aka.ms/DrainNGenQueue)  -->

**.NET NGEN Blog (Highly Recommended)**

-   [How to speed up NGEN optimization](https://blogs.msdn.com/b/dotnet/archive/2013/08/06/wondering-why-mscorsvw-exe-has-high-cpu-usage-you-can-speed-it-up.aspx)

**Windows Server and Server Roles**

Server Performance Tuning Guidelines for

-   [Microsoft Windows Server 2012 R2](/previous-versions//dn529133(v=vs.85))

-   [Microsoft Windows Server 2012](https://download.microsoft.com/download/0/0/B/00BE76AF-D340-4759-8ECD-C80BC53B6231/performance-tuning-guidelines-windows-server-2012.docx)

-   [Microsoft Windows Server 2008 R2](https://download.microsoft.com/download/6/B/2/6B2EBD3A-302E-4553-AC00-9885BBF31E21/Perf-tun-srv-R2.docx)

**Server Roles**

-   [Remote Desktop Virtualization Host](/previous-versions//dn567643(v=vs.85))

-   [Remote Desktop Session Host](/previous-versions//dn567648(v=vs.85))

-   [IIS Relevance: App-V Management, Publishing, Reporting Web Services](/previous-versions//dn567678(v=vs.85))

-   [File Server (SMB) Relevance: If used for App-V Content Storage and Delivery in SCS Mode](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/jj134210(v=ws.11))

**Windows Client (Guest OS) Performance Tuning Guidance**

-   [Optimization Script: (Provided by Microsoft Support)](/archive/blogs/jeff_stokes/the-microsoft-premier-field-engineer-pfe-view-on-virtual-desktop-vdi-density)

-   [Microsoft Windows 8](https://download.microsoft.com/download/6/0/1/601D7797-A063-4FA7-A2E5-74519B57C2B4/Windows_8_VDI_Image_Client_Tuning_Guide.pdf)

-   [Optimization Script: (Provided by Microsoft Support)](/archive/blogs/jeff_stokes/hot-off-the-presses-get-it-now-the-windows-8-vdi-optimization-script-courtesy-of-pfe)

## Sequencing Steps to Optimize Packages for Publishing Performance

Several App-V features facilitate new scenarios or enable new customer deployment scenarios. These following features can impact the performance of the publishing and launch operations.

|Step|Consideration|Benefits|Tradeoffs|
|--- |--- |--- |--- |
|No Feature Block 1 (FB1, also known as Primary FB)|No FB1 means the application will launch immediately and stream fault (application requires file, DLL and must pull down over the network) during launch. If there are network limitations, FB1 will:<br><li>Reduce the number of stream faults and network bandwidth used when you launch an application for the first time.<li>Delay launch until the entire FB1 has been streamed.|Stream faulting decreases the launch time.|Virtual application packages with FB1 configured will need to be resequenced.|

### Removing FB1

Removing FB1 doesn't require the original application installer. After completing the following steps, it's suggested that you revert the computer running the sequencer to a clean snapshot.

**Sequencer UI** - Create a New Virtual Application Package.

1.  Complete the sequencing steps up to Customize -&gt; Streaming.

2.  At the Streaming step, don't select **Optimize the package for deployment over slow or unreliable network**.

3.  If desired, move on to **Target OS**.

**Modify an Existing Virtual Application Package**

1.  Complete the sequencing steps up to Streaming.

2.  Don't select **Optimize the package for deployment over a slow or unreliable network**.

3.  Move to **Create Package**.

**Windows PowerShell** - Update an Existing Virtual Application Package.

1.  Open an elevated Windows PowerShell session.

2.  Import-module **appvsequencer**.

3.  **Update-AppvSequencerPackage** - **AppvPackageFilePath**

    "C:\\Packages\\MyPackage.appv" -Installer

    "C:\\PackageInstall\\PackageUpgrade.exe empty.exe" -OutputPath

    "C:\\UpgradedPackages"

    > [!Note]
    > This cmdlet requires an executable (.exe) or batch file (.bat). You must provide an empty (does nothing) executable or batch file.  

|Step|Considerations|Benefits|Tradeoffs|
|--- |--- |--- |--- |
|No SXS Install at Publish (Pre-Install SxS assemblies)|Virtual Application packages don't need to be resequenced. SxS Assemblies can remain in the virtual application package.|The SxS Assembly dependencies won't install at publishing time.|SxS Assembly dependencies must be pre-installed.|


### Creating a new virtual application package on the sequencer

If, during sequencer monitoring, an SxS Assembly (such as a VC++ Runtime) is installed as part of an application’s installation, SxS Assembly will be automatically detected and included in the package. The administrator will be notified and will have the option to exclude the SxS Assembly.

**Client Side**:

When publishing a virtual application package, the App-V Client will detect if a required SxS dependency is already installed. If the dependency is unavailable on the computer and it's included in the package, a traditional Windows Installer (.**msi**) installation of the SxS assembly will be initiated. As previously documented, simply install the dependency on the computer running the client to ensure that the Windows Installer (.msi) installation won't occur.

|Step|Considerations|Benefits|Tradeoffs|
|--- |--- |--- |--- |
|Selectively Employ Dynamic Configuration files|The App-V client must parse and process these Dynamic Configuration files. <br> <br>Be conscious of size and complexity (script execution, VREG inclusions/exclusions) of the file.<br> <br>Numerous virtual application packages may already have User- or computer–specific dynamic configurations files.|Publishing times will improve if these files are used selectively or not at all.|Virtual application packages would need to be reconfigured individually or via the App-V server management console to remove associated Dynamic Configuration files.|
 

### Disabling a Dynamic Configuration by using Windows PowerShell

-   For already published packages, you can use `Set-AppVClientPackage –Name Myapp –Path c:\Packages\Apps\MyApp.appv` without

    **-DynamicDeploymentConfiguration** parameter

-   Similarly, when adding new packages using `Add-AppVClientPackage –Path c:\Packages\Apps\MyApp.appv`, don't use the

    **-DynamicDeploymentConfiguration** parameter.

For documentation on How to Apply a Dynamic Configuration, see:

-   [How to Apply the User Configuration File by Using Windows PowerShell](appv-apply-the-user-configuration-file-with-powershell.md)

-   [How to Apply the Deployment Configuration File by Using Windows PowerShell](appv-apply-the-deployment-configuration-file-with-powershell.md)

|Step|Considerations|Benefits|Tradeoffs|
|--- |--- |--- |--- |
|Account for Synchronous Script Execution during Package Lifecycle.|If script collateral is embedded in the package, Add cmdlets may be slower.<br>Running of scripts during virtual application launch (StartVirtualEnvironment, StartProcess) and/or Add+Publish will impact the perceived performance during one or more of these lifecycle operations.|Use of Asynchronous (Non-Blocking) Scripts will ensure that the lifecycle operations complete efficiently.|This step requires working knowledge of all virtual application packages with embedded script collateral, which have associated dynamic configurations files and which reference and run scripts synchronously.|
|Remove Extraneous Virtual Fonts from Package.|Most applications investigated by the App-V product team contained a few fonts, typically fewer than 20.|Virtual Fonts impact publishing refresh performance.|Desired fonts will need to be enabled/installed natively. For instructions, see Install or uninstall fonts.|

### Determining what virtual fonts exist in the package

-   Make a copy of the package.

-   Rename Package\_copy.appv to Package\_copy.zip

-   Open AppxManifest.xml and locate the following syntax:

    ```xml
    <appv:Extension Category="AppV.Fonts">
    <appv:Fonts>
    <appv:Font Path="[{Fonts}]\private\CalibriL.ttf" DelayLoad="true"></appv:Font>
    </appv:Fonts>
    ```

  > [!Note]
  > If there are fonts marked as **DelayLoad**, those won't impact first launch.

### Excluding virtual fonts from the package

Use the dynamic configuration file that best suits the user scope – deployment configuration for all users on computer, user configuration for specific user or users.

-   Disable fonts with the deployment or user configuration.

Fonts

```xml
-->
<Fonts Enabled="false" />
<!--
```

## <a href="" id="bkmk-terms1"></a> App-V Performance Guidance Terminology


The following terms are used when describing concepts and actions related to App-V performance optimization.

-   **Complexity** – Refers to the one or more package characteristics that may impact performance during pre-configure (**Add-AppvClientPackage**) or integration (**Publish-AppvClientPackage**). Some example characteristics are: manifest size, number of virtual fonts, number of files.

-   **De-Integrate** – Removes the user integrations

-   **Re-Integrate** – Applies the user integrations.

-   **Non-Persistent, Pooled** – Creates a computer running a virtual environment each time they sign in.

-   **Persistent, Personal** – A computer running a virtual environment that remains the same for every sign in.

-   **Stateful** - For this document, implies that user integrations are persisted between sessions and a user environment management technology is used in conjunction with non-persistent RDSH or VDI.

-   **Stateless** – Represents a scenario when no user state is persisted between sessions.

-   **Trigger** – (or Native Action Triggers). UPM uses these types of triggers to initiate monitoring or synchronization operations.

-   **User Experience** - In the context of App-V, the user experience, quantitatively, is the sum of the following parts:

    -   From the point that users initiate a sign in to when they're able to manipulate the desktop.

    -   From the point where the desktop can be interacted with to the point a publishing refresh begins (in Windows PowerShell terms, sync) when using the App-V full server infrastructure. In standalone instances, it's when the **Add-AppVClientPackage** and **Publish-AppVClientPackage** Windows PowerShell commands are initiated.

    -   From start to completion of the publishing refresh. In standalone instances, this refresh is the first to last instance leading to the virtual application being published.

    -   From the point where the virtual application is available to launch from a shortcut. Alternatively, it's from the point at which the file type association is registered and will launch a specified virtual application.

-   **User Profile Management** – The controlled and structured approach to managing user components associated with the environment. For example, user profiles, preference and policy management, application control and application deployment. You can use scripting or third-party solutions configure the environment as needed.



<br>For App-V issues, use the [App-V TechNet Forum](https://social.technet.microsoft.com/Forums/en-US/home?forum=mdopappv).

## Related articles

[Application Virtualization (App-V) overview](appv-for-windows.md)
