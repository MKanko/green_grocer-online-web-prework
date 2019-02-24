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
    if cart[item]
      if !cart["#{item} W/COUPON"]
        cart["#{item} W/COUPON"] = {price: coupon[:cost], clearance: cart[item][:clearance], count: 1}
      else 
        cart["#{item} W/COUPON"][:count] += 1 
      end
      cart[item][:count] -= coupon[:num]
    end 
  end 
  cart
#binding.pry 
end

def apply_clearance(cart)
  cart.each do |item_key, item_info|
    if item_info[:clearance] == true
      discount = (item_info[:price] * 0.8).round(2)
      item_info[:price] = discount   
    end
  end
  cart
end

def checkout(cart, coupons)
  sub_total = 0
  total_cost = 0
  con_cart = consolidate_cart(cart)
  coupon_cart = apply_coupons(con_cart, coupons)
  checkout_cart = apply_clearance(coupon_cart)
    
  checkout_cart.each do |item_key, item_info|
    sub_total += item_info[:price] * item_info[:count]
 binding.pry
      if sub_total < 100 
        total_cost = sub_total
      elsif sub_total > 100
        total_cost = (sub_total * 0.9).round(2)  
      end 
  end 
  total_cost
end 
  
  
 
   




