class NewMomentScreen < PM::FormotionScreen

  stylesheet :new_moment_css
  title 'New Moment'

  layout :new_moment_view do

  end

  def on_load
    set_nav_bar_right_button 'Cancel', action: :cancel
  end

  def table_data
    Moment.mock_formotion_table_data
  end

  def cancel
    close_screen
  end
end


Teacup::Stylesheet.new :new_moment_css do

  style :new_moment_view,
    background: :white

end