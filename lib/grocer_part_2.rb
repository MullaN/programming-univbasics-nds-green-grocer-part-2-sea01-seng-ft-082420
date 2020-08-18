require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  coupons.each do |coupon_item|
    cart_num = cart.find_index {|cart_item| cart_item[:name] == coupon_item[:name]}
    if cart_num
      if cart[cart_num][:count] >= coupon_item[:num]
        cart << {item: "#{cart[cart_num][:item]} W/ COUPON", price: coupon_item[:cost] / coupon_item[:num], clearance: cart[cart_num][:clearance], count: (cart[cart_num][:count] / coupon_item[:num]).to_i * coupon_item[:num]}
        binding.pry
      end
    end
  end
  cart
end

def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  cart.map { |cart_item| cart_item[:price] *= 0.8 if cart_item[:clearance] == true}
  cart
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
