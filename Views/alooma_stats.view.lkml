view: alooma_stats {
  sql_table_name: dw_reports.alooma_stats ;;

  dimension: instance {
    type: string
    sql: ${TABLE}.instance ;;
  }

  dimension: metric {
    type: string
    sql: ${TABLE}.metric ;;
  }

  dimension: value {
    type: number
    sql: ${TABLE}.value ;;
  }

  dimension_group: value_timestamp {
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
    sql: ${TABLE}.value_timestamp ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
