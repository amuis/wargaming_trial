view: gdb_logins {
  sql_table_name: dw_reports.gdb_logins ;;

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  dimension: crashes {
    type: number
    sql: ${TABLE}.crashes ;;
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

  dimension: tot_duration {
    type: number
    sql: ${TABLE}.tot_duration ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
  }

  measure: total_sessions {
    type: sum
    sql:${sessions} ;;
  }

  measure: average_sessions{
    type: average
    sql: ${sessions} ;;
    value_format_name: decimal_2
  }

  measure: count {
    type: count
    drill_fields: [media_source_name]
  }
}
