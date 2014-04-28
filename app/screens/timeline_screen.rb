# class TimelineScreen < GenericScreen
# class TimelineScreen < PM::FormotionScreen
class TimelineScreen < PM::TableScreen

  # stylesheet :home_css
  title 'Baby Path'

  def on_init
    set_nav_bar_left_button 'menu/menuicon'.uiimage, target: App.delegate, action: :show_menu, accessibility_label: "Menu"
    set_nav_bar_right_button :system, system_icon: :add, action: :show_popup
  end

  def on_load
    @popup = PopupView.new
    @popup.home_screen = self
    self.view.on_tap { @popup.fade_out }

    add @popup, {
      hidden: true,
      background_color: '#E04F67'.uicolor,
      layer: {cornerRadius: 4},
      frame: [[Device.screen.width - 110, 10], [100, 120]],
    }
  end

  # layout self.view, :timeline_view do
  #   @popup = subview PopupView, :popup
  #   @popup.home_screen = self
  #   self.view.on_tap { @popup.fade_out }
  # end

  def table_data
    # Moment.mock_formotion_table_data
    Moment.mock_table_data
  end

  def show_popup
    @popup.hidden = false
    @popup.fade_in
  end

  def show_new_moment
    open_modal NewMomentScreen.new(nav_bar: true)
    @popup.fade_out
  end
end


# Teacup::Stylesheet.new :home_css do
#
#   style :timeline_view,
#     background: :white
# end