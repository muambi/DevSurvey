SELECT *
FROM dbo.survey_results_public

--delete incomplete rows
DELETE FROM dbo.survey_results_public
WHERE ResponseId IS NULL
OR MainBranch IS NULL
OR Employment IS NULL
OR RemoteWork IS NULL
OR CodingActivities IS NULL
OR EdLevel IS NULL
OR LearnCode IS NULL
OR LearnCodeCoursesCert IS NULL
OR LearnCodeOnline IS NULL
OR YearsCode IS NULL
OR YearsCodePro IS NULL
OR DevType IS NULL
OR OrgSize IS NULL
OR Country IS NULL
OR LanguageHaveWorkedWith IS NULL
OR LanguageWantToWorkWith IS NULL
OR DatabaseHaveWorkedWith IS NULL
OR DatabaseWantToWorkWith IS NULL
OR PlatformHaveWorkedWith IS NULL
OR PlatformWantToWorkWith IS NULL
OR WebframeHaveWorkedWith IS NULL
OR WebframeWantToWorkWith IS NULL
OR MiscTechHaveWorkedWith IS NULL
OR MiscTechWantToWorkWith IS NULL
OR ToolsTechHaveWorkedWith IS NULL
OR ToolsTechWantToWorkWith IS NULL
OR NEWCollabToolsHaveWorkedWith IS NULL
OR NEWCollabToolsWantToWorkWith IS NULL
OR OpSysPersonal_use IS NULL
OR OpSysProfessional_use IS NULL
OR VersionControlSystem IS NULL
OR Blockchain IS NULL
OR SOAccount IS NULL
OR Age IS NULL
OR Gender IS NULL
OR Sexuality IS NULL
OR Ethnicity IS NULL
OR MentalHealth IS NULL
OR WorkExp IS NULL
OR ProfessionalTech IS NULL

--Data consistency
UPDATE dbo.survey_results_public
SET TrueFalse_1='No', TrueFalse_2='No', TrueFalse_3='No'
WHERE TrueFalse_1='NA'
OR TrueFalse_2='NA'
OR TrueFalse_3='NA'

--Change datatype in column DevType
ALTER TABLE dbo.survey_results_public
ALTER COLUMN DevType text;

--exploring data
SELECT *
FROM dbo.survey_results_public
WHERE Country='Kenya'

SELECT Employment
FROM dbo.survey_results_public

ALTER TABLE dbo.survey_results_public
ALTER COLUMN Employment text;


