class NewMomentScreen < PM::Screen

  stylesheet :new_moment_css
  title 'New Moment'

  layout :view do

  end

  def on_load
    set_nav_bar_right_button 'Cancel', action: :close
  end

  def table_data
    Moment.mock_grouped_table_data
  end

  def close
    close
  end
end


Teacup::Stylesheet.new :new_moment_css do

  style :view,
    background: :white

end