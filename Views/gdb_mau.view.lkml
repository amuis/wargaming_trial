view: gdb_mau {
  sql_table_name: dw_reports.gdb_mau ;;

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

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: ios_active_spenders {
    type: number
    sql: ${TABLE}.ios_active_spenders ;;
  }

  dimension: ios_active_users {
    type: number
    sql: ${TABLE}.ios_active_users ;;
  }

  dimension: mac_active_users {
    type: number
    sql: ${TABLE}.mac_active_users ;;
  }

  dimension: macos_active_spenders {
    type: number
    sql: ${TABLE}.macos_active_spenders ;;
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

  dimension: pc_active_spenders {
    type: number
    sql: ${TABLE}.pc_active_spenders ;;
  }

  dimension: pc_active_users {
    type: number
    sql: ${TABLE}.pc_active_users ;;
  }

  dimension: steam_active_spenders {
    type: number
    sql: ${TABLE}.steam_active_spenders ;;
  }

  dimension: steam_active_users {
    type: number
    sql: ${TABLE}.steam_active_users ;;
  }

  dimension: wm_active_spenders {
    type: number
    sql: ${TABLE}.wm_active_spenders ;;
  }

  dimension: wm_active_users {
    type: number
    sql: ${TABLE}.wm_active_users ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
