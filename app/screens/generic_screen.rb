class GenericScreen < PM::Screen

  layout :view do
    subview App.delegate.popup, :popup
    self.view.on_tap { App.delegate.popup.fade_out }
  end

  def on_init
    set_nav_bar_button :left, {
      target: App.delegate,
      image: 'menuicon'.uiimage,
      action: :show_menu,
      accessibility_label: "Menu"
    }

    set_nav_bar_button :right, {
      target: App.delegate,
      system_icon: :add,
      action: :show_popup
    }
  end
end
