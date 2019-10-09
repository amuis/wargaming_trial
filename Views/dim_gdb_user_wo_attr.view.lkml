view: dim_gdb_user_wo_attr {
  sql_table_name: dw_reports.dim_gdb_user_wo_attr ;;

  dimension: andr_gross_revenue {
    type: number
    sql: ${TABLE}.andr_gross_revenue ;;
  }

  dimension_group: andr_install {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.andr_install_date ;;
  }

  dimension: andr_sessions {
    type: number
    sql: ${TABLE}.andr_sessions ;;
  }

  dimension: andr_trn {
    type: number
    sql: ${TABLE}.andr_trn ;;
  }

  dimension: con_0d {
    type: number
    sql: ${TABLE}.con_0d ;;
  }

  dimension: con_14d {
    type: number
    sql: ${TABLE}.con_14d ;;
  }

  dimension: con_1d {
    type: number
    sql: ${TABLE}.con_1d ;;
  }

  dimension: con_30d {
    type: number
    sql: ${TABLE}.con_30d ;;
  }

  dimension: con_3d {
    type: number
    sql: ${TABLE}.con_3d ;;
  }

  dimension: con_60d {
    type: number
    sql: ${TABLE}.con_60d ;;
  }

  dimension: con_7d {
    type: number
    sql: ${TABLE}.con_7d ;;
  }

  dimension: con_90d {
    type: number
    sql: ${TABLE}.con_90d ;;
  }

  dimension: con_90d_plus {
    type: number
    sql: ${TABLE}.con_90d_plus ;;
  }

  dimension: first_client_version {
    type: string
    sql: ${TABLE}.first_client_version ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension: first_device_type {
    type: string
    sql: ${TABLE}.first_device_type ;;
  }

  dimension: first_platform {
    type: string
    sql: ${TABLE}.first_platform ;;
  }

  dimension_group: first_spend {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.first_spend ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_rev_0d {
    type: number
    sql: ${TABLE}.gross_rev_0d ;;
  }

  dimension: gross_rev_120d {
    type: number
    sql: ${TABLE}.gross_rev_120d ;;
  }

  dimension: gross_rev_14d {
    type: number
    sql: ${TABLE}.gross_rev_14d ;;
  }

  dimension: gross_rev_180d {
    type: number
    sql: ${TABLE}.gross_rev_180d ;;
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

  dimension: gross_rev_60d {
    type: number
    sql: ${TABLE}.gross_rev_60d ;;
  }

  dimension: gross_rev_7d {
    type: number
    sql: ${TABLE}.gross_rev_7d ;;
  }

  dimension: gross_rev_90d {
    type: number
    sql: ${TABLE}.gross_rev_90d ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension_group: install {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.install_date ;;
  }

  dimension: ios_gross_revenue {
    type: number
    sql: ${TABLE}.ios_gross_revenue ;;
  }

  dimension_group: ios_install {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.ios_install_date ;;
  }

  dimension: ios_sessions {
    type: number
    sql: ${TABLE}.ios_sessions ;;
  }

  dimension: ios_trn {
    type: number
    sql: ${TABLE}.ios_trn ;;
  }

  dimension: is_android {
    type: number
    value_format_name: id
    sql: ${TABLE}.is_android ;;
  }

  dimension: is_ios {
    type: number
    sql: ${TABLE}.is_ios ;;
  }

  dimension_group: last_login {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.last_login_date ;;
  }

  dimension: main_platform {
    type: string
    sql: ${TABLE}.main_platform ;;
  }

  dimension: net_rev_0d {
    type: number
    sql: ${TABLE}.net_rev_0d ;;
  }

  dimension: net_rev_120d {
    type: number
    sql: ${TABLE}.net_rev_120d ;;
  }

  dimension: net_rev_14d {
    type: number
    sql: ${TABLE}.net_rev_14d ;;
  }

  dimension: net_rev_180d {
    type: number
    sql: ${TABLE}.net_rev_180d ;;
  }

  dimension: net_rev_1d {
    type: number
    sql: ${TABLE}.net_rev_1d ;;
  }

  dimension: net_rev_30d {
    type: number
    sql: ${TABLE}.net_rev_30d ;;
  }

  dimension: net_rev_3d {
    type: number
    sql: ${TABLE}.net_rev_3d ;;
  }

  dimension: net_rev_60d {
    type: number
    sql: ${TABLE}.net_rev_60d ;;
  }

  dimension: net_rev_7d {
    type: number
    sql: ${TABLE}.net_rev_7d ;;
  }

  dimension: net_rev_90d {
    type: number
    sql: ${TABLE}.net_rev_90d ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}.net_revenue ;;
  }

  dimension: platforms {
    type: number
    sql: ${TABLE}.platforms ;;
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

  dimension: ret_60d {
    type: number
    sql: ${TABLE}.ret_60d ;;
  }

  dimension: ret_7d {
    type: number
    sql: ${TABLE}.ret_7d ;;
  }

  dimension: ret_90d {
    type: number
    sql: ${TABLE}.ret_90d ;;
  }

  dimension: sessions_last_30d {
    type: number
    sql: ${TABLE}.sessions_last_30d ;;
  }

  dimension: total_sessions {
    type: number
    sql: ${TABLE}.total_sessions ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  dimension: user_livetime {
    type: number
    sql: ${TABLE}.user_livetime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
