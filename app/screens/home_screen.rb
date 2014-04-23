# class HomeScreen < PM::FormotionScreen
class HomeScreen < PM::Screen

  stylesheet :home_css

  title 'Baby Path'
  layout :view do
    @add_record_popup = subview AddRecordPopupView, :add_record_popup
    self.view.on_tap { @add_record_popup.fade_out }
  end

  def on_load
    set_nav_bar_right_button '', system_icon: :add, action: :on_add_record
    set_nav_bar_left_button 'list'.uiimage, action: :on_open_menu
  end

  def table_data
    Moment.mock_formotion_table_data
  end

  def on_add_record
    @add_record_popup.hidden = false
    @add_record_popup.fade_in
  end

  def on_open_menu
    puts "opening menu..."
  end
end


Teacup::Stylesheet.new :home_css do

  style :view,
    background: :white
end