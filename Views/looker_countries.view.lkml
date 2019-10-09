view: looker_countries{
  sql_table_name: ${country_lookup.SQL_TABLE_NAME} ;;
  label: "Country Mapping"

  dimension: country_code {
    hidden: yes
    type: string
    sql: ${TABLE}.country_code;;
  }

  dimension: country {
    type: string
    sql: ${TABLE}.countryname;;
  }

  dimension: code {
    hidden: yes
    type: string
    sql: ${TABLE}.code;;
  }
}
