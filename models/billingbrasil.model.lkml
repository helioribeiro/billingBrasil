connection: "billingbrasil"

# include all the views
include: "/views/**/*.view.lkml"

datagroup: billingbrasil_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: billingbrasil_default_datagroup

explore: billing_brasil_dataset {}

explore: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247 {
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__tags {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: Tags"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.tags}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__tags ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__labels {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.labels}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__credits {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: Credits"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.credits}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__credits ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__system_labels {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: System Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.system_labels}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__system_labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__project__labels {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: Project Labels"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.project__labels}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__project__labels ;;
      relationship: one_to_many
    }
    join: gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__project__ancestors {
      view_label: "Gcp Billing Export V1 015 Ec6 4 Bff3 F 9 Dc247: Project Ancestors"
      sql: LEFT JOIN UNNEST(${gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247.project__ancestors}) as gcp_billing_export_v1_015_ec6_4_bff3_f_9_dc247__project__ancestors ;;
      relationship: one_to_many
    }
}

explore: billing_account_name {}

