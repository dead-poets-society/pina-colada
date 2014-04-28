class MenuViewController < UIViewController
  attr_accessor :current

  stylesheet :menu_css

  layout :menu_view do
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

  LEFT_INSET = 14
  ITEM_Y_MARGIN = 5
  ITEM_IMG_TITLE_INSET = 24

  style :menu_item,
    color: @dark_pink,
    font: @font_menu_item,
    contentHorizontalAlignment: UIControlContentHorizontalAlignmentLeft,
    imageEdgeInsets: UIEdgeInsetsMake(0, LEFT_INSET, 0, 0),
    titleEdgeInsets: UIEdgeInsetsMake(0, ITEM_IMG_TITLE_INSET, 0, 0),
    constraints: [:full_width]

  style :menu_view,
    background: :clear

  style :baby_icon,
    image: 'menu/baby_icon'.uiimage,
    constraints: [constrain_xy(LEFT_INSET,41)]    # manually adjusted postion

  style :timeline, extends: :menu_item,
    constraints: [constrain_below(:baby_icon, ITEM_Y_MARGIN * 2)],
    title: 'Timeline',
    image: 'menu/timeline'.uiimage

  style :pictures, extends: :menu_item,
    constraints: [constrain_below(:timeline, ITEM_Y_MARGIN)],
    title: 'Pictures',
    image: 'menu/picture'.uiimage

  style :statistic, extends: :menu_item,
    constraints: [constrain_below(:pictures, ITEM_Y_MARGIN)],
    title: 'Statistic',
    image: 'menu/statistic'.uiimage

  style :settings, extends: :menu_item,
    constraints: [constrain_bottom(-15)],
    title: 'Settings',
    image: 'menu/setting'.uiimage
end