---
title: Password-less strategy
description: Learn about the password-less strategy and how Windows Hello for Business implements this strategy in Windows 10 and Windows 11.
ms.prod: windows-client
author: paolomatarazzo
ms.author: paoloma
manager: aaroncz
ms.reviewer: prsriva
ms.collection: M365-identity-device-management
ms.topic: conceptual
localizationpriority: medium
ms.date: 05/24/2022
appliesto: 
  - ✅ <b>Windows 10</b>
  - ✅ <b>Windows 11</b>
ms.technology: itpro-security
---

# Password-less strategy

This article describes Windows' password-less strategy. Learn how Windows Hello for Business implements this strategy in Windows 10 and Windows 11.

## Four steps to password freedom

Over the past few years, Microsoft has continued their commitment to enabling a world without passwords.

:::image type="content" source="images/passwordless/four-steps-passwordless-strategy.png" alt-text="Diagram of stair-step strategy with four steps.":::

### 1. Develop a password replacement offering

Before you move away from passwords, you need something to replace them. With Windows 10 and Windows 11, Microsoft introduced Windows Hello for Business, a strong, hardware protected two-factor credential that enables single sign-on to Azure Active Directory and Active Directory.

Deploying Windows Hello for Business is the first step towards a password-less environment. Windows Hello for Business coexists nicely with existing password-based security. Users are likely to use Windows Hello for Business because of its convenience, especially when combined with biometrics. However, some workflows and applications may still need passwords. This early stage is about implementing an alternative and getting users used to it.

### 2. Reduce user-visible password surface area

With Windows Hello for Business and passwords coexisting in your environment, the next step is to reduce the password surface. The environment and workflows need to stop asking for passwords. The goal of this step is to achieve a state where the users know they have a password, but they never use it. This state helps decondition users from providing a password anytime a password prompt shows on their computer. This behavior is how passwords are phished. Users who rarely, if at all, use their password are unlikely to provide it. Password prompts are no longer the norm.

### 3. Transition into a password-less deployment

Once the user-visible password surface has been eliminated, your organization can begin to transition those users into a password-less world. A world where:

- The users never type their password.
- The users never change their password.
- The users don't know their password.

In this world, the user signs in to Windows using Windows Hello for Business and enjoys single sign-on to Azure and Active Directory resources. If the user is forced to authenticate, their authentication uses Windows Hello for Business.

### 4. Eliminate passwords from the identity directory

The final step of the password-less story is where passwords simply don't exist. At this step, identity directories no longer persist any form of the password. This stage is where Microsoft achieves the long-term security promise of a truly password-less environment.

## Methodology

Four steps to password freedom provide an overall view of how Microsoft envisions the road to eliminating passwords. But this road is frequently traveled and derailed by many. The scope of work is vast and filled with many challenges and frustrations. Nearly everyone wants the instant gratification of achieving a password-less environment, but can easily become overwhelmed by any of the steps. You aren't alone and Microsoft understands. While there are many ways to accomplish freedom from passwords, here's one recommendation based on several years of research, investigation, and customer conversations.

### Prepare for the journey

The road to being password-less is a journey. The duration of that journey varies for each organization. It's important for IT decision-makers to understand the criteria influencing the length of that journey.

The most intuitive answer is the size of the organization, and that would be correct. However, what exactly determines size? One way to break down the size of the organization is by creating a summary of the following components:

- Number of departments
- Organization or department hierarchy
- Number and type of applications and services
- Number of work personas
- Organization's IT structure

#### Number of departments

The number of departments within an organization varies. Most organizations have a common set of departments such as executive leadership, human resources, accounting, sales, and marketing. Other organizations will have those departments and others such as research and development or support. Small organizations may not explicitly segment their departments, while larger ones may. Additionally, there may be subdepartments, and subdepartments of those subdepartments as well.

You need to know all the departments within your organization and you need to know which departments use computers and which ones don't. It's fine if a department doesn't use computers (probably rare, but acceptable). This circumstance means there's one less department with which you need to concern yourself. Nevertheless, ensure this department is in your list and you've assessed that it's not applicable.

Your count of the departments must be thorough and accurate, as well as knowing the stakeholders for those departments that will put you and your staff on the road to password freedom. Realistically, many of us lose sight of our organizational chart and how it grows or shrinks over time. This realization is why you need to inventory all of them. Also, don't forget to include external departments such as vendors or federated partners. If your organization goes password-free, but your partners continue to use passwords and then access your corporate resources, you should know about it and include them in your password-less strategy.

#### Organization or department hierarchy

Organization and department hierarchy is the management layers within the departments or the organization as a whole. How the device is used, what applications and how they're used, most likely differs between each department, but also within the structure of the department. To determine the correct password-less strategy, you need to know these differences across your organization. An executive leader is likely to use their device differently compared to a member of middle management in the sales department. Both of those user cases are probably different to how an individual contributor in the customer service department uses their device.

#### Number and type of applications and services

Most organizations have many applications and rarely do they have one centralized list that's accurate. Applications and services are the most critical items in your password-less assessment. Applications and services take considerable effort to move to a different type of authentication. Changing policies and procedures can be a daunting task. Consider the trade-off between updating your standard operating procedures and security policies compared to changing 100 lines (or more) of authentication code in the critical path of your internally developed CRM application.

Capturing the number of applications used is easier once you have the departments, their hierarchy, and their stakeholders. In this approach, you should have an organized list of departments and the hierarchy in each. You can now associate the applications that are used by all levels within each department. You'll also want to document whether the application is internally developed or commercially available off-the-shelf (COTS). If the latter, document the manufacturer and the version. Also, don't forget web-based applications or services when inventorying applications.

#### Number of work personas

Work personas are where the three previous efforts converge. You know the departments, the organizational levels within each department, the numbers of applications used by each, respectively, and the type of application. From this information, you want to create a work persona.

A work persona classifies a category of user, title or role (individual contributor, manager, middle manager, etc.), within a specific department to a collection of applications used. There's a high probability that you'll have many work personas. These work personas will become units of work, and you'll refer to them in documentation and in meetings. You need to give them a name.

Give your personas easy and intuitive names like Abby Accounting, Mark Marketing, or Sue Sales. If the organization levels are common across departments, then decide on a first name that represents the common levels in a department. For example, Abby could be the first name of an individual contributor in any given department, while the first name Sue could represent someone from middle management in any given department. Additionally, you can use suffixes such as (I, II, Senior, etc.) to further define departmental structure for a given persona.

Ultimately, create a naming convention that doesn't require your stakeholders and partners to read through a long list of tables or a secret decoder ring. Also, if possible, try to keep the references as names of people. After all, you're talking about a person who is in that department and who uses that specific software.

#### Organization's IT structure

IT department structures can vary more than the organization. Some IT departments are centralized while others are decentralized. Also, the road to password freedom will probably have you interacting with the client authentication team, the deployment team, the security team, the PKI team, the Active Directory team, the cloud team, and the list continues. Most of these teams will be your partner on your journey to password freedom. Ensure there's a password-less stakeholder on each of these teams, and that the effort is understood and funded.

#### Assess your organization

You have a ton of information. You've created your work personas, you've identified your stakeholders throughout the different IT groups. Now what?

By now you can see why it's a journey and not a weekend project. You need to investigate user-visible password surfaces for each of your work personas. Once you've identified the password surfaces, you need to mitigate them. Resolving some password surfaces are simple - meaning a solution already exists in the environment and it's only a matter of moving users to it. Resolution to some passwords surfaces may exist, but aren't deployed in your environment. That resolution results in a project that must be planned, tested, and then deployed. That project is likely to span multiple IT departments with multiple people, and potentially one or more distributed systems. Those types of projects take time and need dedicated cycles. This same sentiment is true with in-house software development. Even with agile development methodologies, changing the way someone authenticates to an application is critical. Without the proper planning and testing, it has the potential to severely affect productivity.

How long does it take to become password-less?  The answer is "it depends". It depends on the organizational alignment of a password-less strategy. Top-down agreement that a password-less environment is the organization's goal makes conversations much easier. Easier conversations mean less time spent convincing people and more time spent moving forward toward the goal. Top-down agreement, as a priority within the ranks of other on-going IT projects, helps everyone understand how to prioritize existing projects. Agreeing on priorities should reduce and minimize manager and executive level escalations. After these organizational discussions, modern project management techniques are used to continue the password-less effort. The organization allocates resources based on the priority (after they've agreed on the strategy). Those resources will:

- Work through the work personas.
- Organize and deploy user acceptance testing.
- Evaluate user acceptance testing results for user visible password surfaces.
- Work with stakeholders to create solutions that mitigate user visible password surfaces.
- Add the solution to the project backlog and prioritize against other projects.
- Deploy the solution.
- Perform user acceptance testing to confirm that the solution mitigates the user visible password surface.
- Repeat the testing as needed.

Your organization's journey to password freedom may take some time. Counting the number of work personas and the number of applications is probably a good indicator of the investment. Hopefully, your organization is growing, which means that the list of personas and the list of applications is unlikely to shrink. If the work to go password-less today is *n*, then it's likely that to go password-less tomorrow is *n x 2* or more, *n x n*. Don't let the size or duration of the project be a distraction. As you progress through each work persona, the actions and tasks will become more familiar for you and your stakeholders. Scope the project to sizable, realistic phases, pick the correct work personas, and soon you'll see parts of your organization transition to a password-less state.

### Where to start?

What's the best guidance for kicking off the journey to password freedom? You'll want to show your management a proof of concept as soon as possible. Ideally, you want to show it at each step of your password-less journey. Keeping your password-less strategy top of mind and showing consistent progress keeps everyone focused.

#### Work persona

You begin with your work personas. These were part of your preparation process. They have a persona name, such as Abby Accounting II, or any other naming convention your organization defined. That work persona includes a list of all the applications Abby uses to perform her assigned duties in the accounting department. To start, you need to pick a work persona. It's the targeted work persona you'll enable so that you can climb the steps to password freedom.

> [!IMPORTANT]
> Avoid using any work personas from your IT department. This method is probably the worst way to start the password-less journey. IT roles are very difficult and time consuming. IT workers typically have multiple credentials, run a multitude of scripts and custom applications, and are the worst offenders of password usage. It is better to save these work personas for the middle or end of your journey.

Review your collection of work personas. Early in your password-less journey, identify personas with the fewest applications. These work personas could represent an entire department or two. These roles are the perfect work personas for your proof-of-concept or pilot.

Most organizations host their proof of concept in a test lab or environment. If you do that test with a password-free strategy, it may be more challenging and take more time. To test in a lab, you must first duplicate the environment of the targeted persona. This process could take a few days or several weeks, depending on the complexity of the targeted work persona.

You'll want to balance lab testing with providing results to management quickly. Continuing to show forward progress on your journey to password freedom is always a good thing. If there are ways you can test in production with low or no risk, it may be advantageous to your timeline.

## The process

The journey to password freedom is to take each work persona through each step of the process. In the beginning, we encourage working with one persona at a time to ensure team members and stakeholders are familiar with the process. Once comfortable with the process, you can cover as many work personas in parallel as resources allow. The process looks something like this:

1. Password-less replacement offering (step 1)
   1. Identify test users representing the targeted work persona.
   2. Deploy Windows Hello for Business to test users.
   3. Validate that passwords and Windows Hello for Business work.
2. Reduce user-visible password surface (step 2)
   1. Survey test user workflow for password usage.
   2. Identify password usage and plan, develop, and deploy password mitigations.
   3. Repeat until all user password usage is mitigated.
   4. Remove password capabilities from Windows.
   5. Validate that **none of the workflows** need passwords.
3. Transition into a password-less scenario (step 3)
   1. Awareness campaign and user education.
   2. Include remaining users who fit the work persona.
   3. Validate that **none of the users** of the work personas need passwords.
   4. Configure user accounts to disallow password authentication.

After successfully moving a work persona to password freedom, you can prioritize the remaining work personas and repeat the process.

### Password-less replacement offering (step 1)

The first step to password freedom is providing an alternative to passwords. Windows 10 and Windows 11 provide an affordable and easy in-box alternative to passwords, Windows Hello for Business, a strong, two-factor authentication to Azure Active Directory and Active Directory.

#### Identify test users that represent the targeted work persona

A successful transition relies on user acceptance testing. It's impossible for you to know how every work persona goes about their day-to-day activities, or how to accurately validate them. You need to enlist the help of users who fit the targeted work persona. You only need a few users from the targeted work persona. As you cycle through step 2, you may want to change a few of the users (or add a few) as part of your validation process.

#### Deploy Windows Hello for Business to test users

Next, you'll want to plan your Windows Hello for Business deployment. Your test users will need an alternative way to sign-in during step 2 of the journey to becoming password-less. Use the [Windows Hello for Business planning guide](hello-planning-guide.md) to help learning which deployment is best suited for your environment. Next, use the [Windows Hello for Business deployment guides](hello-deployment-guide.md) to deploy Windows Hello for Business.

With the Windows Hello for Business infrastructure in place, you can limit Windows Hello for Business enrollments to the targeted work personas. The great news is that you'll only need to deploy the infrastructure once. When other targeted work personas need to start using Windows Hello for Business, add them to a group. You'll use the first work persona to validate your Windows Hello for Business deployment.

> [!NOTE]
> There are many different ways to connect a device to Azure. Deployments may vary based on how the device is joined to Azure Active Directory. Review your planning guide and deployment guide to ensure additional infrastructure is not needed for an additional Azure joined devices.

#### Validate that passwords and Windows Hello for Business work

In this first step, passwords and Windows Hello for Business must coexist. You want to validate that while your targeted work personas can sign in and unlock using Windows Hello for Business, but they can also sign-in, unlock, and use passwords as needed. Reducing the user-visible password surface too soon can create frustration and confusion with your targeted user personas.

### Reduce user-visible password surface (step 2)

Before you move to step 2, make sure you've:

- Selected your targeted work persona.
- Identified your test users who represent the targeted work persona.
- Deployed Windows Hello for Business to test users.
- Validated passwords and Windows Hello for Business both work for the test users.

#### Survey test user workflow for password usage

Now is the time to learn more about the targeted work persona. You have a list of applications they use, but you don't know what, why, when, and how frequently. This information is important as you further your progress through step 2.

Test users create the workflows associated with the targeted work persona. Their initial goal is to do one simple task: Document password usage. This list isn't a comprehensive one, but it gives you an idea of the type of information you want. The general idea is to learn about all the scenarios in which that work persona encounters a password. A good approach is to ask yourself the following set of questions:

- What's the name of the application that asked for a password?
- Why do they use the application that asked for a password? For example, is there more than one application that can do the same thing?
- What part of their workflow makes them use the application? Try to be as specific as possible. For example, "I use application x to issue credit card refunds for amounts over y."
- How frequently do you use this application in a given day or week?
- Is the password you type into the application the same as the password you use to sign-in to Windows?

Some organizations will empower their users to write this information while some may insist on having a member of the IT department shadow them. An objective viewer may notice a password prompt that the user overlooks simply because of muscle memory. As previously mentioned, this information is critical. You could miss one password prompt that could delay the transition to being password-less.

#### Identify password usage and plan, develop, and deploy password mitigations

Your test users have provided you valuable information that describes how, what, why, and when they use a password. It's now time for your team to identify each of these password use cases and understand why the user must use a password.

Create a list of the scenarios. Each scenario should have a clear problem statement. Name the scenario with a one-sentence summary of the problem statement. Include in the scenario the results of your team's investigation as to why the user is prompted by a password. Include relevant, but accurate details. If it's policy or procedure driven, then include the name and section of the policy that dictates why the workflow uses a password.

Keep in mind your test users won't uncover all scenarios. Some scenarios you'll need to force on your users because they're low percentage scenarios. Remember to include the following scenarios:

- Provisioning a new brand new user without a password.
- Users who forget the PIN or other remediation flows when the strong credential is unusable.

Next, review your list of scenarios. You can start with the workflows that are dictated by process or policy, or you can begin with workflows that need technical solutions, whichever of the two is easier or quicker. This choice will certainly vary by organization.

Start mitigating password usages based on the workflows of your targeted personas. Document the mitigation as a solution to your scenario. Don't worry about the implementation details for the solution. An overview of the changes needed to reduce the password usages is all you need. If there are technical changes needed, either infrastructure or code changes, the exact details will likely be included in the project documentation. However your organization tracks projects, create a new project in that system. Associate your scenario to that project and start the processes needed to get that project funded.

Mitigating password usage with applications is one of the more challenging obstacles in the password-less journey. If your organization develops the application, then you are in better shape the common-off-the-shelf software (COTS).

The ideal mitigation for applications that prompt the user for a password is to enable those applications to use an existing authenticated identity, such as Azure Active Directory or Active Directory. Work with the applications vendors to have them add support for Azure identities. For on-premises applications, have the application use Windows integrated authentication. The goal for your users should be a seamless single sign-on experience where each user authenticates once when they sign-in to Windows. Use this same strategy for applications that store their own identities in their own databases.

Each scenario on your list should now have a problem statement, an investigation as to why the password was used, and a mitigation plan on how to make the password usage go away. Armed with this data, one-by-one, close the gaps on user-visible passwords. Change policies and procedures as needed, make infrastructure changes where possible. Convert in-house applications to use federated identities or Windows integrated authentication. Work with third-party software vendors to update their software to support federated identities or Windows integrated authentication.

#### Repeat until all user password usage is mitigated

Some or all of your mitigations are in place. You need to validate that your solutions have solved their problem statements. This stage is where you rely on your test users. You want to keep a good portion of your first test users, but this point is a good opportunity to replace a few or add a few. Survey test users workflow for password usage. If all goes well, you've closed most or all of the gaps. A few are likely to remain. Evaluate your solutions and what went wrong, change your solution as needed until you reach a solution that removes your user's need to type a password. If you're stuck, others might be too. Use the forums from various sources or your network of IT colleagues to describe your problem and see how others are solving it. If you're out of options, contact Microsoft for assistance.

#### Remove password capabilities from Windows

You believe you've mitigated all the password usage for the targeted work persona. Now comes the true test: configure Windows so the user can't use a password.

Windows provides two ways to prevent your users from using passwords. You can use an interactive logon security policy to only allow Windows Hello for Business sign-in and unlocks, or you can exclude the password credential provider.

##### Security policy

You can use Group Policy to deploy an interactive logon security policy setting to the computer. This policy setting is found under **Computer Configuration > Policies > Windows Settings > Local Policy > Security Options**.  The name of the policy setting depends on the version of the operating systems you use to configure Group Policy.

:::image type="content" source="images/passwordless/gpmc-security-options.png" alt-text="The Group Policy Management Editor displaying the location of the Security Options node.":::

**Windows Server 2016 and earlier**
The policy name for these operating systems is **Interactive logon: Require smart card**.

:::image type="content" source="images/passwordless/gpmc-require-smart-card-policy.png" alt-text="The Group Policy Management Editor displaying the location of the policy 'Interactive logon: Require smart card'.":::

**Windows 10, version 1703 or later using Remote Server Administrator Tools**
The policy name for these operating systems is **Interactive logon: Require Windows Hello for Business or smart card**.

:::image type="content" source="images/passwordless/require-whfb-smart-card-policy.png" alt-text="Highlighting the security policy 'Interactive logon: Require Windows Hello for Business or smart card'.":::

When you enable this security policy setting, Windows prevents users from signing in or unlocking with a password. The password credential provider remains visible to the user. If a user tries to use a password, Windows informs the user they must use Windows Hello for Business or a smart card.

#### Excluding the password credential provider

You can use Group Policy to deploy an administrative template policy setting to the computer. This policy setting is found under **Computer Configuration > Policies > Administrative Templates > System > Logon**:

:::image type="content" source="images/passwordless/gpmc-exclude-credential-providers.png" alt-text="The Group Policy Management Editor displaying the location of 'Logon' node and the policy setting 'Exclude credential providers'.":::

The name of the policy setting is **Exclude credential providers**. The value to enter in the policy to hide the password credential provider is `{60b78e88-ead8-445c-9cfd-0b87f74ea6cd}`.

:::image type="content" source="images/passwordless/exclude-credential-providers-properties.png" alt-text="Properties of the policy setting 'Exclude credential providers'.":::

Excluding the password credential provider hides the password credential provider from Windows and any application that attempts to load it. This configuration prevents the user from entering a password using the credential provider. However, this change doesn't prevent applications from creating their own password collection dialogs and prompting the user for a password using custom dialogs.

#### Validate that none of the workflows needs passwords

This stage is the significant moment. You have identified password usage, developed solutions to mitigate password usage, and have removed or disabled password usage from Windows. In this configuration, your users won't be able to use a password. Users will be blocked if any of their workflows ask them for a password. Ideally, your test users should be able to complete all the work flows of the targeted work persona without any password usage. Don't forget those low percentage work flows, such as provisioning a new user or a user that forgot their PIN or can't use their strong credential. Ensure those scenarios are validated as well.

### Transition into a password-less deployment (step 3)

Congratulations! You're ready to transition one or more portions of your organization to a password-less deployment. You've validated that the targeted work persona is ready to go where the user no longer needs to know or use their password. You're just a few steps away from declaring success.

#### Awareness and user education

In this last step, you're going to include the remaining users that fit the targeted work persona to the wonderful world of password freedom. Before you do this step, you want to invest in an awareness campaign.

An awareness campaign introduces the users to the new way of authenticating to their device, such as using Windows Hello for Business. The idea of the campaign is to positively promote the change to the users in advance. Explain  the value and why your company is changing. The campaign should provide dates and encourage questions and feedback. This campaign can coincide with user education, where you can show the users the changes and, if your environment allows, enable the users to try out the experience.

#### Including remaining users that fit the work persona

You've implemented the awareness campaign for the targeted users. These users are informed and ready to transition to being password-less. Add the remaining users that match the targeted work persona to your deployment.

#### Validate that none of the users of the work personas needs passwords

You've successfully transitioned all users for the targeted work persona to being password-less. Monitor the users within the work persona to ensure they don't encounter any issues while working in a password-less environment.

Track all reported issues. Set priority and severity to each reported issue and have your team triage the issues appropriately. As you triage issues, consider the following questions:

- Is the reporting user performing a task outside the work persona?
- Is the reported issue affecting the entire work persona, or only specific users?
- Is the outage a result of a misconfiguration?
- Is the outage an overlooked gap from step 2?

Each organization's priority and severity will differ. However, most organizations consider work stoppages to be fairly significant. Your team should predefine levels of priority and severity. With each of these levels, create service level agreements (SLAs) for each combination of severity and priority, and hold everyone accountable to those agreements. Reactive planning enables people to spend more time on the issue and resolving it, and less time on the process.

Resolve the issues per your service level agreements. Higher severity items may require returning some or all of the user's password surface. Clearly this outcome isn't the end goal, but don't let it slow down your momentum towards becoming password-less. Refer to how you reduced the user's password surface in step 2 and progress forward to a solution, deploying that solution and validating it.

#### Configure user accounts to disallow password authentication

You transitioned all the users for the targeted work persona to a password-less environment and you've successfully validated all their workflows. The last step to complete the password-less transition is to remove the user's knowledge of the password and prevent the authenticating authority from accepting passwords.

You can change the user's password to random data and prevent domain controllers from allowing users to use passwords for interactive sign-ins using an account configuration on the user object.

The account options on a user account include the option **Smart card is required for interactive logon**, also known as SCRIL.

> [!NOTE]
> Do not confuse the Interactive Logon security policy for SCRIL. Security policies are enforced on the client (locally). A user account configured for SCRIL is enforced at the domain controller.

The following image shows the SCRIL setting for a user in Active Directory Users and Computers:

:::image type="content" source="images/passwordless/aduc-account-scril.png" alt-text="Example user properties in Active Directory that shows the SCRIL setting on Account options.":::

When you configure a user account for SCRIL, Active Directory changes the affected user's password to a random 128 bits of data. Additionally, domain controllers hosting the user account don't allow the user to sign-in interactively with a password. Also, users will no longer be troubled with needing to change their password when it expires, because passwords for SCRIL users in domains with a Windows Server 2012 R2 or early domain functional level don't expire. The users are effectively password-less because:

- They don't know their password.
- Their password is 128 random bits of data and is likely to include non-typable characters.
- The user isn't asked to change their password.
- Domain controllers don't allow passwords for interactive authentication.

The following image shows the SCRIL setting for a user in Active Directory Administrative Center on Windows Server 2012:

:::image type="content" source="images/passwordless/server-2012-adac-user-scril.png" alt-text="Example user properties in Windows Server 2012 Active Directory Administrative Center that shows the SCRIL setting.":::

> [!NOTE]
> Although a SCRIL user's password never expires in early domains, you can toggle the SCRIL configuration on a user account to generate a new random 128 bit password. Use the following process to toggle this configuration:
>
> 1. Disable the setting.
> 1. Save changes.
> 1. Enable the setting.
> 1. Save changes again.
>
> When you upgrade the domain to Windows Server 2016 domain forest functional level or later, the domain controller automatically does this action for you.

The following image shows the SCRIL setting for a user in Active Directory Administrative Center on Windows Server 2016:

:::image type="content" source="images/passwordless/server-2016-adac-user-scril.png" alt-text="Example user properties in Windows Server 2016 Active Directory Administrative Center that shows the SCRIL setting.":::

> [!TIP]
> Windows Hello for Business was formerly known as Microsoft Passport.

##### Automatic password change for SCRIL configured users

Domains configured for Windows Server 2016 or later domain functional level can further secure the unknown password for SCRIL-enabled users by configuring the domain to automatically change the password for SCRIL users.

In this configuration, passwords for SCRIL-configured users expire based on Active Directory password policy settings. When the SCRIL user authenticates from a domain controller, the domain controller recognizes the password has expired, and automatically generates a new random 128-bit password for the user as part of the authentication. This feature is great because your users don't experience any change password notifications or any authentication outages.

:::image type="content" source="images/passwordless/server-2016-adac-domain-scril.png" alt-text="The Active Directory Administrative Center on Windows Server 2016 showing the domain setting for SCRIL.":::

> [!NOTE]
> Some components within Windows 10, such as Data Protection APIs and NTLM authentication, still need artifacts of a user possessing a password. This configuration provides interoperability by reducing the usage surface while Microsoft continues to close the gaps to remove the password completely.

## The road ahead

The information presented here is just the beginning. We'll update this guide with improved tools, methods, and scenarios, like Azure AD joined and MDM managed environments. As we continue to invest in a password-less future, we would love to hear from you. Your feedback is important. Send us an email at [pwdless@microsoft.com](mailto:pwdless@microsoft.com?subject=Passwordless%20Feedback).
