- dashboard: magento_sales
  title: Magento Sales
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: PsqRRh36AzI8gsJ4rC55bn
  elements:
  - title: Untitled
    name: Untitled
    model: data_lizards
    explore: sales_order
    type: single_value
    fields: [sum_of_grand_total]
    limit: 500
    dynamic_fields: [{measure: sum_of_subtotal, based_on: sales_order.subtotal, expression: '',
        label: Sum of Subtotal, type: sum, _kind_hint: measure, _type_hint: number},
      {category: measure, expression: '', label: Sum of Total Due, value_format: !!null '',
        value_format_name: usd_0, based_on: sales_order.total_due, _kind_hint: measure,
        measure: sum_of_total_due, type: sum, _type_hint: number}, {category: measure,
        expression: '', label: Sum of Grand Total, value_format: !!null '', value_format_name: usd_0,
        based_on: sales_order.grand_total, _kind_hint: measure, measure: sum_of_grand_total,
        type: sum, _type_hint: number}]
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    single_value_title: Total revenue
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    series_types: {}
    hidden_pivots: {}
    listen: {}
    row: 0
    col: 0
    width: 8
    height: 6
  - title: "% orders per store"
    name: "% orders per store"
    model: data_lizards
    explore: sales_order
    type: looker_donut_multiples
    fields: [sales_order.count, store.name, a]
    pivots: [store.name]
    sorts: [store.name, sales_order.count desc 0]
    limit: 500
    dynamic_fields: [{category: dimension, expression: '1', label: a, value_format: !!null '',
        value_format_name: !!null '', dimension: a, _kind_hint: dimension, _type_hint: number}]
    show_value_labels: true
    font_size: 12
    series_labels:
      Default Store View - sales_order.count: Store 1
      Store view 2 - website_id_2 - group_id_2 - sales_order.count: Store 2
      Store view 3 - website_id_3 - group_id_3 - sales_order.count: Store 3
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
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
    point_style: none
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    hidden_fields: [a]
    row: 6
    col: 15
    width: 9
    height: 6
  - title: Untitled
    name: Untitled (2)
    model: data_lizards
    explore: sales_order
    type: single_value
    fields: [sales_order.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Total Orders
    defaults_version: 1
    row: 0
    col: 8
    width: 8
    height: 6
  - title: Sales per Item
    name: Sales per Item
    model: data_lizards
    explore: sales_order
    type: looker_column
    fields: [sales_order_item.name, sales_order_item.count]
    pivots: [sales_order_item.name]
    sorts: [sales_order_item.name]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: false
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Number of Items Sold, orientation: left, series: [{axisId: sales_order_item.count,
            id: sales_order_item.count, name: Sales Order Item}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Product
    x_axis_zoom: true
    y_axis_zoom: true
    series_types: {}
    series_colors:
      sales_order_item.count: "#592EC2"
    label_color: ["#000000"]
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    hidden_pivots: {}
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    row: 6
    col: 0
    width: 15
    height: 6
  - title: Discounted Items
    name: Discounted Items
    model: data_lizards
    explore: sales_order
    type: looker_grid
    fields: [sales_order_item.name, sales_order_item.original_price, sales_order_item.discount_amount]
    sorts: [sales_order_item.name, sales_order_item.original_price desc]
    limit: 500
    dynamic_fields: [{category: table_calculation, expression: "${sales_order_item.original_price}-${sales_order_item.discount_amount}",
        label: Discounted Price, value_format: !!null '', value_format_name: usd,
        _kind_hint: dimension, table_calculation: discounted_price, _type_hint: number}]
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: gray
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    truncate_header: false
    series_labels: {}
    series_cell_visualizations:
      discounted_price:
        is_active: false
        palette:
          palette_id: 4a543302-b64d-409c-9863-679b5b230aac
          collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
    series_text_format:
      sales_order_item.name:
        align: center
      sales_order_item.original_price:
        align: center
      sales_order_item.discount_amount:
        align: center
        fg_color: "#B32F37"
      discounted_price:
        align: center
        fg_color: "#07814A"
    conditional_formatting: [{type: along a scale..., value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_value_format:
      sales_order_item.original_price:
        name: usd_0
        decimals: '0'
        format_string: "$#,##0"
        label: U.S. Dollars (0)
        label_prefix: U.S. Dollars
      sales_order_item.discount_amount:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
      discounted_price:
        name: usd
        decimals: '2'
        format_string: "$#,##0.00"
        label: U.S. Dollars (2)
        label_prefix: U.S. Dollars
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    series_types: {}
    hidden_fields:
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    listen: {}
    row: 12
    col: 0
    width: 10
    height: 4
  - title: Untitled (Copy)
    name: Untitled (Copy)
    model: data_lizards
    explore: sales_order
    type: single_value
    fields: [sales_order_item.count]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#000000"
    single_value_title: Total Items
    defaults_version: 1
    hidden_pivots: {}
    row: 0
    col: 16
    width: 8
    height: 6
