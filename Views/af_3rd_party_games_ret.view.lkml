view: af_3rd_party_games_ret {
  sql_table_name: dw_reports.af_3rd_party_games_ret ;;

  dimension: chrt_size {
    type: number
    sql: ${TABLE}.chrt_size ;;
  }

  dimension: days_since_install {
    type: number
    sql: ${TABLE}.days_since_install ;;
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

  dimension: retained_users {
    type: number
    sql: ${TABLE}.retained_users ;;
  }

  dimension: source_type {
    type: string
    sql: ${TABLE}.source_type ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
