require_relative './part_1_solution.rb'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
coupons.each do |coupon|
    current_item = find_item_by_name_in_collection(coupon[:item], cart)
    if current_item && current_item[:count] >= coupon[:num]
      cart << {:item => "#{coupon_item[:item]} W/COUPON",
      :price => coupon_item[:cost]/coupon_item[:num].to_f, :clearance => current_item[:clearance],
      :count => coupon_item[:num]}
       current_item[:count] = current_item[:count] - coupon_item[:num]
    end
  end
  return cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.each do |item|
    if item[:clearance] == true
       item[:price] = (item[:price] * 0.8).round(2)
    end
  end
  return cart
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
