class StoreController < ApplicationController
  def index
    @products = Product.order(:title)
    @time = Time.now
    @views
  end

  def add_view
    @views += 1
  end
end
