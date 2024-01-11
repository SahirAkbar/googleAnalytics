-- check config in bronze config table
select
  *
from
  administrative.bronze.configuration_tables
order by
  table_id desc;
-- add config entry into bronze
INSERT INTO
  administrative.bronze.configuration_tables (
    database_name,
    schema_name,
    table_name,
    path_external_table,
    format,
    active,
    created_date
  )
VALUES
  (
    'bronze',
    'sap',
    'summary_license_report',
    's3://rakez-bronze-eu-ido-842624552760-prod/rakez_sap_flow_summary_license_report',
    'parquet',
    False,
    current_date()
  );
-- check config in silver config table
select
  *
from
  administrative.silver.configuration_tables -- where schema_name ='salesforce'
order by
  table_id desc;
  
  
update  administrative.silver.configuration_tables set primary_key = 'CompanyCode, KeyDate, Description, RecordType'
where  table_name = 'license_dashboard_usage';

select
  *
from
  administrative.silver.metadata_tables;
select
  *
from
  administrative.silver.metadata_relationships;
-- add config entry into silver
INSERT INTO
  administrative.silver.configuration_tables (
    database_name,
    schema_name,
    table_name,
    partition_table,
    primary_key,
    source_table,
    active,
    created_date,
    overwrite_data
  )
VALUES
  (
    'silver',
    'sap',
    'summary_license_report',
    '',
    'CompanyCode,KeyDate,LicenseDescription,RecordType',
    'bronze.sap.summary_license_report',
    False,
   current_date(),
    False
  );
-- check config in gold config table
select
  *
from
  administrative.gold.configuration_tables
order by
  table_id desc;
select
  *
from
  administrative.gold.dependencies_tables;
select
  *
from
  administrative.gold.metadata_configuration_facts;
-- add config entry into gold
INSERT INTO
  administrative.gold.configuration_tables (
    database_name,
    schema_name,
    table_name,
    partition_table,
    primary_key,
    date_calculation_column,
    type_table,
    type_dimension,
    active,
    created_date
  )
VALUES(
    'gold',
    'pmbi_processed',
    'summary_license_report_fact',
    '',
    'CompanyCode,KeyDate,LicenseDescription,RecordType',
    'KeyDate',
    'fact',
    '',
    false,
    current_date()
  );


update  administrative.gold.configuration_tables set primary_key = 'CompanyCode, KeyDate, Description, RecordType'
where  table_name = 'license_dashboard_usage_fact';

INSERT INTO
  administrative.gold.dependencies_tables (
    table_name,
    table_check_dependencies,
    last_successfully_run,
    created_date
  )
VALUES
  (
    'summary_license_report_fact',
    'silver.sap.summary_license_report',
    current_date(),
    current_date()
  );


INSERT INTO
  administrative.gold.metadata_configuration_facts (
    database_name_fact,
    schema_database_fact,
    table_name_fact,
    sql_query_fact,
    created_date
  )
VALUES
  (
    'gold',
    'pmbi_processed',
    'summary_license_report_fact',
    'Select CompanyCode,KeyDate,LicenseDescription,RecordType,DueAmount,RentalUnitCount,RenewedValue,RenewedValuePer,RenewedCount,RenewedCountPer,BudgetedValue,BudgetedValuePer,BudgetedCount,BudgetedCountPer,TargetShortfall,TargetShortfallPer,TargetShortfallCount,TargetShortfallCountPer,ValidButNotRenewedValue,ExpiredCases,CancelledCases,UnderTofOrTerminated,ValidButNotRenewedCount,ExpiredCasesCount,CancelledCasesCount,UnderTofOrTerminatedCount,Date_Loaded from  silver.sap.summary_license_report',
    current_date()
  );

update administrative.gold.metadata_configuration_facts
set sql_query_fact = 'Select CompanyCode,KeyDate,Description,RecordType,Jan,Feb,Mar,Apr,May,Jun,Jul,Aug,Sep,Oct,Nov,Dec,TotYtd,Total,Ind,Date_Loaded from  silver.sap.license_dashboard_usage'
where
table_name_fact = 'license_dashboard_usage_fact';



