- dashboard: Fun Facts
  layout: newspaper

  elements:
  - name: Most WS Wins by League
    label: Most WS Wins by League
    model: history_of_baseball
    explore: postseason
    type: looker_pie
    fields:
    - postseason.league_id_winner
    - postseason.count
    filters:
      postseason.league_id_winner: "-AA"
      postseason.round: WS
    sorts:
    - postseason.count desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_colors:
      NL: "#3D6D9E"
    series_types: {}
    colors: 'palette: Tomato to Steel Blue'
    listen: {}
    row: 18
    col: 0
    width: 24
    height: 9
  - name: Both Batting Average
    label: Both Batting Average
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - batting.total_hits
    - batting.total_at_bats
    filters:
      player.bats: Both
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: lefty_batting_average
      label: Lefty Batting Average
      expression: "${batting.total_hits} / ${batting.total_at_bats}"
      value_format:
      value_format_name: decimal_3
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - batting.total_hits
    - batting.total_at_bats
    listen: {}
    row: 30
    col: 16
    width: 8
    height: 2
  - name: Most Postseason Appearance
    label: Most Postseason Appearance
    model: history_of_baseball
    explore: batting_postseason
    type: single_value
    fields:
    - batting_postseason.count
    - player.name
    sorts:
    - batting_postseason.count desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: concat(${player.name}, " - ", ${batting_postseason.count})
    query_timezone: America/Los_Angeles
    custom_color_enabled: true
    custom_color: "#3D6D9E"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    single_value_title: Most Postseason Appearances
    hidden_fields:
    - batting_postseason.count
    listen: {}
    row: 35
    col: 0
    width: 12
    height: 8
  - name: Players Who Made the All Stars and Went to WS and Won
    label: Players Who Made the All Stars and Went to WS and Won
    model: history_of_baseball
    explore: all_star
    type: table
    fields:
    - player.name
    - all_star.year
    - team.name
    filters:
      team.ws_win: 'Yes'
    sorts:
    - all_star.year desc
    limit: 30
    column_limit: 50
    filter_expression: "${all_star.year} = ${team.year}"
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    series_labels:
      player.real_name: Player
      team.name: Team
    listen: {}
    row: 35
    col: 12
    width: 12
    height: 8
  - name: Top 10 Stolen Bases
    label: Top 10 Stolen Bases
    model: history_of_baseball
    explore: batting
    type: table
    fields:
    - batting.total_stolen_bases
    - batting.total_caught_stealing
    - player.name
    filters:
      batting.year: ">1900"
    sorts:
    - batting.total_stolen_bases desc
    - player.name_first
    - player.name_last
    limit: 10
    column_limit: 10
    dynamic_fields:
    - table_calculation: success_rate
      label: Success Rate
      expression: "${batting.total_stolen_bases} / (${batting.total_caught_stealing}\
        \ + ${batting.total_stolen_bases})"
      value_format:
      value_format_name: percent_2
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: false
    truncate_column_names: true
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    value_labels: legend
    label_type: labPer
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    hide_legend: false
    series_colors:
      batting.total_caught_stealing: "#9F6777"
      success_rate: "#3D6D9E"
    x_axis_label: Player
    colors:
    - 'palette: Tomato to Steel Blue'
    font_size: ''
    series_types: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    x_padding_left:
    label_rotation: 360
    enable_conditional_formatting: false
    conditional_formatting_ignored_fields: []
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    listen: {}
    row: 53
    col: 12
    width: 12
    height: 8
  - name: Total Lefty Batting Average
    label: Total Lefty Batting Average
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - batting.total_hits
    - batting.total_at_bats
    filters:
      player.bats: Left
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: lefty_batting_average
      label: Lefty Batting Average
      expression: "${batting.total_hits} / ${batting.total_at_bats}"
      value_format:
      value_format_name: decimal_3
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - batting.total_hits
    - batting.total_at_bats
    listen: {}
    row: 30
    col: 0
    width: 9
    height: 2
  - name: Total Righty Batting Average
    label: Total Righty Batting Average
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - batting.total_hits
    - batting.total_at_bats
    filters:
      player.bats: Right
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: lefty_batting_average
      label: Lefty Batting Average
      expression: "${batting.total_hits} / ${batting.total_at_bats}"
      value_format:
      value_format_name: decimal_3
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_fields:
    - batting.total_hits
    - batting.total_at_bats
    listen: {}
    row: 30
    col: 9
    width: 7
    height: 2
  - name: Wild Card World Series Winner Stats
    label: Wild Card World Series Winner Stats
    model: history_of_baseball
    explore: team
    type: table
    fields:
    - team.name
    - team.year
    - team.total_wins
    - team.total_losses
    - team.total_runs
    - team.total_runs_given_up
    - team.total_home_runs
    - team.total_home_runs_given_up
    - team.total_doubles
    - team.total_triples
    - team.batting_average
    filters:
      team.wc_win: 'Yes'
      team.ws_win: 'Yes'
    sorts:
    - team.year desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: none
    interpolation: linear
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors: {}
    hidden_series: []
    listen: {}
    row: 64
    col: 12
    width: 12
    height: 8
  - name: Won Wild Card and Won World Series
    label: Won Wild Card and Won World Series
    model: history_of_baseball
    explore: team
    type: table
    fields:
    - team.name
    - team.year
    filters:
      team.wc_win: 'Yes'
      team.ws_win: 'Yes'
    sorts:
    - team.year desc
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: true
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    listen: {}
    row: 64
    col: 0
    width: 12
    height: 8
  - name: Highest Paid Players
    label: Highest Paid Players
    model: history_of_baseball
    explore: salary
    type: table
    fields:
    - salary.total_salary
    - salary.total_years_played
    - player.name
    sorts:
    - salary.total_salary desc
    limit: 15
    column_limit: 50
    dynamic_fields:
    - table_calculation: salary_per_year
      label: Salary Per Year
      expression: "${salary.total_salary} / ${salary.total_years_played}"
      value_format:
      value_format_name: usd
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_labels:
      salary.max_salary: Salary
    series_types: {}
    listen: {}
    row: 74
    col: 0
    width: 24
    height: 8
  - name: World Series Wins
    label: World Series Wins
    model: history_of_baseball
    explore: team
    type: single_value
    fields:
    - team.name
    - team.ws_win
    - team.count
    filters:
      team.ws_win: 'Yes'
    sorts:
    - team.count
    limit: 500
    column_limit: 50
    total: true
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: sum(${team.count})
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: true
    show_comparison: true
    comparison_type: progress
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    series_types: {}
    single_value_title: ''
    hidden_fields:
    - team.ws_win
    - team.count
    listen:
      World_Series_Wins: team.name
    row: 101
    col: 0
    width: 24
    height: 2
  - name: World Series Wins vs Loss
    label: World Series Wins vs. Loss
    model: history_of_baseball
    explore: team
    type: looker_donut_multiples
    fields:
    #- team.ws_win
    - team.count
    - team.name
    pivots:
    - team.ws_win
    fill_fields:
    #- team.ws_win
    filters:
      team.lg_win: 'Yes'
    sorts:
    - team.count desc
    - team.ws_win
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_value_labels: true
    value_labels: legend
    label_type: labPer
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    series_labels:
      No - Team Count: Loss
      Yes - Team Count: Won
    series_types: {}
    hide_legend: false
    font_size: 12
    colors: 'palette: Tomato to Steel Blue'
    series_colors:
      Yes - Team Count: "#3D6D9E"
    listen:
      World_Series_Wins: team.name
    row: 93
    col: 0
    width: 24
    height: 8
  - name: Stellar Players!
    type: text
    title_text: Stellar Players!
    body_text: Who's made the most Post Season appearances and who was an All Star
      and went on to win the World Series that same year.
    row: 32
    col: 0
    width: 24
    height: 3
  - name: Worst Base Stealers
    label: Worst Base Stealers
    model: history_of_baseball
    explore: batting
    type: table
    fields:
    - batting.total_stolen_bases
    - batting.total_caught_stealing
    - batting.success_rate
    - player.name
    filters:
      batting.total_stolen_bases: ">10"
      batting.success_rate: "(0, 1)"
      batting.year: ">=1920"
    sorts:
    - batting.success_rate
    limit: 5000
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    limit_displayed_rows_values:
      show_hide: show
      first_last: first
      num_rows: '10'
    listen: {}
    row: 53
    col: 0
    width: 12
    height: 8
  - name: Batter up!
    type: text
    title_text: Batter up!
    subtitle_text: Who Bats Better?
    body_text: Lefties, Righties, or Both?
    row: 27
    col: 0
    width: 24
    height: 3
  - name: Which League is Better?
    type: text
    title_text: Which League is Better?
    body_text: Why the American League is better than the National League.
    row: 6
    col: 0
    width: 24
    height: 3
  - name: Base Stealing!
    type: text
    title_text: Base Stealing!
    body_text: The best and worse at base stealing.
    row: 51
    col: 0
    width: 24
    height: 2
  - name: Highest Paid Players Stats (Pitching)
    label: Highest Paid Players Stats (Pitching)
    model: history_of_baseball
    explore: pitching
    type: table
    fields:
    - pitching.average_era
    - pitching.total_wins
    - pitching.total_losses
    - pitching.total_shutouts
    - pitching.opposing_batting_average
    - pitching.total_walks
    - pitching.total_strikeouts
    - pitching.total_hits
    - salary.total_years_played
    - pitching.total_games_played
    - salary.total_salary
    - pitching.name
    filters:
      player.name: "-Ichiro Suzuki,-Adam Dunn"
    sorts:
    - salary.total_salary desc
    limit: 10
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_fields:
    - salary.total_salary
    listen: {}
    row: 82
    col: 12
    width: 12
    height: 9
  - name: Highest Paid Players Stats (Batting)
    label: Highest Paid Players Stats (Batting)
    model: history_of_baseball
    explore: player
    type: table
    fields:
    - batting.batting_average
    - batting.total_doubles
    - batting.total_rbis
    - batting.total_triples
    - batting.total_home_runs
    - salary.total_years_played
    - salary.total_salary
    - player.name
    sorts:
    - salary.total_salary desc 0
    limit: 20
    column_limit: 10
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    series_types: {}
    hidden_series: []
    hidden_fields:
    - salary.total_salary
    listen: {}
    row: 82
    col: 0
    width: 12
    height: 9
  - name: The Underdogs!
    type: text
    title_text: The Underdogs!
    body_text: Teams who won the Wild Card and the World Series.
    row: 61
    col: 0
    width: 24
    height: 3
  - name: Show Me the Money!
    type: text
    title_text: Show Me the Money!
    body_text: How much has a player made.
    row: 72
    col: 0
    width: 24
    height: 2
  - name: Winning the Last Game
    type: text
    title_text: Winning the Last Game
    body_text: How many times has your team won the World Series or lost?
    row: 91
    col: 0
    width: 24
    height: 2
  - name: AL HR
    label: AL HR
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - team.league_id
    - batting.total_home_runs
    filters:
      team.league_id: AL
    sorts:
    - batting.total_home_runs desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '"American League Home Runs"'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    show_value_labels: true
    font_size: '12'
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors:
      NL: "#3D6D9E"
    series_labels:
      AL: American League
      NL: National League
    hidden_fields:
    - team.league_id
    listen: {}
    row: 12
    col: 0
    width: 12
    height: 3
  - name: AL BA
    label: AL BA
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - batting.batting_average
    - team.league_id
    filters:
      team.league_id: AL
    sorts:
    - batting.batting_average desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '"American League Batting Average"'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    font_size: '12'
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors:
      NL: "#3D6D9E"
    series_labels:
      AL: American League
      NL: National League
    hidden_fields:
    - team.league_id
    listen: {}
    row: 15
    col: 0
    width: 12
    height: 3
  - name: NL BA
    label: NL BA
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - batting.batting_average
    - team.league_id
    filters:
      team.league_id: NL
    sorts:
    - batting.batting_average desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '"National League Batting Average"'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    font_size: '12'
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors:
      NL: "#3D6D9E"
    series_labels:
      AL: American League
      NL: National League
    hidden_fields:
    - team.league_id
    listen: {}
    row: 15
    col: 12
    width: 12
    height: 3
  - name: NL HR
    label: NL HR
    model: history_of_baseball
    explore: batting
    type: single_value
    fields:
    - team.league_id
    - batting.total_home_runs
    filters:
      team.league_id: NL
    sorts:
    - batting.total_home_runs desc
    limit: 500
    column_limit: 50
    dynamic_fields:
    - table_calculation: calculation_1
      label: Calculation 1
      expression: '"National League Home Runs"'
    query_timezone: America/Los_Angeles
    custom_color_enabled: false
    custom_color: forestgreen
    show_single_value_title: false
    show_comparison: true
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: false
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: true
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    show_null_points: true
    point_style: circle
    interpolation: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    ordering: none
    show_null_labels: false
    value_labels: legend
    label_type: labPer
    font_size: '12'
    series_types: {}
    colors:
    - 'palette: Tomato to Steel Blue'
    series_colors:
      NL: "#3D6D9E"
    series_labels:
      AL: American League
      NL: National League
    hidden_fields:
    - team.league_id
    listen: {}
    row: 12
    col: 12
    width: 12
    height: 3
  - name: AL v NL Pitching
    label: AL v NL Pitching
    model: history_of_baseball
    explore: pitching
    type: table
    fields:
    - team.league_id
    - pitching.total_strikeouts
    - pitching.total_walks
    filters:
      team.league_id: NL,AL
    sorts:
    - team.league_id
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    show_row_numbers: false
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: white
    limit_displayed_rows: false
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_null_points: true
    point_style: circle
    interpolation: linear
    value_labels: legend
    label_type: labPer
    series_types: {}
    listen: {}
    row: 9
    col: 0
    width: 24
    height: 3
  - name: Story of America's Favorite Pastime
    type: text
    title_text: Story of America's Favorite Pastime
    row: 0
    col: 0
    width: 24
    height: 4
  - name: "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    type: text
    title_text: "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    row: 4
    col: 0
    width: 24
    height: 2
  filters:
  - name: World_Series_Wins
    title: World Series Wins
    type: field_filter
    default_value: '%Athletics%'
    model: history_of_baseball
    explore: team
    field: team.name
    listens_to_filters: []
