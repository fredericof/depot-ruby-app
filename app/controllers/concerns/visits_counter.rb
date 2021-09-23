module VisitsCounter
  private

  def update_visits_counter
    session[:visits_counter] ||= 0
    session[:visits_counter] += 1
  end

  def clear_visits_counter
    session[:visits_counter] = 0
  end

  def visits_counter
    session[:visits_counter] || 0
  end
end
