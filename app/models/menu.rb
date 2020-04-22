class Menu < ActiveRecord::Base
  def self.starter
    all.where("dish_type=?", "Starter")
  end

  def self.cooldrink
    all.where("dish_type=?", "Drinks")
  end
  def self.fruitjuice
    all.where("dish_type=?", "Fruit Juice")
  end

  def self.chinese
    all.where("dish_type=?", "Chinese")
  end

  def self.meals
    all.where("dish_type=?", "Meals")
  end

  def self.others
    all.where("dish_type=?", "Others")
  end

  def self.Veg
    all.where("item_type=?", "Veg")
  end

  def self.Nonveg
    all.where("item_type=?", "Non-Veg")
  end

  def self.Others
    all.where("item_type=?", "Others")
  end

  def menu_display
    "#{item} #{price} #{item_type} #{dish_type}"
  end
end
