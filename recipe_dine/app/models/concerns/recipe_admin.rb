module RecipeAdmin
  extend ActiveSupport::Concern 
  #For rails_admin

  def recipe_preference_enum
    ['Veg', 'Non-Veg','Egg only']
  end

  def recipe_cuisine_enum
    ["Punjabi", "South Indian", "Mughlai", "Hyderabadi", "Gujarati", "Rajasthani", "Kashmiri", "Mexican", "American", "Spanish", "Other"]
  end

  def recipe_course_enum
    ["Main Course", "Salad", "Side Dish", "Entre", "Snack", "Soup", "Brunch", "Dessert", "Other" ]
  end

  def no_of_person_serves_enum
    1.upto(10).to_a
  end

  def recipe_dificulty_level_enum
    ["Easy", "Medium", "Difficult", "Pro-Level"]
  end

  def treatment_enum
    ["Shallow Fried","Fried", "Baked", "Frozen", "Steamed", "Thaw", "Preservation", "Roast", "Pressure Cook", "Scaling", "Skinning", "Slow Cook", "Smoked", "BBQ", "Boil", "Toast", "Marination", "Simmering", "Shallow", "Poaching", "Poaching","Well Done","Medium", "Rare","Grilling","Blanching","Canning","Other"]  
  end

  def cooking_equipment_enum
    ["Gas / Electric Stove",  "Oven", "Freezer",  "Frying Pan", "Non-Stick Pan",  "Steamer",  "Pressure Cooker",  "Other"]
    
  end
end