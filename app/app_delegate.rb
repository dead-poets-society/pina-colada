class AppDelegate < PM::Delegate

  status_bar true, animation: :none

  def application(application, didFinishLaunchingWithOptions: options)
    super
    Teacup::Appearance.apply
    true
  end

  def on_load(app, options)
    open HomeScreen.new(nav_bar: true)
  end
end

Teacup::Appearance.new do

  import :app_css

  style UINavigationBar,
    barTintColor: @dark_pink,
    titleTextAttributes: {
        UITextAttributeFont => 'Noteworthy'.uifont(20),
        UITextAttributeTextShadowColor => :white.uicolor(0.4),
        UITextAttributeTextColor => :white.uicolor
    }

  style UIBarButtonItem, when_contained_in: UINavigationBar,
    tintColor: :white.uicolor

  style UIBarButtonItem, when_contained_in: [UIToolbar, UIPopoverController],
    tintColor: :white.uicolor
end
