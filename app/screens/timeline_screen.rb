# class HomeScreen < PM::FormotionScreen
# class HomeScreen < PM::GroupedTableScreen

class TimelineScreen < GenericScreen

  stylesheet :home_css
  title 'Baby Path'

  layout :timeline_view do
    @popup = subview PopupView, :popup
    @popup.home_screen = self
    self.view.on_tap { @popup.fade_out }
  end

  def on_init
    super
    set_nav_bar_right_button :system, system_icon: :add, action: :show_popup
  end

  # def table_data
  #   # Moment.mock_formotion_table_data
  #   Moment.mock_grouped_table_data
  # end

  def show_popup
    @popup.hidden = false
    @popup.fade_in
  end

  def show_new_moment
    open_modal NewMomentScreen.new(nav_bar: true)
    @popup.fade_out
  end
end


Teacup::Stylesheet.new :home_css do

  style :timeline_view,
    background: :white
end