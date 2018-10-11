class Cart < ApplicationRecord
  has_many :line_items, dependent: :destroy







  def add_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item

      current_item.quantity += 1

    else
      current_item = line_items.build(product_id: product.id)


    end
    current_item.totalPrice=current_item.total_price
    current_item
  end

  def minus_product(product)
    current_item = line_items.find_by(product_id: product.id)
    if current_item.quantity==0
         redirect_to line_item_url(current_item), method: :delete
    else
      current_item.quantity -= 1

    end
    current_item.totalPrice=current_item.total_price
    current_item
  end

  def total_price
    line_items.to_a.sum { |item| item.total_price }
  end







end
