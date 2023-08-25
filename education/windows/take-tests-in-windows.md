---
title: Take tests and assessments in Windows
description: Learn about the built-in Take a Test app for Windows and how to use it.
ms.date: 03/31/2023
ms.topic: how-to
---

# Take tests and assessments in Windows

Many schools use online testing for formative and summation assessments. It's critical that students use a secure browser that prevents them from using other computer or Internet resources during the test. To help schools with testing, Windows provides an application called **Take a Test**. The application is a secure browser that provides different features to help with testing, and can be configured to only allow access a specific URL or a list of URLs. When using Take a Test, students can't:

- print, use screen capture, or text suggestions (unless enabled by the teacher or administrator)
- access other applications
- change system settings, such as display extension, notifications, updates
- access Cortana
- access content copied to the clipboard

## How to use Take a Test

There are different ways to use Take a Test, depending on the use case:

- For lower stakes assessments, such a quick quiz in a class, a teacher can generate a *secure assessment URL* and share it with the students. Students can then open the URL to access the assessment through Take a Test. To learn more, see the next section: [Create a secure assessment link](#create-a-secure-assessment-link)
- For higher stakes assessments, you can configure Windows devices to use a dedicated account for testing and execute Take a Test in a locked-down mode, called **kiosk mode**. Once signed in with the dedicated account, Windows will execute Take a Test in a lock-down mode, preventing the execution of any applications other than Take a Test. For more information, see [Configure Take a Test in kiosk mode](edu-take-a-test-kiosk-mode.md)

:::image type="content" source="./images/takeatest/flow-chart.png" alt-text="Set up and user flow for the Take a Test app." border="false":::

## Create a secure assessment link

Anything hosted on the web can be presented in a locked down manner using the Take a Test app, not just assessments. To lock down online content, a URL must be embedded with a specific prefix and devices will be locked down when users open the link.

To create a secure assessment link to the test, there are two options:

- Create a link using a web application
- Create a link using schema activation

### Create a link using a web application

For this option, copy the assessment URL and open the web application <a href="https://aka.ms/create-a-take-a-test-link" target="_blank"><u>Customize your assessment URL</u></a>, where you can:

- Paste the link to the assessment URL
- Select the options you want to allow during the test
- Generate the link by selecting the button Create link

This is an ideal option for teachers who want to create a link to a specific assessment and share it with students using OneNote, for example.

### Create a link using schema activation

For this option, you embed a URL with a specific prefix and specify parameters depending on what you want to allow during the test.
The URL must be in the following format:

```
ms-edu-secureassessment:<URL>#enforceLockdown
```

To enable printing, screen capture, or both, use the above link and append one of these parameters:

- `&enableTextSuggestions` - Enables text suggestions
- `&requirePrinting` - Enables printing
- `&enableScreenCapture` - Enables screen capture
- `&requirePrinting&enableScreenCapture` - Enables printing and screen capture; you can use a combination of `&enableTextSuggestions`, `&requirePrinting`, and `&enableScreenCapture` if you want to enable more than one capability.

If these parameters aren't included, the default behavior is to disable the capabilities.

For tests that utilize the Windows lockdown API, which checks for running processes before locking down, remove `enforceLockdown`. Removing `enforceLockdown` will result in the app not locking down immediately, which allows you to close apps that aren't allowed to run during lockdown. Take a Test will lock down the device once the applications are closed.

To enable permissive mode, don't include `enforceLockdown` in the schema parameters. For more information, see [Permissive mode](take-a-test-app-technical.md#permissive-mode).

## Distribute the secure assessment link

Once the link is created, it can be distributed through the web, email, OneNote, or any other method of your choosing.

For example, you can create and copy the shortcut to the assessment URL to the students' desktop.

To take the test, have the students open the link.

> [!NOTE]
> If you enabled printing, the printer must be pre-configured for the account before the student takes the test.

:::image type="content" source="./images/takeatest/desktop-shortcuts.png" alt-text="Windows 11 SE desktop showing two shortcuts to assessment URLs." border="true":::

> [!NOTE]
> If using `enforceLockdown`, to exit the Take a Test app at any time, press <kbd>Ctrl</kbd>+<kbd>Alt</kbd>+<kbd>Delete</kbd>. Students will be prompted to type their password to get back to their desktop.

## Additional information

Teachers can use **Microsoft Forms** to create tests. For more information, see [Create tests using Microsoft Forms](https://support.microsoft.com/en-us/office/create-a-quiz-with-microsoft-forms-a082a018-24a1-48c1-b176-4b3616cdc83d).

To learn more about the policies and settings set by the Take a Test app, see [Take a Test app technical reference](take-a-test-app-technical.md).