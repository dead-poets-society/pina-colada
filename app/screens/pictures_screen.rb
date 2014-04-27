class PicturesScreen < GenericScreen

  stylesheet :pictures_css
  title 'Pictures'

  layout :pictures_view do

  end

  def on_load

  end
end


Teacup::Stylesheet.new :pictures_css do

  style :pictures_view,
    background: :white

end


