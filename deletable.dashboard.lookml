- dashboard: deletable
  title: Lookml Deletable
  layout: newspaper
  filters:
  - name: dept
    type: field_filter
    explore: alerts_invoice_example
    field: alerts_invoice_example.department
    default_value: '"dept_1","dept_2"'
  elements:
  - title: test
    name: test
    model: alerts_test_4
    explore: alerts_invoice_example
    type: looker_column
    fields: [alerts_invoice_example.sum2, alerts_invoice_example.department]
    sorts: [alerts_invoice_example.department]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
