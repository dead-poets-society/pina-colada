def rgb(r, g, b)
  UIColor.colorWithRed(r/255.0, green: g/255.0, blue: b/255.0, alpha: 1.0)
end

Teacup::Stylesheet.new :app_css do


  @light_pink = rgb(237, 237, 237)
  @pink = rgb(240, 178, 201)
  @dark_pink = rgb(224, 79, 103)


end

