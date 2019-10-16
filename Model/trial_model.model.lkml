connection: "wgm_bq"

# include all the views
include: "/**/Views/*.view"

datagroup: trial_model_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

datagroup: forever {
  sql_trigger: 1 ;;
}

persist_with: trial_model_default_datagroup

explore: gdb_logins {
  label: "Core KPIs"
  join: looker_countries {
    type:  left_outer
    sql_on:  ${gdb_logins.first_country} = ${looker_countries.code};;
    relationship: many_to_one
  }

  join: dim_gdb_users {
    type:  left_outer
    relationship: many_to_one
    sql_on: ${gdb_logins.user_id} =  ${dim_gdb_users.user_id};;
  }
}

explore: dim_gdb_users {
  label: "User Purchases"

  join: gdb_purchase {
    type: left_outer
    sql_on: ${gdb_purchase.user_id} = ${dim_gdb_users.user_id} ;;
    relationship: many_to_one
  }
}



explore: gdb_revenue {
  label: "Revenue"
}
#
# explore: af_3rd_party_games_kpis {}
#
# explore: af_3rd_party_games_kpis_monthly {}
#
# explore: af_3rd_party_games_kpis_weekly {}
#
# explore: af_3rd_party_games_ret {}
#
# explore: af_converted_users {}
#
# explore: af_daily_agg {}
#
# explore: af_daily_metrics {}
#
# explore: af_user_login {}
#
# explore: af_user_purchase {}
#
# explore: alooma_stats {}
#
# explore: bidalgo_data_share {}
#
# explore: dim_gdb_user_wo_attr {}
#
# explore: dim_gdb_users {}
#
# explore: exp_revenue_target {}
#
# explore: gdb_au {}
#
# explore: gdb_cohort_kpis {}
#
# explore: gdb_crash_rate {}
#
# explore: gdb_daily_kpis {}
#
# explore: gdb_daily_metrics {}
#
# explore: gdb_daily_metrics_copy {}
#
# explore: gdb_logins_daily_revenue {}
#
# explore: gdb_logins_daily_revenue_ltv {}
#
# explore: gdb_logins_daily_revenue_products {}
#
# explore: gdb_m_cohort_kpis {}
#
# explore: gdb_m_revenue {}
#
# explore: gdb_mau {}
#
# explore: gdb_mnu {}
#
# explore: gdb_monthly_kpis {}
#
# explore: gdb_nu {}
#
# explore: gdb_purchase {}
#
# explore: gdb_revenue {}
#
# explore: gdb_w_cohort_kpis {}
#
# explore: gdb_w_revenue {}
#
# explore: gdb_wau {}
#
# explore: gdb_weekly_kpis {}
#
# explore: gdb_wnu {}
#
# explore: global_users {}
#
# explore: global_users_gng {}
#
# explore: global_users_wotb {}
#
# explore: global_users_woti {}
#
# explore: global_users_wowsb {}
#
# explore: google_data_share {}
#
# explore: live_report_wowsb_new_users {}
#
# explore: live_report_wowsb_revenue {}
#
# explore: live_report_wowsb_sessions {}
#
# explore: login_gng {}
#
# explore: login_wotb {}
#
# explore: login_woti {}
#
# explore: login_wowsb {}
#
# explore: purchase_gng {}
#
# explore: purchase_wotb {}
#
# explore: purchase_woti {}
#
# explore: purchase_wowsb {}
#
# explore: sing_costs {}
#
# explore: sing_m_costs {}
#
# explore: sing_w_costs {}
#
# explore: table_sizes {}
#
# explore: wotb_revenue_target {}
