view: gdb_crash_rate {
  sql_table_name: dw_reports.gdb_crash_rate ;;

  dimension: crash_rate_perc {
    type: number
    sql: ${TABLE}.crash_rate_perc ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension_group: login {
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
    sql: ${TABLE}.login_date ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
