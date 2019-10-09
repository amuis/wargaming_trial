view: login_gng {
  sql_table_name: dw_reports.login_gng ;;

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  dimension: crashes {
    type: number
    sql: ${TABLE}.crashes ;;
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

  dimension: max_level {
    type: number
    sql: ${TABLE}.max_level ;;
  }

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: sessions {
    type: number
    sql: ${TABLE}.sessions ;;
  }

  dimension: tot_duration {
    type: number
    sql: ${TABLE}.tot_duration ;;
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
