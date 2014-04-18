Teacup::Stylesheet.new :detail_css do

  import :sweettea
  import :app_css

  style :view,
    background: @light_pink

  style :hour_label, extends: :label,
    constraints: [:center_x, :center_y]


  style :info_label, extends: :label,
    constraints: [:center_x, constrain_below(:hour_label, 5)]

end