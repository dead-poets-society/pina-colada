class MenuViewController < UIViewController
  attr_accessor :current

  stylesheet :menu_css

  layout :view do
    subview UIImageView, :baby_icon

    [:timeline, :pictures, :statistic, :settings].each do |menu|
      subview(UIButton.system, menu).on(:touch) {open_screen(menu)}
    end
  end

  def open_screen(menu)
    ctrl = Object.const_get(menu.to_s.titleize.concat('Screen')).new
    App.delegate.root_vc.contentViewController =
      GenericNavController.alloc.initWithRootViewController(ctrl) unless self.current == menu
    App.delegate.root_vc.hideMenuViewController
    self.current = menu
  end
end


Teacup::Stylesheet.new :menu_css do

  import :colors_css
  import :fonts_css

  LEFT_MARGIN = 14

  style :view,
    background: :clear

  style :baby_icon,
    image: 'menu/mi_duo'.uiimage,
    constraints: [
      constrain_xy(LEFT_MARGIN,41)    # manually adjusted postion
    ]

  style :menu_button, extends: :font_menu,
    color: @dark_pink,
    contentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft,
    imageEdgeInsets: UIEdgeInsetsMake(0, LEFT_MARGIN, 0, 0),
    titleEdgeInsets: UIEdgeInsetsMake(0, 24, 0, 0),
    constraints: [:full_width]

  style :timeline, extends: :menu_button,
    constraints: [constrain_below(:baby_icon, 10)],
    title: 'Timeline',
    image: 'menu/timeline'.uiimage

  style :pictures, extends: :menu_button,
    constraints: [constrain_below(:timeline)],
    title: 'Pictures',
    image: 'menu/timeline'.uiimage

  style :statistic, extends: :menu_button,
    constraints: [constrain_below(:pictures)],
    title: 'Statistic',
    image: 'menu/timeline'.uiimage

  style :settings, extends: :menu_button,
    constraints: [constrain_bottom(-15)],
    title: 'Settings',
    image: 'menu/timeline'.uiimage
end