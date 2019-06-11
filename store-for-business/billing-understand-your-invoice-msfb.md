---
title: Understand your Microsoft Customer Agreement invoice
description: Learn how to read and understand your MCA bill
ms.prod: w10
ms.mktglfcycl: manage
ms.sitesec: library
ms.pagetype: store
author: trudyha
ms.author: TrudyHa
ms.topic: conceptual
ms.localizationpriority: medium
ms.date: 03/01/2019
ms.reviewer: 
manager: dansimp
---

# Understand your Microsoft Customer Agreement invoice

The invoice provides a summary of your charges and provides instructions for payment. It’s available for
download in the Portable Document Format (.pdf) for commercial customers from Microsoft Store for Business [Microsoft Store for Business - Invoice](https://businessstore.microsoft.com/manage/payments-billing/invoices) or can be sent via email. This article applies to invoices generated for a Microsoft Customer Agreement billing account. Check if you have a [Microsoft Customer Agreement](https://businessstore.microsoft.com/manage/organization/agreements).

## General invoice information
Invoices are your bill from Microsoft. A few things to note:

- **Invoice schedule** - You’re invoiced on a monthly basis. You can find out which day of the month you receive invoices by checking invoice date under billing profile overview in [Microsoft Store for Business](https://businessstore.microsoft.com/manage/payments-billing/billing-profiles). Charges that occur between the end of the billing period and the invoice date are included in the next month's invoice, since they are in the next billing period. The billing period start and end dates for each invoice are listed in the invoice PDF above **Billing Summary**.
- **Billing profile** - Billing profiles are created during your purchase. Invoices are created for each billing profile. Billing profiles let you customize what products are purchased, how you pay for them, and who can make purchases. For more information, see [Understand billing profiles](billing-profile.md)
- **Items included** - Your invoice includes total charges for all first and third-party software and hardware products purchased under a Microsoft Customer Agreement. That includes items purchased from Microsoft Store for Business and Azure Marketplace. 
- **Charges** - Your invoice provides information about products purchased and their related charges and taxes. Purchases are aggregated to provide a concise view of your bill. 
- **International customers** - Charges on invoices for international customers are converted to their local currencies. Exchange rate information is listed at the bottom of the invoice.

## Online invoice
For Store for Business customers, invoices are also available online. A few things to note:
- **Link to online invoice** - Available from your PDF invoice, and from an email notification.
- **Invoice details** - Expandable view of the charges on your invoice, so you can see more details for each item.
- **Pricing details** - Additional information including discounting and pricing details.
- **Pay online** - Option to make a payment online from the invoice. 
- **Azure cost management** - For Azure customers, online invoices include a link to Azure cost management. 

**To view your online invoice**
1. Sign in to [Microsoft Store for Business]( https://businessstore.microsoft.com/). 
2. Select **Manage**, and then select **Billing and payments**. 
3. Select an invoice from the list to view your online invoice. 

## Detailed terms and descriptions of your invoice
The following sections list the important terms that you see on your
invoice and descriptions for each term.

### Understand the invoice summary

The **Invoice Summary** is on the top of the first page and shows information about your billing profile and how you pay.

![Invoice summary section](images/invoicesummary.png)


| Term | Description |
| --- | --- |
| Sold to |Address of your legal entity, found in billing account properties|
| Bill to |Billing address of the billing profile receiving the invoice, found in billing profile properties|
| Billing Profile |The name of the billing profile receiving the invoice |
| P.O. number |An optional purchase order number, assigned by you for tracking |
| Invoice number |A unique, Microsoft-generated invoice number used for tracking purposes |
| Invoice date |Date that the invoice is generated, typically five to 12 days after end of the Billing cycle. You can check your invoice date in billing profile properties.|
| Payment terms |How you pay for your Microsoft bill. *Net 30 days* means you pay by following instructions on your invoice, within 30 days of the invoice date. |

### Understand the billing summary
The **Billing Summary**  shows the charges against the billing profile since the previous billing period, any credits that were applied, tax, and the total amount due.


![Billing summary section](images/billingsummary.png)

| Term | Description |
| --- | --- |
| Charges|Total number of Microsoft charges for this billing profile since the last billing period |
| Credits |Credits you received from returns |
| Azure credits applied |Your Azure credits that are automatically applied to Azure charges each billing period |
| Subtotal |The pre-tax amount due |
| Tax |The type and amount of tax that you pay, depending on the country of your billing profile. If you don't have to pay tax, then you won't see tax on your invoice. |
| Estimated total savings |The estimated total amount you saved from effective discounts. If applicable, effective discount rates are listed beneath the purchase line items in Details by Invoice Section. |

### Understand your charges
You'll see the charges, tax, and the total amount due. Azure customers will also see the amount of Azure credits applied. 

`Total = Charges - Azure Credit + Tax`

The details show the cost broken down by product order name. For Azure customers, this might be organized by invoice section. For more information about how invoice sections are used with Azure products, see [Understand invoice sections](https://docs.microsoft.com/azure/billing/billing-mca-overview#understand-invoice-sections). 
Within each product order, cost is broken down by service family.

The total amount due for each service family is calculated by subtracting Azure credits from credits/charges and adding tax:

`Total = Charges/Credits - Azure Credit + Tax`

![Details by invoice section](images/invoicesectiondetails.png)

| Term |Description |
| --- | --- |
| Unit price | The effective unit price of the service (in pricing currency) that is used to the rate the usage. This is unique for a product, service family, meter, and offer. |
| Qty | Quantity purchased or consumed during the billing period |
| Charges/Credits | Net amount of charges after credits/refunds are applied |
| Azure Credit | The amount of Azure credits applied to the Charges/Credits|
| Tax rate | Tax rate(s) depending on country |
| Tax amount | Amount of tax applied to purchase based on tax rate |
| Total | The total amount due for the purchase |

### How to pay
At the bottom of the invoice, there are instructions for paying your bill. You can pay by wire or online. If you pay online, you can use a credit or debit card, or Azure credits, if applicable.

### Publisher information
If you have third-party services in your bill, the name and address of each publisher is listed at the bottom of your invoice.

### Exchange rate
If prices were converted to your local currency, the exchange rates are listed in this section at the bottom of the invoice. All Azure charges are priced in USD and third-party services are priced in the seller's currency.

## Next steps
If there are Azure charges on your invoice that you would like more details on, see [Understand the Azure charges on your Microsoft Customer Agreement invoice](https://docs.microsoft.com/en-us/azure/billing/billing-understand-your-invoice-mca).

## Need help? Contact us.

If you have questions or need help with your Azure charges, [create a support request with Azure support](https://portal.azure.com/#blade/Microsoft_Azure_Support/HelpAndSupportBlade/newsupportrequest).

If you have questions or need help with your invoice in Microsoft Store for Business, [create a support request with Store for Business support](https://businessstore.microsoft.com/manage/support/summary).
