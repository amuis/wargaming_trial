view: gdb_purchase {
  sql_table_name: dw_reports.gdb_purchase ;;

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

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: in_app_purchase_id {
    type: string
    sql: ${TABLE}.in_app_purchase_id ;;
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

  dimension: is_first_time {
    type: number
    sql: ${TABLE}.is_first_time ;;
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

  dimension: payment_country {
    type: string
    sql: ${TABLE}.payment_country ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: real_currency_amount {
    type: number
    sql: ${TABLE}.real_currency_amount ;;
  }

  dimension: real_currency_type {
    type: string
    sql: ${TABLE}.real_currency_type ;;
  }

  dimension: realm {
    type: string
    sql: ${TABLE}.realm ;;
  }

  dimension_group: spend_timestamp {
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
    sql: ${TABLE}.spend_timestamp ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, product_name]
  }
}
