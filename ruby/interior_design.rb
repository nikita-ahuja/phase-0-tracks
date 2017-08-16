p design_form = {
  name:"Nikita Ahuja",
  address:"1234 Design Way, Design, USA",
  email:"nikita.ahuja@interior.design",
  phone:"1-800-Design",

  fave_shade_blue:"light",

  wallpaper_pref:"Solid",

  ombre: "Yes"
}

hired = false
if design_form[:fave_shade_blue] == "light"
  hired == true
  p "Congratulations you are hired!"
else
  hired == false
  p "Sorry, we will not be proceeding with your application."
end