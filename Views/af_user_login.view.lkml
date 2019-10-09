view: af_user_login {
  sql_table_name: dw_reports.af_user_login ;;

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

  dimension: report {
    type: number
    sql: ${TABLE}.report ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
