class StoreController < ApplicationController
  include VisitsCounter
  before_action :update_visits_counter, only: [:index]

  def index
    session[:visits_counter] = 1 if visits_counter > 10

    return render plain: visits_counter if visits_counter > 5

    @products = Product.order(:title)
  end
end
