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
    'compl_ubo_mi_fact',
    'Select sr._no, company_name, status2, date, status4, month_3, september_analysis, numbers, %',
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
    'compl_accuity_alert_fact',
    'Select type, alert_type, closed_automatically, closed_manually, true_alert, ',
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
    'compl_exit_register_fact',
    'Select date, company_name, new_or_existing_, exit_thems, exit_reason, 2022_revenues, date_of_onboarding',
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
    'compl_inspections_fact',
    'Select no, name, date_of_inspection, source, client_type, review_type, status, notes',
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
    'compl_key_initiatives_projects_fact',
    'Select name, background, status, issue, target_date',
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
    'compl_moe_pwc_ratings_fact',
    'Select phase_i_score, no_change',
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
    'compl_pep_register_fact',
    'Select date_pep_identified, pep_name, company_name, role, country, pep_category',
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
    'compl_renewal_backlogs_fact',
    'Select month, total_number_pending_start_of_month, cases_closed_in_month, total_number_pending_end_of_month',
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
    'compl_sar_register_fact',
    'Select date, company_name, type_of_sar, description_of_the_case_and_the_source_of_suspicion, status, fiu_confirmation',
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
    'compl_time_stamping_fact',
    'Select sr_number, month, number_step_for_sr, compliance_time_, other_dept_time, total_time, month1, september_analysis, numbers, %',
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
    'compl_warnings_fines_fact',
    'Select no, name, rationale, warning_letter_issued, date_warning_letter_issued, fine_issued, date_fine_issued',
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
    'cw_access_card_fact',
    'Select no, month_, issue_date, master_key, client_access_card_, company_name, customer_name, remarks, deposit_payment_,_exipry_date',
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
    'cw_client_usage_fact',
    'Select no., month_, date, company_name, customer_name, facility_type, emirate_, contact_mobile_number, email_address, time_in:, time_out:, purpose_of_visit_, comment_, customer_no., active_non_active_license_',
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
    'cw_free_breakfast_fact',
    'Select date_, total_fees_, budget_remaining_, breakfast_&_eurocoffe_orders, _c4, discription_',
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
    'cw_give_aways_list_fact',
    'Select no, month_, company_name, customer_name',
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
    'cw_lockers_usage_fact',
    'Select company_name_, name_, locker_no, ',
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
    'cw_mail_handling_serv_2021_edit_fact',
    'Select no, month, date, company_name, expiry_date, email_address, receipt_number, package_price, po_box_number, status, comments_, package_entiltlment_',
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
    'cw_mail_handling_serv_valid_fact',
    'Select no, month, date, company_name, expiry_date, email_address, receipt_number, package_price, po_box_number, status, comments_package_entiltlment_',
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
    'cw_meeting_rooms_usage_2022_fact',
    'Select no._, month_, date, company_name, customer_name_, meeting_room, time_in:, time_out:, no._people',
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
    'cw_meeting_rooms_usage_2023_fact',
    'Select no._, month_, date, company_name, customer_name_, meeting_room, time_in:, time_out:, no._people',
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
    'cw_memberships_fact',
    'Select no, issue_date, client_facility_booking_, company_name, customer_name, remarks, payment_+_5_%_vat_upcoming_, _expiry_date, mobile_number, email_address, previous_package_, comments_, total_payment_collected_from_company_+_vat_',
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
    'cw_printing_fact',
    'Select no._, month_, date, company_name, customer_name_, pages, scan, total_',
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
    'cw_pvt_office_booking_fact',
    'Select no, private_office_, pax_, company_name_, client_name_, expiry_date_, comment_',
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
    'cw_returned_cards_fact',
    'Select company_, name_, access_cards_no_',
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
    'cw_sheet2_fact',
    'Select client_',
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
    'cw_staff_usage_fact',
    'Select no._, month_, date, stuff_name_, purpose_of_visit_, time_in:, time_out:, department, comments_',
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
    'cw_waiting_list_fact',
    'Select company_name_, name_, hot_meduim__cold_, office_, phone_number_, email_',
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
    'po_activities_fact',
    'Select month, zone, type, activity_counter',
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
    'po_assets_fact',
    'Select month, type, assets_counter',
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
    'po_gate_entry_data_fact',
    'Select month, zone, type, counter',
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
    'po_gate_entry_rev_fact',
    'Select month, revenue',
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
    'po_hk_rev_fact',
    'Select month, type, hk_rev_counter',
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
    'po_housekeeping_fact',
    'Select month, type, hk_counter',
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
    'po_other_rev_fact',
    'Select month, revenue',
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
    'po_toll_gate_fact',
    'Select month, zone, type, toll_counter',
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
    'po_weighbridge_fact',
    'Select month, zone, weigh_counter',
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
    'po_weighbridge_rev_fact',
    'Select month, zone, monthly, actual, balance',
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
    'cw_dropdown_fact',
    'Select ',
    current_date()
  );