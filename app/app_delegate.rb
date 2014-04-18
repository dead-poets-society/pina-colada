class AppDelegate < PM::Delegate

  status_bar true, animation: :none

  def application(application, didFinishLaunchingWithOptions: options)
    super
    Teacup::Appearance.apply
    true
  end

  def on_load(app, options)
    open Timeline.new(nav_bar: true)
  end
end

Teacup::Appearance.new do

  import :app_css

  style UINavigationBar,
    barTintColor: @dark_pink,
    titleTextAttributes: {
        UITextAttributeFont => UIFont.fontWithName('Noteworthy', size: 20),
        UITextAttributeTextShadowColor => UIColor.colorWithWhite(0.0, alpha: 0.4),
        UITextAttributeTextColor => UIColor.whiteColor
    }

  style UIBarButtonItem, when_contained_in: UINavigationBar,
    tintColor: UIColor.whiteColor

  style UIBarButtonItem, when_contained_in: [UIToolbar, UIPopoverController],
    tintColor: UIColor.whiteColor
end
