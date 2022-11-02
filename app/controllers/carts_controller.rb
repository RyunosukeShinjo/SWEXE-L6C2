class CartsController < ApplicationController
    def show
      @cart = Cartitem.where(cart_id: current_cart.id)
    end
end
