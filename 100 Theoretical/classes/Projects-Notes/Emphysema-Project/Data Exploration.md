

- GOLD 1: Mild
- GOLD 2: Moderate
- GOLD 3: Severe
- GOLD 4: Very severe

These are the stages of emphysema from mild to severe 


## Features explanation


'ID' -  Unique ID

'AGE' -  Age of the user

'PackHistory' -  person’s pack years smoking, where pack years is defined as twenty cigarettes smoked every day for

'COPDSEVERITY' -  MODERATE43%
				SEVERE27%

'MWT1'  -  Distance that patient walks in 6 minutes in meters (attempt 1)

'MWT2'  -  Distance that patient walks in 6 minutes in meters (attempt 2)

'MWT1Best' -  Distance that patient walks in 6 minutes in meters (best attempt)

'FEV1' -  Amount of air you can force from your lungs in one second in litres. Measure of lung function . FEV1 (==Forced Expiratory Volume in 1 second==) - FEV1 measures the amount of air a person can forcefully exhale from their lungs in one second during a lung function test called spirometry

'FVC'  -  total volume of air that a patient can forcibly exhale in one breath

'SGRQ' -  Quality of life index. Lower the value, higher the quality of life

'AGEquartiles'   -  Quartiles of Age

'copd' -  Stage of COPD

'gender' - sex of the person. females - 0 males - 1

CAT (COPD Assessment Test) -  This is a questionnaire-based score that measures the impact of COPD on a patient’s health status. The score ranges from **0 to 40**, with higher scores indicating worse COPD symptoms and a greater impact on daily life.


**HAD (Hospital Anxiety and Depression Scale - HADS):** This is a screening tool used to assess anxiety and depression in patients with chronic diseases like COPD. It consists of two subscales:

- **HAD-A:** Measures anxiety.
    
- **HAD-D:** Measures depression

Numerical data interpretation 

- **0-7:** Normal (no anxiety/depression)
    
- **8-10:** Borderline case
    
- **11-21:** Clinically significant anxiety or depression



**Created New feature based on the available features** 


**FEV1 / FVC Ratio**

- **What it is:** The proportion of air a person can forcefully exhale in the first second (FEV1) relative to the total volume they can exhale in one full breath (FVC).
- **It tells us how fast you can blow air out of your lungs**
- 
-**How it works:**  
	When you take a deep breath and blow out:

- FEV1 is the amount of air you push out in the **first second**.
    
- FVC is the **total** amount of air you can blow out.  
	The ratio shows what **percentage** of your breath comes out in the first second.  
    
- **Why it matters:** In healthy lungs, you typically expel ~75–80% of your vital capacity in the first second. A **lower ratio** indicates airway obstruction (as in COPD), making it a primary diagnostic measure.
    

---

**Lung Efficiency Index**

- **What it is:** A composite score that combines the FEV1 / FVC ratio with a performance metric (e.g. MWT1Best, the best measured breathing capacity).
    
	-**How it works:**  
	It combines how **fast** you blow air (FEV1/FVC ratio) with how **much** air you can move (MWT1Best)

- **Why it matters:** By blending airflow **efficiency** (the ratio) with overall **capacity** (MWT1Best), this index captures both how quickly and how effectively the lungs perform under maximal effort—providing a richer picture of respiratory health than either measure alone.




he graph is showing “with poor lung mechanics, how far can they walk?” and it clearly demonstrates that the sicker the patient, the shorter the walk, even at the same low lung efficiency.