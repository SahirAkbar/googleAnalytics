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