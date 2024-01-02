---
ms.date: 01/03/2024
ms.topic: include
---

The *Enable Windows Hello for Business* policy setting is the configuration needed for Windows to determine if a user should attempt to enroll for Windows Hello for Business. A user will only attempt enrollment if this policy setting is **enabled**.\
You can configure the *Enable Windows Hello for Business* setting for computer or users:

- Deploying this policy setting to computers (or group of computers) results in all users that sign-in that computer to attempt a Windows Hello for Business enrollment
- Deploying this policy setting to a user (or group of users), results in only that user attempting a Windows Hello for Business enrollment

If both user and computer policy settings are deployed, the user policy setting has precedence.
