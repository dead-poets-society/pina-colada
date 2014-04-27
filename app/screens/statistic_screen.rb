class StatisticScreen < GenericScreen

  stylesheet :statistic_css

  layout :statistic_view do
    subview UILabel, :info, text: 'statistic charts coming soon...'
  end

  def on_load
    @today = today_in_word
    self.title = "#{@today}"
  end

  def today_in_word
    now = NSDate.now
    date_formatter = NSDateFormatter.new
    date_formatter.dateFormat = 'MM/dd/yyyy'
    date_formatter.stringFromDate(now)
  end
end


Teacup::Stylesheet.new :statistic_css do

  import :colors_css

  style :statistic_view,
    background: :white

end