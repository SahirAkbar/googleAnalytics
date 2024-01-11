tables_primary_keys = {
    'compl_accuity_alert_mi': 'type, alert_type',
    'compl_exit_register': 'date, company_name, new_or_existing, exit_thmes, exit_reason, date_of_onboarding',
    'compl_inspections': 'name, date_of_inspection, source, client, review_type, status, notes',
    'compl_key_initiatives_projects': 'name, background, status',
    'compl_moe_pwc_ratings': 'phase-i-score',
    'compl_pep_register': 'date_pep_identified, pep_name, company_name, role, country, pep_category',
    'compl_renewal_backlogs': 'month',
    'compl_sar_register': 'date, company_name, type_of_sar, description_of_the_case_and_the_source_of_suspicion, status, fiu_confirmation',
    'compl_time_stamping': 'status, date, status, month, september_analysis',
    'compl_ubo_mi': 'name, rationals, warning_letter_issued, fine_issued, date_fine_issued',
    'compl_warnings_fines': 'month, issue_date, master_key, client_access_card, company_name, customer_name, remarks, deposit_payment, deposite_payment, expiry_date',
    'cw_access_card': 'month, date, company_name, customer_name, facility_type, emirate, email_address, time_in, time_out, purpose_of_visit, comment, active_non_active_license',
    'cw_client_usage': 'month, date, company_name, customer_name',
    'cw_dropdown': 'company_name, nam',
    'cw_free_breakfast': 'date, company_name, expiry_date, email_address, package_price, status, comments, package_entiltlment',
    'cw_giveaways_list': 'month, date, company_name, expiry_date, email_address, package_price, status, comments',
    'cw_lockers_usage': 'month, date, company_name, customer_name',
    'cw_mail_handling_serv_2021_edit': 'issue_date, client_facility_booking, company_name, customer_name, remarks, expiry_date, email_address, previous_package, comments',
    'cw_mail_handling_serv_valid': 'month, date, company_name, customer_name',
    'cw_meeting_rooms_usage_2022': 'month, date, company_name, customer_name, meeting_room, time_in, time_out, no_people',
    'cw_meeting_rooms_usage_2023': 'month, date, company_name, customer_name, meeting_room, time_in, time_out, no_people',
    'cw_memberships': 'issue_date, client_facility_booking, company_name, customer_name, remarks, expiry_date, email_address, previous_package, comments',
    'cw_printing': 'month, date, company_name, customer_name',
    'cw_pvt_office_booking': 'private_office, company_name, client_name, expiry_date, comment',
    'cw_returned_cards': 'company, name',
    'cw_sheet2': 'purpose_of_visit, comment, facility_type',
    'cw_staff_usage': 'month, date staff_name, purpose_of_visit, time_in, time_out, department, comments',
    'cw_waiting_list': 'company_name, name, hot_meduim_cold, office, email',
    'po_activities': 'month, zone, type',
    'po_assets': 'month, type',
    'po_gate_entry_data': 'month, zone, type',
    'po_gate_entry_rev': 'month',
    'po_hk_rev': 'month, type',
    'po_housekeeping': 'month, zone',
    'po_other_rev': 'month, zone',
    'po_toll_gate': 'month',
    'po_weighbridge': 'month, type',
    'po_weighbridge_rev': 'month, zone, type'
}
insert_queries = []
for table_name, primary_key in tables_primary_keys.items():
    insert_query = f"INSERT INTO administrative.gold.configuration_tables (database_name, schema_name, table_name, partition_table, primary_key, date_calculation_column, type_table, type_dimension, active, created_date) VALUES ('gold', 'pmbi_processed', '{table_name}', '', '{primary_key}', '', 'fact', '', 'false', 'current_date');"
    insert_queries.append(insert_query)

# Print all generated queries
for query in insert_queries:
    print(query)

