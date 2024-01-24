---
title: Reduce the user-visible password surface area
description: Learn about how to reduce the user-visible password surface area, the second step of the Microsoft passwordless journey.
ms.topic: concept-article
ms.date: 12/13/2023
---

# Reduce the user-visible password surface area

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-1-off.svg" border="false" link="journey-step-1.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-2-on.svg" border="false" link="journey-step-2.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-3-off.svg" border="false" link="journey-step-3.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-4-off.svg" border="false":::
   :::column-end:::
:::row-end:::

## Survey test user workflow for password usage

Now is the time to learn more about the targeted work persona. You should have a list of applications they use, but you don't know what, why, when, and how frequently. This information is important as you further your progress through step 2. Test users create the workflows associated with the targeted work persona. Their initial goal is to do one simple task: document password usage. This list isn't a comprehensive one, but it gives you an idea of the type of information you want. The goal is to learn about all the scenarios in which that work persona encounters a password. A good approach is to ask yourself the following set of questions:

| :ballot_box_with_check: | Question |
|--|--|
| :black_square_button: | *What's the name of the application that asked for a password?* |
| :black_square_button: | *Why do they use the application that asked for a password? For example, is there more than one application that can do the same thing?* |
| :black_square_button: | *What part of their workflow makes them use the application? Try to be as specific as possible. For example, "I use application x to issue credit card refunds for amounts over y."* |
| :black_square_button: | *How frequently do you use the application in a given day or week?* |
| :black_square_button: | *Is the password you type into the application the same as the password you use to sign-in to Windows?* |

Some organizations will empower their users to write this information while some may insist on having a member of the IT department shadow them. An objective viewer may notice a password prompt that the user overlooks simply because of muscle memory. As previously mentioned, this information is critical. You could miss one password prompt that could delay the transition to being passwordless.

## Identify password usage and plan, develop, and deploy password mitigations

Your test users have provided you valuable information that describes how, what, why, and when they use a password. It's now time for your team to identify each of these password use cases and understand why the user must use a password.\
Create a list of the scenarios. Each scenario should have a clear problem statement. Name the scenario with a one-sentence summary of the problem statement. Include in the scenario the results of your team's investigation as to why the ser is prompted by a password. Include relevant, but accurate details. If it's policy or procedure driven, then include the name and section of the policy that dictates why the workflow uses a password.

Keep in mind your test users won't uncover all scenarios. Some scenarios you'll need to force on your users because they're low percentage scenarios. Remember to include the following scenarios:

- Provisioning a new brand new user without a password
- Users who forget the PIN or other remediation flows when the strong credential is unusable

Next, review your list of scenarios. You can start with the workflows that are dictated by process or policy, or you can begin with workflows that need technical solutions, whichever of the two is easier or quicker. This choice varies by organization.

Start mitigating password usages based on the workflows of your targeted personas. Document the mitigation as a solution to your scenario. Don't worry about the implementation details for the solution. An overview of the changes needed to educe the password usages is all you need. If there are technical changes needed, either infrastructure or code changes, the exact details will likely be included in the project documentation. However your organization tracks projects, create a new project in that system. Associate your scenario to that project and start the processes needed to get that project funded.

Mitigating password usage with applications is one of the more challenging obstacles in the passwordless journey. If your organization develops the application, then you are in better shape the common-off-the-shelf software (COTS).

The ideal mitigation for applications that prompt the user for a password is to enable those applications to use an existing authenticated identity, such as Microsoft Entra ID or Active Directory. Work with the applications vendors to have them add support for Microsoft Entra identities. For on-premises applications, have the application use Windows integrated authentication. The goal for your users should be a seamless single sign-on experience where each user authenticates once when they sign-in to Windows. Use this same strategy for applications that store their own identities in their own databases.

Each scenario on your list should now have a problem statement, an investigation as to why the password was used, and a mitigation plan on how to make the password usage go away. Armed with this data, one-by-one, close the gaps on user-visible passwords. Change policies and procedures as needed, make infrastructure changes where possible. Convert in-house applications to integrate in your Microsoft Entra ID tenant, use federated identities, or use Windows integrated authentication. Work with third-party software vendors to update their software to integrate in Microsoft Entra ID, support federated identities, or use Windows integrated authentication.

## Repeat until all user password usage is mitigated

Some or all of your mitigations are in place. You need to validate that your solutions have solved their problem statements. This stage is where you rely on your test users. You want to keep a good portion of your first test users, but this point is a good opportunity to replace or add a few. Survey test users workflow for password usage. If all goes well, you've closed most or all of the gaps. A few are likely to remain. Evaluate your solutions and what went wrong, change your solution as needed until you reach a solution that removes your user's need to type a password. If you're stuck, others might be too. Use the forums from various sources or your network of IT colleagues to describe your problem and see how others are solving it. If you're out of options, contact Microsoft for assistance.

## Remove password capabilities from Windows

You believe you've mitigated all the password usage for the targeted work persona. Now comes the true test: configure Windows so the user can't use a password.\
Windows offers three main options to reduce or eliminate the password surface area:

- Windows passwordless experience
- Exclude the password credential provider
- Require Windows Hello for Business or a smart card

### Windows passwordless experience

*Windows Passwordless experience* is a security policy that hides the password credential provider for user accounts that sign in with Windows Hello or a FIDO2 security key. This is the recommended option, but it's only available on Microsoft Entra joined devices. The following image shows the Windows lock screen when Windows passwordless experience is enabled. A user enrolled in Windows Hello for Business doesn't have the option to use a password to sign in:

    :::image type="content" source="images/passwordless-experience.png" alt-text="Screenshot of the Windows lock screen with passwordless experience enabled." border="false":::

To learn more, see [Windows passwordless experience](../passwordless-experience/index.md)

### Exclude the password credential provider

The *Exclude credential providers* policy setting can be used to disable the password credentail provider. When configured, Windows disables the possibility to uyse passwords for *all accounts*, including local accounts. It also prevents the use of passwords for RDP and *Run as* authentication scenarios. This policy setting might impact support scenarios, such as when a user needs to sign in with a local account to troubleshoot a problem. For this reason, carefully evaluate all scenarios before enabling it.

- GPO: **Computer Configuration** > **Administrative Templates** > **System** > **Logon** > **Exclude credential providers**
- CSP: ``./Device/Vendor/MSFT/Policy/Config/ADMX_CredentialProviders/`[ExcludedCredentialProviders](/windows/client-management/mdm/policy-csp-admx-credentialproviders#excludedcredentialproviders)

The value to enter in the policy to hide the password credential provider is `{60b78e88-ead8-445c-9cfd-0b87f74ea6cd}`.

### Require Windows Hello for Business or a smart card

The *Require Windows Hello for Business or a smart card* policy setting can be used to require Windows Hello for Business or a smart card for interactive logon. When enabled, Windows prevents users from signing in or unlocking with a password. The password credential provider remains visible to the user. If a user tries to use a password, Windows informs the user they must use Windows Hello for Business or a smart card. Before enabling this policy, the user must be enrolled in Windows Hello for Business or have a smart card. Therefore, implementing this policy requires careful planning and coordination.

- GPO: **Computer Configuration** > **Windows Settings** > **Security Settings** > **Local Policies** > **Security Options** > **Interactive logon: Require Windows Hello for Business or smart card**
- CSP: not available

## Validate that none of the workflows needs passwords

This stage is the significant moment. You have identified password usage, developed solutions to mitigate password usage, and have removed or disabled password usage from Windows. In this configuration, your users won't be able to use a password. Users will be blocked if any of their workflows ask them for a password. Ideally, your test users should be able to complete all the work flows of the targeted work persona without any password usage. Don't forget those low percentage work flows, such as provisioning a new user or a user that forgot their PIN or can't use their strong credential. Ensure those scenarios are validated as well.

## Next steps

> [!div class="nextstepaction"]
> Congratulations! You're ready to transition one or more portions of your organization to a passwordless deployment. You've validated that the targeted work persona is ready to go where the user no longer needs to know or use their password. You're just a few steps away from declaring success.
>
> [Step 3: transition into a passwordless deployment >](journey-step-3.md)
