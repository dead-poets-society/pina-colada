class TimelineScreen < PM::TableScreen

  searchable placeholder: 'Find a moment'

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
      layer: {
        corner_radius: 4.0,
        shadow_radius: 4.0,
        shadow_opacity: 0.4,
        shadow_color: UIColor.blackColor.CGColor
      },
      frame: popup_frame,
    }
  end

  def table_data
    # Moment.mock_formotion_table_data
    Moment.mock_table_data
  end

  def show_popup
    @popup.hidden = false
    @popup.fade_in
    self.view.bringSubviewToFront @popup
  end

  def show_new_moment
    open_modal NewMomentScreen.new(nav_bar: true)
    @popup.fade_out
  end

  def popup_frame
    w = 110
    h = 130
    right_margin = 10
    x = Device.screen.width - right_margin - w
    y = 20

    [[x, y], [w, h]]
  end
end
