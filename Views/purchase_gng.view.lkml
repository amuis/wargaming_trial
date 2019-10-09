view: purchase_gng {
  sql_table_name: dw_reports.purchase_gng ;;

  dimension: adj_country {
    type: string
    sql: ${TABLE}.adj_country ;;
  }

  dimension_group: first_spend {
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
    sql: ${TABLE}.first_spend ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_revenue {
    type: number
    sql: ${TABLE}.gross_revenue ;;
  }

  dimension: in_app_purchase_id {
    type: string
    sql: ${TABLE}.in_app_purchase_id ;;
  }

  dimension: is_first_time {
    type: number
    sql: ${TABLE}.is_first_time ;;
  }

  dimension: local_currency_cost {
    type: number
    sql: ${TABLE}.local_currency_cost ;;
  }

  dimension: net_revenue {
    type: number
    sql: ${TABLE}.net_revenue ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: product_name {
    type: string
    sql: ${TABLE}.product_name ;;
  }

  dimension: real_currency_type {
    type: string
    sql: ${TABLE}.real_currency_type ;;
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

  dimension: user_id {
    type: string
    sql: ${TABLE}.user_id ;;
  }

  measure: count {
    type: count
    drill_fields: [product_name]
  }
}
