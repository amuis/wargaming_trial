view: wotb_revenue_target {
  sql_table_name: dw_reports.wotb_revenue_target ;;

  dimension_group: _date {
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
    sql: ${TABLE}._date ;;
  }

  dimension: _revenue_target_all {
    type: number
    sql: ${TABLE}._revenue_target_all ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
