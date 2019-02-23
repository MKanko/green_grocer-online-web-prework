require 'pry'

def consolidate_cart(cart)
  con_cart = {}
  cart.each do |item_hash|
    item_hash.each do |item_key, item_info|
      if con_cart.has_key?(item_key) == false 
        con_cart[item_key] = item_info
        con_cart[item_key][:count] = 1
      elsif con_cart.has_key?(item_key)
        con_cart[item_key][:count] += 1 
      end 
    end 
  end
  con_cart 
end 
    
    
def apply_coupons(cart, coupons)
  coupons.each do |coupon| 
    item = coupon[:item]
    
    if !cart["#{ item } W/COUPON"]
      cart["#{ item } W/COUPON"] = { price: coupon[:cost], clearance: cart[item][:clearance], count: 1 }
    else 
      cart["#{ item } W/COUPON"][:count] += 1 
    end
    
    cart[item][:count] -= coupon[:num]
  end
  
  cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end


# cart["#{item_name} W/COUPON"]
