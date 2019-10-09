view: af_3rd_party_games_kpis_weekly {
  sql_table_name: dw_reports.af_3rd_party_games_kpis_weekly ;;

  dimension: arpwac {
    type: number
    sql: ${TABLE}.arpwac ;;
  }

  dimension: arpwau {
    type: number
    sql: ${TABLE}.arpwau ;;
  }

  dimension: arpwnu {
    type: number
    sql: ${TABLE}.arpwnu ;;
  }

  dimension: arpwpu {
    type: number
    sql: ${TABLE}.arpwpu ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: new_wpu {
    type: number
    sql: ${TABLE}.new_wpu ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension_group: report {
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
    sql: ${TABLE}.report_date ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  dimension: wac {
    type: number
    sql: ${TABLE}.wac ;;
  }

  dimension: wau {
    type: number
    sql: ${TABLE}.wau ;;
  }

  dimension: wnu {
    type: number
    sql: ${TABLE}.wnu ;;
  }

  dimension: wpu {
    type: number
    sql: ${TABLE}.wpu ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
