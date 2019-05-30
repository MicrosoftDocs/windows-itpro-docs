---
title: Configure and manage Microsoft Threat Experts capabilities
ms.reviewer: 
description: You need to register to Microsoft Threats Experts preview to configure, manage, and use it in your daily security operations and security administration work.
keywords: Microsoft Threat Experts, managed threat hunting service, MTE, Microsoft managed hunting service
search.product: Windows 10
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: mjcaparas
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article
---

# Configure and manage Microsoft Threat Experts capabilities
**Applies to:**

- [Microsoft Defender Advanced Threat Protection (Microsoft Defender ATP)](https://go.microsoft.com/fwlink/p/?linkid=2069559)

[!include[Prerelease information](prerelease.md)]

## Before you begin 
To experience the full Microsoft Threat Experts targeted attack notification capability in Microsoft Defender ATP, and preview the experts-on-demand capability, you need to have a valid Premier customer service and support account. Premier charges will not be incurred during for the capability in preview, but for the generally available capability, there will be charges.

You also need to ensure that you have Microsoft Defender ATP deployed in your environment with machines enrolled, and not just on a laboratory set-up. 

## Register to Microsoft Threat Experts managed threat hunting service 
If you're already a Microsoft Defender ATP customer, you can apply through the Microsoft Defender ATP portal. 

1. From the navigation pane, go to **Settings > General > Advanced features > Microsoft Threat Experts**.

2. Click **Apply**. 
![Image of Microsoft Threat Experts settings](images/MTE_collaboratewithmte.png)

3. Enter your name and email address so that Microsoft can get back to you on your application. 
![Image of Microsoft Threat Experts application](images/MTE_apply.png)

4. Read the privacy statement, then click **Submit** when you're done. You will receive a welcome email once your application is approved.   
![Image of Microsoft Threat Experts application confirmation](images/MTE_applicationconfirmation.png)

6. From the navigation pane, go to **Settings** > **General** > **Advanced features** to turn the **Threat Experts** toggle on. Click **Save preferences**. 

## Receive targeted attack notification from Microsoft Threat Experts 
You can receive targeted attack notification from Microsoft Threat Experts through the following:  
- The Microsoft Defender ATP portal's **Alerts** dashboard  
- Your email, if you choose to configure it 

To receive targeted attack notifications through email, you need to create an email notification rule.

### Create an email notification rule 
You can create rules to send email notifications for notification recipients. See  [Configure alert notifications](configure-email-notifications.md) to create, edit, delete, or troubleshoot email notification, for details.

## View the targeted attack notification  
You'll start receiving targeted attack notification from Microsoft Threat Experts in your email after you have configured your system to receive email notification.  

1. Click the link in the email to go to the corresponding alert context in the dashboard tagged with **Threat experts**. 

2. From the dashboard, select the same alert topic that you got from the email, to view the details.  


## Ask a Microsoft threat expert about suspicious cybersecurity activities in your organization 
>[!NOTE]
>The Microsoft Threat Experts' experts-on-demand capability is still in preview. You can only use the experts-on-demand capability if you have applied for preview and your application has been approved.

You can partner with Microsoft Threat Experts who can be engaged directly from within the Windows Defender Security Center for timely and accurate response. Experts provide insights needed to better understand complex threats, targeted attack notifications that you get, or if you need more information about the alerts, a potentially compromised machine, or a threat intelligence context that you see on your portal dashboard. 

1. Navigate to the portal page with the relevant information that you'd like to investigate, for example, the **Incident** page. Ensure that the page for the relevant alert or machine is in view before raising an inquiry. 
2. From the upper right-hand menu, click **?**, then select **Ask a threat expert**.
3. Asking a threat expert is a two-step process: you need to provide the necessary information and open a support ticket. 
    
    **Step 1: Provide information**    
    a.  Provide enough information to give the Microsoft Threat Experts enough context to start the investigation. Select the inquiry category from the **Provide information > Inquiry** details drop-down menu. <br>      
    
    b.  Enter the additional details to give the threat experts more context of what you’d like to investigate. Click **Next**, and it takes you to the **Open support ticket** tab. <br>
    
    c.  Remember to use the ID number from the **Open a support ticket** tab page and include it to the details you will provide in the subsequent Customer Services and Support (CSS) pages. <br>

    **Step 2: Open a support ticket**    
    >[!NOTE]
    >To experience the full Microsoft Threat Experts preview capability in Microsoft Defender ATP, you need to have a Premier customer service and support account.  However, you will not be charged for the Experts-on-demand service during the preview.
 
    a. In the **New support request** customer support page, select the following from the dropdown menu and then click **Next**: <br>

    **Select the product family**: **Security**<br>
    **Select a product**: **Microsoft Threat Experts**<br>
    **Select a category that best describes the issue**: **Microsoft Defender ATP**<br>
    **Select a problem that best describes the issue**: Choose according to your inquiry category<br>  
       
    b. Fill out the fields with the necessary information about the issue and use the auto-generated ID when you open a Customer Services and Support (CSS) ticket. Then, click **Next**.  <br>
    
    c. In the **Select a support plan** page, select **Professional No Charge**. <br>

    d. The severity of your issue has been pre-selected by default, per the support plan, **Professional No Charge**, that you'll use for this public preview. Select the time zone by which you'd like to receive the correspondence. Then, click **Next**. <br>
    
    e. Verify your contact details and add another if necessary. Then, click **Next**. <br>

    f. Review the summary of your support request, and update if necessary. Make sure that you read and understand the **Microsoft Services Agreement** and **Privacy Statement**. Then, click **Submit**. You will see the confirmation page indicating the response time and your support request number. <br>

## Sample questions to ask Microsoft Threat Experts

**Alert information**
- We see a new type of alert for a living-off-the-land binary: [AlertID]. Can you tell us something more about this alert and how we can investigate further?
- We’ve observed two similar attacks which try to execute malicious PowerShell scripts but generate different alerts. One is "Suspicious Powershell command line" and the other is "A malicious file was detected based on indication provided by O365". What is the difference?
- I receive an odd alert today for abnormal number of failed logins from a high profile user’s device. I cannot find any further evidence around these sign-in attempts. How can Microsoft Defender ATP see these attempts? What type of sign-ins are being monitored?
- Can you give more context or insights about this alert: “Suspicious behavior by a system utility was observed”. 

**Possible machine compromise**
- Can you please help answer why we see “Unknown process observed?” This is seen quite frequently on many machines and we would appreciate input on whether this is related to malicious activity.
- Can you help validate a possible compromise on the following system on [date] with similar behaviors as the previous [malware name] malware detection on the same system in [month]?

**Threat intelligence details**
- This morning, we detected a phishing email that delivered a malicious Word document to a user. This caused a series of suspicious events which triggered multiple Windows Defender alerts for [malware name] malware. Do you have any information on this malware? If yes, can you please send me a link?
- I recently saw a [social media reference e.g. Twitter or blog] post about a threat that is targeting my industry. Can you help me understand what protection Microsoft Defender ATP provides against this threat actor? 

**Microsoft Threat Experts’ alert communications** 
- Can your incident response team help us address the targeted attack notification that we got?
- I received this targeted attack notification from Microsoft Threat Experts. We don’t have our own incident response team. What can we do now, and how can we contain the incident?
- I received a targeted attack notification from Microsoft Threat Experts. What data can you provide to us that we can pass on to our incident response team?

 >[!NOTE]
 >Microsoft Threat Experts is a managed cybersecurity hunting service and not an incident response service. However, the experts can seamlessly transition the investigation to Microsoft Cybersecurity Solutions Group (CSG)'s  Detection and Response Team (DART) services, when necessary. You can also opt to engage with your own incident response team to address issues that requires an incident response. 

## Scenario

### Receive a progress report about your managed hunting inquiry 
Response from Microsoft Threat Experts varies according to your inquiry. They will email a progress report to you regarding the Ask a threat expert inquiry that you've submitted, within two days, to communicate the investigation status from the following categories: 
- More information is needed to continue with the investigation 
- A file or several file samples are needed to determine the technical context 
- Investigation requires more time   
- Initial information was enough to conclude the investigation 

It is crucial to respond in a timely manner to keep the investigation moving. See the Premier customer service and support service level agreement for details.  
