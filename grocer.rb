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
    if 
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
