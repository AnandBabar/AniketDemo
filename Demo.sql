/* Study: stk_001_ds_501
   Table: MH
*/

--SET ROLE "prometrika-stoke-stage-app-clinical-master-superuser";

--DROP TABLE IF EXISTS "medical_review"."stk_001_ds_501_mh";

--CREATE TABLE "medical_review"."stk_001_ds_501_mh" AS

SELECT
	"project"::text		            AS "studyid",
	"SiteNumber"::text	            AS "siteid",
	"Site"::text		            AS "sitename",
	"Subject"::text		            AS "usubjid",
	"FolderName"::text	            AS "FolderName",
	"RecordPosition"::numeric	    AS "RecordPosition",
	"MHTERM"::text		            AS "MHTERM",
	"MHSTDAT_RAW"::text	            AS "MHSTDAT_RAW",
	"MHONGO"::text		            AS "MHONGO",
	"MHENDAT_RAW"::text	            AS "MHENDAT_RAW",	
	"MHTERM_LLT"::text	            AS "MHTERM_LLT",
	"MHTERM_LLT_CODE"::text 	    AS "MHTERM_LLT_CODE",	
	"MHTERM_PT"::text			    AS "MHTERM_PT",
	"MHTERM_PT_CODE"::text		    AS "MHTERM_PT_CODE",
	"MHTERM_SOC"::text			    AS "MHTERM_SOC",
	"MHTERM_SOC_CODE"::text		    AS "MHTERM_SOC_CODE",
	"MHTERM_HLGT"::text			    AS "MHTERM_HLGT",
	"MHTERM_HLGT_CODE"::text	    AS "MHTERM_HLGT_CODE",
	"MHTERM_HLT"::text			    AS "MHTERM_HLT",	
	"MHTERM_HLT_CODE"::text		    AS "MHTERM_HLT_CODE",
	"MHTERM_CoderDictName"::text	AS "MHTERM_CoderDictName",	
	"MHTERM_CoderDictVersion"::text	AS "MHTERM_CoderDictVersion",
	concat("project",'~', "SiteNumber",'~', "Subject",'~',"RecordPosition") as objectuniquekey
FROM "stk_001_ds_501"."MH";

--ALTER SCHEMA "medical_review" OWNER TO "prometrika-stoke-stage-app";
   
--ALTER TABLE "medical_review"."stk_001_ds_501_mh" OWNER TO "prometrika-stoke-stage-app";
