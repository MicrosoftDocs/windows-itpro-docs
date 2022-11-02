---
title: Update Compliance (preview) feedback, support, and troubleshooting
ms.reviewer: 
manager: dougeby
description: Update Compliance (preview) support information.
ms.prod: windows-client
author: mestew
ms.author: mstewart
ms.collection: M365-analytics
ms.topic: article
ms.date: 08/10/2022
ms.technology: itpro-updates
---

# Update Compliance (preview) feedback, support, and troubleshooting

<!-- MAX6325272, OS33771278 -->
***(Applies to: Windows 11 & Windows 10)***

> [!IMPORTANT]
> - As of August 17, 2022, a new step needs to be taken to ensure access to the preview version of Update Compliance and the `CommercialID` is no longer required. For more information, see [Configure Update Compliance settings through the Microsoft 365 admin center](wufb-reports-enable.md#bkmk_admin-center).
> - This information relates to a preview feature that's available for early testing and use in a production environment. This feature is fully supported but it's still in active development and may receive substantial changes until it becomes generally available.

There are several resources that you can use to find help with Update Compliance. Whether you're just getting started or an experienced administrator, use the following resources when you need help with Update Compliance:

- Send [product feedback about Update Compliance](#send-product-feedback)
- Open a [Microsoft support case](#open-a-microsoft-support-case)

- [Documentation feedback](#documentation-feedback)
- [Troubleshooting tips](#troubleshooting-tips) for Update Compliance
- Follow the [Windows IT Pro blog](https://techcommunity.microsoft.com/t5/windows-it-pro-blog/bg-p/Windows10Blog) to learn about upcoming changes to Update Compliance
- Use Microsoft Q&A to [ask product questions](/answers/products/)

## Send product feedback

Use the product feedback option to offer suggestions for new features and functionality, or for suggesting changes to the current Update Compliance features. You can share feedback directly to the Update Compliance product group. To provide product feedback:

1. In the upper right corner of the Azure portal, select the feedback icon.
1. Select either the smile or the frown to rate your satisfaction with your experience.
1. In the text box, describe what you did or didn't like. When providing feedback about a problem, be sure to include enough detail in your description so it can be properly identified by the product group.
1. Choose if you'd like to allow Microsoft to email you about your feedback.
1. Select **Submit feedback** when you've completed the feedback form.
:::image type="content" source="media/33771278-update-compliance-feedback.png" alt-text="Screenshot of the Azure portal showing the product feedback option flyout." lightbox="media/33771278-update-compliance-feedback.png":::

## Open a Microsoft support case

You can open support requests directly from the Azure portal. If  the **Help + Support** page doesn't display, verify you have access to open support requests. For more information about role-based access controls for support requests, see [Create an Azure support request](/azure/azure-portal/supportability/how-to-create-azure-support-request). To create a new support request for Update Compliance:

1. Open the **Help + Support** page from the following locations: 
  - In the [Send product feedback](#send-product-feedback) flyout, select the **contact support** link.
  - From the Azure portal, select **New support request** under the **Support + Troubleshooting** heading.
1. Select **Create a support request** which opens the new support request page. 
1. On the **Problem description** tab, provide information about the issue. The below items in ***bold italics*** should be used to help ensure an Update Compliance engineer receives your support request: 
   - **Summary** - Brief description of the issue
   - **Issue type** - ***Technical***
   - **Subscription** - Select the subscription used for Update Compliance
   - **Service** - ***My services***
   - **Service type** - ***Log Analytics***
   - **Problem type** - ***Solutions or Insights***
   - **Problem subtype** - ***Update Compliance***
1. Based on the information you provided, you'll be shown some **Recommended solutions** you can use to try to resolve the problem.
1. Complete the **Additional details** tab and then create the request on the **Review + create** tab.

## Documentation feedback

Select the **Feedback** link in the upper right of any article to go to the Feedback section at the bottom. Feedback is integrated with GitHub Issues. For more information about this integration with GitHub Issues, see the [docs platform blog post](/teamblog/a-new-feedback-system-is-coming-to-docs).

:::image type="content" source="media/docs-feedback.png" alt-text="Screenshot of the feedback section of a Microsoft Learn page.":::

To share feedback about the current article, select **This page**. A [GitHub account](https://github.com/join) is a prerequisite for providing documentation feedback. Once you sign in, there's a one-time authorization for the MicrosoftDocs organization. It then opens the GitHub new issue form. Add a descriptive title and detailed feedback in the body, but don't modify the document details section. Then select **Submit new issue** to file a new issue for the target article in the [Windows-ITPro-docs GitHub repository](https://github.com/MicrosoftDocs/windows-itpro-docs/issues).

To see whether there's already feedback for this article, select **View all page feedback**. This action opens a GitHub issue query for this article. By default it displays both open and closed issues. Review any existing feedback before you submit a new issue. If you find a related issue, select the face icon to add a reaction, add a comment to the thread, or **Subscribe** to receive notifications.

Use GitHub Issues to submit the following types of feedback:

- Doc bug: The content is out of date, unclear, confusing, or broken.
- Doc enhancement: A suggestion to improve the article.
- Doc question: You need help with finding existing documentation.
- Doc idea: A suggestion for a new article.
- Kudos: Positive feedback about a helpful or informative article.
- Localization: Feedback about content translation.
- Search engine optimization (SEO): Feedback about problems searching for content. Include the search engine, keywords, and target article in the comments.

If you create an issue for something not related to documentation, Microsoft will close the issue and redirect you to a better feedback channel. For example:

- [Product feedback](#send-product-feedback) for Update Compliance
- [Product questions (using Microsoft Q&A)](/answers/products/)
- [Support requests](#open-a-microsoft-support-case) for Update Compliance

To share feedback about the Microsoft Learn platform, see [Microsoft Learn feedback](https://aka.ms/sitefeedback). The platform includes all of the wrapper components such as the header, table of contents, and right menu. Also how the articles render in the browser, such as the font, alert boxes, and page anchors.

## Troubleshooting tips

Use the troubleshooting tips below to resolve commonly encountered problems when using Update Compliance:

### Verify client configuration

<!--Using include for verifying device configuration-->
[!INCLUDE [Endpoints for Update Compliance](./includes/wufb-reports-verify-device-configuration.md)]

### Ensuring devices are configured correctly to send data

The first step in troubleshooting Update Compliance is ensuring that devices are configured. Review [Manually configuring devices for Update Compliance](wufb-reports-configuration-manual.md) for the settings. We recommend using the [Update Compliance configuration script](wufb-reports-configuration-script.md) for troubleshooting and configuring devices.

### Devices have been correctly configured but aren't showing up in Update Compliance

It takes some time for data to appear in Update Compliance for the first time or if you moved to a new Log Analytics workspace. To learn more about data latencies for Update Compliance, review [Update  Compliance data latency](wufb-reports-use.md#update-compliance-data-latency).

### Devices are appearing, but without a device name

Device Name is  an opt-in via policy starting in Windows 10 version 1803. Review the required policies for enabling device name in the [Manually configuring devices for Update Compliance](wufb-reports-configuration-manual.md) article.
