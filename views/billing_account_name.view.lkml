view: billing_account_name {
  sql_table_name: `Faturamento.billing_account_name` ;;

  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }
  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.billing_account_name ;;
  }
  measure: count {
    type: count
    drill_fields: [billing_account_name]
  }
}
