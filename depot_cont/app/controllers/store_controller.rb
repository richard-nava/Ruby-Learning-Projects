class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @products = Product.order(:title)
    @time = Time.now
    @views
  end

  def add_view
    @views += 1
  end
end
