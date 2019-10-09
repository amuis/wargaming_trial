view: af_converted_users {
  sql_table_name: dw_reports.af_converted_users ;;

  dimension: con_14d {
    type: string
    sql: ${TABLE}.con_14d ;;
  }

  dimension: con_1d {
    type: string
    sql: ${TABLE}.con_1d ;;
  }

  dimension: con_30d {
    type: string
    sql: ${TABLE}.con_30d ;;
  }

  dimension: con_3d {
    type: string
    sql: ${TABLE}.con_3d ;;
  }

  dimension: con_60d {
    type: string
    sql: ${TABLE}.con_60d ;;
  }

  dimension: con_7d {
    type: string
    sql: ${TABLE}.con_7d ;;
  }

  dimension: con_90d {
    type: string
    sql: ${TABLE}.con_90d ;;
  }

  dimension: con_90d_plus {
    type: string
    sql: ${TABLE}.con_90d_plus ;;
  }

  dimension: customer_user_id {
    type: string
    sql: ${TABLE}.customer_user_id ;;
  }

  dimension: days {
    type: number
    sql: ${TABLE}.days ;;
  }

  dimension_group: first_install {
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
    sql: ${TABLE}.first_install_date ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
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
