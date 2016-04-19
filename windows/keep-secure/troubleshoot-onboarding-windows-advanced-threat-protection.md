---
title: Troubleshoot Windows Defender ATP onboarding issues
description: Troubleshoot issues that might arise during the onboarding of endpoints or to the Windows Defender ATP service.
keywords: troubleshoot onboarding, onboarding issues, event viewer, azure management portal, data collection and preview builds
search.product: eADQiWindows 10XVcnh 
ms.prod: W10
ms.mktglfcycl:
ms.sitesec: library
author: mjcaparas
---

# Troubleshoot Windows Defender Advanced Threat Protection onboarding issues 

- Windows 10 Insider Preview

<span style="color:#ED1C24;">[Some information relates to pre-released product which may be substantially modified before it's commercially released. Microsoft makes no warranties, express or implied, with respect to the information provided here.]</span>

You might need to troubleshoot the onboarding process if you encounter issues.

## Add users to an Azure Active Directory
If you don’t see any users in the [Azure Management Portal](https://manage.windowsazure.com/) during the service onboarding stage, you might need to add users to the directory first.

1.  Go to the Azure Management Portal and select the directory you want to manage.

2.  Click **Users** from the top menu bar.
    
    ![Example Azure Management Portal organization](images/contoso-users.png)

3.  Click **Add user** from the menu bar at the bottom.

    ![Add user menu](images/add-user.png)

4.  Select the type of user and enter their details. There might be multiple steps in the **Add user** dialog box depending on the type of user. When you’re done, click **Complete** ![Check icon](images/check-icon.png) or **OK**.

5.  Continue to add users. They will now appear in the **Users** section of the **Windows ATP Service** application. You must assign the user a role before they can access the [Windows Defender ATP portal](https://seville.windows.com/).

## Manage access for all users in Azure Active Directory
If you remove access for all users to the Windows ATP Service application (by clicking Manage access), you will not see the application in the list of applications in your directory in the [Azure Management Portal](https://manage.windowsazure.com/).

Gain access to the application in the Azure Management Portal again:

1.  Sign in to the [Windows Defender ATP portal](https://seville.windows.com/) with the user account you want to give access to.

2.  Confirm you have signed in with the correct details, and click **Accept**.

3.  Go to the [Azure Management Portal](https://manage.windowsazure.com/) and navigate to your directory. You will see the **Windows ATP Service** application in the **Applications** section again.

## Ensure the telemetry and diagnostics service is enabled

If the endpoints aren’t reporting correctly, you might need to check that the Windows 10 TAP telemetry and diagnostics service is enabled on the endpoint.

1.  Follow the instructions at
    [https://technet.microsoft.com/library/mt577208%28v=vs.85%29.aspx\#BKMK\_UTC] (https://technet.microsoft.com/library/mt577208%28v=vs.85%29.aspx#BKMK_UTC)

2.  Attempt to [onboard the endpoint](onboard-configure-windows-advanced-threat-protection.md#onboard-endpoints-and-set-up-the-windows-defender-atp-user-access).

## Configure proxy and Internet connectivity

The endpoints must be able to connect to the Internet and send their data outside of your organization’s network. You might need to set additional proxy configurations to ensure endpoints can report correctly.

1.  Open the [Group Policy Management Console](https://technet.microsoft.com/en-us/library/cc731212.aspx), right-click the GPO you want to configure and click **Edit**.

2.  In the **Group Policy Management Editor**, go to **Computer configuration**.

3.  Click **Policies**, then **Administrative templates**.

4.  Click **Windows components** and then **Data Collection and Preview Builds**.

5.  Click **Configure connected user experiences and telemetry** and then
    configure the GP. The GP accepts a string in the following format:
    ```<server name or IP>:<port>```

## Review errors on endpoints with Event Viewer

You can review event IDs in the [Event Viewer](https://msdn.microsoft.com/en-US/library/aa745633(v=bts.10).aspx) on individual endpoints, or check the status of machines from the [Windows Defender ATP portal](https://seville.windows.com/).

For example, if endpoints are not appearing in the **Machines view** list,you might need to look for event IDs on the endpoints.

> **Note**&nbsp;&nbsp; It can take several days for endpoints to begin reporting to the Windows Defender ATP service.

1.  Click **Start** and type **Event Viewer**.

2.  In the log list, under **Log Summary**, scroll until you see **Microsoft-Windows-SENSE/Operational**. Double-click the item to
    open the log.

    > **Note**&nbsp;&nbsp; SENSE is the internal name used to refer to the behavioral sensor that powers Windows Defender ATP.

3.  Events recorded by the service will appear in the log. See following table for a list of solutions to common errors.

Message | Action
:---|:---
Windows Advanced Threat Protection Service failed to connect to server at ```<variable>``` | Check the connection to the URL. See [Configure proxy and Internet connectivity](#configure-proxy-and-Internet-connectivity). 
  Windows Advanced Threat Protection Service failed to read onboarding parameters. Failure code: ```<variable>``` | Check that GP settings are correct and there are not settings impacting permissions in the policy. 
Windows Advanced Threat Protection Service failed to persist onboarding information. Failure code: ```<variable>``` | Check that GP settings are correct and there are not settings impacting permissions in the policy.


## Related topics
- [Windows Defender ATP service onboarding](service-onboarding-windows-advanced-threat-protection.md)
- [Configure Windows Defender ATP endpoints (client onboarding)](configure-endpoints-windows-advanced-threat-protection.md)
- [Monitor the Windows Defender ATP onboarding](monitor-onboarding-windows-advanced-threat-protection.md)
- [Additional Windows Defender ATP configuration settings](additional-configuration-windows-advanced-threat-protection.md)