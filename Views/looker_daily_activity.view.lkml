view: looker_daily_activity {
  label: "daily_activity"
    derived_table: {
      sql_trigger_value: select current_date ;;
      sortkeys: ["install_date"]
      distribution: "user_id"
      sql:  SELECT
                 gdb_logins.user_id as user_id
               , date_trunc(EXTRACT(DATE FROM gdb_logins.install_date), DAY) as install_date
               , gdb_logins.login_date as login_date
               , COALESCE(data.total_sessions, 0) as total_sessions
              --  , row_number() over() AS key
              FROM gdb_logins
              LEFT JOIN

                (
                 SELECT
                    DISTINCT(date_trunc(login_date, DAY)) as login_date
                  FROM gdb_logins
                ) as date_list
              ON date_list.login_date >= date_trunc(EXTRACT(DATE FROM install_date), DAY)

              LEFT JOIN

                (
                  SELECT
                        user_id
                      , date_trunc(EXTRACT(DATE FROM install_date), DAY) as install_date
                      , COUNT(distinct user_id) AS active_users
                      , SUM(sessions) AS total_sessions

                  FROM gdb_logins
                  GROUP BY 1,2
                ) as data
              ON data.install_date = date_list.login_date
              AND data.user_id = gdb_logins.user_id
               ;;
    }
#
#     dimension: user_id {
#       type: number
#       sql: ${TABLE}.user_id ;;
#     }
#
#     dimension_group: signup {
#       type: time
#       timeframes: [month]
#       sql: ${TABLE}.signup_month ;;
#     }
#
#     dimension_group: purchase {
#       type: time
#       timeframes: [month]
#       sql: ${TABLE}.purchase_month ;;
#     }
#
#     dimension: months_since_signup {
#       type: number
#       sql: datediff('month', ${TABLE}.signup_month, ${TABLE}.purchase_month) ;;
#     }
#
#     dimension: monthly_purchases {
#       type: number
#       sql: ${TABLE}.monthly_purchases ;;
#     }
#
#     dimension: monthly_spend {
#       type: number
#       sql: ${TABLE}.monthly_spend ;;
#     }
#
#     measure: total_users {
#       type: count_distinct
#       sql: ${user_id} ;;
#       drill_fields: [users.id, users.age, users.name, user_order_facts.lifetime_orders]
#     }
#
#     measure: total_active_users {
#       type: count_distinct
#       sql: ${user_id} ;;
#       drill_fields: [users.id, users.age, users.name, user_order_facts.lifetime_orders]
#
#       filters: {
#         field: monthly_purchases
#         value: ">0"
#       }
#     }
#
#     measure: percent_of_cohort_active {
#       type: number
#       value_format_name: percent_1
#       sql: 1.0 * ${total_active_users} / nullif(${total_users},0) ;;
#       drill_fields: [user_id, monthly_purchases, total_amount_spent]
#     }
#
#     measure: total_amount_spent {
#       type: sum
#       value_format_name: usd
#       sql: ${monthly_spend} ;;
#       drill_fields: [detail*]
#     }
#
#     measure: spend_per_user {
#       type: number
#       value_format_name: usd
#       sql: ${total_amount_spent} / nullif(${total_users},0) ;;
#       drill_fields: [user_id, monthly_purchases, total_amount_spent]
#     }
#
#     measure: spend_per_active_user {
#       type: number
#       value_format_name: usd
#       sql: ${total_amount_spent} / nullif(${total_active_users},0) ;;
#       drill_fields: [user_id, total_amount_spent]
#     }
#
#     dimension: key {
#       type: number
#       primary_key: yes
#       hidden: yes
#       sql: ${TABLE}.key ;;
#     }
#
#     set: detail {
#       fields: [user_id, signup_month, monthly_purchases, monthly_spend]
#     }
  }
