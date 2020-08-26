# [Windows Firewall with Advanced Security](windows-firewall-with-advanced-security.md)

## [Plan deployment]()

### [Design guide](windows-firewall-with-advanced-security-design-guide.md)

### [Design process](understanding-the-windows-firewall-with-advanced-security-design-process.md)

### [Implementation goals]()
#### [Identify implementation goals](identifying-your-windows-firewall-with-advanced-security-deployment-goals.md)
#### [Protect devices from unwanted network traffic](protect-devices-from-unwanted-network-traffic.md)
#### [Restrict access to only trusted devices](restrict-access-to-only-trusted-devices.md)
#### [Require encryption](require-encryption-when-accessing-sensitive-network-resources.md)
#### [Restrict access](restrict-access-to-only-specified-users-or-devices.md)

### [Implementation designs]()
#### [Mapping goals to a design](mapping-your-deployment-goals-to-a-windows-firewall-with-advanced-security-design.md)

#### [Basic firewall design](basic-firewall-policy-design.md)
##### [Basic firewall design example](firewall-policy-design-example.md)


#### [Domain isolation design](domain-isolation-policy-design.md)
##### [Domain isolation design example](domain-isolation-policy-design-example.md)


#### [Server isolation design](server-isolation-policy-design.md)
##### [Server Isolation design example](server-isolation-policy-design-example.md)


#### [Certificate-based isolation design](certificate-based-isolation-policy-design.md)
##### [Certificate-based Isolation design example](certificate-based-isolation-policy-design-example.md)

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

##### [Planning group policy deployment for your isolation zones](planning-group-policy-deployment-for-your-isolation-zones.md)
###### [Planning isolation groups for the zones](planning-isolation-groups-for-the-zones.md)
###### [Planning network access groups](planning-network-access-groups.md)

###### [Planning the GPOs](planning-the-gpos.md)
####### [Firewall GPOs](firewall-gpos.md)
######## [GPO_DOMISO_Firewall](gpo-domiso-firewall.md)
####### [Isolated domain GPOs](isolated-domain-gpos.md)
######## [GPO_DOMISO_IsolatedDomain_Clients](gpo-domiso-isolateddomain-clients.md)
######## [GPO_DOMISO_IsolatedDomain_Servers](gpo-domiso-isolateddomain-servers.md)
####### [Boundary zone GPOs](boundary-zone-gpos.md)
######## [GPO_DOMISO_Boundary](gpo-domiso-boundary.md)
####### [Encryption zone GPOs](encryption-zone-gpos.md)
######## [GPO_DOMISO_Encryption](gpo-domiso-encryption.md)
####### [Server isolation GPOs](server-isolation-gpos.md)

###### [Planning GPO deployment](planning-gpo-deployment.md)


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
### [Add Production devices to the membership group for a zone](add-production-devices-to-the-membership-group-for-a-zone.md)
### [Add test devices to the membership group for a zone](add-test-devices-to-the-membership-group-for-a-zone.md)
### [Assign security group filters to the GPO](assign-security-group-filters-to-the-gpo.md)
### [Change rules from request to require mode](Change-Rules-From-Request-To-Require-Mode.Md)
### [Configure authentication methods](Configure-authentication-methods.md)
### [Configure data protection (Quick Mode) settings](configure-data-protection-quick-mode-settings.md)
### [Configure Group Policy to autoenroll and deploy certificates](configure-group-policy-to-autoenroll-and-deploy-certificates.md)
### [Configure key exchange (main mode) settings](configure-key-exchange-main-mode-settings.md)
### [Configure the rules to require encryption](configure-the-rules-to-require-encryption.md)
### [Configure the Windows Firewall log](configure-the-windows-firewall-log.md)
### [Configure the workstation authentication certificate template](configure-the-workstation-authentication-certificate-template.md)
### [Configure Windows Firewall to suppress notifications when a program is blocked](configure-windows-firewall-to-suppress-notifications-when-a-program-is-blocked.md)
### [Confirm that certificates are deployed correctly](confirm-that-certificates-are-deployed-correctly.md)
### [Copy a GPO to create a new GPO](copy-a-gpo-to-create-a-new-gpo.md)
### [Create a Group Account in Active Directory](create-a-group-account-in-active-directory.md)
### [Create a Group Policy Object](create-a-group-policy-object.md)
### [Create an authentication exemption list rule](create-an-authentication-exemption-list-rule.md)
### [Create an authentication request rule](create-an-authentication-request-rule.md)
### [Create an inbound ICMP rule](create-an-inbound-icmp-rule.md)
### [Create an inbound port rule](create-an-inbound-port-rule.md)
### [Create an inbound program or service rule](create-an-inbound-program-or-service-rule.md)
### [Create an outbound port rule](create-an-outbound-port-rule.md)
### [Create an outbound program or service rule](create-an-outbound-program-or-service-rule.md)
### [Create inbound rules to support RPC](create-inbound-rules-to-support-rpc.md)
### [Create WMI filters for the GPO](create-wmi-filters-for-the-gpo.md)
### [Create Windows Firewall rules in Intune](create-windows-firewall-rules-in-intune.md)
### [Enable predefined inbound rules](enable-predefined-inbound-rules.md)
### [Enable predefined outbound rules](enable-predefined-outbound-rules.md)
### [Exempt ICMP from authentication](exempt-icmp-from-authentication.md)
### [Link the GPO to the domain](link-the-gpo-to-the-domain.md)
### [Modify GPO filters](modify-gpo-filters-to-apply-to-a-different-zone-or-version-of-windows.md)
### [Open IP security policies](open-the-group-policy-management-console-to-ip-security-policies.md)
### [Open Group Policy](open-the-group-policy-management-console-to-windows-firewall.md)
### [Open Group Policy](open-the-group-policy-management-console-to-windows-firewall-with-advanced-security.md)
### [Open Windows Firewall](open-windows-firewall-with-advanced-security.md)
### [Restrict server access](restrict-server-access-to-members-of-a-group-only.md)
### [Enable Windows Firewall](turn-on-windows-firewall-and-configure-default-behavior.md)
### [Verify Network Traffic](verify-that-network-traffic-is-authenticated.md)


## [References]()
### [Checklist: Creating Group Policy objects](checklist-creating-group-policy-objects.md)
### [Checklist: Creating inbound firewall rules](checklist-creating-inbound-firewall-rules.md)
### [Checklist: Creating outbound firewall rules](checklist-creating-outbound-firewall-rules.md)
### [Checklist: Configuring basic firewall settings](checklist-configuring-basic-firewall-settings.md)


### [Checklist: Configuring rules for the isolated domain](checklist-configuring-rules-for-the-isolated-domain.md)
### [Checklist: Configuring rules for the boundary zone](checklist-configuring-rules-for-the-boundary-zone.md)
### [Checklist: Configuring rules for the encryption zone](checklist-configuring-rules-for-the-encryption-zone.md)
### [Checklist: Configuring rules for an isolated server zone](checklist-configuring-rules-for-an-isolated-server-zone.md)

### [Checklist: Configuring rules for servers in a standalone isolated server zone](checklist-configuring-rules-for-servers-in-a-standalone-isolated-server-zone.md)
### [Checklist: Creating rules for clients of a standalone isolated server zone](checklist-creating-rules-for-clients-of-a-standalone-isolated-server-zone.md)


### [Appendix A: Sample GPO template files for settings used in this guide](appendix-a-sample-gpo-template-files-for-settings-used-in-this-guide.md)



## [Troubleshooting]()
### [Troubleshooting UWP app connectivity issues in Windows Firewall](troubleshooting-uwp-firewall.md)













