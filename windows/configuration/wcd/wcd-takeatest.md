---
title: TakeATest (Windows 10)
description: This section describes the TakeATest settings that you can configure in provisioning packages for Windows 10 using Windows Configuration Designer.
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
author: dansimp
ms.localizationpriority: medium
ms.author: dansimp
ms.topic: article
ms.date: 09/06/2017
ms.reviewer: 
manager: dansimp
---

# TakeATest (Windows Configuration Designer reference)

Use TakeATest to configure the Take A Test app, a secure browser for test-taking. Many schools use online testing for formative and summative assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. For more information, see [Take tests in Windows 10](https://docs.microsoft.com/education/windows/take-tests-in-windows-10).

## Applies to

| Setting   | Desktop editions | Mobile editions | Surface Hub | HoloLens | IoT Core |
| --- | :---: | :---: | :---: | :---: | :---: |
| All settings | X |  |  |  |   |

## AllowScreenMonitoring

When set to True, students are able to record and take screen captures in the Take A Test app.

## AllowTextSuggestions

When set to True, students can see autofill suggestions from onscreen keyboards when typing in the Take A Test app.

## LaunchURI

Enter a link to an assessment that will be automatically loaded when the Take A Test app is opened.

## RequirePrinting

When set to True, students can print in the Take A Test app.

## TesterAccount

Enter the account to use when taking a test.

To specify a domain account, enter **domain\user**. To specify an AAD account, enter **username@tenant.com**. To specify a local account, enter the username. 


## Related topics

- [SecureAssessment configuration service provider (CSP)](https://docs.microsoft.com/windows/client-management/mdm/secureassessment-csp)
