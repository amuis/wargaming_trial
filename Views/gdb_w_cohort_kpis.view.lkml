view: gdb_w_cohort_kpis {
  sql_table_name: dw_reports.gdb_w_cohort_kpis ;;

  dimension: cohort_size {
    type: number
    sql: ${TABLE}.cohort_size ;;
  }

  dimension: con_0d {
    type: number
    sql: ${TABLE}.con_0d ;;
  }

  dimension: con_14d {
    type: number
    sql: ${TABLE}.con_14d ;;
  }

  dimension: con_1d {
    type: number
    sql: ${TABLE}.con_1d ;;
  }

  dimension: con_30d {
    type: number
    sql: ${TABLE}.con_30d ;;
  }

  dimension: con_3d {
    type: number
    sql: ${TABLE}.con_3d ;;
  }

  dimension: con_7d {
    type: number
    sql: ${TABLE}.con_7d ;;
  }

  dimension: country_name {
    type: string
    sql: ${TABLE}.country_name ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension: first_platform {
    type: string
    sql: ${TABLE}.first_platform ;;
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: gross_rev_0d {
    type: number
    sql: ${TABLE}.gross_rev_0d ;;
  }

  dimension: gross_rev_14d {
    type: number
    sql: ${TABLE}.gross_rev_14d ;;
  }

  dimension: gross_rev_1d {
    type: number
    sql: ${TABLE}.gross_rev_1d ;;
  }

  dimension: gross_rev_30d {
    type: number
    sql: ${TABLE}.gross_rev_30d ;;
  }

  dimension: gross_rev_3d {
    type: number
    sql: ${TABLE}.gross_rev_3d ;;
  }

  dimension: gross_rev_7d {
    type: number
    sql: ${TABLE}.gross_rev_7d ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }

  dimension: media_source_name {
    type: string
    sql: ${TABLE}.media_source_name ;;
  }

  dimension: media_source_type {
    type: string
    sql: ${TABLE}.media_source_type ;;
  }

  dimension: net_rev_0d {
    type: number
    sql: ${TABLE}.net_rev_0d ;;
  }

  dimension: net_rev_14d {
    type: number
    sql: ${TABLE}.net_rev_14d ;;
  }

  dimension: net_rev_1d {
    type: number
    sql: ${TABLE}.net_rev_1d ;;
  }

  dimension: net_rev_30d {
    type: number
    sql: ${TABLE}.net_rev_30d ;;
  }

  dimension: net_rev_3d {
    type: number
    sql: ${TABLE}.net_rev_3d ;;
  }

  dimension: net_rev_7d {
    type: number
    sql: ${TABLE}.net_rev_7d ;;
  }

  dimension_group: reg {
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
    sql: ${TABLE}.reg_date ;;
  }

  dimension: ret_14d {
    type: number
    sql: ${TABLE}.ret_14d ;;
  }

  dimension: ret_1d {
    type: number
    sql: ${TABLE}.ret_1d ;;
  }

  dimension: ret_30d {
    type: number
    sql: ${TABLE}.ret_30d ;;
  }

  dimension: ret_3d {
    type: number
    sql: ${TABLE}.ret_3d ;;
  }

  dimension: ret_7d {
    type: number
    sql: ${TABLE}.ret_7d ;;
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, country_name]
  }
}
