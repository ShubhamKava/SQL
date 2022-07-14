#Ration of Male and Female in our Datset
SELECT 
    AVG(Gender = 'M') ration
FROM
    Bank;
SELECT 
    AVG(Gender = 'F') ration
FROM
    Bank;
#Ration of Education Level
SELECT 
    sum(Education_Level = 'Uneducated') 
FROM
    Bank;        
SELECT 
    sum(Education_Level = 'High School' ) 
FROM
    Bank;
SELECT 
    sum(Education_Level = 'College') 
FROM
    Bank;
SELECT 
    sum(Education_Level = 'Graduate') 
FROM
    Bank;
SELECT 
    sum(Education_Level = 'Post-Graduate') 
FROM
    Bank;    
SELECT 
    sum(Education_Level = 'Doctorate') 
FROM
    Bank;    
SELECT 
    sum(Education_Level = 'Unknown') 
FROM
    Bank;    

# 1
SELECT 
    *
FROM
    Bank
WHERE
    Income_Category >'$80K - $120K' And
    Credit_Limit > 20000 and
    Customer_Age <30 and
    Avg_Utilization_Ratio < 0.20
    
#2
SELECT 
    *
FROM
    Bank
WHERE
    Customer_Age >= 30
        AND Customer_Age <= 35
        AND Credit_Limit > 18000
		AND Months_Inactive_12_mon > 2
        AND Income_Category >= '$80K - $120K'
        AND Avg_Utilization_Ratio >=0.04


#Case 3
SELECT 
    *
FROM
    Bank
WHERE
    (Income_Category = '$120K +'
        AND Avg_Utilization_Ratio <= 0.0)
        OR (Months_on_book >= 48
        AND Avg_Utilization_Ratio <= 0.0)

#Case 4
SELECT 
    SUM(Avg_Utilization_Ratio), Marital_Status
FROM
    Bank
GROUP BY Marital_Status

# 5
SELECT 
    AVG(Attrition_Flag = 'Existing Customer') ration
FROM
    Bank;

SELECT 
    AVG(Attrition_Flag = 'Attrited Customer') ration
FROM
    Bank;

# 6
SELECT 
    SUM(Avg_Utilization_Ratio), Education_Level
FROM
    Bank
GROUP BY Education_Level

# 7
SELECT 
    SUM(Total_Trans_Amt), Customer_Age
FROM
    Bank
GROUP BY Customer_Age

# 8
select sum(Avg_Utilization_Ratio), Income_Category
from Bank
group by Income_Category