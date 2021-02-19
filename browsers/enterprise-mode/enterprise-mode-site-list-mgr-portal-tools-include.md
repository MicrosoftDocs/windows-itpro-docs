## Enterprise Mode Site List Manager and the Enterprise Mode Site List Portal tools
You can build and manage your Enterprise Mode Site List is by using any generic text editor. However, we’ve also provided a couple tools that can make that process even easier.

### Enterprise Mode Site List Manager
This tool helps you create error-free XML documents with simple n+1 versioning and URL verification. We recommend using this tool if your site list is relatively small. For more info about this tool, see the [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md) topics.

There are 2 versions of this tool, both supported on Windows 7, Windows 8.1, and Windows 10:

- [Enterprise Mode Site List Manager (schema v.1)](https://www.microsoft.com/download/details.aspx?id=42501). This is an older version of the schema that you must use if you want to create and update your Enterprise Mode Site List for devices running the v.1 version of the schema.

	We strongly recommend moving to the new schema, v.2. For more info, see [Enterprise Mode schema v.2 guidance](enterprise-mode-schema-version-2-guidance.md).

- [Enterprise Mode Site List Manager (schema v.2)](https://www.microsoft.com/download/details.aspx?id=49974). The updated version of the schema, including new functionality. You can use this version of the schema to create and update your Enterprise Mode Site List for devices running the v.2 version of the schema.

	If you open a v.1 version of your Enterprise Mode Site List using this version, it will update the schema to v.2, automatically. For more info, see [Enterprise Mode schema v.1 guidance](enterprise-mode-schema-version-1-guidance.md).

If your list is too large to add individual sites, or if you have more than one person managing the site list, we recommend using the Enterprise Site List Portal.

### Enterprise Mode Site List Portal
The [Enterprise Mode Site List Portal](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal) is an open-source web tool on GitHub that allows you to manage your Enterprise Mode Site List, hosted by the app, with multiple users. The portal is designed to use IIS and a SQL Server backend, leveraging Active Directory (AD) for employee management.

In addition to all the functionality of the Enterprise Mode Site List Manager tool, the Enterprise Mode Site List Portal helps you:

- Manage site lists from any device supporting Windows 7 or greater.

- Submit change requests.

- Operate offline through an on-premise solution.

- Provide role-based governance.

- Test configuration settings before releasing to a live environment.

Updates to your site list are made by submitting new change requests, which are then approved by a designated group of people, put into a pre-production environment for testing, and then deployed immediately, or scheduled for deployment later.

Because the tool is open-source, the source code is readily available for examination and experimentation. We encourage you to [fork the code, submit pull requests, and send us your feedback](https://github.com/MicrosoftEdge/enterprise-mode-site-list-portal)! For more info about the Enterprise Mode Site List Portal, see the [Use the Enterprise Mode Site List Manager](use-the-enterprise-mode-site-list-manager.md) topics.