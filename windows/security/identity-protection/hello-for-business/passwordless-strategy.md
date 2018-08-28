---
title: Password-less Strategy
description: Reducing Password Usage Surface
keywords: identity, PIN, biometric, Hello, passport, video, watch, passwordless
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security, mobile
author: mikestephens-MS
ms.author: mstephen
localizationpriority: high
ms.date: 08/20/2018
---
# Password-less Strategy

## Four steps to Password-less

Over the past few years, Microsoft has continued their commitment to enabling a world without passwords. At Microsoft Ignite 2017, we shared our four-step approach to password-less.
![Password-less approach](images/four-steps-passwordless.png)


### 1. Develop a password replacement offering
Before you move away from passwords, you need something to replace them.  With Windows 10, Microsoft introduced Windows Hello for Business, a strong, hardware protected two-factor credential that enables single-sign on to Azure Active Directory and Active Directory.

Deploying Windows Hello for Business is the first step towards password-less. With Windows Hello for Business deployed, it coexists with password nicely.  Users are likely to useWindows Hello for Business because of its convenience, especially when combined with biometrics.  However, some workflows and applications may still need passwords. This early stage is about implementing an alternative and getting users used to it.

### 2. Reduce user-visible password surface area
With Windows Hello for Business and passwords coexisting in your environment, the next step towards password-less is to reduce the password surface.  The environment and workflows need to stop asking for passwords. The goal of this step is to achieve a state where the user knows they have a password, but they never user it.  This state helps decondition users from providing a password any time a password prompt shows on their computer.  This is a how passwords are phished.  Users who rarely, it at all, use their password are unlikely to provide it.  Password prompts are no longer the norm.

### 3. Transition into a password-less deployment
Once the user-visible password surface has been eliminated, your organization can begin to transition those users into a password-less world.  A world where:
  - the user never types their password
  - the user never changes their password
  - the user does not know their password

In this world, the user signs in to Windows 10 using Windows Hello for Business and enjoys single sign-on to Azure and Active Directory resources.  If the user is forced to authenticate, their authentication uses Windows Hello for Business.

### 4. Eliminate passwords from the identity directory
The final step of the password-less story is where passwords simply do not exist.  At this step, identity directories no longer persist any form of the password.  This is where Microsoft achieves the long-term security promise of a truly password-less environment.

## Methodology
The four steps to password-less provides a overall view of how Microsoft envisions the road to password-less.  But the road to password-less is frequently traveled and derailed by many. The scope of work is vast and filled with many challenges and frustrations. Nearly everyone wants the instant gratification of password-less, but can easily become overwhelmed in any of the steps. You are not alone and Microsoft understands.  While there are many ways to accomplish password-less, here is one recommendation based on several years of research, investigation, and customer conversations.

### Prepare for the Journey 
The road to password-less is a journey.  The duration of that journey varies from each organization. It is important for IT decision makers to understand the criteria that influences the length of the journey.

The most intuitive answer is the size of the organization, and that would be correct.  However, what exactly determines size.  One way to break down the size of the organization is:
- Number of departments
- Organization or department hierarchy  
- Number and type of applications and services
- Number of work personas

- Organization's IT structure

#### Number of departments 
The number of departments within an organization varies.  Most organizations have a common set of departments such as executive leadership, human resources, accounting, sales, and marketing.  Other organizations will have those departments and additional ones such research and development or support.  Small organizations may not segment their departments this explicitly while larger ones may.  Additionally, there may be sub-departments, and sub-departments of those sub-departments as well.

You need to know all the departments within your organization and you need to know which departments use computers and which do not.  It is fine if a department does not use computer (probably rare, but acceptable). This is one less department with which you need to concern yourself.  Nevertheless, ensure this department is in your list and you have assessed it is not applicable for password-less.

Your count of the departments must be thorough and accurate, as well as knowing the stakeholders for those departments that will you and your staff on the road to password-less.  Realistically, many of us lose sight of our organization chart and how it grows or shrinks over time.  This is why you need to inventory all of them.  Also, do not forget to include external departments such as vendors or federated partners.  If your organizations goes password-less, but partners continue to use passwords and then access your corporate resources, you should know about it and include them in your password-less strategy.  

#### Organization or department hierarchy
Organization and department hierarchy is the management layers within the departments or the organization as a whole.  How the device is used, what applications and how they are used most likely differ between each department, but also within the structure of the department. To determine the correct password-less strategy, you need to know these differences across your organization.  An executive leader is likely to use their device differently than a member of middle management in the sales department. Both of those use cases are likely different than how an individual contributor in the customer service department uses their device.

#### Number and type of applications and services
The number of applications within an organization is simply astonishing and rarely is there one centralized list that is accurate.  Applications and services are the most critical item in your password-less assessment.  Applications and services take considerable effort to move to a different type of authentication.  That is not to say changing policies and procedures is not a daunting task, but there is something to be said of updating a company's set of standard operating procedure and security policies compared to changing 100 lines (or more) of authentication code in the critical path of your internally developed CRM application.

Capturing the number of applications used is easier once you have the departments, their hierarchy, and their stakeholders.  In this approach, you should have an organized list of departments and the hierarchy in each.  You can now associate the applications that are used by all levels within each department.  You'll also want to document whether the application is internally developed or commercially available off-the-shelf (COTS).  If the later, document the manufacture and the version. Also, do not forget web-based applications or services when inventorying applications.

#### Number of work personas
Work personas is where the three previous efforts converge. You know the departments, the organizational levels within each department, the numbers of applications used by each, respectively, and the type of application.  From this you want to create a work persona.

A work persona classifies a category of user, title or role (individual contributor, manager, middle manager, etc), within a specific department to a collection of applications used. There is a high possibility and probability that you will have many work personas.  These work personas will become units of work an you will refer to them in documentation and in meetings. You need to give them a name.

Give your personas easy and intuitive name like Abby Accounting, Mark Marketing, or Sue Sales.  If the organization levels are common across departments then decide on a first name that represents the common levels in a department.  For example, Abby could be the first name of an individual contributor in any given department, while the first name Sue could represent someone from middle management in any given department. Additionally, you can use suffixes such as (I, II, Senior, etc.) to further define departmental structure for a given persona.

Ultimately, create a naming convention that does not require your stakeholders and partners to read through a long list of tables or that needs a secret decoder ring.  Also, if possible, try to keep the references as names of people.  After all, you are talking about a person, who is in that department, who uses that specific software.

#### Organization's IT structure
IT department structures can vary more than the organization.  Some IT departments are centralized while others are decentralized.  Also, the road to password-less will likely have you interacting with the client authentication team, the deployment team, the security team, the PKI team, the Active Directory team, the cloud team, and the list continues.  Most of these teams will be your partner on your journey to password-less. Ensure there is a password-less stakeholder on each of these teams and that the effort is understood and funded.

#### Assess your Organization
You have a ton of information.  You have created your work personas, you identified your stakeholders throughout the different IT groups.  Now what?

By now you can see why its a journey and not a weekend project. You need to investigate user-visible password surfaces for each of your work personas.  Once you identified the password surfaces, you need to mitigate them.  Resolving some password surfaces are simple-- meaning a solution already exists in the environment and its a matter of moving users to it. Resolution to some passwords surfaces may exist, but are not deployed in your environment.  That resolution results in a project that must be planned, tested, and then deployed. That is likely to span multiple IT departments with multiple people, and potentially one or more distributed systems.  Those types of projects take time and need dedicated cycles.  This same sentiment is true with in-house software development.  Even with agile development methodologies, changing the way someone authenticates to an application is critical.  Without the proper planning and testing, it has the potential to severely impact productivity.  

How long does it take to reach password-less?  The answer is "it depends". It depends on the organizational alignment of a password-less strategy.  Top-down agreement that password-less is the organization's goal makes conversations much easier.  Easier conversations means less time spent convincing people and more time spent moving forward toward the goal.  Top-down agreement on password-less as a priority within the ranks of other on-going IT projects helps everyone understand how to prioritize existing projects. Agreeing on priorities should reduce and minimize manager and executive level escalations.  After these organizational discussions, modern project management techniques are used to continue the password-less effort.  The organization allocates resources based on the priority (after they agreed on the strategy). Those resources will:
- work through the work personas
- organize and deploy user acceptance testing
- evaluate user acceptance testing results for user-visible password surfaces
- work with stakeholders to create solutions that mitigate user-visible password surfaces
- add the solution to the project backlog and prioritize against other projects
- deploy solution 
- User acceptance testing to confirm the solution mitigates the user-visible password surface
- Repeat as needed

Your organization's journey to password-less may take some time to get there.  Counting the number of work personas and the number of applications is probably a good indicator of the investment. Hopefully, your organization is growing, which means that the list of personas and the list of applications is unlikely to shrink. If the work to go password-less today is *n*, then it is likely that to go password-less tomorrow is *n x 2* or perhaps more, *n x n*. Do not let the size or duration of the project be a distraction.  As you progress through each work persona, the actions and tasks will become more familiar for you and your stakeholders.  Scope the project to sizable, realistic phases, pick the correct work personas, and soon you will see parts of your organization transition to password-less. 

### Where to start?
What is the best guidance for kicking off the journey to password-less?  You will want to show you management a proof of concept as soon as possible.  Ideally, you want to show this at each step of your password-less journey. Keeping password-less top of mind and showing consistent progress keeps everyone focused.

#### Work persona 
You begin with your work personas. These were part of your preparation process.  They have a persona name, such as Abby Accounting II, or any other naming convention your organization defined.  That work persona includes a list of all the applications that Abby uses to perform her assigned duties in the accounting department. To start, you need to pick a work persona. This is the targeted work persona you will enable to climb the password-less steps.

> [!IMPORTANT]
> Avoid using any work personas from your IT department.  This is probably the worst way to start the password-less journey.  IT roles are very difficult and time consuming.  IT workers typically have multiple credentials, run a multitude of scripts and custom applications, and are the worst offenders of password usage.  It is better to save these work personas for the middle or end of your journey.

Review your collection of work personas.  Early in your password-less journey, identify personas that have the fewest applications. These work personas could represent an entire department or two.  These are the perfect work personas for your proof-of-concept or pilot.

#### The process

The journey to password-less is to take each work persona through each password-less step. In the begging, we encourage working with one persona at a time to ensure team members and stakeholders are familiar with the process. Once comfortable with the process, you can cover as many work personas in parallel as resources allow.  The process looks something like 

1. Password replacement offering (Step 1) 
   1. Identity test users that represent the targeted work persona.
   2. Deploy Windows Hello for Business to test users.
   3. Validate password and Windows Hello for Business work.
2. Reduce User-visible Password Surface (Step 2)
   1.  Survey test user workflow for password usage.
   2.  Identify password usage, plan, develop, and deploy mitigations.
   3.  Repeat until all user password usage is mitigated.
   4.  Remove password capabilities from the operating system.
   5.  Validate **all** workflows do not need passwords 
3. Transition into a password-less (Step 3)
   1. dsds d
   2.  

 


 

 


### Deploy Windows Hello for Business (Step 1)


It is typical for most organizations to host their proof of concept in a test lab or environment.  To do that with password-less may be more challenging and take more time.  To test in a lab, you must first duplicate the environment of the targeted persona. This could be a few days or several weeks depending on the complexity of targeted work persona.  

It always good to test in a lab, but it is typical for management to see results quickly. Continuing to show forward progress on your password-less journey is always good thing.  If there are ways you can test in production with low or now risk, that may be advantageous to your time line.

### Reduce Usable-visible Password Surface (Step 2)


### Transition into a password-less (Step 3) 






