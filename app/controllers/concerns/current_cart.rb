module CurrentCart
@@count=0


  private
  def set_cart

    @cart = Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    @cart = Cart.create
    session[:cart_id] = @cart.id
  end

  private
  def countStoreIndex
@@count+=1
      session[:counter] =@@count

  end

private
def resetCount
  @@count=0
  session[:counter] =@@count

end

end