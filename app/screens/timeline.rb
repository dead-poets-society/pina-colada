class Timeline < PM::GroupedTableScreen

  title 'Baby Path'
  searchable placeholder: 'Find a moment'

  def on_load
    set_nav_bar_button :right, system_icon: :add, action: :new_event
    set_nav_bar_button :left, title: 'statistic', action: :open_statistic
    @moment = Moment.new
  end

  def table_data
    [{ cells: @moment.records }]
  end

  def open_statistic
    open_modal StatisticScreen.new(nav_bar: true)
  end

  def open_detail(args)
    open DetailScreen.new(time: args[:time])
  end

  def new_event
    open NewEventScreen.new(nav_bar: true)
  end

end