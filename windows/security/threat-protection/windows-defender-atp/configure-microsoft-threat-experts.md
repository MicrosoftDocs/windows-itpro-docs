---
title: Configure and manage Microsoft Threat Experts capabilities
description: You need to register to Microsoft Threats Experts preview to configure, manage, and use it in your daily security operations and security administration work.
keywords: Microsoft Threat Experts, managed hunting service, MTE, Microsoft managed hunting service
search.product: Windows 10
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont
author: Dulce Montemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
ms.date: 02/28/2019
---

# Configure and manage Microsoft Threat Experts capabilities
**Applies to:**

- [Windows Defender Advanced Threat Protection (Windows Defender ATP)](https://wincom.blob.core.windows.net/documents/Windows10_Commercial_Comparison.pdf)


## Before you begin 
To experience the full Microsoft Threat Experts preview capability in Windows Defender ATP, you need to have a valid Premier customer service and support account. However, you will not be charged for the Experts on demand service during the preview.
 
You also need to ensure that you have Windows Defender ATP deployed in your environment with machines enrolled, and not just on a laboratory set-up. 

 
## Register to Microsoft Threat Experts preview 
If you're already a Windows Defender ATP customer, you can apply for preview through the portal. 

1. From the navigation pane, go to **Settings > General > Advanced features > Threat Experts**.

insert image

2. Click **Apply for preview**. 

3. In the Apply for preview dialog box, read and make sure you understand the preview's terms of agreement.    

4. Enter your name and email address so that Microsoft can get back to you on your application. 

5. Read the privacy statement, then click Submit when you're done. 

 >[!NOTE]
 >You will receive a welcome email once your application is approved. Then, from the navigation pane, go to** Settings > General > Advanced features** to turn the Threat Experts toggle on. Click **Save preferences**. 


## Get targeted attack notification from Microsoft Threat Experts 
You can receive targeted attack notification from Microsoft Threat Experts through the following:  
- The Windows Defender ATP portal's Alerts dashboard  
- Your email, if you choose to configure it 

To receive targeted attack notifications through email, you need to create an email notification rule.

### Create an email notification rule 
You can create rules to send email notifications for notification recipients. 

1. In the navigation pane, select **Settings > Alert notifications**.  
2. Click **Add notification rule**. 
3. Specify the General information: 
- Rule name - Specify a name for the notification rule. 
- Include organization name - Specify the customer name that appears on the email notification. 
- Include tenant-specific portal link - Adds a link with the tenant ID to allow access to a specific tenant. 
- Machines - Choose whether to notify recipients for alerts on all machines (Global administrator role only) or on selected machine groups. For more information, see Create and manage machine groups. 
- Alert severity - Choose the High alert severity level 

4. Click **Next**. 
5.  Enter the recipient's email address then click **Add recipient**. You can add multiple email addresses. 

6. Check that email recipients are able to receive the email notifications by selecting **Send test email**. 
7. Click **Save notification rule**. 

   >[!NOTE]
   > See Configure alert notifications to edit, delete, or troubleshoot email notification for alerts details. 
 

## View the targeted attack notification  
You'll start receiving targeted attack notification from Microsoft Threat Experts in your email after you have configured your system to receive email notification.  

1. Click the link in the email to go to the corresponding alert context in the dashboards tagged with Threat Experts. 

image

2.  From the dashboard, select the same alert topic that you got from the email, to view the details.  


## Ask a Microsoft threat expert about suspicious cybersecurity activities in your organization 
You can partner with Microsoft Threat Experts who can be engaged directly from within the Windows Defender Security Center for timely and accurate response. Experts provide insights needed to better understand complex threats, targeted attack notifications that you get, or if you need more information about the alerts, a potentially compromised machine, or a threat intelligence context that you see on your portal dashboard. 

1. Navigate to the **Dashboard > Security operations**. 
2. Select the information that you'd like to investigate with the help of Microsoft's threat intelligence optics. Ensure that page for the relevant alert or machine is in view before raising an inquiry. 
3. From the menu, select **Ask a threat expert**.
4. Asking a threat expert is a two-step process: you need to provide the necessary information and open a support ticket. 
    
    **Provide information**    
    a. Provide enough information to give the Microsoft Threat Experts enough context to start the investigation. 

        image

        Select the inquiry category from the **Provide information > Inquiry** details drop-down menu.

        image

    c. Enter the additional details to give the threat experts more context of what you’d like to investigate. Click **Next**.

    **Open a support ticket**
    >[!NOTE]
    >To experience the full Microsoft Threat Experts preview capability in Windows Defender ATP, you need to have a premiere customer service and support account.  However, you will not be charged for the Experts on demand service during the preview.

    a. Select Open a support ticket. Remember to use the ID number from this page and include it to the details you will provide in the subsequent Customer Services and Support (CSS) pages.

        image

    b. In the Create an incident customer support page, select **Windows Defender ATP** from the **Problem type** dropdown menu. Then, select the same category that you selected for your inquiry, in this case, **Threat intelligence details**. Click **Start request.**

       image

    c. Fill out the fields with the necessary information and use the auto-generated ID when you open a Customer Services and Support (CSS) ticket. Then, click **Submit** to complete your inquiry submission.
    
        image
        image

## Scenarios

### Get a progress report about your Ask a threat expert inquiry 
Microsoft Threat Experts will send you a progress report regarding your Ask a threat expert inquiry, via email, within two days, to communicate any of the following investigation status: 
- More information is needed to continue with the investigation 
- A file or several file samples are needed to determine the technical context 
- Investigation requires more time   
- Initial information was enough to conclude the investigation 

It is crucial to respond in a timely manner to keep the investigation moving.  

### Ask a threat expert inquiry leads to an incident escalation 
In response to an inquiry, incident response services may be recommended. Should incident response services be necessary due to the its cybersecurity context, you have two options to act on and resolve the incident: 

>[!NOTE]
>Microsoft Threat Experts is a managed hunting service and not an incident response service. However, the experts can seamlessly transition the investigation to Microsoft Incident Response (IR) services when necessary. 

a. Request an engagement with the Microsoft Incident Response team, or 
b. Engage with your in-house cybersecurity team or another incident response team of your choice 

