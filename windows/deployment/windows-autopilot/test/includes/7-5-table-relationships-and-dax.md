Power BI lets you create relationships among multiple tables, including tables that come from completely different data sources. You can see those relationships for any data model in the **Relationships** view of Power BI Desktop.

![](media/7-5-table-relationships-and-dax/dax-relationships_1.png)

## DAX relational functions
DAX has **relational functions** that enable you to interact with tables that have established relationships.

You can return the value of a column, or you can return all rows in a relationship using DAX functions.

For example, the **RELATED** function follows relationships and returns the value of a column, while **RELATEDTABLE** follows relationships, and returns an entire table that is filtered to include only related rows.

![](media/7-5-table-relationships-and-dax/dax-relationships_2.png)

The **RELATED** function works on *many-to-one* relationships, while **RELATEDTABLE** is for *one-to-many* relationships.

You can use relational functions to build expressions that include values across multiple tables. DAX will return a result with these functions, regardless of the length of the chain of the relationship.

> Video content courtesy of [Alberto Ferrari, SQLBI](http://www.sqlbi.com/learning-dax)
> 
> 

