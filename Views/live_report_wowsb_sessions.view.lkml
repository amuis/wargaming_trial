view: live_report_wowsb_sessions {
  sql_table_name: dw_reports.live_report_wowsb_sessions ;;

  dimension_group: event_timestamp {
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
    sql: ${TABLE}.event_timestamp ;;
  }

  dimension_group: event_timestamp_min {
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
    sql: ${TABLE}.event_timestamp_min ;;
  }

  dimension: minutes_since_now {
    type: number
    sql: ${TABLE}.minutes_since_now ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
