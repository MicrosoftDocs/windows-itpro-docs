---
title: Define readiness criteria
manager: laurawi
description: Identify important roles and figure out how to classify apps
keywords: updates, servicing, current, deployment, semi-annual channel, feature, quality, rings, insider, tools
ms.prod: w10
ms.mktglfcycl: manage
audience: itpro
author: jaimeo
ms.localizationpriority: medium
ms.audience: itpro
ms.topic: article
ms.collection: m365initiative-coredeploy
---

# Define readiness criteria

## Figure out roles and personnel

Planning and managing a deployment involves a variety of distinct activities and roles best suited to each. As you plan, it's worth figuring out which roles you'll need to carry out the deployment and who should fill them. Different roles are active at various phases of a deployment. Depending on the size and complexity of your organization, some of the roles could be filled by the same person. However, it's best to have an established *process manager*, who will oversee all of the tasks for the deployment.

### Process manager

The process manager leads the update deployment process and has the authority to push the process forward--or halt it if necessary. They also have responsibilities in organizing these activities:


|Compatibility workstream  |Deployment  |Capability and modernization  |
|---------|---------|---------|
|[Assigning application priority](#set-criteria-for-rating-apps)     |  Reviewing infrastructure requirements       | Determining infrastructure changes        |
|Application assessment     | Validating infrastructure against requirements        | Determining configuration changes        |
|Device assessment     |  Creating infrastructure update plan       | Create capability proposal        |

It's the process manager's role to collect reports on remediation efforts, escalate failures, and to decide whether your environment is ready for pilot deployment and then broad deployment.


This table sketches out one view of the other roles, with their responsibilities, relevant skills, and the deployment phases where they are needed:


|Role  |Responsibilities  |Skills  |Active phases  |
|---------|---------|---------|---------|
|Process manager     | Manages the process end to end; ensures inputs and outputs are captures; ensures that activities progress        | IT Service Management        | Plan, prepare, pilot deployment, broad deployment        |
|Application owner     | Define application test plan; assign user acceptance testers; certify the application         | Knowledge of critical and important applications        | Plan, prepare, pilot deployment        |
|Application developer     | Ensure apps are developed to stay compatible with current Windows versions        | Application development; application remediation        | Plan, prepare        |
|End-user computing     | Typically a group including infrastructure engineers or deployment engineers who ensure upgrade tools are compatible with Windows        | Bare-metal deployment; infrastructure management; application delivery; update management        | Plan, prepare, pilot deployment, broad deployment        |
|Operations     | Ensure that support is available for current Windows version. Provide post-deployment support, including user communication and rollbacks.        | Platform security        | Prepare, pilot deployment, broad deployment        |
|Security     | Review and approve the security baseline and tools        | Platform security        | Prepare, pilot deployment        |
|Stakeholders     | Represent groups affected by updates, for example, heads of finance, end-user services, or change management        | Key decision maker for a business unit or department        | Plan, pilot deployment, broad deployment        |






## Set criteria for rating apps

Some apps in your environment are fundamental to your core business activities. Other apps help workers perform their roles, but aren’t critical to your business operations. Before you start inventorying and assessing the apps in your environment, you should establish some criteria for categorizing your apps, and then determine a priority for each. This process will help you understand how best to deploy updates and how to resolve any issues that could arise.

In the Prepare phase, you'll apply the criteria you define now to every app in your organization.

Here's a suggested classification scheme:


|Classification  |Definition|
|---------|---------|
|Critical     | The most vital applications that handle core business activities and processes. If these applications were not available, the business, or a business unit, couldn't function at all. |
|Important     | Applications that individual staff members need to support their productivity. Downtime here would affect individual users, but would only have a minimal impact on the business.       |
|Not important   | There is no impact on the business if these apps are not available for a while.        |

Once you have classified your applications, you should agree what each classification means to the organization in terms of priority and severity. This activity will help ensure that you can triage problems with the right level of urgency. You should assign each app a time-based priority.

Here's an example priority rating system; the specifics could vary for your organization:


|Priority  |Definition  |
|---------|---------|
|1        | Any issues or risks identified must be investigated and resolved as soon as possible.        |
|2     | Start investigating risks and issues within two business days and fix them *during* the current deployment cycle.    |
|3     | Start investigating risks and issues within 10 business days. You don’t have to fix them all within the current deployment cycle. However, all issues must be fixed by the end of the next deployment cycle.        |
|4     | Start investigating risks and issues within 20 business days. You can fix them in the current or any future development cycle.        |

Related to priority, but distinct, is the concept of severity. You should define a severity ranking as well, based on how you feel a problem with an app should affect the deployment cycle.

Here's an example:


|Severity  |Effect  |
|---------|---------|
|1     | Work stoppage or loss of revenue        |
|2     | Productivity loss for a business unit        |
|3     | Productivity loss for individual users         |
|4     | Minimal impact on users        |

## Example: a large financial corporation

Using the suggested scheme, a financial corporation might classify their apps like this:


|App  |Classification  |
|---------|---------|
|Credit processing app     | Critical        |
|Frontline customer service app     |  Critical       |
|PDF viewer     | Important        |
|Image-processing app     | Not important        |

Further, they might combine this classification with severity and priority rankings like this:


|Classification  |Severity  |Priority  |Response  |
|---------|---------|---------|---------|
|Critical     |  1 or 2       |  1 or 2       | For 1, stop deployment until resolved; for 2, stop deployment for affected devices or users only.       |
|Important     | 3 or 4        |  3 or 4       | For 3, continue deployment, even for affected devices, as long as there is workaround guidance.        |
|Not important     |   4      | 4        |  Continue deployment for all devices.       |

