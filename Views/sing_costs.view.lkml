view: sing_costs {
  sql_table_name: dw_reports.sing_costs ;;

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

  dimension: andr_ua_costs {
    type: number
    sql: ${TABLE}.andr_ua_costs ;;
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

  dimension: ua_costs {
    type: number
    sql: ${TABLE}.ua_costs ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
