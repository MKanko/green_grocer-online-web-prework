require 'pry'

def consolidate_cart(cart)
  
  con_cart = {}
 
  cart.each do |item_hash|
    
    item_hash.each do |item_key, item_info|
      
      con_cart[item_key] = item_info
       
      item_info[:count] = 1 
#binding.pry       
      if con_cart[item_key]
        
        item_info[:count] += 1   
          
      end 
    end 
  end 
end 
    
    
      
      
    
    
    


def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
