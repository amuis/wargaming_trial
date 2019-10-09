view: af_3rd_party_games_kpis_monthly {
  sql_table_name: dw_reports.af_3rd_party_games_kpis_monthly ;;

  dimension: arpmac {
    type: number
    sql: ${TABLE}.arpmac ;;
  }

  dimension: arpmau {
    type: number
    sql: ${TABLE}.arpmau ;;
  }

  dimension: arpmnu {
    type: number
    sql: ${TABLE}.arpmnu ;;
  }

  dimension: arpmpu {
    type: number
    sql: ${TABLE}.arpmpu ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: mac {
    type: number
    sql: ${TABLE}.mac ;;
  }

  dimension: mau {
    type: number
    sql: ${TABLE}.mau ;;
  }

  dimension: mnu {
    type: number
    sql: ${TABLE}.mnu ;;
  }

  dimension: mpu {
    type: number
    sql: ${TABLE}.mpu ;;
  }

  dimension: new_mpu {
    type: number
    sql: ${TABLE}.new_mpu ;;
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

  measure: count {
    type: count
    drill_fields: []
  }
}
