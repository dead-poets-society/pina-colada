class Home < PM::GroupedTableScreen
  title 'Timeline'

  searchable placeholder: 'Find a day'

  def on_load
    set_nav_bar_button :left, title: 'left', action: :open_left_screen
  end

  def will_appear
    set_attributes self.view, {backround_color: hex_color('#FFFFFF')}
  end

  def table_data
    [{
         cells: (0..23).map do |hour|
           cell_content(hour)
         end
     }]
  end

  def cell_content(hour)
    {
      title: "#{hour}:00",
      sutitle: 'Hour Content',
      action: :open_hour,
      arguments: { time: hour }
    }
  end

  def open_left_screen
    open_modal LeftScreen.new(nav_bar: true)
  end

  def open_hour(args)
    open HourScreen.new(time: args[:time])
  end

end