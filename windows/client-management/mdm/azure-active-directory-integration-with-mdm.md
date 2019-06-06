---
title: Azure Active Directory integration with MDM
description: Azure Active Directory is the world largest enterprise cloud identity management service.
ms.assetid: D03B0765-5B5F-4C7B-9E2B-18E747D504EE
ms.reviewer: 
manager: dansimp
ms.author: lomayor
ms.topic: article
ms.prod: w10
ms.technology: windows
author: lomayor
ms.date: 09/05/2017
---

<head>
<style type='text/css'> table.topalign td { vertical-align: top } </style>
</head>

# Azure Active Directory integration with MDM

Azure Active Directory is the world largest enterprise cloud identity management service. It’s used by millions of organizations to access Office 365 and thousands of business applications from Microsoft and third party software as a service (SaaS) vendors. Many of the rich Windows 10 experiences for organizational users (such as store access or OS state roaming) use Azure AD as the underlying identity infrastructure. Windows 10 provides an integrated configuration experience with Azure AD, allowing devices to be registered in Azure AD and enrolled into MDM in a smooth integrated flow.

Once a device is enrolled in MDM, the MDM can enforce compliance with corporate policies, add or remove apps, and more. Additionally, the MDM can report a device’s compliance Azure AD. This enables Azure AD to allow access to corporate resources or applications secured by Azure AD only to devices that comply with policies. To support these rich experiences with their MDM product, MDM vendors can integrate with Azure AD. This topic describes the steps involved.

## Connect to Azure AD

Several ways to connect your devices:

For company-owned devices:
-   Join Windows to a traditional Active Directory domain
-   Join Windows to Azure AD

For personal devices (BYOD):
-   Add a Microsoft work account to Windows

### Azure AD Join

Company owned devices are traditionally joined to the on-premises Active Directory domain of the organization. These devices can be managed using Group Policy or computer management software such as System Center Configuration Manager. In Windows 10, it’s also possible to manage domain joined devices with an MDM.

Windows 10 introduces a new way to configure and deploy corporate owned Windows devices. This mechanism is called Azure AD Join. Like traditional domain join, Azure AD Join allows devices to become known and managed by an organization. However, with Azure AD Join, Windows authenticates to Azure AD instead of authenticating to a domain controller.

Azure AD Join also enables company owned devices to be automatically enrolled in, and managed by an MDM. Furthermore, Azure AD Join can be performed on a store-bought PC, in the out-of-box experience (OOBE), which helps organizations streamline their device deployment. An administrator can require that users belonging to one or more groups enroll their devices for management with an MDM. If a user is configured to require automatic enrollment during Azure AD Join, this enrollment becomes a mandatory step to configure Windows. If the MDM enrollment fails, then the device will not be joined to Azure AD.

> **Important**  Every user enabled for automatic MDM enrollment with Azure AD Join must be assigned a valid [Azure Active Directory Premium](https://msdn.microsoft.com/library/azure/dn499825.aspx) license.

 
### BYOD scenario

Windows 10 also introduces a simpler way to configure personal devices to access work apps and resources. Users can add their Microsoft work account to Windows and enjoy simpler and safer access to the apps and resources of the organization. During this process, Azure AD detects if the organization has configured an MDM. If that’s the case, Windows attempts to enroll the device in MDM as part of the “add account” flow. It’s important to note that in the BYOD case, users can reject the MDM Terms of Use—in which case the device is not enrolled in MDM and access to corporate resources is typically restricted.

## Integrated MDM enrollment and UX

Two Azure AD MDM enrollment scenarios:
-   Joining a device to Azure AD for company-owned devices
-   Adding a work account to a personal device (BYOD)

In both scenarios, Azure AD is responsible for authenticating the user and the device, which provides a verified unique device identifier that can be used for MDM enrollment.

In both scenarios, the enrollment flow provides an opportunity for the MDM service to render it's own UI, using a web view. MDM vendors should use this to render the Terms of Use (TOU), which can be different for company-owned and BYOD devices. MDM vendors can also use the web view to render additional UI elements, such as asking for a one-time PIN, if this is part of the business process of the organization.

In the out-of-the-box scenario, the web view is 100% full screen, which gives the MDM vendor the ability to paint an edge-to-edge experience. With great power comes great responsibility! It is important that MDM vendors who chose to integrate with Azure AD to respect the Windows 10 design guidelines to the letter. This includes using a responsive web design and respecting the Windows accessibility guidelines, which includes the forward and back buttons that are properly wired to the navigation logic. Additional details are provided later in this topic.

For Azure AD enrollment to work for an Active Directory Federated Services (AD FS) backed Azure AD account, you must enable password authentication for the intranet on the ADFS service as described in solution \#2 in [this article](https://go.microsoft.com/fwlink/?LinkId=690246).

Once a user has an Azure AD account added to Windows 10 and enrolled in MDM, the enrollment can be manages through **Settings** > **Accounts** > **Work access**. Device management of either Azure AD Join for corporate scenarios or BYOD scenarios are similar.

> **Note**  Users cannot remove the device enrollment through the **Work access** user interface because management is tied to the Azure AD or work account.

 
### MDM endpoints involved in Azure AD integrated enrollment

Azure AD MDM enrollment is a two-step process:

1.  Display the Terms of Use and gather user consent.

    This is a passive flow where the user is redirected in a browser control (webview) to the URL of the Terms of Use of the MDM.

2.  Enroll the device.

    This is an active flow where Windows OMA DM agent calls the MDM service to enroll the device.

To support Azure AD enrollment, MDM vendors must host and expose a Terms of Use endpoint and an MDM enrollment endpoint.

<a href="" id="terms-of-use-endpoint-"></a>**Terms of Use endpoint**
Use this endpoint to inform users of the ways in which their device can be controlled by their organization. The Terms of Use page is responsible for collecting user’s consent before the actual enrollment phase begins.

It’s important to understand that the Terms of Use flow is a "black box" to Windows and Azure AD. The whole web view is redirected to the Terms of Use URL, and the user is expected to be redirected back after approving (or in some cases rejecting) the Terms. This design allows the MDM vendor to customize their Terms of Use for different scenarios (e.g., different levels of control are applied on BYOD vs. company-owned devices) or implement user/group based targeting (e.g. users in certain geographies may be subject to stricter device management policies).

The Terms of Use endpoint can be used to implement additional business logic, such as collecting a one-time PIN provided by IT to control device enrollment. However, MDM vendors must not use the Terms of Use flow to collect user credentials, which could lead to a highly degraded user experience. It’s not needed, since part of the MDM integration ensures that the MDM service can understand tokens issued by Azure AD.

<a href="" id="mdm-enrollment-endpoint"></a>**MDM enrollment endpoint**
After the users accepts the Terms of Use, the device is registered in Azure AD and the automatic MDM enrollment begins.

The following diagram illustrates the high-level flow involved in the actual enrollment process. The device is first registered with Azure AD. This process assigns a unique device identifier to the device and presents the device with the ability to authenticate itself with Azure AD (device authentication). Subsequently, the device is enrolled for management with the MDM. This is done by calling the enrollment endpoint and requesting enrollment for the user and device. At this point, the user has been authenticated and device has been registered and authenticated with Azure AD. This information is made available to the MDM in the form of claims within an access token presented at the enrollment endpoint.

![azure ad enrollment flow](images/azure-ad-enrollment-flow.png)

The MDM is expected to use this information about the device (Device ID) when reporting device compliance back to Azure AD using the [Azure AD Graph API](https://go.microsoft.com/fwlink/p/?LinkID=613654). A sample for reporting device compliance is provided later in this topic.

## Make the MDM a reliable party of Azure AD

To participate in the integrated enrollment flow outlined in the previous section, the MDM must be able to consume access tokens issued by Azure AD. To report compliance to Azure AD, the MDM must be able to authenticate itself to Azure AD and obtain authorization in the form of an access token that allows it to invoke the [Azure AD Graph API](https://go.microsoft.com/fwlink/p/?LinkID=613654).

### Add a cloud-based MDM

A cloud-based MDM is a SaaS application that provides device management capabilities in the cloud. It is a multi-tenant application. This application is registered with Azure AD in the home tenant of the MDM vendor. When an IT admin decides to use this MDM solution, an instance of this application is made visible in the tenant of the customer.

The MDM vendor must first register the application in their home tenant and mark it as a multi-tenant application. Here a code sample from GitHub that explains how to add multi-tenant applications to Azure AD, [WepApp-WebAPI-MultiTenant-OpenIdConnect-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=613661).

> **Note**  For the MDM provider, if you don't have an existing Azure AD tentant with an Azure AD subscription that you manage, follow the step-by-step guide in [Add an Azure AD tenant and Azure AD subscription](add-an-azure-ad-tenant-and-azure-ad-subscription.md) to set up a tenant, add a subscription, and manage it via the Azure Portal.

 
The keys used by the MDM application to request access tokens from Azure AD are managed within the tenant of the MDM vendor and not visible to individual customers. The same key is used by the multi-tenant MDM application to authenticate itself with Azure AD, regardless of the customer tenent to which the device being managed belongs.

Use the following steps to register a cloud-based MDM application with Azure AD. At this time, you need to work with the Azure AD engineering team to expose this application through the Azure AD app gallery.

1.  Login to the Azure Management Portal using an admin account in your home tenant.
2.  In the left navigation, click on the **Active Directory**.
3.  Click the directory tenant where you want to register the application.

    Ensure that you are logged into your home tenant.
4.  Click the **Applications** tab.
5.  In the drawer, click **Add**.
6.  Click **Add an application my organization is developing**.
7.  Enter a friendly name for the application, such as ContosoMDM, select **Web Application and or Web API**, then click **Next**.
8.  Enter the login URL for your MDM service.
9.  For the App ID, enter **https://&lt;your\_tenant\_name>/ContosoMDM**, then click OK.
10. While still in the Azure portal, click the **Configure** tab of your application.
11. Mark your application as **multi-tenant**.
12. Find the client ID value and copy it.

    You will need this later when configuring your application. This client ID is used when obtaining access tokens and adding applications to the Azure AD app gallery.
13. Generate a key for your application and copy it.

    You will need this to call the Azure AD Graph API to report device compliance. This is covered in the subsequent section.

For more information about how to register a sample application with Azure AD, see the steps to register the **TodoListService Web API** in [NativeClient-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=613667)

### Add an on-premises MDM

An on-premises MDM application is inherently different that a cloud MDM. It is a single-tenant application that is present uniquely within the tenant of the customer. Therefore, customers must add the application directly within their own tenant. Additionally, each instance of an on-premises MDM application must be registered separately and has a separate key for authentication with Azure AD.

The customer experience for adding an on-premises MDM to their tenant is similar to that as the cloud-based MDM. There is an entry in the Azure AD app gallery to add an on-premises MDN to the tenant and administrators can configure the required URLs for enrollment and Terms of Use.

Your on-premises MDM product must expose a configuration experience where administrators can provide the client ID, app ID, and the key configured in their directory for that MDM application. You can use this client ID and key to request tokens from Azure AD when reporting device compliance.

For more information about registering applications with Azure AD, see [Basics of Registering an Application in Azure AD](https://go.microsoft.com/fwlink/p/?LinkId=613671).

### Key management and security guidelines

The application keys used by your MDM service are a sensitive resource. They should be protected and rolled over periodically for greater security. Access tokens obtained by your MDM service to call the Azure AD Graph API are bearer tokens and should be protected to avoid unauthorized disclosure.

For security best practices, see [Windows Azure Security Essentials](https://go.microsoft.com/fwlink/p/?LinkId=613715).

You can rollover the application keys used by a cloud-based MDM service without requiring a customer interaction. There is a single set of keys across all customer tenants that are managed by the MDM vendor in their Azure AD tenant.

For the on-premises MDM, the keys used to authenticate with Azure AD are within the tenant of the customer and must be rolled over by the customer's administrator. In this case, you should provide guidance to the customers about rolling over and protecting the keys to improved security.

## Publish your MDM app to Azure AD app gallery


IT administrators use the Azure AD app gallery to add an MDM for their organization to use. The app gallery is a rich store with over 2400 SaaS applications that are integrated with Azure AD.

The following image illustrates how MDM applications will show up in the Azure app gallery in a category dedicated to MDM software.

![azure ad add an app for mdm](images/azure-ad-app-gallery.png)

### Add cloud-based MDM to the app gallery

You should work with the Azure AD engineering team if your MDM application is cloud-based. The following table shows the required information to create an entry in the Azure AD app gallery.

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p><strong>Application ID</strong></p></td>
<td style="vertical-align:top"><p>The client ID of your MDM app that is configured within your tenant. This is the unique identifier for your multi-tenant app.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><strong>Publisher</strong></p></td>
<td style="vertical-align:top"><p>A string that identifies the publisher of the app.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p><strong>Application URL</strong></p></td>
<td style="vertical-align:top"><p>A URL to the landing page of your app where your administrators can get more information about the MDM app and contains a link to the landing page of your app. This URL is not used for the actual enrollment.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p><strong>Description</strong></p></td>
<td style="vertical-align:top"><p>A brief description of your MDM app, which must be under 255 characters.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p><strong>Icons</strong></p></td>
<td style="vertical-align:top"><p>A set of logo icons for the MDM app. Dimensions: 45 X 45, 150 X 122, 214 X 215</p></td>
</tr>
</tbody>
</table>

 
### Add on-premises MDM to the app gallery

There are no special requirements for adding on-premises MDM to the app gallery.There is a generic entry for administrator to add an app to their tenant.

However, key management is different for on-premises MDM. You must obtain the client ID (app ID) and key assigned to the MDM app within the customer's tenant. These are used to obtain authorization to access the Azure AD Graph API and for reporting device compliance.

## Themes

The pages rendered by the MDM as part of the integrated enrollment process must use Windows 10 templates ([Download the Windows 10 templates and CSS files](https://download.microsoft.com/download/3/E/5/3E535D52-6432-47F6-B460-4E685C5D543A/MDM-ISV_1.1.3.zip)). This is important for enrollment during the Azure AD Join experience in OOBE where all of the pages are edge-to-edge HTML pages. Don't try to copy the templates because you'll never get the button placement right. Using the shared Windows 10 templates ensure a seamless experience for the customers.

There are 3 distinct scenarios:

1.  MDM enrollment as part of Azure AD Join in Windows OOBE.
2.  MDM enrollment as part of Azure AD Join, after Windows OOBE from **Settings**.
3.  MDM enrollment as part of adding a Microsoft work account on a personal device (BYOD).

Scenarios 1, 2, and 3 are available in Windows 10 Pro, Windows 10 Enterprise, and Windows 10 Education. Scenarios 1 and 3 are available in Windows 10 Mobile. Support for scenario 1 was added in Windows 10 Mobile, version 1511.

The CSS files provided by Microsoft contains version information and we recommend that you use the latest version. There are separate CSS files for desktop and mobile devices, OOBE, and post-OOBE experiences. [Download the Windows 10 templates and CSS files](https://download.microsoft.com/download/3/E/5/3E535D52-6432-47F6-B460-4E685C5D543A/MDM-ISV_1.1.3.zip).

### Using themes

An MDM page must adhere to a predefined theme depending on the scenario that is displayed. For example, if the CXH-HOSTHTTP header is FRX, which is the OOBE scenario, the page must support a dark theme with blue background color, which uses WinJS file Ui-dark.css ver 4.0 and oobe-desktop.css ver 1.0.4.

<table>
<colgroup>
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
<col width="20%" />
</colgroup>
<thead>
<tr class="header">
<th>CXH-HOST (HTTP HEADER)</th>
<th>Senario</th>
<th>Background Theme</th>
<th>WinJS</th>
<th>Scenario CSS</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">FRX</td>
<td style="vertical-align:top">OOBE</td>
<td style="vertical-align:top">Dark theme + blue background color</td>
<td style="vertical-align:top">Filename: Ui-dark.css</td>
<td style="vertical-align:top">Filename: oobe-dekstop.css</td>
</tr>
<tr class="even">
<td style="vertical-align:top">MOSET</td>
<td style="vertical-align:top">Settings/
<p>Post OOBE</p></td>
<td style="vertical-align:top">Light theme</td>
<td style="vertical-align:top">Filename: Ui-light.css</td>
<td style="vertical-align:top">Filename: settings-desktop.css</td>
</tr>
</tbody>
</table>

 
## Terms of Use protocol semantics

The Terms of Use endpoint is hosted by the MDM server. During the Azure AD Join protocol flow, Windows performs a full-page redirect to this endpoint. This enables the MDM to display the terms and conditions that apply and allows the user to accept or reject the terms associated with enrollment. After the user accepts the terms, the MDM redirects back to Windows for the enrollment process to continue.

### Redirect to the Terms of Use endpoint

This is a full page redirect to the Terms of User endpoint hosted by the MDM. Here is an example URL, https:<span></span>//fabrikam.contosomdm.com/TermsOfUse.

The following parameters are passed in the query string:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>redirect_uri</p></td>
<td style="vertical-align:top"><p>After the user accepts or rejects the Terms of Use, the user is redirected to this URL.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>client-request-id</p></td>
<td style="vertical-align:top"><p>A GUID that is used to correlate logs for diagnostic and debugging purposes. You use this parameter to log or trace the state of the enrollment request to help find the root cause in case of failures.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>api-version</p></td>
<td style="vertical-align:top"><p>Specifies the version of the protocol requested by the client. This provides a mechanism to support version revisions of the protocol.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>mode</p></td>
<td style="vertical-align:top"><p>Specifies that the device is corporate owned when mode=azureadjoin. This parameter is not present for BYOD devices.</p></td>
</tr>
</tbody>
</table>

 
### Access token

A bearer access token is issued by Azure AD is passed in the authorization header of the HTTP request. Here is a typical format:

**Authorization: Bearer** CI6MTQxmCF5xgu6yYcmV9ng6vhQfaJYw…

The following claims are expected in the access token passed by Windows to the Terms of Use endpoint:

<table>
<colgroup>
<col width="50%" />
<col width="50%" />
</colgroup>
<thead>
<tr class="header">
<th>Item</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>Object ID</p></td>
<td style="vertical-align:top"><p>Identifier of the user object corresponding to the authenticated user.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>UPN</p></td>
<td style="vertical-align:top"><p>A claim containing the user principal name (UPN) of the authenticated user.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>TID</p></td>
<td style="vertical-align:top"><p>A claim representing the tenant ID of the tenant. In the example above, it&#39;s Fabrikam.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Resource</p></td>
<td style="vertical-align:top"><p>A sanitized URL representing the MDM application. Example, https:<span></span>//fabrikam.contosomdm.com.</p></td>
</tr>
</tbody>
</table>
 
&gt; <strong>Note</strong>  There is no device ID claim in the access token because the device may not yet be enrolled at this time.

 
To retrieve the list of group memberships for the user, you can use the [Azure AD Graph API](https://go.microsoft.com/fwlink/p/?LinkID=613654).

Here's an example URL.

``` syntax
https://fabrikam.contosomdm.com/TermsOfUse?redirect_uri=ms-appx-web://ContosoMdm/ToUResponse&client-request-id=34be581c-6ebd-49d6-a4e1-150eff4b7213&api-version=1.0
Authorization: Bearer eyJ0eXAiOi
```

The MDM is expected to validate the signature of the access token to ensure it was issued by Azure AD and ensure that recipient is appropriate.

### Terms of Use content

The MDM may perform other additional redirects as necessary before displaying the Terms of Use content to the user. The appropriate Terms of Use content should be returned to the caller (Windows) so it can be displayed to the end user in the browser control.

The Terms of Use content should contain the following buttons:

-   **Accept** - the user accepts the Terms of Use and proceeds with enrollment.
-   **Decline** - the user declines and stops the enrollment process.

The Terms of Use content must be consistent with the theme used for the other pages rendered during this process.

### Terms of Use endpoint processing logic

At this point, the user is on the Terms of Use page shown during the OOBE or from the Setting experiences. The user has the following options on the page:

-   **User clicks on the Accept button** - The MDM must redirect to the URI specified by the redirect\_uri parameter in the incoming request. The following query string parameters are expected:
    -   **IsAccepted** - This mandatory Boolean must be set to true.
    -   **OpaqueBlob** - Required parameter if the user accepts. The MDM may use this make some information available to the enrollment endpoint. The value persisted here is made available unchanged at the enrollment endpoint. The MDM may use this parameter for correlation purposes.
    -   Here is an example redirect - ms-appx-web://MyApp1/ToUResponse?OpaqueBlob=value&IsAccepted=true
-   **User clicks on the Decline button** - The MDM must redirect to the URI specified in redirect\_uri in the incoming request. The following query string parameters are expected:
    -   **IsAccepted** - This mandatory Boolean must be set to false. This also applies if the user skipped the Terms of Use.
    -   **OpaqueBlob** - This parameter is not expected to be used because the enrollment is stopped with an error message displayed to the user.

Users skip the Terms of Use when they are adding a Microsoft work account to their device. However, then cannot skip it during the Azure AD Join process. The decline button must not be shown in the Azure AD Join process because MDM enrollment cannot be declined by the user if configured by the administrator for the Azure AD Join.

We recommend that you send the client-request-id parameters in the query string as part of this redirect response.

### Terms Of Use Error handling

If an error was encountered during the terms of use processing, the MDM can return two parameters – an error and error\_description parameter in its redirect request back to Windows. Note that the URL should be encoded and the contents of the error\_description should be in English plain text. This text is not visible to the end-user and therefore localization of the error description text is not a concern.

Here is the URL format:

``` syntax
HTTP/1.1 302
Location:
<redirect_uri>?error=access_denied&error_description=Access%20is%20denied%2E


Example:
HTTP/1.1 302
Location: ms-appx-web://App1/ToUResponse?error=access_denied&error_description=Access%20is%20denied%2E
```

The following table shows the error codes.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Cause</th>
<th>HTTP status</th>
<th>Error</th>
<th>Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>api-version</p></td>
<td style="vertical-align:top"><p>302</p></td>
<td style="vertical-align:top"><p>invalid_request</p></td>
<td style="vertical-align:top"><p>unsupported version</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Tenant or user data are missingor other required prerequisites for device enrollment are not met</p></td>
<td style="vertical-align:top"><p>302</p></td>
<td style="vertical-align:top"><p>unauthorized_client</p></td>
<td style="vertical-align:top"><p>unauthorized user or tenant</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Azure AD token validation failed</p></td>
<td style="vertical-align:top"><p>302</p></td>
<td style="vertical-align:top"><p>unauthorized_client</p></td>
<td style="vertical-align:top"><p>unauthorized_client</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>internal service error</p></td>
<td style="vertical-align:top"><p>302</p></td>
<td style="vertical-align:top"><p>server_error</p></td>
<td style="vertical-align:top"><p>internal service error</p></td>
</tr>
</tbody>
</table>

 
## Enrollment protocol with Azure AD

With Azure integrated MDM enrollment, there is no discovery phase and the discovery URL is directly passed down to the system from Azure. The following table shows the comparison between the traditional and Azure enrollments.

<table>
<colgroup>
<col width="25%" />
<col width="25%" />
<col width="25%" />
<col width="25%" />
</colgroup>
<thead>
<tr class="header">
<th>Detail</th>
<th>Traditional MDM enrollment</th>
<th>Azure AD Join (corporate-owned device)</th>
<th>Azure AD add a work account (user-owned device)</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top"><p>MDM auto-discovery using email address to retrieve MDM discovery URL</p></td>
<td style="vertical-align:top"><p>Enrollment</p></td>
<td style="vertical-align:top"><p>Not applicable</p>
<p>Discovery URL provisioned in Azure</p></td>
<td style="vertical-align:top"><p></p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Uses MDM discovery URL</p></td>
<td style="vertical-align:top"><p>Enrollment</p>
<p>Enrollment renewal</p>
<p>ROBO</p></td>
<td style="vertical-align:top"><p>Enrollment</p>
<p>Enrollment renewal</p>
<p>ROBO</p></td>
<td style="vertical-align:top"><p>Enrollment</p>
<p>Enrollment renewal</p>
<p>ROBO</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Is MDM enrollment required?</p></td>
<td style="vertical-align:top"><p>Yes</p></td>
<td style="vertical-align:top"><p>Yes</p></td>
<td style="vertical-align:top"><p>No</p>
<p>User can decline.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Authentication type</p></td>
<td style="vertical-align:top"><p>OnPremise</p>
<p>Federated</p>
<p>Certificate</p></td>
<td style="vertical-align:top"><p>Federated</p></td>
<td style="vertical-align:top"><p>Federated</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>EnrollmentPolicyServiceURL</p></td>
<td style="vertical-align:top"><p>Optional (all auth)</p></td>
<td style="vertical-align:top"><p>Optional (all auth)</p>
<p></p></td>
<td style="vertical-align:top"><p>Optional (all auth)</p>
<p></p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>EnrollmentServiceURL</p></td>
<td style="vertical-align:top"><p>Required (all auth)</p></td>
<td style="vertical-align:top"><p>Used (all auth)</p></td>
<td style="vertical-align:top"><p>Used (all auth)</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>EnrollmentServiceURL includes OS Version, OS Platform, and other attributes provided by MDM discovery URL</p></td>
<td style="vertical-align:top"><p>Highly recommended</p></td>
<td style="vertical-align:top"><p>Highly recommended</p></td>
<td style="vertical-align:top"><p>Highly recommended</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>AuthenticationServiceURL used</p></td>
<td style="vertical-align:top"><p>Used (Federated auth)</p></td>
<td style="vertical-align:top"><p>Skipped</p></td>
<td style="vertical-align:top"><p>Skipped</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>BinarySecurityToken</p></td>
<td style="vertical-align:top"><p>Custom per MDM</p></td>
<td style="vertical-align:top"><p>Azure AD issued token</p></td>
<td style="vertical-align:top"><p>Azure AD issued token</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>EnrollmentType</p></td>
<td style="vertical-align:top"><p>Full</p></td>
<td style="vertical-align:top"><p>Device</p></td>
<td style="vertical-align:top"><p>Full</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>Enrolled certificate type</p></td>
<td style="vertical-align:top"><p>User certificate</p></td>
<td style="vertical-align:top"><p>Device certificate</p></td>
<td style="vertical-align:top"><p>User certificate</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>Enrolled certificate store</p></td>
<td style="vertical-align:top"><p>My/User</p></td>
<td style="vertical-align:top"><p>My/System</p></td>
<td style="vertical-align:top"><p>My/User</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>CSR subject name</p></td>
<td style="vertical-align:top"><p>User Principal Name</p></td>
<td style="vertical-align:top"><p>Device ID</p></td>
<td style="vertical-align:top"><p>User Principal Name</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top"><p>EnrollmentData Terms of Use binary blob as AdditionalContext for EnrollmentServiceURL</p></td>
<td style="vertical-align:top"><p>Not supported</p></td>
<td style="vertical-align:top"><p>Supported</p></td>
<td style="vertical-align:top"><p>Supported</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top"><p>CSPs accessible during enrollment</p></td>
<td style="vertical-align:top"><p>Windows 10 support:</p>
<ul>
<li>DMClient</li>
<li>CertificateStore</li>
<li>RootCATrustedCertificates</li>
<li>ClientCertificateInstall</li>
<li>EnterpriseModernAppManagement</li>
<li>PassportForWork</li>
<li>Policy</li>
<li>w7 APPLICATION</li>
</ul>
<p>Legacy support:</p>
<ul>
<li>EnterpriseAppManagement (Windows Phone 8.1)</li>
</ul></td>
<td style="vertical-align:top"><p>same as traditional MDM enrollment</p></td>
<td style="vertical-align:top"><p>same as traditional MDM enrollment</p></td>
</tr>
</tbody>
</table>

 

## Management protocol with Azure AD

There are two different MDM enrollment types that take advantage of integration with Azure AD and therefore make use of Azure AD user and device identities. Depending on the enrollment type, the MDM service may need to manage a single user or multiple users.

<a href="" id="multiple-user-management-for-azure-ad-joined-devices"></a>**Multiple user management for Azure AD joined devices**
In this scenario the MDM enrollment applies to every Azure AD user who logs on to the Azure AD joined device - call this enrollment type a device enrollment or a multi-user enrollment. The management server can determine the user identity, conclude what policies are targeted for this user, and send corresponding policies to the device. To allow management server to identify current user that is logged on to the device, the OMA DM client uses the Azure AD user tokens. Each management session contains an additional HTTP header that contains an Azure AD user token. This information is provided in the DM package sent to the management server. However, in some circumstances Azure AD user token is not sent over to the management server. One such scenario happens immediately after MDM enrollments completes during Azure AD join process. Until Azure AD join process is finished and Azure AD user logs on to the machine, Azure AD user token is not available to OMA-DM process. Typically MDM enrollment completes before Azure AD user logs on to machine and the initial management session does not contain an Azure AD user token. The management server should check if the token is missing and only send device policies in such case. Another possible reason for a missing Azure AD token in the OMA-DM payload is when a guest user is logged on to the device.

<a href="" id="adding-a-work-account-and-mdm-enrollment-to-a-device"></a>**Adding a work account and MDM enrollment to a device**
In this scenario, the MDM enrollment applies to a single user who initially added his work account and enrolled the device. In this enrollment type the management server can ignore Azure AD tokens that may be sent over during management session. Whether Azure AD token is present or missing, the management server sends both user and device policies to the device.

<a href="" id="evaluating-azure-ad-user-tokens"></a>**Evaluating Azure AD user tokens**
The Azure AD token is in the HTTP Authorization header in the following format:

``` syntax
Authorization:Bearer <Azure AD User Token Inserted here>
```

Additional claims may be present in the Azure AD token, such as:

-   User - user currently logged in
-   Device compliance - value set the MDM service into Azure
-   Device ID - identifies the device that is checking in
-   Tenant ID

Access token issued by Azure AD are JSON web tokens (JWTs). A valid JWT token is presented by Windows at the MDM enrollment endpoint to initiate the enrollment process. There are a couple of options to evaluate the tokens:

-   Use the JWT Token Handler extension for WIF to validate the contents of the access token and extract claims required for use. For more information, see [JSON Web Token Handler](https://go.microsoft.com/fwlink/p/?LinkId=613820).
-   Refer to the Azure AD authentication code samples to get a sample for working with access tokens. For an example, see [NativeClient-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=613667).

## Device Alert 1224 for Azure AD user token

An alert is sent when the DM session starts and there is an Azure AD user logged in. The alert is sent in OMA DM pkg\#1. Here's an example:

``` syntax
Alert Type: com.microsoft/MDM/AADUserToken

Alert sample:
<SyncBody>
 <Alert>
  <CmdID>1</CmdID>
  <Data>1224</Data>
  <Item>
   <Meta>
    <Type xmlns=”syncml:metinf”>com.microsoft/MDM/AADUserToken</Type>
   </Meta>
   <Data>UserToken inserted here</Data>
  </Item>
 </Alert>
 … other xml tags …
</SyncBody>
```

## Determine when a user is logged in through polling

An alert is send to the MDM server in DM package\#1.

-   Alert type - com.microsoft/MDM/LoginStatus
-   Alert format - chr
-   Alert data - provide login status information for the current active logged in user.
    -   Logged in user who has an Azure AD account - predefined text: user.
    -   Logged in user without an Azure AD account- predefined text: others.
    -   No active user - predefined text:none

Here's an example.

``` syntax
<SyncBody>
 <Alert>
  <CmdID>1</CmdID>
  <Data>1224</Data>
  <Item>
   <Meta>
    <Type xmlns=”syncml:metinf”>com.microsoft/MDM/LoginStatus</Type>
   </Meta>
   <Data>user</Data>
  </Item>
 </Alert>
 … other xml tags …
</SyncBody>
```

## Report device compliance to Azure AD

Once a device is enrolled with the MDM for management, corporate policies configured by the IT administrator are enforced on the device. The device compliance with configured policies is evaluated by the MDM and then reported to Azure AD. This section covers the Graph API call you can use to report a device compliance status to Azure AD.

For a sample that illustrates how an MDM can obtain an access token using OAuth 2.0 client\_credentials grant type, see [Daemon\_CertificateCredential-DotNet](https://go.microsoft.com/fwlink/p/?LinkId=613822).

-   **Cloud-based MDM** - If your product is a cloud-based multi-tenant MDM service, you have a single key configured for your service within your tenant. Use this key to authenticate the MDM service with Azure AD, in order to obtain authorization.
-   **On-premises MDM** - If your product is an on-premises MDM, customers must configure your product with the key used to authenticate with Azure AD. This is because each on-premises instance of your MDM product has a different tenant-specific key. For this purpose, you may need to expose a configuration experience in your MDM product that enables administrators to specify the key to be used to authenticate with Azure AD.

### Use Azure AD Graph API

The following sample REST API call illustrates how an MDM can use the Azure AD Graph API to report compliance status of a device currently being managed by it.

> **Note**  This is only applicable for approved MDM apps on Windows 10 devices.

``` syntax
Sample Graph API Request:

PATCH https://graph.windows.net/contoso.com/devices/db7ab579-3759-4492-a03f-655ca7f52ae1?api-version=beta HTTP/1.1
Authorization: Bearer eyJ0eXAiO………
Accept: application/json
Content-Type: application/json
{  "isManaged":true,
   "isCompliant":true
}
```

Where:

-   **contoso.com** – This is the name of the Azure AD tenant to whose directory the device has been joined.
-   **db7ab579-3759-4492-a03f-655ca7f52ae1** – This is the device identifier for the device whose compliance information is being reported to Azure AD.
-   **eyJ0eXAiO**……… – This is the bearer access token issued by Azure AD to the MDM that authorizes the MDM to call the Azure AD Graph API. The access token is placed in the HTTP authorization header of the request.
-   **isManaged** and **isCompliant** - These Boolean attributes indicates compliance status.
-   **api-version** - Use this parameter to specify which version of the graph API is being requested.

Response:

-   Success - HTTP 204 with No Content.
-   Failure/Error - HTTP 404 Not Found. This error may be returned if the specified device or tenant cannot be found.

## Data loss during unenrollment from Azure Active Directory Join

When a user is enrolled into MDM through Azure Active Directory Join and then disconnects the enrollment, there is no warning that the user will lose Windows Information Protection (WIP) data. The disconnection message does not indicate the loss of WIP data.

![aadj unenerollment](images/azure-ad-unenrollment.png)

## Error codes

<table>
<colgroup>
<col width="33%" />
<col width="33%" />
<col width="33%" />
</colgroup>
<thead>
<tr class="header">
<th>Code</th>
<th>ID</th>
<th>Error message</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td style="vertical-align:top">0x80180001</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // MENROLL_E_DEVICE_MESSAGE_FORMAT_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180002</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // MENROLL_E_DEVICE_AUTHENTICATION_ERROR</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180003</td>
<td style="vertical-align:top">&quot;idErrorAuthorizationFailure&quot;, // MENROLL_E_DEVICE_AUTHORIZATION_ERROR</td>
<td style="vertical-align:top"><p>This user is not authorized to enroll. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180004</td>
<td style="vertical-align:top">&quot;idErrorMDMCertificateError&quot;, // MENROLL_E_DEVICE_CERTIFCATEREQUEST_ERROR</td>
<td style="vertical-align:top"><p>There was a certificate error. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180005</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // MENROLL_E_DEVICE_CONFIGMGRSERVER_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180006</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // MENROLL_E_DEVICE_CONFIGMGRSERVER_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180007</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // MENROLL_E_DEVICE_INVALIDSECURITY_ERROR</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180008</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // MENROLL_E_DEVICE_UNKNOWN_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180009</td>
<td style="vertical-align:top">&quot;idErrorAlreadyInProgress&quot;, // MENROLL_E_ENROLLMENT_IN_PROGRESS</td>
<td style="vertical-align:top"><p>Another enrollment is in progress. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x8018000A</td>
<td style="vertical-align:top">&quot;idErrorMDMAlreadyEnrolled&quot;, // MENROLL_E_DEVICE_ALREADY_ENROLLED</td>
<td style="vertical-align:top"><p>This device is already enrolled. You can contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x8018000D</td>
<td style="vertical-align:top">&quot;idErrorMDMCertificateError&quot;, // MENROLL_E_DISCOVERY_SEC_CERT_DATE_INVALID</td>
<td style="vertical-align:top"><p>There was a certificate error. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x8018000E</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // MENROLL_E_PASSWORD_NEEDED</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x8018000F</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // MENROLL_E_WAB_ERROR</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180010</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // MENROLL_E_CONNECTIVITY</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180012</td>
<td style="vertical-align:top">&quot;idErrorMDMCertificateError&quot;, // MENROLL_E_INVALIDSSLCERT</td>
<td style="vertical-align:top"><p>There was a certificate error. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180013</td>
<td style="vertical-align:top">&quot;idErrorDeviceLimit&quot;, // MENROLL_E_DEVICECAPREACHED</td>
<td style="vertical-align:top"><p>Looks like there are too many devices or users for this account. Contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180014</td>
<td style="vertical-align:top">&quot;idErrorMDMNotSupported&quot;, // MENROLL_E_DEVICENOTSUPPORTED</td>
<td style="vertical-align:top"><p>This feature is not supported. Contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180015</td>
<td style="vertical-align:top">&quot;idErrorMDMNotSupported&quot;, // MENROLL_E_NOTSUPPORTED</td>
<td style="vertical-align:top"><p>This feature is not supported. Contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180016</td>
<td style="vertical-align:top">&quot;idErrorMDMRenewalRejected&quot;, // MENROLL_E_NOTELIGIBLETORENEW</td>
<td style="vertical-align:top"><p>The server did not accept the request. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180017</td>
<td style="vertical-align:top">&quot;idErrorMDMAccountMaintenance&quot;, // MENROLL_E_INMAINTENANCE</td>
<td style="vertical-align:top"><p>The service is in maintenance. You can try to do this again later or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x80180018</td>
<td style="vertical-align:top">&quot;idErrorMDMLicenseError&quot;, // MENROLL_E_USERLICENSE</td>
<td style="vertical-align:top"><p>There was an error with your license. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x80180019</td>
<td style="vertical-align:top">&quot;idErrorInvalidServerConfig&quot;, // MENROLL_E_ENROLLMENTDATAINVALID</td>
<td style="vertical-align:top"><p>Looks like the server is not correctly configured. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">&quot;rejectedTermsOfUse&quot;</td>
<td style="vertical-align:top">&quot;idErrorRejectedTermsOfUse&quot;</td>
<td style="vertical-align:top"><p>Your organization requires that you agree to the Terms of Use. Please try again or ask your support person for more information.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c0001</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // DSREG_E_DEVICE_MESSAGE_FORMAT_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c0002</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // DSREG_E_DEVICE_AUTHENTICATION_ERROR</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c0003</td>
<td style="vertical-align:top">&quot;idErrorAuthorizationFailure&quot;, // DSREG_E_DEVICE_AUTHORIZATION_ERROR</td>
<td style="vertical-align:top"><p>This user is not authorized to enroll. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c0006</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // DSREG_E_DEVICE_INTERNALSERVICE_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c000B</td>
<td style="vertical-align:top">&quot;idErrorUntrustedServer&quot;, // DSREG_E_DISCOVERY_REDIRECTION_NOT_TRUSTED</td>
<td style="vertical-align:top">The server being contacted is not trusted. Contact your system administrator with the error code {0}.</td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c000C</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // DSREG_E_DISCOVERY_FAILED</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c000E</td>
<td style="vertical-align:top">&quot;idErrorDeviceLimit&quot;, // DSREG_E_DEVICE_REGISTRATION_QUOTA_EXCCEEDED</td>
<td style="vertical-align:top"><p>Looks like there are too many devices or users for this account. Contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c000F</td>
<td style="vertical-align:top">&quot;idErrorDeviceRequiresReboot&quot;, // DSREG_E_DEVICE_REQUIRES_REBOOT</td>
<td style="vertical-align:top"><p>A reboot is required to complete device registration.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c0010</td>
<td style="vertical-align:top">&quot;idErrorInvalidCertificate&quot;, // DSREG_E_DEVICE_AIK_VALIDATION_ERROR</td>
<td style="vertical-align:top"><p>Looks like you have an invalid certificate. Contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c0011</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // DSREG_E_DEVICE_ATTESTATION_ERROR</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c0012</td>
<td style="vertical-align:top">&quot;idErrorServerConnectivity&quot;, // DSREG_E_DISCOVERY_BAD_MESSAGE_ERROR</td>
<td style="vertical-align:top"><p>There was an error communicating with the server. You can try to do this again or contact your system administrator with the error code {0}</p></td>
</tr>
<tr class="odd">
<td style="vertical-align:top">0x801c0013</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // DSREG_E_TENANTID_NOT_FOUND</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
<tr class="even">
<td style="vertical-align:top">0x801c0014</td>
<td style="vertical-align:top">&quot;idErrorAuthenticationFailure&quot;, // DSREG_E_USERSID_NOT_FOUND</td>
<td style="vertical-align:top"><p>There was a problem authenticating your account or device. You can try to do this again or contact your system administrator with the error code {0}.</p></td>
</tr>
</tbody>
</table>

 

 





