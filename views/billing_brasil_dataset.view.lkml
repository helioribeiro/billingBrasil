view: billing_brasil_dataset {
  sql_table_name: `Faturamento.billingBrasilDataset` ;;

  dimension: billing {
    type: number
    sql: ${TABLE}.billing ;;
  }
  dimension: billing_account_id {
    type: string
    sql: ${TABLE}.billing_account_id ;;
  }
  dimension: billing_account_name {
    type: string
    sql: ${TABLE}.billing_account_name ;;
  }
  dimension: cost {
    type: number
    sql: ${TABLE}.cost ;;
  }
  dimension: credit {
    type: number
    sql: ${TABLE}.credit ;;
  }
  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }
  dimension_group: export {
    type: time
    timeframes: [raw, time, date, week, month, quarter, year]
    sql: ${TABLE}.export_time ;;
  }
  dimension_group: month {
    type: time
    timeframes: [raw, date, week, month, quarter, year]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.month_date ;;
  }
  measure: count {
    type: count
    drill_fields: [billing_account_name]
  }
}
