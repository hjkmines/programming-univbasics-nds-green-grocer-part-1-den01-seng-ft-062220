require "pry"

def find_item_by_name_in_collection(name, collection)

collection.each do |x|
  if x[:item] == name
    return x
  end
end
return nil
end

def consolidate_cart(cart)

  new_cart = cart.group_by(&:itself).map{|k, v| k.merge(count: v.length)}
  return new_cart

end
