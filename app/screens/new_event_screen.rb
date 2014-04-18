class NewEventScreen < PM::DetailScreen

  stylesheet :new_event_css
  title 'New Event'

  layout :view do
    subview UILabel, :place_holder, text: 'Content coming soon...'
  end

  def on_load
    set_nav_bar_button :left,  title: 'Cancel', action: :cancel
    set_nav_bar_button :right, title: 'Save',   action: :save
  end

  def cancel
    close
  end

  def save
    close
  end

end