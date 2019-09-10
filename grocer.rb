def consolidate_cart(cart)
  newhash = {}
  cart.each do |item|
    if newhash[item.keys[0]]
      newhash[item.keys[0]][:count] += 1
    else
      newhash[item.keys[0]] = {
        count: 1,
        price: item.values[0][:price],
        clearance: item.values[0][:clearance]
      }
    end
  end
  newhash
end


def apply_coupons(cart, coupons)
  coupons.each do |coupon|
    if cart.keys.include? coupon [:item]
      if cart[coupon[:item]][:count] >= coupon[:num]
        coupon_name = "#{coupon[:item]} W/COUPON"
        if cart[coupon_name]
          cart[coupon_name][:count] += coupon[:num]
        else
          cart[coupon_name] = {
            count: coupon[:num],
            price: coupon[:cost]/coupon[:num],
            clearance: cart[coupon[:item]][:clearance]
          }
        end
        cart[coupon[:item]][:count] -= coupon[:num]
      end
    end
  end
  cart
end

def apply_clearance(cart)
  cart.each do |price|
    if cart.keys.include? cart[:clearance]
      price
end

def checkout(cart, coupons)
  # code here
end
