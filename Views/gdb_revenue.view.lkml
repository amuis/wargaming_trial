view: gdb_revenue {
  sql_table_name: dw_reports.gdb_revenue ;;

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

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: eugr {
    type: number
    sql: ${TABLE}.eugr ;;
  }

  dimension: eunr {
    type: number
    sql: ${TABLE}.eunr ;;
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

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
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

  dimension: ios_spenders {
    type: number
    sql: ${TABLE}.ios_spenders ;;
  }

  dimension: macos_first_time_spenders {
    type: number
    sql: ${TABLE}.macos_first_time_spenders ;;
  }

  dimension: macos_gross_revenue {
    type: number
    sql: ${TABLE}.macos_gross_revenue ;;
  }

  dimension: macos_net_revenue {
    type: number
    sql: ${TABLE}.macos_net_revenue ;;
  }

  dimension: macos_spenders {
    type: number
    sql: ${TABLE}.macos_spenders ;;
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

  dimension: nugr {
    type: number
    sql: ${TABLE}.nugr ;;
  }

  dimension: nunr {
    type: number
    sql: ${TABLE}.nunr ;;
  }

  dimension: pc_first_time_spenders {
    type: number
    sql: ${TABLE}.pc_first_time_spenders ;;
  }

  dimension: pc_gross_revenue {
    type: number
    sql: ${TABLE}.pc_gross_revenue ;;
  }

  dimension: pc_net_revenue {
    type: number
    sql: ${TABLE}.pc_net_revenue ;;
  }

  dimension: pc_spenders {
    type: number
    sql: ${TABLE}.pc_spenders ;;
  }

  dimension: spenders {
    type: number
    sql: ${TABLE}.spenders ;;
  }

  dimension: steam_first_time_spenders {
    type: number
    sql: ${TABLE}.steam_first_time_spenders ;;
  }

  dimension: steam_gross_revenue {
    type: number
    sql: ${TABLE}.steam_gross_revenue ;;
  }

  dimension: steam_net_revenue {
    type: number
    sql: ${TABLE}.steam_net_revenue ;;
  }

  dimension: steam_spenders {
    type: number
    sql: ${TABLE}.steam_spenders ;;
  }

  dimension: wm_first_time_spenders {
    type: number
    sql: ${TABLE}.wm_first_time_spenders ;;
  }

  dimension: wm_gross_revenue {
    type: number
    sql: ${TABLE}.wm_gross_revenue ;;
  }

  dimension: wm_net_revenue {
    type: number
    sql: ${TABLE}.wm_net_revenue ;;
  }

  dimension: wm_spenders {
    type: number
    sql: ${TABLE}.wm_spenders ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
