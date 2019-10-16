view: derived_table_example {
    label: "Country Lookup"
    derived_table: {
      sql: SELECT date_trunc(actual_date, Month) as month, SUM(total_gross_revenue) as total_revenue
      FROM gdb_revenue
      GROUP BY 1
        ;;
      datagroup_trigger: trial_model_default_datagroup
    }
  }
