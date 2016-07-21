---
title: Working with line-of-business apps (Windows 10)
description: Your company can make line-of-business (LOB) applications available through Windows Store for Business. These apps are custom to your company – they might be internal business apps, or apps specific to your business or industry.
ms.assetid: 95EB7085-335A-447B-84BA-39C26AEB5AC7
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
localizationpriority: high
---

# Working with line-of-business apps


**Applies to**

-   Windows 10
-   Windows 10 Mobile

Your company can make line-of-business (LOB) applications available through Windows Store for Business. These apps are custom to your company – they might be internal business apps, or apps specific to your business or industry.

Developers within your own company, or ISVs that you invite, can become LOB publishers and submit apps to the Windows Store for your company. Once a LOB publisher submits an app for your company, the app is only available to your company. LOB publishers submit apps through the Windows Dev Center using the same process as all apps that are in the Store, and then can be managed or deployed using the same process as any other app that has been acquired through the Store.

One advantage of making apps available through Store for Business is that the app has been signed by the Store, and uses the standard Store policies. For companies that can’t submit their application through the Windows Dev Center (for example, those needing additional capabilities or due to compliance purposes), [Sideloading](http://go.microsoft.com/fwlink/p/?LinkId=623433) is also supported in Windows 10.

## <a href="" id="adding-lob-apps"></a>Adding LOB apps to your private store


Your Store for Business admin and ISV each own different parts of the process for getting LOB apps created, submitted, and deployed to your employees. They’ll use the Store for Business portal, and the Windows Dev center on MSDN. Here’s what’s involved:

-   The Store for Business admin invites a developer or ISV to become an LOB publisher for your company.

-   LOB publisher develops and submits app to the Store, tagging the app so it is only available to your company.

-   The Store for Business admin accepts the app and can distribute the app to employees in your company.

What you'll have to set up:

-   Your company needs to be signed up with Store for Business.

-   LOB publishers need to have an active developer account. To learn more about account options, see [Ready to sign up](http://go.microsoft.com/fwlink/p/?LinkId=623432).

-   LOB publishers need to have an app in the Store, or have an app ready to submit to the Store.

### <a href="" id="add-lob-publisher"></a>Add an LOB publisher (Store for Business Admin)

For developers within your own organization, or ISVs you're working with to create LOB apps, you'll need to invite them to become a LOB publisher.

**To invite a developer to become an LOB publisher**

1.  Sign in to the [Windows Store for Business]( http://go.microsoft.com/fwlink/p/?LinkId=623531).
2.  Click **Settings**, and then choose **LOB publishers**.
3.  On the Line-of business publishers page, click **Add** to complete a form and send an email invitation to a developer.<br>
**Note** This needs to be the email address listed in contact info for the developer account. 

### <a href="" id="submit-lob-app"></a>Submit apps (LOB publisher)

The developer receives an email invite to become an LOB publisher for your company. Once they accept the invite, they can log in to the Windows Dev Center to create an app submission for your company. The info here assumes that devs or ISVs have an active developer account.

After an app is published and available in the Store, ISVs publish an updated version by creating another submission in their dashboard. Creating a new submission allows the ISV to make the changes required to create a LOB app for your company. To learn more about updates to an app submission, see [App submissions](http://go.microsoft.com/fwlink/p/?LinkId=623463) and [Distributing LOB apps to enterprises](http://go.microsoft.com/fwlink/p/?LinkId=627543).

**To create a new submission for an app**

1.  Sign in to the [Windows Dev Center](http://go.microsoft.com/fwlink/p/?LinkId=623486), go to your Dashboard, and click the app you want to make available as an LOB app.
2.  On the App overview page, under **Action**, click **Update**.

    -OR-

    Submit your app following the guidelines in [App submissions](http://go.microsoft.com/fwlink/p/?LinkId=623463). Be sure to completed steps 3 and 4 when you set app pricing and availability options.

3.  On the **Pricing and availability** page, under **Distribution and visibility**, click **Line-of-business (LOB) distribution**, and then choose the enterprise(s) who will get the LOB app. No one else will have access to the app.
4.  Under **Organizational licensing**, click **Show options**.

    Organizational licensing options apply to all apps, not just LOB apps:

    -   **Store-managed (online) volume licensing** - This is required. You must select this item to make your app available as an a LOB app. By default, it will be selected. This won't make the app available to anyone outside of the enterprise(s) that you selected in **Distribution and visibility**.

    -   **Disconnected (offline) licensing** - This is optional for LOB apps.

5.  Click **Save** to save your changes and start the app submission process.

For more information, see [Organizational licensing options]( http://go.microsoft.com/fwlink/p/?LinkId=708615) and [Distributing LOB apps to enterprises](http://go.microsoft.com/fwlink/p/?LinkId=627543).<br>
**Note** In order to get the LOB app, the organization must be located in a [supported market](https://technet.microsoft.com/itpro/windows/whats-new/windows-store-for-business-overview#supported-markets), and you must not have excluded that market when submitting your app.

### <a href="" id="add-lob-app-to-inventory"></a>Add app to inventory (admin)

After an ISV submits the LOB app for your company, the Store for Businessadmin needs to accept the app.

**To add the LOB app to your inventory**

1.  Sign in to the Store for Business.
2.  Click **Manage**, and then choose **New LOB apps**.
3.  Click the ellipses under **Action** for the app you want to add to your inventory, and then choose **add to inventory**.

After you add the app to your inventory, you can choose how to distribute the app. For more information, see:

-   [Distribute apps to your employees from the Windows Store for Business](distribute-apps-to-your-employees-windows-store-for-business.md)

-   [Distribute apps from your private store](distribute-apps-from-your-private-store.md)

-   [Assign apps to employees](assign-apps-to-employees.md)

-   [Distribute offline apps](distribute-offline-apps.md)

 

 





