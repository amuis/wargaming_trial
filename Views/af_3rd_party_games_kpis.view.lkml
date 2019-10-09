view: af_3rd_party_games_kpis {
  sql_table_name: dw_reports.af_3rd_party_games_kpis ;;

  dimension: ac {
    type: number
    sql: ${TABLE}.ac ;;
  }

  dimension: arpac {
    type: number
    sql: ${TABLE}.arpac ;;
  }

  dimension: arpau {
    type: number
    sql: ${TABLE}.arpau ;;
  }

  dimension: arpnu {
    type: number
    sql: ${TABLE}.arpnu ;;
  }

  dimension: arppu {
    type: number
    sql: ${TABLE}.arppu ;;
  }

  dimension: au {
    type: number
    sql: ${TABLE}.au ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: new_pu {
    type: number
    sql: ${TABLE}.new_pu ;;
  }

  dimension: nu {
    type: number
    sql: ${TABLE}.nu ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: pu {
    type: number
    sql: ${TABLE}.pu ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
