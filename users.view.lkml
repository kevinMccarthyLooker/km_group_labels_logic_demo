# added the special group label logic by doing find and repalace all instances 'type:' with:
# group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type:
#(or some similar find and replace similar)

#not sure quite how... some liquid array magic... but I'm sure we could make this into some list of replacements we want to make rather than just one.


view: users {
  sql_table_name: public.users ;;
  dimension: group_label_search_string {sql:age;;hidden:yes}
  dimension: group_label_to_add {sql:Age Fields;;hidden:yes}
  dimension: id {
    primary_key: yes
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: number
    sql: ${TABLE}.id ;;
  }

  dimension: age {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: number
    sql: ${TABLE}.age ;;
  }
  dimension: age_tier {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: tier
    tiers: [20,30,40,50,60,70]
    sql: ${TABLE}.age ;;
  }

  dimension: city {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.city ;;
  }

  dimension: country {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    map_layer_name: countries
    sql: ${TABLE}.country ;;
  }

  dimension_group: created {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: email {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.email ;;
  }

  dimension: first_name {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.first_name ;;
  }

  dimension: gender {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: last_name {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.last_name ;;
  }

  dimension: latitude {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: number
    sql: ${TABLE}.latitude ;;
  }

  dimension: longitude {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: number
    sql: ${TABLE}.longitude ;;
  }

  dimension: state {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.state ;;
  }

  dimension: traffic_source {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: string
    sql: ${TABLE}.traffic_source ;;
  }

  dimension: zip {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: zipcode
    sql: ${TABLE}.zip ;;
  }

  measure: count {
    group_label:"{% assign group_label_search_string = group_label_search_string._sql%}{% assign orig_size = _field._name | size %}{% assign field_name_up_to_search_string = _field._name | split: {{group_label_search_string}} | first %}{% assign field_name_up_to_search_string_size = field_name_up_to_search_string | size %}{% if orig_size > field_name_up_to_search_string_size %}{{group_label_to_add._sql}}{% endif %}" type: count
    drill_fields: [id, first_name, last_name, events.count, order_items.count]
  }
}
