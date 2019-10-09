view: live_report_wowsb_revenue {
  sql_table_name: dw_reports.live_report_wowsb_revenue ;;

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: is_first_time {
    type: number
    sql: ${TABLE}.is_first_time ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}.net_revenue ;;
  }

  dimension: new_user_revenue {
    type: number
    sql: ${TABLE}.new_user_revenue ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension_group: spend_timestamp {
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
    sql: ${TABLE}.spend_timestamp ;;
  }

  dimension: transactions {
    type: number
    sql: ${TABLE}.transactions ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
