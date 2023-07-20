SELECT *
FROM dbo.survey_results_public

SELECT LanguageHaveWorkedWith,
CompTotal
FROM dbo.survey_results_public
WHERE LanguageHaveWorkedWith LIKE '%Python%' 
AND LanguageHaveWorkedWith LIKE '%R%'
AND NOT CompTotal LIKE 'NA'

SELECT Country, CompTotal
FROM dbo.survey_results_public
WHERE NOT CompTotal LIKE 'NA'

SELECT YearsCode, CompTotal
FROM dbo.survey_results_public
WHERE NOT CompTotal LIKE 'NA'

SELECT EdLevel, CompTotal
FROM dbo.survey_results_public
WHERE NOT CompTotal LIKE 'NA'

SELECT Age, LanguageHaveWorkedWith
FROM dbo.survey_results_public
WHERE NOT Age LIKE 'NA'
AND NOT Age LIKE 'prefer not to say'

SELECT Age, LanguageHaveWorkedWith
FROM dbo.survey_results_public
WHERE NOT Age LIKE 'NA'
AND NOT Age LIKE 'prefer not to say'
AND Age LIKE '18-24 years old'


