class StoreController < ApplicationController
  include CurrentCart

  before_action :countStoreIndex, only: [:index]



  def index
    @products = Product.order(:title)

  end
end
