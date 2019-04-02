Welcome to the Power BI **Guided Learning** section designed to introduce you to **DAX**.

**DAX** stands for **Data Analysis Expressions**, and it is the formula language used throughout Power BI (it is also used by Power BI behind the scenes). DAX is also found in other offerings from Microsoft, such as Power Pivot and SSAS Tabular, but this collection of Guided Learning topics focuses on how DAX is used - and can be used by you - in Power BI.

## DAX and this Guided Learning video series
The goal of this **Guided Learning** section is to teach you DAX basics and fundamentals - how to think about DAX, how it works, and the most useful features as explained (and learned with lots of experience) by a renowned DAX expert, [Alberto Ferrari](http://www.sqlbi.com/learning-dax).

![Portrait of Alberto Ferrari](media/7-1-intro-to-dax/intro_dax_6_alberto_ferrari.png)

The videos in this **Guided Learning** section on **DAX** teaches you DAX basics from the perspective of how the DAX formula language works. This is useful when creating DAX formulas from scratch, but it's also very useful for understanding how Power BI creates those DAX formulas as you create queries in the **Query Editor**.

## In this video - introduction to DAX
DAX concepts are simple and straightforward, but DAX is powerful. DAX uses some unique programming concepts and patterns which can make it difficult to fully use and understand. Traditional ways of learning languages may not be the best approach to DAX, so the goal of this video is to teach you concepts and theory that will help later on in your Power BI work.

DAX is a *functional language*, which means the full executed code is contained inside a function.

In DAX, functions can contain other, nested functions, conditional statements, and value references. Execution in DAX starts from the innermost function or parameter, and works outward. In Power BI, DAX formulas are written in a single line, so formatting your functions correctly is important for readability.

DAX is designed to work with tables, so it has just two primary data types: **Numeric** and **Other**. **Numeric** can include *integers*, *decimals*, and *currency*. **Other** can include *strings* and *binary objects*. This means that if you build your DAX function to work on one type of number, you can be assured that it will work on any other Numeric data.

DAX uses operator overloading, which means that you can mix data types in your calculations and the results will change based on the type of data used in the inputs. Conversion happens automatically. This means you don't have to know the data types of the columns you're working with in Power BI, but it also means that sometimes conversion can happen in unexpected ways. It's good practice to understand the data you are using to ensure that your operators are behaving as anticipated.

There is one data type in particular that you'll likely be working with a lot in Power BI: **DateTime**. **DateTime** is stored as a floating point value with both integer and decimal parts. DateTime can be used accurately for calculations of any time period after March 1, 1900.

> Video content courtesy of [Alberto Ferrari, SQLBI](http://www.sqlbi.com/learning-dax/?utm_source=powerbi&utm_medium=marketing&utm_campaign=after-summit)
> 
> 

