view: gdb_monthly_kpis {
  sql_table_name: dw_reports.gdb_monthly_kpis ;;

  dimension: active_spenders {
    type: number
    sql: ${TABLE}.active_spenders ;;
  }

  dimension: active_users {
    type: number
    sql: ${TABLE}.active_users ;;
  }

  dimension_group: actual {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.actual_date ;;
  }

  dimension: andr_active_spenders {
    type: number
    sql: ${TABLE}.andr_active_spenders ;;
  }

  dimension: andr_active_users {
    type: number
    sql: ${TABLE}.andr_active_users ;;
  }

  dimension: andr_first_time_spenders {
    type: number
    sql: ${TABLE}.andr_first_time_spenders ;;
  }

  dimension: andr_gross_revenue {
    type: number
    sql: ${TABLE}.andr_gross_revenue ;;
  }

  dimension: andr_net_revenue {
    type: number
    sql: ${TABLE}.andr_net_revenue ;;
  }

  dimension: andr_spenders {
    type: number
    sql: ${TABLE}.andr_spenders ;;
  }

  dimension: andr_ua_costs {
    type: number
    sql: ${TABLE}.andr_ua_costs ;;
  }

  dimension: android_nu {
    type: number
    sql: ${TABLE}.android_nu ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension: first_platform {
    type: string
    sql: ${TABLE}.first_platform ;;
  }

  dimension: first_time_spenders {
    type: number
    sql: ${TABLE}.first_time_spenders ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_rev_14d {
    type: number
    sql: ${TABLE}.gross_rev_14d ;;
  }

  dimension: gross_rev_1d {
    type: number
    sql: ${TABLE}.gross_rev_1d ;;
  }

  dimension: gross_rev_30d {
    type: number
    sql: ${TABLE}.gross_rev_30d ;;
  }

  dimension: gross_rev_3d {
    type: number
    sql: ${TABLE}.gross_rev_3d ;;
  }

  dimension: gross_rev_7d {
    type: number
    sql: ${TABLE}.gross_rev_7d ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: ios_active_spenders {
    type: number
    sql: ${TABLE}.ios_active_spenders ;;
  }

  dimension: ios_active_users {
    type: number
    sql: ${TABLE}.ios_active_users ;;
  }

  dimension: ios_first_time_spenders {
    type: number
    sql: ${TABLE}.ios_first_time_spenders ;;
  }

  dimension: ios_gross_revenue {
    type: number
    sql: ${TABLE}.ios_gross_revenue ;;
  }

  dimension: ios_net_revenue {
    type: number
    sql: ${TABLE}.ios_net_revenue ;;
  }

  dimension: ios_nu {
    type: number
    sql: ${TABLE}.ios_nu ;;
  }

  dimension: ios_spenders {
    type: number
    sql: ${TABLE}.ios_spenders ;;
  }

  dimension: ios_ua_costs {
    type: number
    sql: ${TABLE}.ios_ua_costs ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }

  dimension: media_source_name {
    type: string
    sql: ${TABLE}.media_source_name ;;
  }

  dimension: media_source_type {
    type: string
    sql: ${TABLE}.media_source_type ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}.net_revenue ;;
  }

  dimension: ret_14d {
    type: number
    sql: ${TABLE}.ret_14d ;;
  }

  dimension: ret_1d {
    type: number
    sql: ${TABLE}.ret_1d ;;
  }

  dimension: ret_30d {
    type: number
    sql: ${TABLE}.ret_30d ;;
  }

  dimension: ret_3d {
    type: number
    sql: ${TABLE}.ret_3d ;;
  }

  dimension: ret_7d {
    type: number
    sql: ${TABLE}.ret_7d ;;
  }

  dimension: spenders {
    type: number
    sql: ${TABLE}.spenders ;;
  }

  dimension: total_gross_revenue {
    type: number
    sql: ${TABLE}.total_gross_revenue ;;
  }

  dimension: total_net_revenue {
    type: number
    sql: ${TABLE}.total_net_revenue ;;
  }

  dimension: ua_costs {
    type: number
    sql: ${TABLE}.ua_costs ;;
  }

  dimension: unique_nu {
    type: number
    sql: ${TABLE}.unique_nu ;;
  }

  dimension: user_base {
    type: number
    sql: ${TABLE}.user_base ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
