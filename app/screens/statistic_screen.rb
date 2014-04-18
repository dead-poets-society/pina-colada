class StatisticScreen <PM::Screen

  stylesheet :statistic_css

  layout :view do

  end

  def on_init
    @today = today_in_word
  end

  def on_load
    set_nav_bar_button :right, title: 'timeline', action: :close_screen
    self.title = "#{@today}"
  end

  def close_screen
    close
  end

  def today_in_word
    now = NSDate.now
    date_formatter = NSDateFormatter.new
    date_formatter.dateFormat = 'MM/dd/yyyy'
    date_formatter.stringFromDate(now)
  end
end