---
title: Support and troubleshooting
description: Troubleshooting information for commonly encountered issues for onboarding or using Microsoft Connected Cache for ISPs.
ms.service: windows-client
ms.subservice: itpro-updates
ms.topic: reference
author: nidos
ms.author: nidos
manager: aaroncz
ms.reviewer: mstewart
ms.collection: tier3
appliesto: 
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 11</a>
- ✅ <a href=https://learn.microsoft.com/windows/release-health/supported-versions-windows-client target=_blank>Windows 10</a>
- ✅ <a href=https://learn.microsoft.com/windows/deployment/do/waas-microsoft-connected-cache target=_blank>Microsoft Connected Cache for ISPs</a>	
ms.date: 05/23/2024
---

# Support and troubleshooting

This article provides information on how to troubleshoot common issues with Microsoft Connected Cache for ISPs.

## Common issues

This section details a few common issues that customers face during the sign-up process.

### Sign up errors

#### Cannot verify account

During sign-up, we verify the information you provide against what is present in [Peering DB](https://www.peeringdb.com/). Make sure the information for your ISP entry on [Peering DB](https://www.peeringdb.com/) is up to date and matches what you provide during sign-up.

#### Invalid verification code

During sign-up, a verification code is sent to your NOC email address present in [Peering DB](https://www.peeringdb.com/). This code expires in 24 hours. If it's expired, you'll need to request a new verification code to complete the sign-up.  

#### Unable to re-sign up

Delete any MCC resource that you're using before you resign up for the service. Deleting any existing MCC resource unlocks your ASN, which allows you to successfully sign up.

### Cache Node Errors  

#### Network connectivity issues

 Updating Docker's DNS can help resolve some connectivity issues.
 Try the following Docker DNS updates until one solves your connectivity problem.
 Once connectivity is established, there's no need to continue updating Docker's DNS.

##### Update Docker's DNS to use the Google DNS resolver

```bash
nano /etc/docker/daemon.json
```

Update the contents of this file to match the following example, which includes the public Google DNS resolver:

```bash
"log-driver": "json-file", "log-opts": {"max-size": "10m","max-file": "3"},"dns":["8.8.8.8", "8.8.4.4"]
```

Save and close using the command CTRL-X and then Y(es) to save

Restart Docker for this change to take effect:

```bash
systemctl restart docker
```

Rerun the IoT Edge Check command to validate proper connectivity:

```bash
iotedge check -verbose
```

##### Update Docker's DNS to use your company's DNS resolver

```bash
nano /etc/docker/daemon.json
```

Update the contents of this file to match the following example, which includes the public Google DNS resolver:

```bash
"log-driver": "json-file", "log-opts": {"max-size": "10m","max-file": "3"},"dns":["<Your companies DNS Resolver IP Address>"]
```

Save and close using the command CTRL-X and then Y(es) to save.

Restart Docker for this change to take effect:

```bash
systemctl restart docker
```

Rerun the IoT Edge Check command to validate proper connectivity:

```bash
iotedge check -verbose
```

## Diagnose and Solve Problems

If this article isn't resolving the issue you're facing with your cache node, you can use the **Diagnose and solve problems** functionality within your MCC resource to continue troubleshooting. **Diagnose and solve problems** contains solutions to most common problems that users might face as they onboard.

You can find **Diagnose and solve problems** on the left pane within your MCC resource.

:::image type="content" source="images/mcc-isp-diagnose-solve.png" alt-text="A screenshot of Azure portal showing the Diagnose and Solve problems tab on the left hand pane of Azure portal." lightbox="images/mcc-isp-diagnose-solve.png":::

Within **Diagnose and solve problems**, select **Troubleshoot** under the type of problem you're facing and follow the prompts that narrow down the solution to the issue.

:::image type="content" source="images/mcc-isp-diagnose-solve-troubleshoot.png" alt-text="A screenshot of Azure portal showing the option to select Troubleshoot to continue troubleshooting common issues related to the installation of Microsoft Connected Cache." lightbox="images/mcc-isp-diagnose-solve-troubleshoot.png":::

## Steps to obtain an Azure subscription ID

To onboard onto Microsoft Connected Cache, you'll need an Azure subscription ID. Use the following steps to obtain your subscription ID:
<!--Using include file, get-azure-subscription.md, for shared content-->
[!INCLUDE [Get Azure subscription](includes/get-azure-subscription.md)]

## Recommended resources

- [Pay-as-you-go-subscription](https://azure.microsoft.com/offers/ms-azr-0003p/)
- [Azure free account FAQs](https://azure.microsoft.com/free/free-account-faq/)
