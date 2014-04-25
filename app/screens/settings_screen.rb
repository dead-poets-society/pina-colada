class SettingsScreen < GenericScreen

  stylesheet :settings_css
  title 'Settings'

  layout :view do

  end

  def on_load

  end
end


Teacup::Stylesheet.new :settings_css do

  style :view,
    background: :white

end