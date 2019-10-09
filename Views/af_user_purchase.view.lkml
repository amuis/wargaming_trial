view: af_user_purchase {
  sql_table_name: dw_reports.af_user_purchase ;;

  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.customer_user_id ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension_group: first_install {
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
    sql: ${TABLE}.first_install_time ;;
  }

  dimension: first_media_source {
    type: string
    sql: ${TABLE}.first_media_source ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: new_spender {
    type: number
    sql: ${TABLE}.new_spender ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: report {
    type: number
    sql: ${TABLE}.report ;;
  }

  dimension: retarg {
    type: number
    sql: ${TABLE}.retarg ;;
  }

  dimension: revenue_usd_amt {
    type: number
    sql: ${TABLE}.revenue_usd_amt ;;
  }

  dimension_group: spend {
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
    sql: ${TABLE}.spend_date ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
