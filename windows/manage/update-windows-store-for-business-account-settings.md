---
title: Update Windows Store for Business account settings (Windows 10)
description: The Account information page in Windows Store for Business shows information about your organization that you can update, including country or region, organization name, default domain, and language preference.
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: TrudyHa
localizationpriority: high
---

# Update Windows Store for Business account settings


**Applies to**

-   Windows 10
-   Windows 10 Mobile

The **Account information** page in Windows Store for Business allows you to manage organization information, payment options, and offline licensing settings. The organization information and payment options are required before you can acquire apps that have a price.

## Organization information
 
We’ll need your business address, email contact, and tax-exemption certificates that apply to your country or locale.
 
**Business address and email contact**<br>Before purchasing apps that have a fee, you need to add or update your organization's business address, and contact email address . 

We use the Business address to calculate sales tax. If your organization's address has already been entered for other commercial purchases through the Microsoft Store, or through other online purchases such as Office 365 or Azure subscriptions, then we’ll use the same address in the Windows Store for Business. If we don’t have an address,we’ll ask you to enter it during your first purchase. 

We need an email address in case we need to contact you about your Store for Business account. This email account should reach the admin for your organization’s O365 or Azure AD tenant that is used with Store for Business. 

To update Organization information, click **Edit organization information**.

## Organization tax information ##   
Taxes for Windows Store for Business purchases are determined by your business address. Businesses in these countries can provide their VAT number or local equivalent:
- Austria
- Belgium
- Croatia
- Czech Republic
- Denmark
- Finland
- France
- Germany
- Greece
- Hungary
- Ireland
- Italy
- Malta
- Netherlands
- Norway
- Poland
- Portugal
- Romania
- Slovakia
- South Africa
- Spain
- Sweden
- Switzerland
- United Kingdom

These countries can provide their VAT number or local equivalent in **Account information**. However, they can only acquire free apps.  

|Market| Tax identifier |
|------|----------------|
| Brazil | CPNJ (required), CCMID  (optional) |
| India | CST ID, VAT ID |
| Taiwan | Unified business number|


**Tax-exempt status** 

If you qualify for tax-exempt status in your market, start a service request to establish tax exempt status for your organization. 

**To start a service request**
1.  Sign in to the [Store for Business](http://businessstore.microsoft.com).
2.	Click **Support**, and then under **Store or account support** click **Start a service request**.

You’ll need this documentation:

|Country or locale | Documentation |
|------------------|----------------|
| United States | Sales Tax Exemption Certificate |
| Canada | Certificate of Exemption (or equivalent letter of authorization) |
| Ireland | 13B/56A Tax Exemption Certificate| 
| International organizations that hold tax exaemption | Certification / letter confirmation from local tax authorities |


**Calculating tax**

Sales taxes are calculated against the unit price, and then aggregated. 
 
For example:<br>
(unit price X tax rate) X quantity = total sales tax

-or-

($1.29 X .095) X 100 = $12.25

##Payment options##
You can purchase apps from the Windows Store for Business using your credit card. You can enter your credit card information on Account Information, or when you purchase an app. We currently accept these credit cards: 
1.	VISA 
2.	MasterCard 
3.	Discover 
4.	American Express 
5.	Japan Commercial Bureau (JCB)

**Note**:<br>
Not all cards available in all countries. When you add a payment option, Store for Business shows which cards are available in your region.  

**To add a new payment option** 

1.	Sign in to [Store for Business](http://businessstore.microsoft.com). 
2.	Click **Settings**, and then click **Account information**. 
3.  Under **My payment options**, tap or click **Show my payment options**, and then select the type of credit card that you want to add. 
4.	Add information to any required fields, and then click **Next**. 

Once you click Next, the information you provided will be validated with a test authorization transaction and, if validated, the payment option will be added to your list of available payment options. Otherwise, you will be prompted for additional information or notified if there are any problems. 

**Note**: <br>When adding credit or debit cards, you may be prompted to enter a CVV . The CVV is only used for verification purposes and is not stored in our systems after validation. 

**To update a payment option**: 

1.	Sign in to [Store for Business](http://businessstore.microsoft.com). 
2.	Click **Settings**, and then click **Account information**. 
3.	Under My payment options > Credit Cards, select the payment option that you want to update, and then click Update. 
4.	Enter any updated information in the appropriate fields, and then click Next. 
Once you click Next, the information you provided will be validated with a test authorization transaction and, if validated, the payment option will be added to your list of available payment options. Otherwise, you will be prompted for additional information or notified if there are any problems. 
 
**Note**:<br> Certain actions, like updating or adding a payment option, require temporary “test authorization” transactions to validate the payment option. These may appear on your statement as $0.00 authorizations or as small pending transactions. These transactions are temporary and should not impact your account unless you make several changes in a short period of time or have a low balance.

##Offline licensing##

Offline licensing is a new licensing option for Windows 10. With offline licenses, organizations can cache apps and their licenses to deploy within their network. ISVs or devs can opt-in their apps for offline licensing when they submit them to the developer center. Only apps that are opted in to offline licensing will show that they are available for offline licensing in Store for Business. This model means organizations can deploy apps when users or devices do not have connectivity to the Store. 

You have the following distribution options for offline-licensed apps:
- Include the app in a provisioning package, and then use it as part of imaging a device.
- Distribute the app through a management tool. 
For more information, see [Distribute apps to your employees from the Store for Business](distribute-apps-with-management-tool.md).


