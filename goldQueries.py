import datetime

# Define the common configuration
common_config = {
    "database_name": "gold",
    "schema_name": "pmbi_processed",
    "table_name":"",
    "partition_table": "",
    "primary_key": "",
    "date_calculation_column":"KeyDate",
    "type_table":"fact",
    "type_dimention":"",
    #"source_table":"",
    "active": False,
    "created_date": "current_date()"
   # "overwrite_data": False
}

# List of tables to configure
table_names = [
    "compl_accuity_alert_mi",
    "compl_exit_register",
    "compl_inspections",
    "compl_key_initiatives_projects",
    "compl_moe_pwc_ratings",
    "compl_pep_register",
    "compl_renewal_backlogs",
    "compl_sar_register",
    "compl_time_stamping",
    "compl_ubo_mi",
    "compl_warnings_fines",
    "cw_access_card",
    "cw_client_usage",
    "cw_dropdown",
    "cw_free_breakfast",
    "cw_giveaways_list",
    "cw_lockers_usage",
    "cw_mail_handling_serv_2021_edit",
    "cw_mail_handling_serv_valid",
    "cw_meeting_rooms_usage_2022",
    "cw_meeting_rooms_usage_2023",
    "cw_memberships",
    "cw_printing",
    "cw_pvt_office_booking",
    "cw_returned_cards",
    "cw_sheet2",
    "cw_staff_usage",
    "cw_waiting_list",
    "po_activities",
    "po_assets",
    "po_gate_entry_data",
    "po_gate_entry_rev",
    "po_hk_rev",
    "po_housekeeping",
    "po_other_rev",
    "po_toll_gate",
    "po_weighbridge",
    "po_weighbridge_rev"
    # ... (rest of the table names)
]

# Loop through tables and generate and execute SQL queries
for table_name in table_names:
    config_values = list(common_config.values())
    config_values[2] = table_name  # Replace the placeholder with the current table name
    config_values[5] = f"administrative.gold.configuration_tables.{table_name}"  # Update the source_table_prefix

    # Formulate the SQL query with the updated values
    # sql_query = f"INSERT INTO administrative.gold.configuration_tables (database_name, schema_name,table_name, partition_table, primary_key,date_calculation_column type_table,type_dimention, active, created_date) VALUES {tuple(config_values)};"
    sql_query = f"INSERT INTO administrative.gold.configuration_tables (database_name, schema_name, table_name, partition_table, primary_key, date_calculation_column, type_table, type_dimention, active, created_date) VALUES ('{config_values[0]}', '{config_values[1]}', '{config_values[2]}', '{config_values[3]}', '{config_values[4]}', CASE WHEN TRY_CAST(date_calculation_column AS DATETIME) IS NOT NULL THEN TRY_CAST(date_calculation_column AS DATETIME) WHEN TRY_CAST(date_calculation_column AS DATE) IS NOT NULL THEN TRY_CAST(date_calculation_column AS DATE) ELSE NULL END, '{config_values[6]}', '{config_values[7]}', {int(config_values[8])}, '{config_values[9]}');"

    
    # Execute the SQL query using %sql magic command
    #%sql {sql_query}
    
    # Print the SQL query for reference
    print(sql_query)
