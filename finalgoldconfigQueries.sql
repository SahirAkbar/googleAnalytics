INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_accuity_alert_mi', 
    '', 'type, alert_type', '', 'fact', 
    '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_exit_register', 
    '', 'date, company_name, new_or_existing, exit_thmes, exit_reason, date_of_onboarding', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_inspections', 
    '', 'name, date_of_inspection, source, client, review_type, status, notes', 
    'date_of_inspection', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_key_initiatives_projects', 
    '', 'name, background, status', 
    '', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_pep_register', 
    '', 'date_pep_identified, pep_name, company_name, role, country, pep_category', 
    'date_pep_identified', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_renewal_backlogs', 
    '', 'month', 'month', 'fact', '', 'false', 
    'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_sar_register', 
    '', 'date, company_name, type_of_sar, description_of_the_case_and_the_source_of_suspicion, status, fiu_confirmation', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_time_stamping', 
    '', 'month, compliahce_time, other_dept_time, total_time,month1, september_analysis', 
    'month', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_ubo_mi', 
    '', 'status, date, status, month, september_analysis', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'compl_warnings_fines', 
    '', 'name, rationals, warning_letter_issued, fine_issued, date_fine_issued', 
    'date_fine_issued', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_client_usage', 
    '', 'month, date, company_name, customer_name, facility_type, emirate, email_address, time_in, time_out, purpose_of_visit, comment, active_non_active_license', 
    'date', 'fact', '', 'false', 'current_date'
  );

INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_lockers_usage', 
    '', 'company_name, nam', '', 'fact', 
    '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_mail_handling_serv_2021_edit', 
    '', 'date, company_name, expiry_date, email_address, package_price, status, comments, package_entiltlment', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_mail_handling_serv_valid', 
    '', 'month, date, company_name, expiry_date, email_address, package_price, status, comments', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_printing', 
    '', 'month, date, company_name, customer_name', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_memberships', 
    '', 'issue_date, client_facility_booking, company_name, customer_name, remarks, expiry_date, email_address, previous_package, comments', 
    'issue_date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_meeting_rooms_usage_2022', 
    '', 'month, date, company_name, customer_name, meeting_room, time_in, time_out, no_people', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_meeting_rooms_usage_2023', 
    '', 'month, date, company_name, customer_name, meeting_room, time_in, time_out, no_people', 
    'date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_pvt_office_booking', 
    '', 'private_office, company_name, client_name, expiry_date, comment', 
    'expiry_date', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_returned_cards', 
    '', 'company, name', '', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_sheet2', 
    '', 'purpose_of_visit, comment, facility_type', 
    '', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_staff_usage', 
    '', 'month, date staff_name, purpose_of_visit, time_in, time_out, department, comments', 
    'date staff', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_waiting_list', 
    '', 'company_name, name, hot_meduim_cold, office, email', 
    '', 'fact', '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_activities', 
    '', 'month, zone, type', '', 'fact', 
    'month', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_assets', 
    '', 'month, type', 'month', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_gate_entry_data', 
    '', 'month, zone, type', 'month', 'fact', 
    '', 'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_gate_entry_rev', 
    '', 'month', 'month', 'fact', '', 'false', 
    'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_hk_rev', 
    '', 'month, type', 'month', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_housekeeping', 
    '', 'month, type', 'month', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_other_rev', 
    '', 'month', 'month', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_toll_gate', 
    '', 'month, zone,type', 'month', 'fact', '', 'false', 
    'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_weighbridge', 
    '', 'month, zone', 'month', 'fact', '', 
    'false', 'current_date'
  );
INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'po_weighbridge_rev', 
    '', 'month, zone', 'month', 'fact', 
    '', 'false', 'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_access_card', 
    '', 'month, issue_date, master_key, client_access_card, company_name, customer_name, remarks, deposit_payment, deposite_payment, expiry_date', 
    'issue_date', 'fact', 
    '', 'false', 'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_free_breakfast', 
    '', 'date, breakfast_&_eurocoffe_orders, description', 'date', 'fact', 
    '', 'false', 'current_date'
  );
  INSERT INTO administrative.gold.configuration_tables (
  database_name, schema_name, table_name, 
  partition_table, primary_key, date_calculation_column, 
  type_table, type_dimension, active, 
  created_date
) 
VALUES 
  (
    'gold', 'pmbi_processed', 'cw_giveaways_list', 
    '', 'month, company_name, customer_name', 'month', 'fact', 
    '', 'false', 'current_date'
  );
  

