view: looker_countries{
  sql_table_name: ${country_lookup.SQL_TABLE_NAME} ;;


  dimension: country_code {
    hidden: yes
    type: string
    sql: ${TABLE}.country_code;;
  }

  dimension: country {
    view_label: "Logins and Users"
    type: string
    sql: ${TABLE}.countryname;;
  }

  dimension: code {
    hidden: yes
    type: string
    sql: ${TABLE}.code;;
  }
}
