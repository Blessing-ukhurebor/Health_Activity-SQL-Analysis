---PROJECT: HEALTH & LIFESTYLE SQL ANALYSIS
--QUESTION 1. DATA EXPLORATION: Show the Total records and Column structure

SELECT COUNT(*) AS Total_Partcipants
FROM [health_activity_data];

---QUESTION 2-  Average steps, sleep, Calories and BMI
SELECT 
AVG(Daily_steps) AS Avg_Steps,
ROUND (AVG(Hours_of_sleep),2) AS Avg_sleep,
ROUND (AVG(Calories_intake),2) AS Avg_Calories,
ROUND (AVG(BMI),2) AS Avg_BMI
FROM [health_activity_data];

SELECT
Gender,
COUNT (*) AS Total_people,
AVG(daily_steps) AS Avg_Steps,
AVG(Calories_Intake) AS Avg_Calories,
ROUND (AVG(BMI),2) AS AVG_BMI
FROM [health_activity_data]
GROUP BY GENDER;
--	RESULTS: AVG Steps recorded for Males were recorded as 10960| Avg calories = 2315 AND Average BMI = 26.58
---AVG Steps recorded for Female = 477| AVG calories = 2339 AND Avg BMI was 26.89
--When i compared males and females in the dataset, their numbers were actually very close.
--Men walked a bit more on average(10,960 vs 10,450 steps for women), though both genders easily passed the 10,000 step mark.
--Calories Intake and BMI: Both genders ate almost the same amount of calories (2,315 vs 2,339) and had nearly the same average BMI (26.58 vs 26.89 for females.

--QUESTION 3--SLEEP VS BMI: Does getting 7+ hour of sleep relate to a lower BMI?
SELECT
Sleep_category,
COUNT (*) AS Total_people,
ROUND(AVG(BMI),2) AS AVG_BMI,
AVG(HEART_RATE) AS AVG_HEART_RATE
FROM (
SELECT
CASE
WHEN Hours_of_sleep >= 7 THEN '7+ Hours (Recommended)'
ELSE 'Under 7 Hours (Low Sleep)'
END AS Sleep_Category,
BMI,
HEART_RATE  
FROM [health_activity_data]
) AS Sub
GROUP BY Sleep_Category;

--- RESULT : Just over hald the group (505 vs 495) sleeps under 7 hours, y(et both groups have almost the exact same average BMI (26.75 vs 26.71) and Average heart rates (83 vs 86)
--QUESTION #4 How many people hit 10,000+ daily steps?
SELECT 
COUNT (*) AS Active_Participants,
ROUND (AVG (BMI), 2) AS Avg_BMI,
ROUND (AVG(Hours_of_sleep), 2) AS Average_Sleep
FROM [health_activity_data]
WHERE Daily_steps >= 10000;
---RESULTS: 548 out  of 1,000 Participants hit 10,000 daily steps with an average BMI of 26.69 ANFD an average sleep of 6.95 hours