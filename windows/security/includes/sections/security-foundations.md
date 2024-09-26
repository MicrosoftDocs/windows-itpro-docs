---
author: paolomatarazzo
ms.author: paoloma
ms.date: 09/18/2023
ms.topic: include
---

## Offensive research

| Feature name | Description |
|:---|:---|
| **[Microsoft Security Development Lifecycle (SDL)](/windows/security/security-foundations/msft-security-dev-lifecycle)** | The Microsoft Security Development Lifecycle (SDL) introduces security best practices, tools, and processes throughout all phases of engineering and development. |
| **[OneFuzz service](https://www.microsoft.com/security/blog/2020/09/15/microsoft-onefuzz-framework-open-source-developer-tool-fix-bugs/)** | A range of tools and techniques - such as threat modeling, static analysis, fuzz testing, and code quality checks - enable continued security value to be embedded into Windows by every engineer on the team from day one. Through the SDL practices, Microsoft engineers are continuously provided with actionable and up-to-date methods to improve development workflows and overall product security before the code has been released.  |
| **[Microsoft Windows Insider Preview bounty program](https://www.microsoft.com/msrc/bounty-windows-insider-preview)** | As part of our secure development process, the Microsoft Windows Insider Preview bounty program invites eligible researchers across the globe to find and submit vulnerabilities that reproduce in the latest Windows Insider Preview (WIP) Dev Channel. The goal of the Windows Insider Preview bounty program is to uncover significant vulnerabilities that have a direct and demonstrable impact on the security of customers using the latest version of Windows.<br><br>Through this collaboration with researchers across the globe, our teams identify critical vulnerabilities that were not previously found during development and quicky fix the issues before releasing the final Windows.  |

## Certification

| Feature name | Description |
|:---|:---|
| **[Common Criteria certifications](/windows/security/security-foundations/certification/windows-platform-common-criteria)** | Common Criteria (CC) is an international standard currently maintained by national governments who participate in the Common Criteria Recognition Arrangement. CC defines a common taxonomy for security functional requirements, security assurance requirements, and an evaluation methodology used to ensure products undergoing evaluation satisfy the functional and assurance requirements. Microsoft ensures that products incorporate the features and functions required by relevant Common Criteria Protection Profiles and completes Common Criteria certifications of Microsoft Windows products. |
| **[Federal Information Processing Standard (FIPS) 140 validation](/windows/security/security-foundations/certification/fips-140-validation)** | The Federal Information Processing Standard (FIPS) Publication 140 is a U.S. government standard that defines the minimum security requirements for cryptographic modules in IT products. Microsoft maintains an active commitment to meeting the requirements of the FIPS 140 standard, having validated cryptographic modules against FIPS 140-2 since it was first established in 2001. Multiple Microsoft products, including Windows 11, Windows 10, Windows Server, and many cloud services, use these cryptographic modules. |

## Secure supply chain

| Feature name | Description |
|:---|:---|
| **Software Bill of Materials (SBOM)** | SBOMs are leveraged to provide the transparency and provenance of the content as it moves through various stages of the Windows supply chain. This enables trust between each supply chain segment, ensures that tampering has not taken place during ingestion and along the way, and provides a provable chain of custody for the product that we ship to customers. |
| **[Azure Code Signing](/windows/security/application-security/application-control/windows-defender-application-control/deployment/use-code-signing-for-better-control-and-protection)** | App Control for Business enables customers to define policies for controlling what is allowed to run on their devices. App Control policies can be remotely applied to devices using an MDM solution like Microsoft Intune. <br><br>To simplify App Control enablement, organizations can take advantage of Azure Code Signing, a secure and fully managed service for signing App Control policies and apps. <br><br>Azure Code Signing minimizes the complexity of code signing with a turnkey service backed by a Microsoft managed certificate authority, eliminating the need to procure and self-manage any signing certificates. The service is managed just as any other Azure resource and integrates easily with the leading development and CI/CD toolsets.  |
| **[Windows application software development kit (SDK)](https://developer.microsoft.com/windows/downloads/windows-sdk/)** | Developers have an opportunity to design highly secure applications that benefit from the latest Windows safeguards. The Windows App SDK provides a unified set of APIs and tools for developing secure desktop apps for Windows. To help create apps that are up-to-date and protected, the SDK follows the same security standards, protocols, and compliance as the core Windows operating system.  |
