---
title: Transition into a passwordless deployment
description: Learn about how to transition into a passwordless deployment, the third step of the Microsoft passwordless journey.
ms.topic: concept-article
ms.date: 01/29/2024
---

# Transition into a passwordless deployment

:::row:::
   :::column span="1":::
   :::image type="icon" source="images/step-1-off.svg" border="false" link="journey-step-1.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-2-off.svg" border="false" link="journey-step-2.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-3-on.svg" border="false" link="journey-step-3.md":::
   :::column-end:::
   :::column span="1":::
   :::image type="icon" source="images/step-4-off.svg" border="false":::
   :::column-end:::
:::row-end:::

## Awareness and user education

In this last step, you're going to include the remaining users that fit the targeted work persona to the passwordless deployment. Before you do this step, you want to invest in an awareness campaign.

An awareness campaign introduces the users to the new way of authenticating to their device, such as using Windows Hello for Business. The idea of the campaign is to positively promote the change to the users in advance. Explain  the value and why your company is changing. The campaign should provide dates and encourage questions and feedback. This campaign can coincide with user education, where you can show the users the changes and, if your environment allows, enable the users to try out the experience.

> [!TIP]
> To facilitate user communication and to ensure a successful Windows Hello for Business deployment, you can find customizable material (email templates, posters, trainings, etc.) at [Microsoft Entra templates](https://aka.ms/adminmails).

## Include remaining users that fit the work persona

You implemented the awareness campaign for the targeted users. These users are informed and ready to transition to being passwordless. Add the remaining users that match the targeted work persona to your deployment.

## Validate that none of the users of the work personas need passwords

You successfully transitioned all users for the targeted work persona to being passwordless. Monitor the users within the work persona to ensure they don't encounter any issues while working in a passwordless environment.

Track all reported issues. Set priority and severity to each reported issue and have your team triage the issues appropriately. As you triage issues, consider the following questions:

| | Question |
|--|--|
| **🔲** | *Is the reporting user performing a task outside the work persona?* |
| **🔲** | *Is the reported issue affecting the entire work persona, or only specific users?* |
| **🔲** | *Is the outage a result of a misconfiguration?* |
| **🔲** | *Is the outage an overlooked gap from step 2?* |

Each organization's priority and severity differ. However, most organizations consider work stoppages to be fairly significant. Your team should predefine levels of priority and severity. With each of these levels, create service level agreements (SLAs) for each combination of severity and priority, and hold everyone accountable to those agreements. Reactive planning enables people to spend more time on the issue and resolving it, and less time on the process.

Resolve the issues per your service level agreements. Higher severity items might require returning some or all of the user's password surface. Clearly this outcome isn't the end goal, but don't let it slow down your momentum towards becoming passwordless. Refer to how you reduced the user's password surface in step 2, and progress forward to a solution, deploying that solution and validating it.

## Configure user accounts to prevent password authentication

You transitioned all the users for the targeted work persona to a passwordless environment and validated all their workflows. The last step to complete the passwordless transition is to remove the user's knowledge of the password.

### Password scrambling

While you can't completely remove the password from the user's account, you can prevent the user from using the password to authenticate. The easiest and most effective approach is to set the password to a random value. This approach prevents the user from knowing the password and using it to authenticate, but it allows the user to reset the password whenever needed.

> [!TIP]
> Enable [Microsoft Entra self-service password reset (SSPR)](/entra/identity/authentication/tutorial-enable-sspr) to allow the users to reset their password. Once implemented, users can sign in to their Windows devices using Windows Hello for Business or a FIDO2 security key, and reset their password from https://aka.ms/sspr. Combine it with [password writeback](/entra/identity/authentication/tutorial-enable-cloud-sync-sspr-writeback) to have the password reset synchronized to your on-premises Active Directory.

The following sample PowerShell script generates a random password of 64 characters and sets it for the user specified in the variable name $userId against Microsoft Entra ID.
Modify the **userId** variable of the script to match your environment (first line), and then run it in a PowerShell session. When prompted to authenticate to Microsoft Entra ID, use the credentials of an account with a role capable of resetting passwords.

```azurepowershell-interactive
$userId = "<UPN of the user>"

function Generate-RandomPassword{
    [CmdletBinding()]
    param (
      [int]$Length = 64
    )
  $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{};:,.<>/?\|`~"
  $random = New-Object System.Random
  $password = ""
  for ($i = 0; $i -lt $Length; $i++) {
    $index = $random.Next(0, $chars.Length)
    $password += $chars[$index]
  }
  return $password
}

Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser -Force
Install-Module Microsoft.Graph -Scope CurrentUser
Import-Module Microsoft.Graph.Users.Actions
Connect-MgGraph -Scopes "UserAuthenticationMethod.ReadWrite.All" -NoWelcome

$passwordParams = @{
 UserId = $userId
 AuthenticationMethodId = "28c10230-6103-485e-b985-444c60001490"
 NewPassword = Generate-RandomPassword
}

Reset-MgUserAuthenticationMethodPassword @passwordParams
```

A similar script can be used to reset the password against Active Directory. Modify the **samAccountName** variable of the script to match your environment (first line), and then run it in a PowerShell session.

```PowerShell
$samAccountName = <sAMAccountName of the user>

function Generate-RandomPassword{
    [CmdletBinding()]
    param (
      [int]$Length = 64
    )
  $chars = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_=+[]{};:,.<>/?\|`~"
  $random = New-Object System.Random
  $password = ""
  for ($i = 0; $i -lt $Length; $i++) {
    $index = $random.Next(0, $chars.Length)
    $password += $chars[$index]
  }
  return $password
}

$NewPassword = ConvertTo-SecureString -String (Generate-RandomPassword) -AsPlainText -Force

Set-ADAccountPassword -identity $userId -NewPassword $NewPassword -Reset
```

If your organizational policies allow it, you can configure the randomized passwords to never expire, or use a long expiration period. This configuration prevents the user from being prompted to change their password.

### Password rotation

Consider implementing automation to rotate the user's password regularly. This approach ensures that the user's password is always randomized and prevents the user from knowing the password.

## Next steps

Microsoft is working hard to make the passwordless journey easier for you. We're working on new features and capabilities to help you transition to a passwordless environment, and to achieve the long-term security promise of a truly passwordless environment. Check back often to see what's new.
