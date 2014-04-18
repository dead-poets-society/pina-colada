Teacup::Stylesheet.new :new_event_css do

  import :sweettea
  import :app_css

  style :view,
    background: @light_pink

  style :place_holder, extends: :label,
    constraints: [:center_x, :center_y]

end