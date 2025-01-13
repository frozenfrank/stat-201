import numpy as np ## allows for working with arrays
import pandas as pd ## allows for data manipulation with arrays
from scipy import stats ## allows for statistical functions

# Creating temp array
temp = np.array([87, 80, 91, 60, 91, 77, 87, 77, 80, 78, 89])

# 1. Length of the array
length_temp = len(temp)
print("Length of temp:", length_temp)

# 2. Mean
mean_temp = np.mean(temp)
print("Mean of temp:", mean_temp)

# 3. Variance
var_temp = np.var(temp, ddof=1)
print("Variance of temp:", var_temp)

# 4. Standard Deviation
sd_temp = np.std(temp, ddof=1)
print("Standard deviation of temp:", sd_temp)

# 5. Converting temperature to Celsius
temp_c = 0.556 * temp - 17.778
print("Converted temperature (Celsius):", temp_c)

# 6. Sorting the temp array
temp_sort = np.sort(temp)
print("Sorted temp array:", temp_sort)

# 7. Checking if temp_sort equals a
a = np.array([60, 77, 77, 78, 80, 80, 87, 87, 89, 91, 91])
print("Does temp_sort equal a?", np.array_equal(temp_sort, a))

# 8. Median of array 'a'
median_a = np.median(a)
print("Median of a:", median_a)

# 9. Quantiles of 'a'
quantiles_a = np.percentile(a, [0, 25, 50, 75, 100])
print("Quantiles of a:", quantiles_a)

# 10. IQR (Interquartile Range) of 'a'
iqr_a = stats.iqr(a, rng=(25, 75))
print("IQR of a:", iqr_a)

# 11. Median of array 'b'
b = np.array([36, 38, 39, 39, 40, 42, 45, 45, 48, 48, 52, 62])
median_b = np.median(b)
print("Median of b:", median_b)

# Use the following two lines of code to upload a .csv file into Colab if you
# want to access it internally

#from google.colab import files
#uploaded = files.upload()

#file_path = "ClassMajor.csv"
# The other way to access this file is to save it in Box and then access it
# through a hyperlink

# 12. Reading the CSV file and viewing the data (assuming the file exists)
file_path = "https://byu.box.com/shared/static/xcmn13chr0i6fbeuql9xbks1bt2hg9gz.csv"
ClassMajor = pd.read_csv(file_path)
print("ClassMajor DataFrame preview:")
print(ClassMajor.head())

# 13. Table of ClassMajor$Class
class_counts = ClassMajor['Class'].value_counts()
print("Class counts in ClassMajor:")
print(class_counts)

# 14. Table of ClassMajor$Major
major_counts = ClassMajor['Major'].value_counts()
print("Major counts in ClassMajor:")
print(major_counts)

# Homework Help - These are the data you will use for the homework (this way you don't have to type in all of these numbers)
A = np.array([18.0, 18.0, 18.0, 20.0, 22.0, 22.0, 22.5, 23.0, 24.0, 24.0, 25.0, 25.0, 25.0, 25.0, 26.0, 26.4])
B = np.array([18.8, 18.9, 18.9, 19.6, 20.1, 20.4, 20.4, 20.4, 20.4, 20.5, 21.2, 22.0, 22.0, 22.0, 22.0, 23.6])
C = np.array([20.2, 20.5, 20.5, 20.7, 20.8, 20.9, 21.0, 21.0, 21.0, 21.0, 21.0, 21.5, 21.5, 21.5, 21.5, 21.6])
D = np.array([20.0, 20.0, 20.0, 20.0, 20.2, 20.5, 20.5, 20.7, 20.7, 20.7, 21.0, 21.1, 21.5, 21.6, 22.1, 22.3])
