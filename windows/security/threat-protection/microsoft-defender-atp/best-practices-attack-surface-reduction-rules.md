---
title: Tips and best practices for attack surface reduction rules
description: Prevent issues from arising with your attack surface reduction rules by following these best practices
keywords: Microsoft Defender ATP, attack surface reduction, best practices
search.product: eADQiWindows 10XVcnh
ms.pagetype: security
author: denisebmsft
ms.author: deniseb
manager: dansimp
ms.reviewer: jcedola
audience: ITPro 
ms.topic: article 
ms.prod: w10 
ms.localizationpriority: medium
ms.custom: 
- asr
ms.collection: 
- m365-security-compliance 
- m365initiative-defender-endpoint 
---

# Tips and best practices for attack surface reduction rules

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)

Attack surface reduction rules help reduce vulnerabilities by targeting certain software behaviors. These behaviors include:

- Launching executable files and scripts that attempt to download or run files;
- Running obfuscated or otherwise suspicious scripts; and 
- Performing behaviors that apps don't usually initiate during normal day-to-day work.

This article includes tips, best practices, and important considerations regarding attack surface reduction rules.



## Results of applying ASR rules

- The process of applying ASR rules on devices provides scope to query for reports. These queries can be implemented in the form of templates.

<!--Denise, could you clarify as to whether the ASR PowerBI template is anything to do with the templates used to generate/retrieve reports as specified in Blog-3? In other words, does the link to PowerBI template have relevance in this section and context?
-->

- Once applying ASR rules to devices leads to querying for reports, there are a few sources from which reports can be queried. One of such sources is the [Microsoft 365 security center](https://security.microsoft.com)
 
<!-- Denise, could we discuss as to why only the **Microsoft 365 security center** source is being cited here; Just for better understanding, I am putting forward this query
-->

## Applicable to rule states

This section describes the best practices with regard to the states which any ASR rule can be set to, irrespective of the method used to configure or deploy the ASR rule.

Prior to describing the best pratices for the ASR rules' states, it is important to know the states which an ASR rule can be set to:

- **Not configured**: This is the state in which the ASR rule has been disabled. The code for this state is 0.
- **Block**: This is the state in which the ASR rule is enabled. YThe code for this state is 1.
- **Audit**: This is the state in which the ASR rule is evaluated about its impactive behavior toward the organization or environment in which it is deployed.

## Recommendation

The recommended practice for a deployed ASR rule is to start it in **audit** mode. The reasons for recommendation of this best pratice are:

1. **Access to logs and reviews**: When an ASR rule is set to **audit** mode, you can get access to the logs and reviews pertaining to it. These logs and reviews are data that helps you to analyze the impact of the ASR rule.
2. **Rule-related decision**: The analysis findings guided by the logs and reviews help you take a decision whether to deploy or exclude the ASR rule or not. For information on ASR rule exclusion see
<!--To cite here the topic that describes guidance provided for the process of implementing ASR rules' exclusions-->
<!--To cite here the topic that describes guidance provided for the process of deploying or configuring ASR rules-->

<!--Denise, if we can seek information about the common built-in features across all the 5 configuration mechanisms, we can specify the best practice regarding which is the best configuration mechanism to use to deploy the ASR rules-->

## Use a phased approach

Before you roll out attack surface reduction rules in your organization, select a small set of managed devices to start. 

The reasons for selecting a smaller set of devices as the sample object on which the ASR rules are to be applied are:

- **Better prospects for seeing the impact of attack surface reduction rules** - This approach enables you to see how attack surface reduction rules work in your environment. When lesser number of devices are used, the impact becomes more apparent because the ASR rules can sometimes impact a particular device to a larger extent.
- **Ease in determining exclusions for attack surface reduction rules** - Testing ASR rules on a smaller device set gives you scope to implement flexibility in exclusions. The flexibility refers to the devising combinations of applicable/not applicable devices for ASR rules applicability. These combinations vary depending on the results of the ASR rules testing on the smaller device set.

> [!IMPORTANT]
> You can implement the process of applying ASR rules to a smaller device set by utilizing dynamic membership rules.

**How to configure dynamic membership rules**

<!--Denise, we might need Jody's help in acquiring inputs for this procedural section  of setting up dynamic membership rules.-->

## Use code signing for applications

As a best practice, use code signing for all the applications and scripts that your organization is using. This includes internally developed applications. Using code signing helps avoid false positives with attack surface reduction rules. It can also help avoid issues with attack surface reduction rules for developers and other users within your organization. 

## View reports from various sources in Microsoft

### From the Microsoft 365 security center

In the Microsoft 365 security center ([https://security.microsoft.com](https://security.microsoft.com)), go to **Reports** > **Devices** > **Attack surface reduction**. (MORE TO COME!)

To retrieve and view the reports generated in ([https://security.microsoft.com](https://security.microsoft.com)), ensure that the device for which you seek a report is onboarded on to Microsoft Defender ATP.

### By Microsoft Defender ATP advanced hunting

Advanced hunting is a query-based threat-hunting tool of Microsoft Defender ATP. This tool generates reports based on the findings of the threat-hunting process.

The **advanced hunting** tool enables the users to audit the **Of-the-last-30-days** data collected from various devices by Microsoft Defender ATP Endpoint Detection and Response (EDR). It facilitates proactive logging of any suspicious indicators and entities in the events that you explore. This tool provides flexibility in accessing data (without any restriction in category of data to be accessed). This flexibility enables the user to detect known threats and spot new threats.

The reports for the ASR rules' events are generated by querying the **DeviceEvents** table.

**Template of DeviceEvents table**

DeviceEvents
| where Timestamp > ago (30d)
| where ActionType startswith "Asr" 
| summarize EventCount=count () by ActionType

**Procedure**

1. Navigate to **Advanced hunting** module in the **Microsoft Defender Security Center** portal.
2. Click **Query**.
3. Click **+ New** to create a new query.
4. Click **Run query**. The report based on the query parameters (specified in the **Template of DeviceEvents table** section) is generated.

### By Microsoft Defender ATP machine timeline

Machine timeline is another report-generating source in Microsoft Defender ATP, but with a narrower scope.

Reports relating to ASR rule events can be generated for the preceding-6-months period on a specific endpoint or device. 

**Summarized procedure to generate report**

1. Log in to **Microsoft Defender Security Center** and navigate to the **Machines** tab.
2. Choose a machine for which you want to view the reports of its ASR rule-related events.
3. Click **Timeline** and choose the time range for which the report is to display data.


## Get the Power BI report template

<!--The Power BI report templates are here: https://github.com/microsoft/MDATP-PowerBI-Templates-->

## Avoid policy conflicts

If a conflicting policy has emerged as a result of a policy being applied from Mobile Device Management (MDM, using Intune) and Group Policy, the setting applied from MDM takes precedence. For more information, see [Attack surface reduction rules](https://docs.microsoft.com/mem/intune/protect/endpoint-protection-windows-10#attack-surface-reduction-rules).

You can now create a superset of policies for attack surface reduction rules that apply to [MEM-managed devices](/mem/intune/enrollment/device-management-capabilities). When you do this, only the settings that are not in conflict are merged, while those that are in conflict are not added to the superset of rules. Previously, if two policies included conflicts for a single setting, both policies were flagged as being in conflict, and no settings from either of the profiles would be deployed. Attack surface reduction rule merge behavior works like this:

| Situation | What happens |
|:---|:---|
| Two or more policies have multiple settings configured | The settings that do not conflict are merged into the superset of the policies they are mapped to. |
| Two or more policies have a conflict with a single setting | Only the single setting with a conflict is held back from being merged into the superset of the policies. <p>The bundle of settings as a whole is not held back from being merged into the superset because of a single conflict-affected setting. <p>The policy as a whole is not flagged as **being in conflict**. |

The policy superset can include settings from the following profiles:  
- Devices > Configuration policy > Endpoint protection profile > Microsoft Defender Exploit Guard > Attack Surface Reduction.
- Endpoint security > Attack surface reduction policy > Attack surface reduction rules.
- Endpoint security > Security baselines > Microsoft Defender ATP Baseline > Profiles >  Profile Name > Properties > Configuration settings > Attack Surface Reduction Rules

## See the demystifying blogs

The following table lists several blog posts that you might find helpful. All of these blogs are hosted on the [Microsoft Tech Community site](https://techcommunity.microsoft.com), under [Microsoft Defender for Endpoint](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/bg-p/MicrosoftDefenderATPBlog).

|Blog  |Description  |
|---------|---------|
|[Demystifying attack surface reduction rules - Part 1: Why and What](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-1/ba-p/1306420)     | Get a quick overview of the Why and the What through eight questions and answers.          |
|[Demystifying attack surface reduction rules - Part 2: How](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-2/ba-p/1326565)     | See how to configure attack surface reduction rules, how exclusions work, and how to define exclusions.         |
|[Demystifying attack surface reduction rules - Part 3: Reports and Troubleshooting](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-3/ba-p/1360968)     | Learn how to view reports and information about attack surface reduction rules and their status, and how to troubleshoot issues with rule impact and operations.         |
|[Demystifying attack surface reduction rules - Part 4: Migrating](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/demystifying-attack-surface-reduction-rules-part-4/ba-p/1384425)     | If you're currently using a non-Microsoft host intrusion prevention system (HIPS) and are evaluating or migrating to attack surface reduction capabilities in Microsoft Defender for Endpoint, see this blog. You'll see how custom rules you were using with your HIPS solution can map to attack surface reduction rules in Microsoft Defender for Endpoint.         |

