- dashboard: deletable
  title: Deletable
  layout: newspaper
  elements:
  - title: test
    name: test
    model: alerts_test
    explore: alerts_invoice_example
    type: looker_column
    fields: [alerts_invoice_example.sum, alerts_invoice_example.department]
    filters:
      alerts_invoice_example.sum: ">0"
      alerts_invoice_example.department: '"dept_1","dept_2"'
    sorts: [alerts_invoice_example.department]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    series_types: {}
    row: 0
    col: 0
    width: 8
    height: 6
