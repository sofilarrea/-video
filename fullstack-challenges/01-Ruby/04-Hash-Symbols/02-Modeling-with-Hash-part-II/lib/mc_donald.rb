DISHES_CALORIES = {
  "Hamburger" => 250,
  "Cheese Burger" => 300,
  "Big Mac" => 540,
  "McChicken" => 350,
  "French Fries" => 230,
  "Salad" => 15,
  "Coca Cola" => 150,
  "Sprite" => 150
}
PLATOS = {
  "Happy Meal" => [DISHES_CALORIES["Cheese Burger"], DISHES_CALORIES["French Fries"], DISHES_CALORIES["Coca Cola"]],
  "Best Of Big Mac" => [DISHES_CALORIES["Big Mac"], DISHES_CALORIES["French Fries"], DISHES_CALORIES["Coca Cola"]],
  "Best Of McChicken" => [DISHES_CALORIES["McChicken"], DISHES_CALORIES["Salad"], DISHES_CALORIES["Sprite"]]
}

def poor_calories_counter(burger, side, beverage)
  DISHES_CALORIES[burger] + DISHES_CALORIES[side] + DISHES_CALORIES[beverage]
end

def calories_counter(orders)
  # TODO: return number of calories for a less constrained order
  acum = 0
  orders.map do |order|
    if DISHES_CALORIES.include?(order)
      acum = acum + DISHES_CALORIES[order]
    else
      acum = acum + PLATOS[order].sum
    end
  end
  acum
end


# Sumamos mas comida
# Creamos el hash de cada menu
