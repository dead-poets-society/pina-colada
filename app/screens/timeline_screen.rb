# class HomeScreen < PM::FormotionScreen
# class HomeScreen < PM::GroupedTableScreen

class TimelineScreen < GenericScreen

  stylesheet :home_css
  title 'Baby Path'

  layout :view do

  end

  def table_data
    # Moment.mock_formotion_table_data
    Moment.mock_grouped_table_data
  end
end


Teacup::Stylesheet.new :home_css do

  style :view,
    background: :white
end