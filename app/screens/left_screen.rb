class LeftScreen <PM::Screen

  title 'Left'

  def on_load
    set_nav_bar_button :right, title: 'Done', action: :close_left_screen
  end

  def close_left_screen
    close
  end
end