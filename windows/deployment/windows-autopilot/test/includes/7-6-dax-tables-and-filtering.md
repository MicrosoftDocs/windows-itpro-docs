One significant difference between **DAX** and the Excel formula language is that DAX allows you to pass *entire tables* between expressions, rather than being constrained to a single value. One powerful effect is that DAX allows you to filter tables in its expressions, then work with the filtered set of values.

![](media/7-6-dax-tables-and-filtering/dax-tables-filtering_1.png)

With DAX, you can create entirely new calculated tables and then treat them like any other table - including creating relationships between them and other tables in your data model.

## DAX table functions
DAX has a rich set of **table** functions, including the following:

* FILTER
* ALL
* VALUES
* DISTINCT
* RELATEDTABLE

These functions return a full table rather than a value. Typically you'll use the results of a **table** function in further analysis as part of a greater expression, rather than using that returned table a final value. It's important to note that When you use a table function, the results inherit the relationships of their columns.

You can mix table functions in your expression, as long as each function uses a table and returns a table. For example, consider the following DAX expression:

    FILTER (ALL (Table), Condition)

That expression would put a filter over the entirety of *Table*, ignoring any current filter content.

The DISTINCT function returns the distinct values of a column that are also visible in the current context. So to use the above DAX expression example, using **ALL** in that expression ignores filters, while replacing **ALL** with **DISTINCT** would observe them.

## Counting values with DAX
One common question that Power BI report builders want to answer is the following:

* How many values do I have for this column?

That may be a simple question to answer with a table displayed in front of you, but DAX approaches in a different way in a different way, particularly when there's a relationship between tables.

For example, Power BI and DAX includes values that are not properly cross-indexed. If the incoming relationship is broken, DAX adds a new row to the related table that has blanks in every field, and links that new row to the unindexed row to guarantee referential integrity. If your function includes blank rows, such as is often the case when using **ALL**, those blank rows will then be included in the number of values returned for that column.

You can also create entire calculated tables using DAX functions. Calculated tables created using DAX require a **NAME** and a **TABLE** function. Calculated tables can be used like any other table, including establishing relationships.

> Video content courtesy of [Alberto Ferrari, SQLBI](http://www.sqlbi.com/learning-dax)
> 
> 

