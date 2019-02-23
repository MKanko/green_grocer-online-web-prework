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
  cart.each do |item_key, item_info|
    coupons.each do |coupon|
#binding.pry     
      coupon[:item]
     
     if item_key == coupon[:item] 
     
     
     end
    end
  end      
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end


# cart["#{item_name} W/COUPON"]