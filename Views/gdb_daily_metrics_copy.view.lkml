view: gdb_daily_metrics_copy {
  sql_table_name: dw_reports.gdb_daily_metrics_copy ;;

  dimension: active_30d_cnt {
    type: number
    sql: ${TABLE}.active_30d_cnt ;;
  }

  dimension: active_7d_cnt {
    type: number
    sql: ${TABLE}.active_7d_cnt ;;
  }

  dimension: active_cnt {
    type: number
    sql: ${TABLE}.active_cnt ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: day {
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
    sql: ${TABLE}.day ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: installs {
    type: number
    sql: ${TABLE}.installs ;;
  }

  dimension: npu_30d_cnt {
    type: number
    sql: ${TABLE}.npu_30d_cnt ;;
  }

  dimension: npu_7d_cnt {
    type: number
    sql: ${TABLE}.npu_7d_cnt ;;
  }

  dimension: npu_cnt {
    type: number
    sql: ${TABLE}.npu_cnt ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: pu_30d_cnt {
    type: number
    sql: ${TABLE}.pu_30d_cnt ;;
  }

  dimension: pu_7d_cnt {
    type: number
    sql: ${TABLE}.pu_7d_cnt ;;
  }

  dimension: pu_cnt {
    type: number
    sql: ${TABLE}.pu_cnt ;;
  }

  dimension: revenue {
    type: number
    sql: ${TABLE}.revenue ;;
  }

  dimension: revenue_30d {
    type: number
    sql: ${TABLE}.revenue_30d ;;
  }

  dimension: revenue_7d {
    type: number
    sql: ${TABLE}.revenue_7d ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
