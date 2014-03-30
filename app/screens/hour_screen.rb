class HourScreen < PM::Screen

  attr_accessor :time

  title 'Hour'

  def on_load
    set_nav_bar_button :left, title: 'Done', action: :close_hour_screen
  end

  def will_appear
    set_attributes self.view, {
        background_color: hex_color("#FFFFFF")
    }

    puts "HourScreen: self.time = #{self.time}"
  end

  def close_hour_screen
    close
  end

end