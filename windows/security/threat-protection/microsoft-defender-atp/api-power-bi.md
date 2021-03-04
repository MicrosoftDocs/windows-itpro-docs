---
title: Microsoft Defender ATP APIs connection to Power BI
ms.reviewer: 
description: Create a Power Business Intelligence (BI) report on top of Microsoft Defender for Endpoint APIs.
keywords: apis, supported apis, Power BI, reports
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance
ms.topic: article
ms.technology: mde
---

# Create custom reports using Power BI

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/p/?linkid=2146631)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)


- Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-exposedapis-abovefoldlink) 

[!include[Microsoft Defender for Endpoint API URIs for US Government](../../includes/microsoft-defender-api-usgov.md)]

[!include[Improve request performance](../../includes/improve-request-performance.md)]

In this section you will learn create a Power BI report on top of Defender for Endpoint APIs.

The first example demonstrates how to connect Power BI to Advanced Hunting API and the second example demonstrates a connection to our OData APIs, such as Machine Actions or Alerts.

## Connect Power BI to Advanced Hunting API

- Open Microsoft Power BI

- Click **Get Data** > **Blank Query**

    ![Image of create blank query](images/power-bi-create-blank-query.png)

- Click **Advanced Editor**

    ![Image of open advanced editor](images/power-bi-open-advanced-editor.png)

- Copy the below and paste it in the editor:

```
	let 
		AdvancedHuntingQuery = "DeviceEvents | where ActionType contains 'Anti' | limit 20",

		HuntingUrl = "https://api.securitycenter.microsoft.com/api/advancedqueries",

		Response = Json.Document(Web.Contents(HuntingUrl, [Query=[key=AdvancedHuntingQuery]])),

		TypeMap = #table(
			{ "Type", "PowerBiType" },
			{
				{ "Double",   Double.Type },
				{ "Int64",    Int64.Type },
				{ "Int32",    Int32.Type },
				{ "Int16",    Int16.Type },
				{ "UInt64",   Number.Type },
				{ "UInt32",   Number.Type },
				{ "UInt16",   Number.Type },
				{ "Byte",     Byte.Type },
				{ "Single",   Single.Type },
				{ "Decimal",  Decimal.Type },
				{ "TimeSpan", Duration.Type },
				{ "DateTime", DateTimeZone.Type },
				{ "String",   Text.Type },
				{ "Boolean",  Logical.Type },
				{ "SByte",    Logical.Type },
				{ "Guid",     Text.Type }
			}),

		Schema = Table.FromRecords(Response[Schema]),
		TypedSchema = Table.Join(Table.SelectColumns(Schema, {"Name", "Type"}), {"Type"}, TypeMap , {"Type"}),
		Results = Response[Results],
		Rows = Table.FromRecords(Results, Schema[Name]),
		Table = Table.TransformColumnTypes(Rows, Table.ToList(TypedSchema, (c) => {c{0}, c{2}}))

	in Table

```

- Click **Done**

- Click **Edit Credentials**

    ![Image of edit credentials0](images/power-bi-edit-credentials.png)

- Select **Organizational account** > **Sign in**

    ![Image of set credentials1](images/power-bi-set-credentials-organizational.png)

- Enter your credentials and wait to be signed in

- Click **Connect**

    ![Image of set credentials2](images/power-bi-set-credentials-organizational-cont.png)

- Now the results of your query will appear as table and you can start build visualizations on top of it!

- You can duplicate this table, rename it and edit the Advanced Hunting query inside to get any data you would like.

## Connect Power BI to OData APIs

- The only difference from the above example is the query inside the editor. 

- Copy the below and paste it in the editor to pull all **Machine Actions** from your organization:

```
	let

		Query = "MachineActions",

		Source = OData.Feed("https://api.securitycenter.microsoft.com/api/" & Query, null, [Implementation="2.0", MoreColumns=true])
	in
		Source

```

- You can do the same for **Alerts** and **Machines**.

- You also can use OData queries for queries filters, see [Using OData Queries](exposed-apis-odata-samples.md)


## Power BI dashboard samples in GitHub
For more information see the [Power BI report templates](https://github.com/microsoft/MicrosoftDefenderATP-PowerBI).

## Sample reports
View the Microsoft Defender ATP Power BI report samples. For more information, see [Browse code samples](https://docs.microsoft.com/samples/browse/?products=mdatp).


## Related topic
- [Defender for Endpoint APIs](apis-intro.md)
- [Advanced Hunting API](run-advanced-query-api.md)
- [Using OData Queries](exposed-apis-odata-samples.md)
