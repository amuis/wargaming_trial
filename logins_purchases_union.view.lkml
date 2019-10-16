view: logins_purchases_union {
  derived_table: {
    sql: SELECT game, media_source, first_country, DATE(spend_timestamp), COUNT(user_id)
      FROM gdb_purchase
      GROUP BY 1,2,3,4
      UNION ALL
      SELECT game, media_source, first_country, login_date, COUNT(user_id)
      FROM gdb_logins
      GROUP BY 1,2,3,4
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: game {
    type: string
    sql: ${TABLE}.game ;;
  }

  dimension: media_source {
    type: string
    sql: ${TABLE}.media_source ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension: f0_ {
    type: date
    sql: ${TABLE}.f0_ ;;
  }

  dimension: f1_ {
    type: number
    sql: ${TABLE}.f1_ ;;
  }

  set: detail {
    fields: [game, media_source, first_country, f0_, f1_]
  }
}
