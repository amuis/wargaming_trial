view: bidalgo_data_share {
  sql_table_name: dw_reports.bidalgo_data_share ;;

  dimension: first_ad_id {
    type: string
    sql: ${TABLE}.first_ad_id ;;
  }

  dimension_group: install {
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
    sql: ${TABLE}.install_date ;;
  }

  dimension: installs {
    type: number
    sql: ${TABLE}.installs ;;
  }

  dimension: payers_d0 {
    type: number
    sql: ${TABLE}.payers_d0 ;;
  }

  dimension: payers_d1 {
    type: number
    sql: ${TABLE}.payers_d1 ;;
  }

  dimension: payers_d3 {
    type: number
    sql: ${TABLE}.payers_d3 ;;
  }

  dimension: payers_d30 {
    type: number
    sql: ${TABLE}.payers_d30 ;;
  }

  dimension: payers_d5 {
    type: number
    sql: ${TABLE}.payers_d5 ;;
  }

  dimension: payers_d7 {
    type: number
    sql: ${TABLE}.payers_d7 ;;
  }

  dimension: payers_lifetime {
    type: number
    sql: ${TABLE}.payers_lifetime ;;
  }

  dimension: rev_d0 {
    type: number
    sql: ${TABLE}.rev_d0 ;;
  }

  dimension: rev_d1 {
    type: number
    sql: ${TABLE}.rev_d1 ;;
  }

  dimension: rev_d3 {
    type: number
    sql: ${TABLE}.rev_d3 ;;
  }

  dimension: rev_d30 {
    type: number
    sql: ${TABLE}.rev_d30 ;;
  }

  dimension: rev_d5 {
    type: number
    sql: ${TABLE}.rev_d5 ;;
  }

  dimension: rev_d7 {
    type: number
    sql: ${TABLE}.rev_d7 ;;
  }

  dimension: rev_life_time {
    type: number
    sql: ${TABLE}.rev_life_time ;;
  }

  dimension: transactions_d0 {
    type: number
    sql: ${TABLE}.transactions_d0 ;;
  }

  dimension: transactions_d1 {
    type: number
    sql: ${TABLE}.transactions_d1 ;;
  }

  dimension: transactions_d3 {
    type: number
    sql: ${TABLE}.transactions_d3 ;;
  }

  dimension: transactions_d30 {
    type: number
    sql: ${TABLE}.transactions_d30 ;;
  }

  dimension: transactions_d5 {
    type: number
    sql: ${TABLE}.transactions_d5 ;;
  }

  dimension: transactions_d7 {
    type: number
    sql: ${TABLE}.transactions_d7 ;;
  }

  dimension: transactions_lifetime {
    type: number
    sql: ${TABLE}.transactions_lifetime ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
