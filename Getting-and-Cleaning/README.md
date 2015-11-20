
How the script works

1. Read all training and test datasets and labels

2. Use Labels in features.txt to name variables in merged training and test data

3. Data Merge:
    Append Activity Data and Signal Data for both Test and Training Data 
    Append Subject variable from training and test data
    Merge Signal Data, Activity Data and Subject Data 
    
4. Reorganize Variable Names with strsplit, generate valid variable names and and assign new variable names to merged data     

5. Extract variables with measurements of mean and standard deviation

6. Generate factor variable for Aktivities and assign the corresponding labels 

7. Use data.table package to aggregate the data by subject and activity



