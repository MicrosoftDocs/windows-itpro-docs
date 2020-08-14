# [Windows Firewall with Advanced Security](windows-firewall-with-advanced-security.md)

## [Plan deployment]()

### [Design guide](windows-firewall-with-advanced-security-design-guide.md)

### [Design process](understanding-the-windows-firewall-with-advanced-security-design-process.md)

### [Implementation goals]()
#### [Identify implementation goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)
#### [Protect Devices from Unwanted Network Traffic](protect-devices-from-unwanted-network-traffic.md)
#### [Restrict Access to Only Trusted Devices](restrict-access-to-only-trusted-devices.md)
#### [Require Encryption](require-encryption-when-accessing-sensitive-network-resources.md)
#### [Restrict Access](restrict-access-to-only-specified-users-or-devices.md)

### [Implementation designs]()
#### [Mapping goals to a design](mapping-your-deployment-goals-to-a-windows-firewall-with-advanced-security-design.md)

#### [Basic design](basic-firewall-policy-design.md)
##### [Basic Design Example](firewall-policy-design-example.md)


#### [Domain isolation design](domain-isolation-policy-design.md)
##### [Domain Isolation Design Example](domain-isolation-policy-design-example.md)


#### [Server isolation design](server-isolation-policy-design.md)
##### [Server Isolation Design Example](server-isolation-policy-design-example.md)


#### [Certificate-based isolation design](certificate-based-isolation-policy-design.md)
##### [Certificate-based Isolation Design Example](certificate-based-isolation-policy-design-example.md)

### [Design planning]()
#### [Planning your design](planning-your-windows-firewall-with-advanced-security-design.md)

#### [Planning settings for a basic firewall policy](planning-settings-for-a-basic-firewall-policy.md)

#### [Planning domain isolation zones]()
##### [Domain isolation zones](planning-domain-isolation-zones.md)
##### [Exemption list](exemption-list.md)
##### [Isolated domain](isolated-domain.md)
##### [Boundary zone](boundary-zone.md)
##### [Encryption zone](encryption-zone.md)

#### [Planning server isolation zones](planning-server-isolation-zones.md)

#### [Planning certificate-based authentication](planning-certificate-based-authentication.md)
##### [Documenting the Zones](documenting-the-zones.md)

##### [Planning Group Policy Deployment for Your Isolation Zones](planning-group-policy-deployment-for-your-isolation-zones.md)
###### [Planning Isolation Groups for the Zones](planning-isolation-groups-for-the-zones.md)
###### [Planning Network Access Groups](planning-network-access-groups.md)

###### [Planning the GPOs](planning-the-gpos.md)
####### [Firewall GPOs](firewall-gpos.md)
######## [GPO_DOMISO_Firewall](gpo-domiso-firewall.md)
####### [Isolated Domain GPOs](isolated-domain-gpos.md)
######## [GPO_DOMISO_IsolatedDomain_Clients](gpo-domiso-isolateddomain-clients.md)
######## [GPO_DOMISO_IsolatedDomain_Servers](gpo-domiso-isolateddomain-servers.md)
####### [Boundary Zone GPOs](boundary-zone-gpos.md)
######## [GPO_DOMISO_Boundary](gpo-domiso-boundary.md)
####### [Encryption Zone GPOs](encryption-zone-gpos.md)
######## [GPO_DOMISO_Encryption](gpo-domiso-encryption.md)
####### [Server Isolation GPOs](server-isolation-gpos.md)

###### [Planning GPO Deployment](planning-gpo-deployment.md)


### [Planning to deploy](planning-to-deploy-windows-firewall-with-advanced-security.md)


## [Deployment guide]()
### [Deployment overview](windows-firewall-with-advanced-security-deployment-guide.md)

### [Implementing your plan](implementing-your-windows-firewall-with-advanced-security-design-plan.md)

### [Basic firewall deployment]()
#### [Checklist: Implementing a basic firewall policy design](checklist-implementing-a-basic-firewall-policy-design.md)



### [Domain isolation deployment]()
#### [Checklist: Implementing a Domain Isolation Policy Design](checklist-implementing-a-domain-isolation-policy-design.md)



### [Server isolation deployment]()
#### [Checklist: Implementing a Standalone Server Isolation Policy Design](checklist-implementing-a-standalone-server-isolation-policy-design.md)



### [Certificate-based authentication]()
#### [Checklist: Implementing a Certificate-based Isolation Policy Design](checklist-implementing-a-certificate-based-isolation-policy-design.md)



## [Best practices]()
### [Securing IPsec](securing-end-to-end-ipsec-connections-by-using-ikev2.md)
### [PowerShell](windows-firewall-with-advanced-security-administration-with-windows-powershell.md)
### [Isolating Microsoft Store Apps on Your Network](isolating-apps-on-your-network.md)


## [How-to]()
### [Add Production Devices to the Membership Group for a Zone](add-production-devices-to-the-membership-group-for-a-zone.md)
### [Add Test Devices to the Membership Group for a Zone](add-test-devices-to-the-membership-group-for-a-zone.md)
### [Assign Security Group Filters to the GPO](assign-security-group-filters-to-the-gpo.md)
### [Change Rules from Request to Require Mode](change-rules-from-request-to-require-mode.md)
### [Configure Authentication Methods](configure-authentication-methods.md)
### [Configure Data Protection (Quick Mode) Settings](configure-data-protection-quick-mode-settings.md)
### [Configure Group Policy to Autoenroll and Deploy Certificates](configure-group-policy-to-autoenroll-and-deploy-certificates.md)
### [Configure Key Exchange (Main Mode) Settings](configure-key-exchange-main-mode-settings.md)
### [Configure the Rules to Require Encryption](configure-the-rules-to-require-encryption.md)
### [Configure the Windows Firewall Log](configure-the-windows-firewall-log.md)
### [Configure the Workstation Authentication Certificate Template](configure-the-workstation-authentication-certificate-template.md)
### [Configure Windows Firewall to Suppress Notifications When a Program Is Blocked](configure-windows-firewall-to-suppress-notifications-when-a-program-is-blocked.md)
### [Confirm That Certificates Are Deployed Correctly](confirm-that-certificates-are-deployed-correctly.md)
### [Copy a GPO to Create a New GPO](copy-a-gpo-to-create-a-new-gpo.md)
### [Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)
### [Create a Group Policy Object](create-a-group-policy-object.md)
### [Create an Authentication Exemption List Rule](create-an-authentication-exemption-list-rule.md)
### [Create an Authentication Request Rule](create-an-authentication-request-rule.md)
### [Create an Inbound ICMP Rule](create-an-inbound-icmp-rule.md)
### [Create an Inbound Port Rule](create-an-inbound-port-rule.md)
### [Create an Inbound Program or Service Rule](create-an-inbound-program-or-service-rule.md)
### [Create an Outbound Port Rule](create-an-outbound-port-rule.md)
### [Create an Outbound Program or Service Rule](create-an-outbound-program-or-service-rule.md)
### [Create Inbound Rules to Support RPC](create-inbound-rules-to-support-rpc.md)
### [Create WMI Filters for the GPO](create-wmi-filters-for-the-gpo.md)
### [Create Windows Firewall rules in Intune](create-windows-firewall-rules-in-intune.md)
### [Enable Predefined Inbound Rules](enable-predefined-inbound-rules.md)
### [Enable Predefined Outbound Rules](enable-predefined-outbound-rules.md)
### [Exempt ICMP from Authentication](exempt-icmp-from-authentication.md)
### [Link the GPO to the Domain](link-the-gpo-to-the-domain.md)
### [Modify GPO Filters](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)
### [Open IP Security Policies](open-the-group-policy-management-console-to-ip-security-policies.md)
### [Open Group Policy](open-the-group-policy-management-console-to-windows-firewall.md)
### [Open Group Policy](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
### [Open Windows Firewall](open-windows-firewall-with-advanced-security.md)
### [Restrict Server Access](restrict-server-access-to-members-of-a-group-only.md)
### [Enable Windows Firewall](turn-on-windows-firewall-and-configure-default-behavior.md)
### [Verify Network Traffic](verify-that-network-traffic-is-authenticated.md)
### [Verify Network Traffic](verify-that-network-traffic-is-authenticated.md)

## [References]()
### [Checklist: Creating Group Policy Objects](checklist-creating-group-policy-objects.md)
### [Checklist: Creating Inbound Firewall Rules](checklist-creating-inbound-firewall-rules.md)
### [Checklist: Creating Outbound Firewall Rules](checklist-creating-outbound-firewall-rules.md)
### [Checklist: Configuring Basic Firewall Settings](checklist-configuring-basic-firewall-settings.md)


### [Checklist: Configuring Rules for the Isolated Domain](checklist-configuring-rules-for-the-isolated-domain.md)
### [Checklist: Configuring Rules for the Boundary Zone](checklist-configuring-rules-for-the-boundary-zone.md)
### [Checklist: Configuring Rules for the Encryption Zone](checklist-configuring-rules-for-the-encryption-zone.md)
### [Checklist: Configuring Rules for an Isolated Server Zone](checklist-configuring-rules-for-an-isolated-server-zone.md)

### [Checklist: Configuring Rules for Servers in a Standalone Isolated Server Zone](checklist-configuring-rules-for-servers-in-a-standalone-isolated-server-zone.md)
### [Checklist: Creating Rules for Clients of a Standalone Isolated Server Zone](checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md)


### [Appendix A: Sample GPO Template Files for Settings Used in this Guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md)



## [Troubleshooting]()














