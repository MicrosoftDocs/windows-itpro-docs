---
title: Configure an Azure Active Directory application for SIEM integration
description: Configure an Azure Active Directory application so that it can communicate with supported SIEM tools.
keywords: configure aad for siem integration, siem integration, application, oauth 2
search.product: eADQiWindows 10XVcnh
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
author: mjcaparas
---

# Configure an Azure Active Directory application for SIEM integration

**Applies to:**

- Windows 10, version 1607
- Windows Defender Advanced Threat Protection (Windows Defender ATP)

You need to add an application in your Azure Active Directory (AAD) tenant then authorize the Windows Defender ATP application to communicate with it so that your security information and events management (SIEM) tool can consume alerts from Windows Defender ATP portal.

1. Login to the [Azure management portal](https://manage.windowsazure.com).

2. Select **Active Directory**.

3. Select your tenant.

4. Select **Applications**, then select **Add** to create a new application.

5. Select **Add an application my organization is developing**.

6. Choose a client name for the application, for example, *Alert Export Client*.

7. Select **WEB APPLICATION AND/OR WEB API**.

8. Assign a sign-on URL and app ID URI to the application, for example, `https://alertexportclient`.

9. Confirm the request details and verify that you have successfully added the app.

10. Select the application you've just created from the directory application list and select **Configure**.

11. Type the following URL in the **Reply URL** field: `https://DataAccess-PRD.trafficmanager.net:444/api/FetchAccessTokenFromAuthCode`.

12. Scroll down to the **keys** section and select a duration for the application key.

13. Select **Save** and copy the key in a safe place. You'll need this key to authenticate the client application on Azure Active Directory.

14. Open a web browser and connect to the following URL: `https://DataAccess-PRD.trafficmanager.net:444/api/FetchToken?clientId=f7c1acd8-0458-48a0-a662-dba6de049d1c&tenantId=<tenant ID>&clientSecret=1234`. An Azure login page appears.

> **Notes:**&nbsp;&nbsp;
- Replace *tenant ID* with your actual tenant ID.
- Keep the client secret as is. This is a dummy value, but the parameter must appear.

15. Sign in with the credentials of a user from your tenant.

16. Select **Accept** to provide consent. Ignore the error.

17. Select **Application configuration** under your tenant.

18. Select **Permissions to other applications**, then select **Add application**.

19. Select **All apps** from the **SHOW** field and submit.

20. Select **SevilleAlertExport** [RONEN, I ASSUME THIS WILL BE RENAMED?], then select **+** to add the application. You should see it on the **SELECTED** panel.

21. Submit your changes.

22. On the **SevilleAlertExport** record, in the **Delegated Permissions** field, select **Access SevilleAlertExport**.

23. Save the application changes.

After configuring the application in AAD, you can continue to configure the SIEM tool that you want to use.

RONEN - I THINK I'M MISSING SOME STEPS HERE - I THINK I NEED TO PUT IN INFORMATION ON CLICK VIEW ENDPOINT SO THAT CUSTOMERS CAN SEE THEIR OAUTH 2 TOKEN ENDPOINT AND OAUTH 2 AUTHORIZATION ENDPOINT DETAILS.

SHOULD I INCLUDE THOSE INFORMATION HERE? OR CREATE A SEPARATE TOPIC FOR THAT? OR INCLUDE IT IN THE SPLUNK/ARCSIGHT STEPS?

## Related topics
- [Configure Splunk to consume alerts](configure-splunk-windows-defender-advanced-threat-protection.md)
- [Configure HP ArcSight to consume alerts](configure-arcsight-windows-defender-advanced-threat-protection.md)
