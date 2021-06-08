# Decision Tree Classification

Importing the dataset
```scala
dataset = read.csv('Social_Network_Ads.csv')
dataset = dataset[3:5]
```
Encoding the target feature as factor
```scala
dataset$Purchased = factor(dataset$Purchased, levels = c(0, 1))
```
Splitting the dataset into the Training set and Test set
install.packages('caTools')
```scala
library(caTools)
set.seed(123)
split = sample.split(dataset$Purchased, SplitRatio = 0.75)
training_set = subset(dataset, split == TRUE)
test_set = subset(dataset, split == FALSE)
```
Feature Scaling
```scala
training_set[-3] = scale(training_set[-3])
test_set[-3] = scale(test_set[-3])
```

Fitting Decision Tree Classification to the Training set
install.packages('rpart')
```scala
library(rpart)
classifier = rpart(formula = Purchased ~ .,
                   data = training_set)
```
Predicting the Test set results
```scala
y_pred = predict(classifier, newdata = test_set[-3], type = 'class')
y_pred
````
Making the Confusion Matrix
```scala
cm = table(test_set[, 3], y_pred)
cm
```
Visualising the Training set results
```scala
library(ElemStatLearn)
set = training_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3],
     main = 'Decision Tree Classification (Training set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
![TrainingDt](TrainingDT.png)

Visualising the Test set results
```scala
library(ElemStatLearn)
set = test_set
X1 = seq(min(set[, 1]) - 1, max(set[, 1]) + 1, by = 0.01)
X2 = seq(min(set[, 2]) - 1, max(set[, 2]) + 1, by = 0.01)
grid_set = expand.grid(X1, X2)
colnames(grid_set) = c('Age', 'EstimatedSalary')
y_grid = predict(classifier, newdata = grid_set, type = 'class')
plot(set[, -3], main = 'Decision Tree Classification (Test set)',
     xlab = 'Age', ylab = 'Estimated Salary',
     xlim = range(X1), ylim = range(X2))
contour(X1, X2, matrix(as.numeric(y_grid), length(X1), length(X2)), add = TRUE)
points(grid_set, pch = '.', col = ifelse(y_grid == 1, 'springgreen3', 'tomato'))
points(set, pch = 21, bg = ifelse(set[, 3] == 1, 'green4', 'red3'))
```
![TestDT](TestDT.png)
Plotting the tree
```scala
plot(classifier)
text(classifier, cex=0.6)
```
![Plot](PlotClassifier.png)