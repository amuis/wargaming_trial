view: gdb_logins {
  label: "Logins and Users"
  sql_table_name: dw_reports.gdb_logins ;;

  dimension: avg_duration {
    type: number
    sql: ${TABLE}.avg_duration ;;
  }

  dimension: crashes {
    type: number
    sql: ${TABLE}.crashes ;;
  }

  dimension: first_client_version {
    type: string
    sql: ${TABLE}.first_client_version ;;
  }

  dimension: first_country {
    type: string
    sql: ${TABLE}.first_country ;;
  }

  dimension: first_device_type {
    type: string
    sql: ${TABLE}.first_device_type ;;
  }

  dimension: first_platform {
    type: string
    sql: ${TABLE}.first_platform ;;
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

  dimension_group: install {
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
    sql: ${TABLE}.install_date ;;
  }

  dimension_group: last_login {
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
    sql: ${TABLE}.last_login_date ;;
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

  dimension: platform {
    type: string
    sql: ${TABLE}.platform ;;
  }

  dimension: realm {
    type: string
    sql: ${TABLE}.realm ;;
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


  dimension: days_since_first_login {
    type: number
    sql: date_diff( ${login_date}, ${dim_gdb_users.install_date}, day) ;;
    drill_fields: [days_since_first_login, user_id,first_country, first_platform]
  }


# Drill Selector
  parameter: drill_by {
    type: string
    default_value: "platform"
    allowed_value: { label: "Country" value: "country" }
    allowed_value: { label: "Platform" value: "platform" }
    allowed_value: { label: "Game" value: "game" }
    allowed_value: { label: "Client Version" value: "first_client_version" }
  }

  dimension: drill_field {
    hidden: yes
    type: string
    label_from_parameter: drill_by
    sql:
      {% case  drill_by._parameter_value %}
        {% when "'country'" %}
          ${looker_countries.country}
        {% when "'device_platform'" %}
          ${platform}
        {% when "'game_name'" %}
          ${game}
        {% when "'game_version'" %}
          ${first_client_version}
        {% else %}
         null
      {% endcase %} ;;
  }

  measure: user_count {
    type: count_distinct
    sql: ${user_id} ;;
    drill_fields: [game, user_id, media_source_type]
  }

  measure: total_sessions {
    type: sum
    sql:${sessions} ;;
  }

  measure: average_sessions{
    type: average
    sql: ${sessions} ;;
    value_format_name: decimal_2
  }

  measure: total_active_users {
    type: count_distinct
    sql: ${user_id} ;;
    value_format_name: decimal_0
  }

  measure: count {
    type: count
    drill_fields: [media_source_name, user_id]
  }
}
