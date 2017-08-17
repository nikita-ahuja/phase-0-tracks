# GROCERY STORE

grocery_store = {
#PRODUCE - VEG & FRUIT
  produce_section: {
    vegetables: ["cucumbers", "tomatoes", "celery"],
    fruit: ["apples", "oranges", "dragonfruit"]
  },
#DAIRY
  dairy_section: ["milk", "yogurt", "eggs"],
#CEREAL - DRY & BOXED
  cereal: {
    oats: ["Quaker Oats", "Steel Cut", "Instant Oats"],
    boxed: ["Honey Bunches", "Cheerios", "Kellogs"]
  },
#SNACKS
  snacks: ["almonds", "chips", "rice cakes"],
#
  personal_care: {
    shampoo_condit: ["Garnier Fructisse", "Pantene Pro-V", "Dove"],
    makeup: ["lipstick", "nail polish", "eyeshadow"],
    face_wash: ["Cerave", "Clearasil Ultra", "Cetaphil"],

    meds: {
      pain_relievers: ["Advil", "Tylenol", "Ibuprofen"],
      antihistamines: ["Claritin", "Allegra-D"]
    }
  }
}

p grocery_store

p grocery_store[:dairy_section][2]
p grocery_store[:personal_care][:makeup]
p grocery_store[:cereal][:oats][1] = "Steel Cut Oats"
p grocery_store[:snacks].unshift("granola bars")
p grocery_store[:personal_care][:face_wash].shift

p grocery_store #show changes