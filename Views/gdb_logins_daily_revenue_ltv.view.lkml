view: gdb_logins_daily_revenue_ltv {
  sql_table_name: dw_reports.gdb_logins_daily_revenue_ltv ;;

  dimension: andr_daily_gross_revenue {
    type: number
    sql: ${TABLE}.andr_daily_gross_revenue ;;
  }

  dimension: andr_daily_net_revenue {
    type: number
    sql: ${TABLE}.andr_daily_net_revenue ;;
  }

  dimension: andr_first_time_spender {
    type: number
    sql: ${TABLE}.andr_first_time_spender ;;
  }

  dimension: andr_spender {
    type: number
    sql: ${TABLE}.andr_spender ;;
  }

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  dimension: crashes {
    type: number
    sql: ${TABLE}.crashes ;;
  }

  dimension: daily_gross_revenue {
    type: number
    sql: ${TABLE}.daily_gross_revenue ;;
  }

  dimension: daily_net_revenue {
    type: number
    sql: ${TABLE}.daily_net_revenue ;;
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

  dimension: first_time_spender {
    type: number
    sql: ${TABLE}.first_time_spender ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_ltv_to_date {
    type: number
    sql: ${TABLE}.gross_ltv_to_date ;;
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

  dimension: ios_daily_gross_revenue {
    type: number
    sql: ${TABLE}.ios_daily_gross_revenue ;;
  }

  dimension: ios_daily_net_revenue {
    type: number
    sql: ${TABLE}.ios_daily_net_revenue ;;
  }

  dimension: ios_first_time_spender {
    type: number
    sql: ${TABLE}.ios_first_time_spender ;;
  }

  dimension: ios_spender {
    type: number
    sql: ${TABLE}.ios_spender ;;
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

  dimension_group: login {
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
    sql: ${TABLE}.login_date ;;
  }

  dimension: max_level {
    type: number
    sql: ${TABLE}.max_level ;;
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

  dimension: net_ltv_to_date {
    type: number
    sql: ${TABLE}.net_ltv_to_date ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: realm {
    type: string
    sql: ${TABLE}.realm ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: spender {
    type: number
    sql: ${TABLE}.spender ;;
  }

  dimension: tot_duration {
    type: number
    sql: ${TABLE}.tot_duration ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name]
  }
}
