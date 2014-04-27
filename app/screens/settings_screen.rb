class SettingsScreen < GenericScreen

  stylesheet :settings_css
  title 'Settings'

  layout :settings_view do

  end

  def on_load

  end
end


Teacup::Stylesheet.new :settings_css do

  style :settings_view,
    background: :white

end