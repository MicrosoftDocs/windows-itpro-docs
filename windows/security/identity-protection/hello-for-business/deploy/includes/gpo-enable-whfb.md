---
ms.date: 12/15/2023
ms.topic: include
---

For Microsoft Entra hybrid joined devices, you can use group policies to configure Windows Hello for Business.

> [!TIP]
> Create a security group (for example, *Windows Hello for Business users* or *Windows Hello for Business devices*) to make it easy to deploy Windows Hello for Business in phases. You assign **Group Policy permissions** to this group to simplify the deployment by adding the users or devices to the groups.

The *Enable Windows Hello for Business* policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business. A user will only attempt enrollment if this policy setting is **enabled**.\
You can configure the *Enable Windows Hello for Business* setting for computer or users:

- Deploying this policy setting to computers (or group of computers) results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment
- Deploying this policy setting to a user (or group of users), results in only that user attempting a Windows Hello for Business enrollment

If both user and computer policy settings are deployed, the user policy setting has precedence.

> [!NOTE]
> If you deployed Windows Hello for Business configuration using both Group Policy and Intune, Group Policy settings will take precedence and Intune settings will be ignored. For more information about policy conflicts, see [Policy conflicts from multiple policy sources](../../configure.md#policy-conflicts-from-multiple-policy-sources)
