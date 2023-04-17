---
title: Bulk enrollment
description: Bulk enrollment is an efficient way to set up a large number of devices to be managed by an MDM server without the need to reimage the devices. In Windows 10 and Windows 11.
MS-HAID: 
  - 'p\_phdevicemgmt.bulk\_enrollment'
  - 'p\_phDeviceMgmt.bulk\_enrollment\_using\_Windows\_provisioning\_tool'
ms.reviewer: 
manager: aaroncz
ms.author: vinpa
ms.topic: article
ms.prod: windows-client
ms.technology: itpro-manage
author: vinaypamnani-msft
ms.date: 06/26/2017
---

# Bulk enrollment

Bulk enrollment is an efficient way to set up a large number of devices to be managed by an MDM server without the need to reimage the devices. In Windows 10 and 11 desktop devices, you can use the [Provisioning CSP](mdm/provisioning-csp.md) for bulk enrollment, except for the Azure Active Directory Join (Cloud Domain Join) enrollment scenario.

## Typical use cases

-   Set up devices in bulk for large organizations to be managed by MDM.
-   Set up kiosks, such as ATMs or point-of-sale (POS) terminals.
-   Set up school computers.
-   Set up industrial machinery.
-   Set handheld POS devices.

On the desktop, you can create an Active Directory account, such as "enrollment@contoso.com" and give it only the ability to join the domain. Once the desktop is joined with that admin account, then standard users in the domain can sign in to use it. This account is especially useful in getting a large number of desktop ready to use within a domain.

On the desktop and mobile devices, you can use an enrollment certificate or enrollment username and password, such as `enroll@contoso.com` and `enrollmentpassword`. These credentials are used in the provisioning package, which you can use to enroll multiple devices to the MDM service. Once the devices are joined, many users can use them.

> [!NOTE]
> -   Bulk-join is not supported in Azure Active Directory Join.
> -   Bulk enrollment does not work in Intune standalone environment.
> -   Bulk enrollment works in Microsoft Intune where the ppkg is generated from the Configuration Manager console.
> -   To change bulk enrollment settings, login to **AAD**, then **Devices**, and then click **Device Settings**. Change the number under **Maximum number of devices per user**.
> -   Bulk Token creation is not supported with federated accounts.

## What you need

-   Windows 10 devices.
-   Windows Configuration Designer (WCD) tool.

    To get the WCD tool, download from the [Microsoft Store](https://www.microsoft.com/store/productId/9NBLGGH4TX22). For more information about the WCD tool, see [Windows Configuration Designer](/windows/configuration/provisioning-packages/provisioning-install-icd) and [Getting started with Windows WCD](/windows/configuration/provisioning-packages/provisioning-install-icd).
-   Enrollment credentials (domain account for enrollment, generic enrollment credentials for MDM, enrollment certificate for MDM.).
-   Wi-Fi credentials, computer name scheme, and anything else required by your organization.

    Some organizations require custom APNs to be provisioned before talking to the enrollment endpoint or custom VPN to join a domain.

## Create and apply a provisioning package for on-premises authentication

Using the WCD, create a provisioning package using the enrollment information required by your organization. Ensure that you have all the configuration settings.

1. Open the WCD tool.
2. Select **Advanced Provisioning**.

   ![icd start page.](images/bulk-enrollment7.png)
3. Enter a project name and select **Next**.
4. Select **All Windows editions**, since Provisioning CSP is common to all Windows editions, then select **Next**.
5. Skip **Import a provisioning package (optional)** and select **Finish**.
6. Expand **Runtime settings** &gt; **Workplace**.
7. Select **Enrollments**, enter a value in **UPN**, and then select **Add**.
   The UPN is a unique identifier for the enrollment. For bulk enrollment, this UPN must be a service account that is allowed to enroll multiple users, such as "enrollment@contoso.com".
8. On the left navigation pane, expand the **UPN** and then enter the information for the rest of the settings for enrollment process.
   Here's the list of available settings:
   -   **AuthPolicy** - Select **OnPremise**.
   -   **DiscoveryServiceFullUrl** - specify the full URL for the discovery service.
   -   **EnrollmentServiceFullUrl** - Optional and in most cases, it should be left blank.
   -   **PolicyServiceFullUrl** - Optional and in most cases, it should be left blank.
   -   **Secret** - Password
   For detailed descriptions of these settings, see [Provisioning CSP](mdm/provisioning-csp.md).
   Here's the screenshot of the WCD at this point.

    ![bulk enrollment screenshot.](images/bulk-enrollment.png)
9. Configure the other settings, such as the Wi-Fi connections so that the device can join a network before joining MDM (for example, **Runtime settings** &gt; **ConnectivityProfiles** &gt; **WLANSetting**).
10. When you're done adding all the settings, on the **File** menu, select **Save**.
11. On the main menu, select **Export** &gt; **Provisioning package**.

    ![icd menu for export.](images/bulk-enrollment2.png)
12. Enter the values for your package and specify the package output location.

    ![enter package information.](images/bulk-enrollment3.png)
    ![enter additional information for package information.](images/bulk-enrollment4.png)
    ![specify file location.](images/bulk-enrollment6.png)
13. Select **Build**.

    ![icb build window.](images/bulk-enrollment5.png)
14. Apply the package to some test devices and verify that they work. For more information, see [Apply a provisioning package](#apply-a-provisioning-package).
15. Apply the package to your devices.

## Create and apply a provisioning package for certificate authentication

Using the WCD, create a provisioning package using the enrollment information required by your organization. Ensure that you have all the configuration settings.

1. Open the WCD tool.
2. Select **Advanced Provisioning**.
3. Enter a project name and select **Next**.
4. Select **Common to all Windows editions**, since Provisioning CSP is common to all Windows editions.
5. Skip **Import a provisioning package (optional)** and select **Finish**.
6. Specify the certificate.
   1.  Go to **Runtime settings** &gt; **Certificates** &gt; **ClientCertificates**.
   2.  Enter a **CertificateName** and then select **Add**.
   3.  Enter the **CertificatePasword**.
   4.  For **CertificatePath**, browse and select the certificate to be used.
   5.  Set **ExportCertificate** to False.
   6.  For **KeyLocation**, select **Software only**.

   ![icd certificates section.](images/bulk-enrollment8.png)
7. Specify the workplace settings.
   1. Got to **Workplace** &gt; **Enrollments**.
   2. Enter the **UPN** for the enrollment and then select **Add**.
      The UPN is a unique identifier for the enrollment. For bulk enrollment, this UPN must be a service account that is allowed to enroll multiple users, such as "enrollment@contoso.com".
   3. On the left column, expand the **UPN** and then enter the information for the rest of the settings for enrollment process.
      Here's the list of available settings:
      -   **AuthPolicy** - Select **Certificate**.
      -   **DiscoveryServiceFullUrl** - specify the full URL for the discovery service.
      -   **EnrollmentServiceFullUrl** - Optional and in most cases, it should be left blank.
      -   **PolicyServiceFullUrl** - Optional and in most cases, it should be left blank.
      -   **Secret** - the certificate thumbprint.
      For detailed descriptions of these settings, see [Provisioning CSP](mdm/provisioning-csp.md).
8. Configure the other settings, such as the Wi-Fi connection so that the device can join a network before joining MDM (for example, **Runtime settings** &gt; **ConnectivityProfiles** &gt; **WLANSetting**).
9. When you're done adding all the settings, on the **File** menu, select **Save**.
10. Export and build the package (steps 10-13 in the procedure above).
11. Apply the package to some test devices and verify that they work. For more information, see [Apply a provisioning package](#apply-a-provisioning-package).
12. Apply the package to your devices.

## Apply a provisioning package

Here's the list of articles about applying a provisioning package:

-   [Apply a package on the first-run setup screen (out-of-the-box experience)](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment#apply-package)
-   [Apply a package to a Windows desktop edition image](/windows/configuration/provisioning-packages/provisioning-create-package#to_apply_a_provisioning_package_to_a_desktop_image)
-   [Apply a package from the Settings menu](#apply-a-package-from-the-settings-menu) - article below

## Apply a package from the Settings menu

1.  Go to **Settings** &gt; **Accounts** &gt; **Access work or school**.
2.  Select **Add or remove a provisioning package**.
3.  Select **Add a package**.

## <a href="" id="validate-that-the-provisioning-package-was-applied-"></a>Validate that the provisioning package was applied

1.  Go to **Settings** &gt; **Accounts** &gt; **Access work or school**.
2.  Select **Add or remove a provisioning package**.
    You should see your package listed.

## Retry logic if there's a failure

If the provisioning engine receives a failure from a CSP, it will retry to provision three times in a row.

If all immediate attempts fail, a delayed task is launched to try provisioning again later. It will retry four times at a decaying rate of 15 minutes -&gt; 1 hr -&gt; 4 hr -&gt; "Next System Start". These attempts will be run from a SYSTEM context.

It will also retry to apply the provisioning each time it's launched, if started from somewhere else as well.

In addition, provisioning will be restarted in a SYSTEM context after a sign in and the system has been idle ([details on idle conditions](/windows/win32/taskschd/task-idle-conditions)).

## Other provisioning articles

Here are links to step-by-step provisioning articles:

-   [Provision PCs with apps and certificates for initial deployment](/windows/configuration/provisioning-packages/provision-pcs-with-apps)
-   [Provision PCs with common settings for initial deployment](/windows/configuration/provisioning-packages/provision-pcs-for-initial-deployment)

