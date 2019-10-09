view: google_data_share {
  sql_table_name: dw_reports.google_data_share ;;

  dimension: actual_date_adj {
    type: string
    sql: ${TABLE}.actual_date_adj ;;
  }

  dimension: campaign {
    type: string
    sql: ${TABLE}.campaign ;;
  }

  dimension: install {
    type: number
    sql: ${TABLE}.install ;;
  }

  dimension: revenue_14d {
    type: number
    sql: ${TABLE}.revenue_14d ;;
  }

  dimension: revenue_1d {
    type: number
    sql: ${TABLE}.revenue_1d ;;
  }

  dimension: revenue_30d {
    type: number
    sql: ${TABLE}.revenue_30d ;;
  }

  dimension: revenue_3d {
    type: number
    sql: ${TABLE}.revenue_3d ;;
  }

  dimension: revenue_7d {
    type: number
    sql: ${TABLE}.revenue_7d ;;
  }

  dimension: roas_14d {
    type: number
    sql: ${TABLE}.roas_14d ;;
  }

  dimension: roas_1d {
    type: number
    sql: ${TABLE}.roas_1d ;;
  }

  dimension: roas_30d {
    type: number
    sql: ${TABLE}.roas_30d ;;
  }

  dimension: roas_3d {
    type: number
    sql: ${TABLE}.roas_3d ;;
  }

  dimension: roas_7d {
    type: number
    sql: ${TABLE}.roas_7d ;;
  }

  dimension: spends {
    type: number
    sql: ${TABLE}.spends ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
