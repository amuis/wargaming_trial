view: gdb_nu {
  sql_table_name: dw_reports.gdb_nu ;;

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

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: ios_nu {
    type: number
    sql: ${TABLE}.ios_nu ;;
  }

  dimension: mac_nu {
    type: number
    sql: ${TABLE}.mac_nu ;;
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

  dimension: pc_nu {
    type: number
    sql: ${TABLE}.pc_nu ;;
  }

  dimension: steam_nu {
    type: number
    sql: ${TABLE}.steam_nu ;;
  }

  dimension: unique_nu {
    type: number
    sql: ${TABLE}.unique_nu ;;
  }

  dimension: wm_nu {
    type: number
    sql: ${TABLE}.wm_nu ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
