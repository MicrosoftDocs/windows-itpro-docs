---
title: Application development for Windows as a service (Windows 10)
description: Microsoft recommends that our ISV partners decouple their app release and support from specific Windows builds.
ms.assetid: 28E0D103-B0EE-4B14-8680-6F30BD373ACF
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: security, servicing
author: jdeckerMS
redirect_url: https://msdn.microsoft.com/windows/uwp/get-started/application-development-for-windows-as-a-service
---

# Application development for Windows as a service

**Applies to**
-   Windows 10
-   Windows 10 Mobile
-   Windows 10 IoT Core 

In today’s environment, where user expectations frequently are set by device-centric experiences, complete product cycles need to be measured in months, not years. Additionally, new releases must be made available on a continual basis, and must be deployable with minimal impact on users. Microsoft designed Windows 10 to meet these requirements by implementing a new approach to innovation, development, and delivery called [Windows as a service (WaaS)](introduction-to-windows-10-servicing.md). The key to enabling significantly shorter product cycles while maintaining high quality levels is an innovative community-centric approach to testing that Microsoft has implemented for Windows 10. The community, known as Windows Insiders, is comprised of millions of users around the world. When Windows Insiders opt in to the community, they test many builds over the course of a product cycle and provide feedback to Microsoft through an iterative methodology called flighting.

Builds distributed as flights provide the Windows engineering team with significant data regarding how well builds are performing in actual use. Flighting with Windows Insiders also enables Microsoft to test builds in much more diverse hardware, application, and networking environments than in the past, and to identify issues far more quickly. As a result, Microsoft believes that community-focused flighting will enable both a faster pace of innovation delivery and better public release quality than ever.

## Windows 10 release types and cadences

Although Microsoft releases flight builds to Windows Insiders, Microsoft will publish two types of Windows 10 releases broadly to the public on an ongoing basis:

**Feature updates** install the latest new features, experiences, and capabilities on devices that are already running Windows 10. Because feature updates contain an entire copy of Windows, they are also what customers use to install Windows 10 on existing devices running Windows 7 or Windows 8.1, and on new devices where no operating system is installed. Microsoft expects to publish an average of one to two new feature updates per year.

**Quality updates** deliver security issue resolutions and other important bug fixes. Quality updates will be provided to improve each feature currently in support, on a cadence of one or more times per month. Microsoft will continue publishing quality updates on Update Tuesday (sometimes referred to as Patch Tuesday). Additionally, Microsoft may publish additional quality updates for Windows 10 outside the Update Tuesday process when required to address customer needs.

During Windows 10 development, Microsoft streamlined the Windows product engineering and release cycle so that we can deliver the features, experiences, and functionality customers want, more quickly than ever. We also created new ways to deliver and install feature updates and quality updates that simplify deployments and on-going management, broaden the base of employees who can be kept current with the latest Windows capabilities and experiences, and lower total cost of ownership. Hence we have implemented new servicing options – referred to as Current Branch (CB), Current Branch for Business (CBB), and Long-Term Servicing Branch (LTSB) – that provide pragmatic solutions to keep more devices more current in enterprise environments than was previously possible.

The following table shows describes the various servicing branches and their key attributes.

| Servicing option                  | Availability of new feature upgrades for installation     | Minimum length of servicing lifetime | Key benefits                                                                              | Supported editions                                                                         |
|-----------------------------------|-----------------------------------------------------------|--------------------------------------|-------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------|
| Current Branch (CB)               | Immediately after first published by Microsoft            | Approximately 4 months               | Makes new features available to users as soon as possible                                 | Home, Pro, Education, Enterprise, Mobile, IoT Core, Windows 10 IoT Core Pro (IoT Core Pro) |
| Current Branch for Business (CBB) | Approximately 4 months after first published by Microsoft | Approximately 8 months               | Provides additional time to test new feature upgrades before deployment                   | Pro, Education, Enterprise, Mobile Enterprise, IoT Core Pro                                |
| Long-Term Servicing Branch (LTSB) | Immediately after published by Microsoft                  | 10 Years                             | Enables long-term deployment of selected Windows 10 releases in low-change configurations | Enterprise LTSB                                                                            |
 
For more information, see [Windows 10 servicing options for updates and upgrades](introduction-to-windows-10-servicing.md).

## Supporting apps in Windows as a service

The traditional approach for supporting apps has been to release a new app version in response to a Windows release. This assumes that there are breaking changes in the underlying OS that could potentially cause a regression with the application. This model involves a dedicated development and validation cycle that requires our ISV partners to align with the Windows release cadence.

In the Windows as a service model, Microsoft is making a commitment to maintaining the compatibility of the underlying OS. This means Microsoft will make a concerted effort to ensure that there are no breaking changes that impact the app ecosystem negatively. In this scenario, when there is a release of a Windows build, most apps (those with no kernel dependencies) will continue to work.

In view of this change, Microsoft recommends that our ISV partners decouple their app release and support from specific Windows builds. Our mutual customers are better served by an application lifecycle approach. This means when an application version is released it will be supported for a certain period of time irrespective of however many Windows builds are released in the interim. The ISV makes a commitment to provide support for that specific version of the app as long as it is supported in the lifecycle. Microsoft follows a similar lifecycle approach for Windows that can be referenced [here](https://go.microsoft.com/fwlink/?LinkID=780549).

This approach will reduce the burden of maintaining an app schedule that aligns with Windows releases. ISV partners should be free to release features or updates at their own cadence. We feel that our partners can keep their customer base updated with the latest app updates independent of a Windows release. In addition, our customers do not have to seek an explicit support statement whenever a Windows build is released. Here is an example of a support statement that covers how an app may be supported across different versions of the OS:

| Example of an application lifecycle support statement                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     |
|---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| Contoso is a software development company and is the owner of the popular Mojave app which has a major share in the enterprise space. Contoso releases its next major release Mojave 14.0 and declares mainstream support for a period of three years from the release date. During mainstream support all updates and support are complimentary for the licensed product. Contoso also declares an additional two years of extended support where customers can purchase updates and support for a grace period. Beyond the extended support end date this product version is no longer supported. During the period of mainstream support Contoso will support Mojave 14.0 on all released builds of Windows. Contoso will also release updates to Mojave as necessary and independent of the Windows product releases. |
 
In the following sections, you will find additional information about the steps Microsoft takes to maintain the compatibility of the underlying OS. You will also find guidance on steps you can take to help maintain the compatibility of the combined OS and app ecosystem. There is a section on how to leverage Windows flighting builds to detect app regressions before a Windows build is released. Lastly, we describe how we use an instrumentation and telemetry-driven approach to increase the quality of Windows builds. We recommend ISVs adopt a similar approach with their app portfolio.

## Key changes since Windows 7 to ensure app compatibility

We understand that compatibility matters to developers. ISVs and developers want to ensure their apps will run as expected on all supported versions of the Windows OS. Consumers and businesses have a key investment here—they want to ensure that the apps they have paid for will continue to work. We know that compatibility is the primary criteria for purchase decisions. Apps that are well written based on best practices will lead to much less code churn when 
a new Windows version is released and will reduce fragmentation—these apps have a reduced engineering investment to maintain, and a faster time to market.

In the Windows 7 timeframe, compatibility was very much a reactive approach. In Windows 8, we started looking at this differently, working within Windows to ensure that compatibility was by design rather than an afterthought. 
Windows 10 is the most compatible-by-design version of the OS to date. Here are some key ways we accomplished this:
-   **App telemetry**: This helps us understand app popularity in the Windows ecosystem to inform compatibility testing.
-   **ISV partnerships**: Work directly with external partners to provide them with data and help fix issues that our users experience.
-   **Design reviews, upstream detection**: Partner with feature teams to reduce the number of breaking changes in Windows. Compatibility review is a gate that our feature teams must pass.
-   **Communication**: Tighter control over API changes and improved communication.
-   **Flighting and feedback loop**: Windows insiders receive flighted builds that help improve our ability to find compatibility issues before a final build is released to customers. This feedback process not only exposes bugs, but ensures we are shipping features our users want.

## Best practices for app compatibility

Microsoft uses diagnostic and usage data to identify and troubleshoot problems, improve our products and services, and provide our users with personalized experiences. The usage data we collect also extends to the apps that PCs in the Windows ecosystem are running. Based on what our customers use, we build our list to test these apps, devices, and drivers against new versions of the Windows OS. Windows 10 has been the most compatible version of Windows to-date, with over 90% compatibility against thousands of popular apps. The Windows Compatibility team commonly reaches out to our ISV partners to provide feedback if issues are discovered, so that we can partner together on solutions. Ideally, we’d like our common customers to be able to update Windows seamlessly and without losing functionality in either their OS or the apps they depend on for their productivity or entertainment.

The following sections contain some best practices Microsoft recommends so you can ensure your apps are compatible with Windows 10.

### Windows version check

The OS version has been incremented with Windows 10. This means that the internal version number has been changed to 10.0. As in the past, we go to great lengths to maintain application and device compatibility after an OS version change. For most app categories (without any kernel dependencies), the change will not negatively impact app functionality, and existing apps will continue to work fine on Windows 10.

The manifestation of this change is app-specific. This means any app that specifically checks for the OS version will get a higher version number, which can lead to one or more of the following situations:
-   App installers might not be able to install the app, and apps might not be able to start.
-   Apps might become unstable or crash.
-   Apps might generate error messages, but continue to function properly.

Some apps perform a version check and simply pass a warning to users. However, there are apps that are bound very tightly to a version check (in the drivers, or in kernel mode to avoid detection). In these cases, the app will fail if an incorrect version is found. Rather than a version check, we recommend one of the following approaches:
-   If the app is dependent on specific API functionality, ensure you target the correct API version.
-   Ensure you detect the change via APISet or another public API, and do not use the version as a proxy for some feature or fix. If there are breaking changes and a proper check is not exposed, then that is a bug.
-   Ensure the app does NOT check for version in odd ways, such as via the registry, file versions, offsets, kernel mode, drivers, or other means. If the app absolutely needs to check the version, use the GetVersion APIs, which should return the major, minor, and build number.
-   If you are using the [GetVersion](https://go.microsoft.com/fwlink/?LinkID=780555) API, remember that the behavior of this API has changed since Windows 8.1.

If you own apps such as antimalware or firewall apps, you should work through your usual feedback channels and via the Windows Insider program.

### Undocumented APIs

Your apps should not call undocumented Windows APIs, or take dependency on specific Windows file exports or registry keys. This can lead to broken functionality, data loss, and potential security issues. If there is functionality your app requires that is not available, this is an opportunity to provide feedback through your usual feedback channels and via the Windows Insider program.

### Develop Universal Windows Platform (UWP) and Centennial apps

We encourage all Win32 app ISVs to develop [Universal Windows Platform (UWP)](https://go.microsoft.com/fwlink/?LinkID=780560) and, specifically, [Centennial](https://go.microsoft.com/fwlink/?LinkID=780562) apps moving forward. There are great benefits to developing these app packages rather than using traditional Win32 installers. UWP apps are also supported in the [Windows Store](https://go.microsoft.com/fwlink/?LinkID=780563), so it’s easier for you to update your users to a consistent version automatically, lowering your support costs.

If your Win32 app types do not work with the Centennial model, we highly recommend that you use the right installer and ensure this is fully tested. An installer is your user or customer’s first experience with your app, so ensure that this works well. All too often, this doesn’t work well or it hasn’t been fully tested for all scenarios. The [Windows App Certification Kit](https://go.microsoft.com/fwlink/?LinkID=780565) can help you test the install and uninstall of your Win32 app and help you identify use of undocumented APIs, as well as other basic performance-related best-practice issues, before your users do.

**Best practices:**
-   Use installers that work for both 32-bit and 64-bit versions of Windows.
-   Design your installers to run on multiple scenarios (user or machine level).
-   Keep all Windows redistributables in the original packaging – if you repackage these, it’s possible that this will break the installer.
-   Schedule development time for your installers—these are often overlooked as a deliverable during the software development lifecycle.

## Optimized test strategies and flighting

Windows OS flighting refers to the interim builds available to Windows Insiders before a final build is released to the general population. The more Insiders that flight these interim builds, the more feedback we receive on the build quality, compatibility, etc., and this helps improve quality of the final builds. You can participate in this flighting program to ensure that your apps work as expected on iterative builds of the OS. We also encourage you to provide feedback on how these flighted builds are working for you, issues you run into, and so on.

If your app is in the Store, you can flight your app via the Store, which means that your app will be available for our Windows Insider population to install. Users can install your app and you can receive preliminary feedback on your app before you release it to the general population. The follow sections outline the steps for testing your apps against Windows flighted builds.

### Step 1: Become a Windows Insider and participate in flighting
As a [Windows Insider,](https://go.microsoft.com/fwlink/p/?LinkId=521639) you can help shape the future of Windows—your feedback will help us improve features and functionality in the platform. This is a vibrant community where you can connect with other enthusiasts, join forums, trade advice, and learn about upcoming Insider-only events.

Since you’ll have access to preview builds of Windows 10, Windows 10 Mobile, and the latest Windows SDK and Emulator, you’ll have all the tools at your disposal to develop great apps and explore what's new in the Universal Windows Platform and the Windows Store.

This is also a great opportunity to build great hardware, with preview builds of the hardware development kits so you can develop universal drivers for Windows. The IoT Core Insider Preview is also available on supported IoT development boards, so you can build amazing connected solutions using the Universal Windows Platform.

Before you become a Windows Insider, please note that participation is intended for users who:
-   Want to try out software that’s still in development.
-   Want to share feedback about the software and the platform.
-   Don’t mind lots of updates or a UI design that might change significantly over time.
-   Really know their way around a PC and feel comfortable troubleshooting problems, backing up data, formatting a hard drive, installing an operating system from scratch, or restoring an old one if necessary.
-   Know what an ISO file is and how to use it.
-   Aren't installing it on their everyday computer or device.

### Step 2: Test your scenarios

Once you have updated to a flighted build, the following are some sample test cases to help you get started on testing and gathering feedback. For most of these tests, ensure you cover both x86 and AMD64 systems.
**Clean install test:** On a clean install of Windows 10, ensure your app is fully functional. If your app fails this test and the upgrade test, then it’s likely that the issue is caused by underlying OS changes or bugs in the app. 
If after investigation, the former is the case, be sure to use the Windows Insider program to provide feedback and partner on solutions.

**Upgrade Test:** Check that your app works after upgrading from a down-level version of Windows (i.e. Windows 7 or Windows 8.1) to Windows 10. Your app shouldn’t cause roll backs during upgrade, and should continue to work as expected after upgrade—this is crucial to achieve a seamless upgrade experience.

**Reinstall Test:** Ensure that app functionality can be restored by reinstalling your app after you upgrade the PC to Windows 10 from a down-level OS. If your app didn’t pass the upgrade test and you have not been able to narrow down the cause of these issues, it’s possible that a reinstall can restore lost functionality. A passing reinstall test indicates that parts of the app may not have been migrated to Windows 10.

**OS\\Device Features Test:** Ensure that your app works as expected if your app relies on specific functionality in the OS. Common areas for testing include the following, often against a selection of the commonly used PC models to ensure coverage:
-   Audio
-   USB device functionality (keyboard, mouse, memory stick, external hard disk, and so on)
-   Bluetooth
-   Graphics\\display (multi-monitor, projection, screen rotation, and so on)
-   Touch screen (orientation, on-screen keyboard, pen, gestures, and so on)
-   Touchpad (left\\right buttons, tap, scroll, and so on)
-   Pen (single\\double tap, press, hold, eraser, and so on)
-   Print\\Scan
-   Sensors (accelerometer, fusion, and so on)
-   Camera

### Step 3: Provide feedback

Let us know how your app is performing against flighted builds. As you discover issues with your app during testing, please log bugs via the partner portal if you have access, or through your Microsoft representative. We encourage this information so that we can build a quality experience for our users together.

### Step 4: Register on Windows 10
The [Ready for Windows 10](https://go.microsoft.com/fwlink/?LinkID=780580) website is a directory of software that supports Windows 10. It’s intended for IT administrators at companies and organizations worldwide that are considering Windows 10 for their deployments. IT administrators can check the site to see whether software deployed in their enterprise is supported in Windows 10.

## Related topics
[Windows 10 servicing options for updates and upgrades](introduction-to-windows-10-servicing.md)
 
 
