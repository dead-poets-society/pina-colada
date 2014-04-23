class AddRecordPopupView < UIView

  def initWithFrame(frame)
    super.tap do
      self.stylesheet = :add_record_popup_css

      subview(UIImageView,     :moment_icon)
      subview(UIButton.system, :moment_btn, title: 'Moment')

      subview(UILabel, :separator_1)

      subview(UIImageView,     :camera_icon)
      subview(UIButton.system, :camera_btn, title: 'Picture')

      subview(UILabel, :separator_2)

      subview(UIImageView,     :notebook_icon)
      subview(UIButton.system, :notebook_btn, title: 'Note')
    end
  end
end


Teacup::Stylesheet.new :add_record_popup_css do

  import :app_css

  MARGIN = 5
  ICON_TOP_MARGIN = MARGIN + 6
  STATUS_AND_NAV_BAR = 65

  style AddRecordPopupView,
    background: @dark_pink,
    constraints: [
      constrain_right(-MARGIN),
      constrain_top(STATUS_AND_NAV_BAR + MARGIN),
      constrain_width(80),
      constrain_height(100)
    ],
    hidden: true

  style :popup_item,
    color: :white,
    font: :system.uifont(12),
    constraints: [constrain_left(MARGIN + 2)]

  style :separator,
    background: '#B22222'.uicolor,
    constraints: [
      constrain_left(MARGIN),
      constrain_right(-MARGIN),
      constrain_height(1)
    ]

  style :icon,
    constraints: [
      constrain_width(16),
      constrain_height(16),
      constrain_left(MARGIN + 2)
    ]

  style :moment_icon, extends: :icon,
    image: 'clock_44'.uiimage,
    constraints: [ constrain_top(ICON_TOP_MARGIN) ]

  style :moment_btn, extends: :popup_item,
    constraints: [
      constrain_top(MARGIN),
      constrain_to_right(:moment_icon, MARGIN)
    ]

  style :separator_1, extends: :separator,
    constraints: [constrain_below(:moment_btn, 0)]

  style :camera_icon, extends: :icon,
    image: 'camera_44'.uiimage,
    constraints: [ constrain_below(:separator_1, ICON_TOP_MARGIN) ]

  style :camera_btn, extends: :popup_item,
    constraints: [
      constrain_below(:separator_1, MARGIN),
      constrain_to_right(:camera_icon, MARGIN)
    ]

  style :separator_2, extends: :separator,
        constraints: [constrain_below(:camera_btn, 0)]

  style :notebook_icon, extends: :icon,
    image: 'notebook_44'.uiimage,
    constraints: [ constrain_below(:separator_2, ICON_TOP_MARGIN) ]

  style :notebook_btn, extends: :popup_item,
    constraints: [
      constrain_below(:separator_2, MARGIN),
      constrain_to_right(:notebook_icon, MARGIN)
    ]
end


