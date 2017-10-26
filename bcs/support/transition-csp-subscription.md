---
title: Transition a Microsoft 365 Business CSP subscription 
description: Find out how you can transition a Microsoft 365 Business CSP subscription. 
author: CelesteDG 
ms.author: celested 
ms.topic: article 
ms.prod: microsoft-365-business
ms.localizationpriority: high
audience: microsoft-business 
keywords: Microsoft 365 Business, Microsoft 365, SMB, transition CSP subscription
ms.date: 11/01/2017
---

# Transition a Microsoft 365 Business CSP subscription

If you have a Microsoft 365 Business Preview CSP subscription, follow this guide to find out how you can transition your existing preview subscription to GA (general availability).

**How to transition a preview subscription to GA**

1. Log in to <a href="https://partnercenter.microsoft.com" target="_blank">Partner Center</a>.
2. From the dashboard, select **Customers**, and then find and select the company name.

    The subscriptions for the company will be listed.

    ![Customer's subscriptions in Partner Center](images/pc_customer_subscriptions_1.png)
    
3. In the company's **Subscriptions** page, select **Add subscription**.
4. In the **New subscription** page, select **Small business** and then select **Microsoft 365 Business** from the list.
5. Add the number of licenses and then select **Next: Review** to review the subscription and then select **Submit**.

    ![Review the new subscription to Microsoft 365 Business](images/pc_customer_reviewnewsubscription.png)

    The **License-based subscriptions** will show **Microsoft 365 Business Preview** and **Microsoft 365 Business**. You'll need to suspend the Preview subscription next.

6. Select **Microsoft 365 Business Preview**.
7. In the **Microsoft 365 Business Preview** page, select **Suspended** to suspend the Preview subscription.

    ![Suspend the Microsoft 365 Business Preview subscription](images/pc_customer_m365bpreview_suspend.png)

8. Select **Submit** to confirm.

    In the **Subscriptions** page, confirm that the **Microsoft 365 Business Preview** status shows **Suspended**.

    ![Confirm the Preview subscription status is suspended](images/pc_customer_m365bpreview_suspend_confirm.png)

9. Optionally, you can also validate the license agreement. To do this:
    1. Select **Users and licenses*8 from the company's **Subscriptions** page.
    2. From the **Users and licenses** page, select a user.
    3. In the user's page, check the **Assign licenses** section and confirm that it shows **Microsoft 365 Business**.

        ![Confirm the Microsoft 365 Business license is assigned to the user](images/pc_customer_userslicenses_m365b_validate.png)

## During and post transition impact to customers and users

There is no impact to customers and users during transition and post transition.

## Impact to customers who don't transition

The following table summarizes the impact to customers who don't transition from a Microsoft 365 Business Preview subscription to a Microsoft 365 Business subscription.

|       | T-0 to T+30     | T+30 to T+60 | T+60 to T+120 | Beyond T+120  |
|-------|-----------------|--------------|---------------|---------------|
| State | In grace period | Expired      | Disabled      | Deprovisioned |
| Service impacts                                                        |
| Microsoft 365 Business admin portal | No impact to functionality | No impact to functionality | Can add/delete users, purchase subscriptions.</br> Cannot assign/revoke licenses. | Customer's subscription and all data is deleted. Admin can manage other paid subscriptions. |
| Office apps                         | No end user impact | No end user impact | Office enters reduced functionality mode.</br> Users can view files only. | Office enters reduced functionality mode.</br> Users can view files only. |
| Cloud services (SharePoint Online, Exchange Online, Skype, Teams, and more) | No end user impact | No end user impact | End users and admins have no access to data in the cloud. | Customer's subscription and all data are deleted. |
| EM+S components | No admin impact</br> No end user impact | No admin impact</br> No end user impact | Capability will cease to be enforced. See [tbd](tbd) for more info. | Capability will cease to be enforced. See [tbd](tbd) for more info. |
| Windows 10 Business | No admin impact</br> No end user impact | No admin impact</br> No end user impact | Capability will cease to be enforced. See [tbd](tbd) for more info. | Capability will cease to be enforced. See [tbd](tbd) for more info. |
| Azure AD login to a Windows 10 PC | No admin impact</br> No end user impact | No admin impact</br> No end user impact | No admin impact</br> No end user impact | Once the tenant is deleted, a user can log in with local credentials only. Re-image the device if there are no local credentials. |

## Related topics
TBD

