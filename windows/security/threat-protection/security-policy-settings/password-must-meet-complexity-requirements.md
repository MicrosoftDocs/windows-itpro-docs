---
title: Password must meet complexity requirements (Windows 10)
description: Describes the best practices, location, values, and security considerations for the Password must meet complexity requirements security policy setting.
ms.assetid: 94482ae3-9dda-42df-9782-2f66196e6afe
ms.reviewer: 
ms.author: dansimp
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.localizationpriority: medium
author: dansimp
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: conceptual
ms.date: 09/08/2017
---

# Password must meet complexity requirements

**Applies to**
-   Windows 10

Describes the best practices, location, values, and security considerations for the **Password must meet complexity requirements** security policy setting.

## Reference

The **Passwords must meet complexity requirements** policy setting determines whether passwords must meet a series of guidelines that are considered important for a strong password. Enabling this policy setting requires passwords to meet the following requirements:

1.  Passwords may not contain the user's samAccountName (Account Name) value or entire displayName (Full Name value). Both checks are not case sensitive.

    The samAccountName is checked in its entirety only to determine whether it is part of the password. If the samAccountName is less than three characters long, this check is skipped.
    The displayName is parsed for delimiters: commas, periods, dashes or hyphens, underscores, spaces, pound signs, and tabs. If any of these delimiters are found, the displayName is split and all parsed sections (tokens) are confirmed to not be included in the password. Tokens that are less than three characters are ignored, and substrings of the tokens are not checked. For example, the name "Erin M. Hagens" is split into three tokens: "Erin", "M", and "Hagens". Because the second token is only one character long, it is ignored. Therefore, this user could not have a password that included either "erin" or "hagens" as a substring anywhere in the password.

2.  The password contains characters from three of the following categories:

    -   Uppercase letters of European languages (A through Z, with diacritic marks, Greek and Cyrillic characters)
    -   Lowercase letters of European languages (a through z, sharp-s, with diacritic marks, Greek and Cyrillic characters)
    -   Base 10 digits (0 through 9)
    -   Non-alphanumeric characters (special characters): 
        (~!@#$%^&*_-+=`|\\(){}\[\]:;"'<>,.?/)
        Currency symbols such as the Euro or British Pound are not counted as special characters for this policy setting.
    -   Any Unicode character that is categorized as an alphabetic character but is not uppercase or lowercase. This includes Unicode characters from Asian languages.

Complexity requirements are enforced when passwords are changed or created.

The rules that are included in the Windows Server password complexity requirements are part of Passfilt.dll, and they cannot be directly modified.

Enabling the default Passfilt.dll may cause some additional Help Desk calls for locked-out accounts because users might not be used to having passwords that contain characters other than those found in the alphabet. However, this policy setting is liberal enough that all users should be able to abide by the requirements with a minor learning curve.

Additional settings that can be included in a custom Passfilt.dll are the use of non–upper-row characters. Upper-row characters are those that are typed by holding down the SHIFT key and typing any of the digits from 1 through 10.

### Possible values

-   Enabled
-   Disabled
-   Not defined

### Best practices

Set **Passwords must meet complexity requirements** to Enabled. This policy setting, combined with a minimum password length of 8, ensures that there are at least 218,340,105,584,896 different possibilities for a single password. This makes a brute force attack difficult, but still not impossible.

The use of ALT key character combinations can greatly enhance the complexity of a password. However, requiring all users in an organization to adhere to such stringent password requirements can result in unhappy users and an extremely busy Help Desk. Consider implementing a requirement in your organization to use ALT characters in the range from 0128 through 0159 as part of all administrator passwords. (ALT characters outside of this range can represent standard alphanumeric characters that do not add additional complexity to the password.)

Passwords that contain only alphanumeric characters are easy to compromise by using publicly available tools. To prevent this, passwords should contain additional characters and meet complexity requirements.

### Location

**Computer Configuration\\Windows Settings\\Security Settings\\Account Policies\\Password Policy**

### Default values

The following table lists the actual and effective default policy values. Default values are also listed on the policy’s property page.

| Server type or Group Policy Object (GPO) | Default value |
| - | - |
| Default domain policy| Enabled| 
| Default domain controller policy| Enabled| 
| Stand-alone server default settings | Disabled| 
| Domain controller effective default settings | Enabled| 
| Member server effective default settings | Enabled| 
| Effective GPO default settings on client computers | Disabled| 
 
## Security considerations

This section describes how an attacker might exploit a feature or its configuration, how to implement the countermeasure, and the possible negative consequences of countermeasure implementation.

### Vulnerability

Passwords that contain only alphanumeric characters are extremely easy to discover with several publicly available tools.

### Countermeasure

Configure the **Passwords must meet complexity requirements** policy setting to Enabled and advise users to use a variety of characters in their passwords.

When combined with a [Minimum password length](minimum-password-length.md) of 8, this policy setting ensures that the number of different possibilities for a single password is so great that it is difficult (but not impossible) for a brute force attack to succeed. (If the Minimum password length policy setting is increased, the average amount of time necessary for a successful attack also increases.)

### Potential impact

If the default password complexity configuration is retained, additional Help Desk calls for locked-out accounts could occur because users might not be accustomed to passwords that contain non-alphabetical characters, or they might have problems entering passwords that contain accented characters or symbols on keyboards with different layouts. However, all users should be able to comply with the complexity requirement with minimal difficulty.

If your organization has more stringent security requirements, you can create a custom version of the Passfilt.dll file that allows the use of arbitrarily complex password strength rules. For example, a custom password filter might require the use of non-upper-row symbols. (Upper-row symbols are those that require you to press and hold the SHIFT key and then press any of the digits between 1 and 0.) A custom password filter might also perform a dictionary check to verify that the proposed password does not contain common dictionary words or fragments.

The use of ALT key character combinations can greatly enhance the complexity of a password. However, such stringent password requirements can result in additional Help Desk requests. Alternatively, your organization could consider a requirement for all administrator passwords to use ALT characters in the 0128–0159 range. (ALT characters outside of this range can represent standard alphanumeric characters that would not add additional complexity to the password.)

## Related topics

- [Password Policy](password-policy.md)
