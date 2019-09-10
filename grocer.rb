def consolidate_cart(cart)
  new_hash = {}
  cart.each do |item|
    if new_hash[item.keys[0]]
      new_hash[item.keys[0]][:count] += 1
    else
      new_hash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
  new_hash
end


def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon[:item]
      if cart[coupon[:item][:count]] >= coupon[:num]
        itemname = "#{coupon[:item]} W?COUPON"
        if cart[itemname]
          cart[itemname][:count] += coupon[:num]
        else
          cart[itemname] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
      end
    end
    cart
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
