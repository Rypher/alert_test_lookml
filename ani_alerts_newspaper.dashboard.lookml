- dashboard: lookml_weather_alerts_newspaper
  title: Test Weather - Newspaper
  layout: newspaper
  elements:
  - title: City Temps
    name: City Temps
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_temp]
    pivots: [weather_api_result.city]
    fill_fields: [weather_api_result.query_minute15]
    sorts: [weather_api_result.query_minute15 desc, weather_api_result.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Temp, orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: 40, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 2
    col: 0
    width: 15
    height: 9
  - title: Wind Speed
    name: Wind Speed
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_wind]
    pivots: [weather_api_result.city]
    fill_fields: [weather_api_result.query_minute15]
    sorts: [weather_api_result.query_minute15 desc, weather_api_result.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 6
    col: 15
    width: 9
    height: 5
  - title: Current Rainfall
    name: Current Rainfall
    model: alerts_test
    explore: weather_api_result
    type: looker_bar
    fields: [weather_api_result.avg_rain, weather_api_result.city]
    filters:
      weather_api_result.query_minute15: 60 minutes
    sorts: [weather_api_result.avg_rain desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 11
    col: 0
    width: 15
    height: 5
  - title: Current SF Temp
    name: Current SF Temp
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_temp]
    filters:
      weather_api_result.city: San Francisco
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 0
    width: 5
    height: 2
  - title: Current SF Wind Speed
    name: Current SF Wind Speed
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.avg_wind]
    filters:
      weather_api_result.city: San Francisco
      weather_api_result.avg_wind: NOT NULL
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 5
    width: 5
    height: 2
  - title: Current SF Rainfall
    name: Current SF Rainfall
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.avg_rain]
    filters:
      weather_api_result.city: San Francisco
      weather_api_result.avg_rain: NOT NULL
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 10
    width: 5
    height: 2
  - title: Latest Weather Data
    name: Latest Weather Data
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15]
    filters:
      weather_api_result.avg_temp: ">0"
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 15
    width: 9
    height: 2
  - title: City Metrics
    name: City Metrics
    model: alerts_test
    explore: weather_api_result
    type: table
    fields: [weather_api_result.city, weather_api_result.avg_rain, weather_api_result.avg_temp,
      weather_api_result.avg_wind]
    filters:
      weather_api_result.query_minute15: 60 minutes
    sorts: [weather_api_result.avg_rain desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 2
    col: 15
    width: 9
    height: 4
  - title: Avg Temp by Date
    name: Avg Temp by Date
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.avg_temp, weather_api_result.query_date]
    fill_fields: [weather_api_result.query_date]
    filters:
      weather_api_result.query_date: 48 days
    sorts: [weather_api_result.query_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Temp, orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: 40, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 11
    col: 15
    width: 8
    height: 6
  filters:
  - name: Time Period
    title: Time Period
    type: date_filter
    default_value: 24 hours
    allow_multiple_values: true
    required: false
  - title: City Temps
    name: City Temps
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_temp]
    pivots: [weather_api_result.city]
    fill_fields: [weather_api_result.query_minute15]
    sorts: [weather_api_result.query_minute15 desc, weather_api_result.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Temp, orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: 40, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 2
    col: 0
    width: 15
    height: 9
  - title: Wind Speed
    name: Wind Speed
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_wind]
    pivots: [weather_api_result.city]
    fill_fields: [weather_api_result.query_minute15]
    sorts: [weather_api_result.query_minute15 desc, weather_api_result.city]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 6
    col: 15
    width: 9
    height: 5
  - title: Current Rainfall
    name: Current Rainfall
    model: alerts_test
    explore: weather_api_result
    type: looker_bar
    fields: [weather_api_result.avg_rain, weather_api_result.city]
    filters:
      weather_api_result.query_minute15: 60 minutes
    sorts: [weather_api_result.avg_rain desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 11
    col: 0
    width: 15
    height: 5
  - title: Current SF Temp
    name: Current SF Temp
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.city, weather_api_result.avg_temp]
    filters:
      weather_api_result.city: San Francisco
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 0
    width: 5
    height: 2
  - title: Current SF Wind Speed
    name: Current SF Wind Speed
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.avg_wind]
    filters:
      weather_api_result.city: San Francisco
      weather_api_result.avg_wind: NOT NULL
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 5
    width: 5
    height: 2
  - title: Current SF Rainfall
    name: Current SF Rainfall
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15, weather_api_result.avg_rain]
    filters:
      weather_api_result.city: San Francisco
      weather_api_result.avg_rain: NOT NULL
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: '', orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: !!null '',
        unpinAxis: true, tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Time Period: weather_api_result.query_date
    row: 0
    col: 10
    width: 5
    height: 2
  - title: Latest Weather Data
    name: Latest Weather Data
    model: alerts_test
    explore: weather_api_result
    type: single_value
    fields: [weather_api_result.query_minute15]
    filters:
      weather_api_result.avg_temp: ">0"
    sorts: [weather_api_result.query_minute15 desc]
    limit: 500
    column_limit: 50
    series_types: {}
    row: 0
    col: 15
    width: 9
    height: 2
  - title: City Metrics
    name: City Metrics
    model: alerts_test
    explore: weather_api_result
    type: table
    fields: [weather_api_result.city, weather_api_result.avg_rain, weather_api_result.avg_temp,
      weather_api_result.avg_wind]
    filters:
      weather_api_result.query_minute15: 60 minutes
    sorts: [weather_api_result.avg_rain desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    listen: {}
    row: 2
    col: 15
    width: 9
    height: 4
  - title: Avg Temp by Date
    name: Avg Temp by Date
    model: alerts_test
    explore: weather_api_result
    type: looker_area
    fields: [weather_api_result.avg_temp, weather_api_result.query_date]
    fill_fields: [weather_api_result.query_date]
    filters:
      weather_api_result.query_date: 48 days
    sorts: [weather_api_result.query_date desc]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    y_axes: [{label: Temp, orientation: left, series: [{axisId: weather_api_result.avg_temp,
            id: Daly City - weather_api_result.avg_temp, name: Daly City}, {axisId: weather_api_result.avg_temp,
            id: Emeryville - weather_api_result.avg_temp, name: Emeryville}, {axisId: weather_api_result.avg_temp,
            id: Oakland - weather_api_result.avg_temp, name: Oakland}, {axisId: weather_api_result.avg_temp,
            id: San Francisco - weather_api_result.avg_temp, name: San Francisco},
          {axisId: weather_api_result.avg_temp, id: Sausalito - weather_api_result.avg_temp,
            name: Sausalito}], showLabels: true, showValues: true, minValue: 40, unpinAxis: true,
        tickDensity: default, tickDensityCustom: 5, type: linear}]
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    series_types: {}
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    row: 11
    col: 15
    width: 8
    height: 6
  filters:
  - name: Time Period
    title: Time Period
    type: date_filter
    default_value: 24 hours
    allow_multiple_values: true
    required: false
