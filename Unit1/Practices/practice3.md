## Practice 3
Data
``` r
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)
```

Solution
Calculate Profit As The Differences Between Revenue And Expenses
``` r
profit <- revenue - expenses
profit
```
Calculate Tax As 30% Of Profit And Round To 2 Decimal Points
``` r
tax <- round(0.30 * profit, 2)
tax
```

Calculate Profit Remaining After Tax Is Deducted
``` r
profit.after.tax <- profit - tax
profit.after.tax
```

Calculate The Profit Margin As Profit After Tax Over Revenue
Round To 2 Decimal Points, Then Multiply By 100 To Get %
``` r
profit.margin <- round( profit.after.tax/revenue , 2) * 100
profit.margin
```

Calculate The Mean Profit After Tax For The 12 Months
``` r
mean_pat <- mean(profit.after.tax)
mean_pat
``` 
Find The Months With Above-Mean Profit After Tax
``` r
good.months <- profit.after.tax [profit.after.tax> mean_pat]
good.months
``` 
Bad Months Are The Opposite Of Good Months !
``` r
bad.months <- profit.after.tax[profit.after.tax!=good.months]
bad.months
``` 
The Best Month Is Where Profit After Tax Was Equal To The Maximum
``` r
best.month <-profit.after.tax[ profit.after.tax == max(profit.after.tax)]
best.month
``` 
The Worst Month Is Where Profit After Tax Was Equal To The Minimum
``` r
worst.month <-profit.after.tax[ profit.after.tax == min(profit.after.tax)]
worst.month
``` 

Convert All Calculations To Units Of One Thousand Dollars
``` r
revenue.1000 <- round(revenue / 1000, 0)
expenses.1000 <- round(expenses/1000,0)
profit.1000 <- round(profit/1000, 0)
profit.after.tax.1000 <- round(profit.after.tax/1000 , 0)
``` 
Print Results
``` r
revenue.1000
expenses.1000
profit.1000
profit.after.tax.1000
profit.margin
good.months
bad.months
best.month
worst.month
``` 
BONUS:
Preview Of What's Coming In The Next Section
``` r
M <- rbind(  revenue.1000,  expenses.1000,  profit.1000,  profit.after.tax.1000,  profit.margin,good.months,  bad.months,  best.month,  worst.month)
``` 
Print The Matrix
``` r
M
``` 
  