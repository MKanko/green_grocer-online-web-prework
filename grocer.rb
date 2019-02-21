require 'pry'

def consolidate_cart(cart)
  
  con_cart = {}
  
  cart.each do |item_hash|
    
    item_hash.each do |item_key, item_info|
      
      con_cart[item_key] = item_info
      
      item_info[:count] = 1   
      
      if con_cart.has_key?(item_key)
        
        con_cart[item_key].merge! item_info[:count] += 1 
       
         
binding.pry        
      
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
