class RestaurantsController < ApplicationController
  RESTAURANTS = {
    1 => { name: "Wagas", address: "Donghu Rd, Shanghai", category: "salads" },
    2 => { name: "Yang's Dumplings", address: "West Nanjing, Shanghai", category: "dumpling" }
  }
  def index
    @categories = %w(hunan cantonese hotpot dongbei)
    @food_type = params[:food_type]
    if @food_type.present?
      @restaurants = RESTAURANTS.select {|id, r| r[:category] == @food_type }
    else
      @restaurants = RESTAURANTS
    end

    stupid_method("hello")
  end

  def create
    # r = Restaurant.new(name: params[:name], address: params[:address])
    # r.save
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
    # @restaurant = Restaurant.find(params[:id])
  end

  def stupid_method(word)
    @name = word
  end

end
