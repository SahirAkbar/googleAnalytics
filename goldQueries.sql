INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_renewal_backlogs', 
    '', 
    'month', 
    'month',
    'fact',
    '', 
    'false', 
    'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_accuity_alert_mi', 
    '', 
    'type, alert_type', 
    '',
    'fact',
    '', 
    'false', 
    'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_inspections', 
    '', 
    'name, date_of_inspection,  source, client, review_type, status, notes', 
    'date_of_inspection',
    'fact',
    '', 
    'false', 
    'current_date'
  );

  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_key_initiatives_projects', 
    '', 
    'name, background, status', 
    '',
    'fact',
    '', 
    'false', 
    'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_pep_register', 
    '', 
    'date_pep_identified, pep_name, company_name, role, country, pep_category', 
    'date_pep_identified',
    'fact',
    '', 
    'false', 
    'current_date'
  );

   INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_renewal_backlogs', 
    '', 
    'month', 
    'month',
    'fact',
    '', 
    'false', 
    'current_date'
  );

  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_sar_register', 
    '', 
    'date, company_name, type_of_sar, description_of_the_case_and_the_source_of_suspicion, status, fiu_confirmation', 
    'date',
    'fact',
    '', 
    'false', 
    'current_date'
  );


  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_time_stamping', 
    '', 
    'month, compliahce_time, other_dept_time, total_time,month1, september_analysis', 
    'month',
    'fact',
    '', 
    'false', 
    'current_date'
  );

  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_ubi_mi', 
    '', 
    'status, date, status, month, september_analysis', 
    'date',
    'fact',
    '', 
    'false', 
    'current_date'
  );

  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimention, active, 
  created_date
) 
VALUES 
  (
    'gold', 
    'pmbi_processed', 
    'compl_warnings_fines', 
    '', 
    'name, rationals, warning_letter_issued, fine_issued, date_fine_issued', 
    ',
    'fact',
    '', 
    'false', 
    'current_date'
  );
  