class AppDelegate < PM::Delegate

  attr_accessor :root_vc

  def application(application, didFinishLaunchingWithOptions: options)
    super
    Teacup::Appearance.apply
    true
  end

  def on_load(app, options)
    menu = MenuViewController.new
    menu.current = :timeline

    self.root_vc = frosted_view_controller(menu)
    self.root_vc.direction = REFrostedViewControllerDirectionLeft
    self.root_vc.menuViewSize = [(Device.screen.width / 2 + 40), 0]

    open self.root_vc
  end

  def show_menu
    self.root_vc.presentMenuViewController    # present frosted_view_controller manually
  end

  def frosted_view_controller(menu)
    REFrostedViewController.alloc.initWithContentViewController(
        GenericNavController.alloc.initWithRootViewController(TimelineScreen.new),
        menuViewController: menu)
  end
end


Teacup::Appearance.new do

  import :colors_css
  import :fonts_css

  style UINavigationBar,
    barTintColor: @dark_pink,
    titleTextAttributes: {
        UITextAttributeFont => @font_app_title,
        UITextAttributeTextShadowColor => :white.uicolor(0.4),
        UITextAttributeTextColor => :white.uicolor
    }

  style UIBarButtonItem, when_contained_in: UINavigationBar,
    tintColor: :white.uicolor

  style UIBarButtonItem, when_contained_in: [UIToolbar, UIPopoverController],
    tintColor: :white.uicolor
end
