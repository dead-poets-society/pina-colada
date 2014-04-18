class DetailScreen < PM::Screen

  stylesheet :detail_css

  layout :view do
    subview UILabel, :hour_label, text: "#{self.time}:00"
    subview UILabel, :info_label, text: 'Content coming soon...'
  end

  attr_accessor :time

  def on_load
    set_nav_bar_button :left, title: 'timeline', action: :close_hour_screen
    self.title = "Events @#{self.time}:00"
  end

  def will_appear
  end

  def close_hour_screen
    close
  end
end
