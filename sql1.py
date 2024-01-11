import datetime

# Define the common configuration
common_config = {
    "database_name": "silver",
    "schema_name": "manual_data",
    "partition_table": "",
    "primary_key": "",
    "active": False,
    "created_date": datetime.date.today(),
    "overwrite_data": False
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
    config_values[4] = f"bronze.manual_data.{table_name}"  # Update the source_table_prefix

    # Formulate the SQL query with the updated values
    sql_query = f"INSERT INTO administrative.silver.configuration_tables VALUES {tuple(config_values)};"
    
    # Execute the SQL query using %sql magic command
    #%sql {sql_query}
    
    # Print the SQL query for reference
    print(sql_query)
