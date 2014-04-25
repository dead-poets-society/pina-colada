class PicturesScreen < GenericScreen

  stylesheet :pictures_css
  title 'Pictures'

  layout :view do

  end

  def on_load

  end
end


Teacup::Stylesheet.new :pictures_css do

  style :view,
    background: :white

end


