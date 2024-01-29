---
title: Passwordless strategy overview
description: Learn about the passwordless strategy and how Windows security features help implementing it.
ms.topic: concept-article
ms.date: 01/29/2024
---

# Passwordless strategy overview

This article describes Microsoft's passwordless strategy and how Windows security features help implementing it.

## Four steps to password freedom

Microsoft is working hard to create a world where passwords are no longer needed. This is how Microsoft envisions the four steps approach to end the era of passwords for the organizations:

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-1-on.svg" border="false":::
   :::column-end:::
   :::column span="3":::
    ### Deploy a password replacement option
   :::column-end:::
:::row-end:::

Before you move away from passwords, you need something to replace them. Windows Hello for Business and FIDO2 security keys offer a strong, hardware-protected two-factor credential that enables single sign-on to Microsoft Entra ID and Active Directory.\
Deploy Windows Hello for Business or FIDO2 security keys is the first step toward a passwordless environment. Users are likely to use these features because of their convenience, especially when combined with biometrics. However, some workflows and applications might still need passwords. This early stage is about implementing an alternative solution to passwords, and getting users accustomed to it.

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-2-on.svg" border="false":::
   :::column-end:::
   :::column span="3":::
    ### Reduce user-visible password surface area
   :::column-end:::
:::row-end:::

With a password replacement option and passwords coexisting in the environment, the next step is to reduce the password surface area. The environment and workflows need to stop asking for passwords. The goal of this step is to achieve a state where the users know they have a password, **but they never use it**. This state helps decondition users from providing a password anytime a password prompt shows on their computer. This behavior is how passwords are phished. Users who rarely, if at all, use their password are unlikely to provide it. **Password prompts are no longer the norm**.

<!--In this phase, deploy *Windows passwordles experience* to reduce the password surface area by hiding the password credential provider from the user.-->

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-3-on.svg" border="false":::
   :::column-end:::
   :::column span="3":::
    ### Transition into a passwordless deployment
   :::column-end:::
:::row-end:::

Once the user-visible password surface is eliminated, your organization can begin to transition users into a passwordless environment. In this stage, users never type, change, or even know their password.\
The user signs in to Windows using Windows Hello for Business or FIDO2 security keys, and enjoys single sign-on to Microsoft Entra ID and Active Directory resources. If the user is forced to authenticate, their authentication uses Windows Hello for Business or FIDO2 security keys.

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-4-on.svg" border="false":::
   :::column-end:::
   :::column span="3":::
    ### Eliminate passwords from the identity directory
   :::column-end:::
:::row-end:::

The final step of the passwordless journey is where passwords don't exist. At this stage, identity directories don't store any form of the password.

## Prepare for the passwordless journey

The road to being passwordless is a journey. The duration of the journey varies for each organization. It's important for IT decision makers to understand the criteria influencing the length of that journey.

The most intuitive answer is the size of the organization, but what exactly defines size? We can look at these factors to get a summary of the organization's size:

| Size factor | Details |
|--|--|
| **Number of departments**|The number of departments within an organization varies. Most organizations have a common set of departments such as *executive leadership*, *human resources*, *accounting*, *sales*, and *marketing*. Small organizations might not explicitly segment their departments, while larger ones might. Additionally, there may be subdepartments, and subdepartments of those subdepartments as well.<br><br>You need to know all the departments within your organization, and you need to know which departments use computers and which ones don't. It's fine if a department doesn't use computers (probably rare, but acceptable). This circumstance means there's one less department with which you need to concern yourself. Nevertheless, ensure this department is in your list and that it's not applicable.<br><br>Your count of the departments must be thorough and accurate, as well as knowing the stakeholders for those departments that put you and your staff on the road to password freedom. Realistically, many of us lose sight of our organizational chart and how it grows or shrinks over time. This realization is why you need to inventory all of them. Also, don't forget to include external departments such as vendors or federated partners. If your organization goes passwordless, but your partners continue to use passwords to access your corporate resources, you should know about it and include them in your passwordless strategy.|
| **Organization or department hierarchy**|Organization and department hierarchy is the management layers within the departments or the organization as a whole. How the device is used, what applications and how they're used, most likely differs between each department, but also within the structure of the department. To determine the correct passwordless strategy, you need to know these differences across your organization. An executive leader is likely to use their device differently compared to a member of middle management in the sales department. Both of those user cases are probably different to how an individual contributor in the customer service department uses their device.|
| **Number and type of applications and services**|Most organizations have many applications and rarely have one centralized list that's accurate. Applications and services are the most critical items in your passwordless assessment. Applications and services take considerable effort to move to a different type of authentication. Changing policies and procedures can be a daunting task. Consider the trade-off between updating your standard operating procedures and security policies compared to changing 100 lines (or more) of authentication code in the critical path of your internally developed CRM application.<br><br>Capturing the number of applications used is easier once you have the departments, their hierarchy, and their stakeholders. In this approach, you should have an organized list of departments and the hierarchy in each. You can now associate the applications that are used by all levels within each department. You also want to document whether the application is internally developed or commercially available off-the-shelf. If the latter, document the manufacturer and the version. Also, don't forget web-based applications or services when inventorying applications.|
| **Number of work personas**|Work personas are where the three previous efforts converge. You know the departments, the organizational levels within each department, the numbers of applications used by each, respectively, and the type of application. From this information, you want to create a work persona.<br><br>A work persona classifies a category of user, title or role (individual contributor, manager, middle manager, etc.), within a specific department to a collection of applications used. There's a high probability that you have many work personas. These work personas will become units of work, and you refer to them in documentation and in meetings. You need to give them a name.<br><br>Give your personas easy and intuitive names like *Amanda - Accounting*, *Mark - Marketing*, or *Sue - Sales*. If the organization levels are common across departments, then decide on a first name that represents the common levels in a department. For example, *Amanda* could be the first name of an individual contributor in any given department, while the first name *Sue* could represent someone from middle management in any given department. Additionally, you can use suffixes (such as *I*, *II*, *Senior*, etc.) to further define departmental structure for a given persona. <br><br>Ultimately, create a naming convention that doesn't require your stakeholders and partners to read through a long list of tables or a secret decoder ring. Also, if possible, try to keep the references as names of people. After all, you're talking about a person who is in that department and who uses that specific software.|
| **Organization's IT structure**|IT department structures can vary more than the organization. Some IT departments are centralized while others are decentralized. Also, the road to password freedom will probably have you interacting with the *client authentication* team, the *deployment* team, the *security* team, the *PKI* team, the *identity* team, the *cloud* team, etc. Most of these teams are your partner on your journey to password freedom. Ensure there's a passwordless stakeholder on each of these teams, and that the effort is understood and funded.|

## Assess your organization

By now you can understand why this is a journey and not a quick task. You need to investigate user-visible password surfaces for each of your work personas. Once you've identified the password surfaces, you need to mitigate them. Resolving some password surfaces are simple - meaning a solution already exists in the environment and it's only a matter of moving users to it. Resolution to some passwords surfaces might exist, but aren't deployed in your environment. That resolution results in a project that must be planned, tested, and then deployed. That project is likely to span multiple IT departments with multiple people, and potentially one or more distributed systems. Those types of projects take time and need dedicated cycles. This same sentiment is true with in-house software development. Even with agile development methodologies, changing the way someone authenticates to an application is critical. Without the proper planning and testing, it has the potential to severely affect productivity.

The time to complete the passwordless journey varies, depending on the organizational alignment to a passwordless strategy. Top-down agreement that a passwordless environment is the organization's goal makes conversations easier. Easier conversations mean less time spent convincing people and more time spent moving toward the goal. Top-down agreement, as a priority within the ranks of other on-going IT projects, helps everyone understand how to prioritize existing projects. Agreeing on priorities should reduce and minimize manager and executive level escalations. After these organizational discussions, modern project management techniques are used to continue the passwordless effort. The organization allocates resources based on the priority (after they agreed on the strategy). Those resources will:

- Work through the work personas
- Organize and deploy user acceptance testing
- Evaluate user acceptance testing results for user visible password surfaces
- Work with stakeholders to create solutions that mitigate user visible password surfaces
- Add the solution to the project backlog and prioritize against other projects
- Deploy the solution
- Perform user acceptance testing to confirm that the solution mitigates the user visible password surface
- Repeat the testing as needed

Your organization's journey to password freedom may take some time. Counting the number of work personas and the number of applications is a good indicator of the investment. Hopefully, your organization is growing, which means that the list of personas and the list of applications is unlikely to shrink. If the work to go passwordless today is *n*, then it's likely that to go passwordless tomorrow is *n x 2* or more, *n x n*. Don't let the size or duration of the project be a distraction. As you progress through each work persona, the actions and tasks become more familiar for you and your stakeholders. Scope the project to sizable, realistic phases, pick the correct work personas, and soon you'll see parts of your organization transition to a passwordless state.

What's the best guidance for kicking off the journey to password freedom? **You want to show your management a proof of concept as soon as possible**. Ideally, you want to show it at each step of your passwordless journey. Keeping your passwordless strategy top of mind and showing consistent progress keeps everyone focused.

## Work persona

You begin with your work personas. These were part of your preparation process. They have a persona name, such as *Amanda - Accounting II*, or any other naming convention your organization defined. That work persona includes a list of all the applications *Amanda* uses to perform her assigned duties in the accounting department. To start, you need to pick a work persona. It's the targeted work persona you enable to complete the journey.

> [!TIP]
> Avoid using any work personas from your IT department. This method is probably the worst way to start the passwordless journey. IT roles are very difficult and time consuming. IT workers typically have multiple credentials, run a multitude of scripts and custom applications, and are the worst offenders of password usage. It is better to save these work personas for the middle or end of your journey.

Review your collection of work personas. Early in your passwordless journey, identify personas with the fewest applications. These work personas could represent an entire department or two. These roles are the perfect work personas for your proof-of-concept (POC) or pilot.

Most organizations host their POC in a test lab or environment. If you do that test with a password-free strategy, it might be more challenging and take more time. To test in a lab, you must first duplicate the environment of the targeted persona. This process could take a few days or several weeks, depending on the complexity of the targeted work persona.

You want to balance lab testing with providing results to management quickly. Continuing to show forward progress on your journey to password freedom is always a good thing. If there are ways you can test in production with low or no risk, it might be advantageous to your timeline.

The journey to password freedom is to take each work persona through each step of the process. In the beginning, we encourage working with one persona at a time to ensure team members and stakeholders are familiar with the process. Once comfortable with the process, you can cover as many work personas in parallel as resources allow. The process looks something like this:

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-1-on.svg" border="false" link="journey-step-1.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-2-on.svg" border="false" link="journey-step-2.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-3-on.svg" border="false" link="journey-step-3.md":::
   :::column-end:::
:::row-end:::
:::row:::
   :::column span="1":::
**[Deploy a passwordless replacement option](journey-step-1.md)**
- Identify test users representing the targeted work persona
- Deploy Windows Hello for Business to test users
- Validate that passwords and Windows Hello for Business work
   :::column-end:::
   :::column span="1":::
**[Reduce user-visible password surface](journey-step-2.md)**
- Survey test user workflow for password usage
- Identify password usage and plan, develop, and deploy password mitigations
- Repeat until all user password usage is mitigated
- Remove password capabilities from Windows
- Validate that **none of the workflows** need passwords
   :::column-end:::
   :::column span="1":::
**[Transition into a passwordless scenario](journey-step-3.md)**
- Awareness campaign and user education
- Include remaining users who fit the work persona
- Validate that **none of the users** of the work personas need passwords
- Configure user accounts to prevent password authentication
   :::column-end:::
:::row-end:::

After successfully moving a work persona to password freedom, you can prioritize the remaining work personas and repeat the process.

## Next steps

> [!div class="nextstepaction"]
>
> [Step 1: deploy a passwordless replacement option >](journey-step-1.md)
