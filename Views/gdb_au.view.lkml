view: gdb_au {
  sql_table_name: dw_reports.gdb_au ;;

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

  dimension: andr_avg_duration {
    type: number
    sql: ${TABLE}.andr_avg_duration ;;
  }

  dimension: andr_crashes {
    type: number
    sql: ${TABLE}.andr_crashes ;;
  }

  dimension: andr_sessions {
    type: number
    sql: ${TABLE}.andr_sessions ;;
  }

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: crashes {
    type: number
    sql: ${TABLE}.crashes ;;
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

  dimension: ios_avg_duration {
    type: number
    sql: ${TABLE}.ios_avg_duration ;;
  }

  dimension: ios_crashes {
    type: number
    sql: ${TABLE}.ios_crashes ;;
  }

  dimension: ios_sessions {
    type: number
    sql: ${TABLE}.ios_sessions ;;
  }

  dimension: mac_active_users {
    type: number
    sql: ${TABLE}.mac_active_users ;;
  }

  dimension: macos_active_spenders {
    type: number
    sql: ${TABLE}.macos_active_spenders ;;
  }

  dimension: macos_avg_duration {
    type: number
    sql: ${TABLE}.macos_avg_duration ;;
  }

  dimension: macos_crashes {
    type: number
    sql: ${TABLE}.macos_crashes ;;
  }

  dimension: macos_sessions {
    type: number
    sql: ${TABLE}.macos_sessions ;;
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

  dimension: pc_avg_duration {
    type: number
    sql: ${TABLE}.pc_avg_duration ;;
  }

  dimension: pc_crashes {
    type: number
    sql: ${TABLE}.pc_crashes ;;
  }

  dimension: pc_sessions {
    type: number
    sql: ${TABLE}.pc_sessions ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: steam_active_spenders {
    type: number
    sql: ${TABLE}.steam_active_spenders ;;
  }

  dimension: steam_active_users {
    type: number
    sql: ${TABLE}.steam_active_users ;;
  }

  dimension: steam_avg_duration {
    type: number
    sql: ${TABLE}.steam_avg_duration ;;
  }

  dimension: steam_crashes {
    type: number
    sql: ${TABLE}.steam_crashes ;;
  }

  dimension: steam_sessions {
    type: number
    sql: ${TABLE}.steam_sessions ;;
  }

  dimension: wm_active_spenders {
    type: number
    sql: ${TABLE}.wm_active_spenders ;;
  }

  dimension: wm_active_users {
    type: number
    sql: ${TABLE}.wm_active_users ;;
  }

  dimension: wm_avg_duration {
    type: number
    sql: ${TABLE}.wm_avg_duration ;;
  }

  dimension: wm_crashes {
    type: number
    sql: ${TABLE}.wm_crashes ;;
  }

  dimension: wm_sessions {
    type: number
    sql: ${TABLE}.wm_sessions ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
