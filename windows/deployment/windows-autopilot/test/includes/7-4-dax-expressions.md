Using **variables** are an extremely powerful part of a DAX expression.

![](media/7-4-dax-expressions/dax-variables_1.png)

You can define a variable anywhere in a DAX expression, using the following syntax:

    VARNAME = RETURNEDVALUE

Variables can be any data type, including entire tables.

Keep in mind that each time you reference a variable in your DAX expression, Power BI must recalculate its value according to your definition. For this reason, it's good practice to avoid repeating variables in your function.

> Video content courtesy of [Alberto Ferrari, SQLBI](http://www.sqlbi.com/learning-dax)
> 
> 

