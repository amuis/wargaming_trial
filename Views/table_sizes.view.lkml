view: table_sizes {
  sql_table_name: dw_reports.table_sizes ;;

  dimension: dataset_id {
    type: string
    sql: ${TABLE}.dataset_id ;;
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

  dimension: row_count {
    type: number
    sql: ${TABLE}.row_count ;;
  }

  dimension: size_gb {
    type: number
    sql: ${TABLE}.size_gb ;;
  }

  dimension: table_id {
    type: string
    sql: ${TABLE}.table_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
