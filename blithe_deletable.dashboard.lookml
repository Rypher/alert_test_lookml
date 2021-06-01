- dashboard: blithe_deletable
  title: Blithe Deletable
  layout: newspaper
  preferred_viewer: dashboards-next
  tile_size: 100

  filters:
  - name: dept
    type: field_filter
    explore: alerts_invoice_example
    field: alerts_invoice_example.department
    default_value: '"dept_1","dept_2"'

  elements:
  - title: test
    name: test
    model: alerts_test
    explore: alerts_invoice_example
    type: looker_column
    fields: [alerts_invoice_example.sum, alerts_invoice_example.department, alerts_invoice_example.status]
    sorts: [alerts_invoice_example.department]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
