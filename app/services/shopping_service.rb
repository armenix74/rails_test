module ShoppingService

def ShoppingService.add_to_cart(_cart, _product)
  
    c = _cart
    p = _product
    
    if (c.cart_items.count == 0)
      c.cart_items << CartItem.create(:product_id =>p.id, :quantity => 1)
    else      
      current_item = c.cart_items.find_by_product_id(p.id)
      
      if current_item  
        
        current_item.quantity +=1
        current_item.save!        
      else
        c.cart_items << CartItem.create(:product_id =>p.id, :quantity => 1)
      end        
    end    
     
end

end
 