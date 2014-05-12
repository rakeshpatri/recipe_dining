$(document).on('rails_admin.dom_ready', function(){
    cuisine_value = $("#recipe_recipe_cuisine").val()
    course_value = $("#recipe_recipe_course").val()
    treatment_value = $("#recipe_treatment").val()
    equipment_value = $("#recipe_cooking_equipment").val() 
    if (cuisine_value != "Other"){
      $("#recipe_other_cuisine_field").hide()
    }
    if (course_value != "Other"){
      $("#recipe_other_course_field").hide()
    }
    if (equipment_value != "Other"){
      $("#recipe_other_equipment_field").hide()
    }

    if (treatment_value != "Other"){
      $("#recipe_other_treatment_field").hide()
    }

  	$("#recipe_recipe_cuisine").change(function(){
  		value = $(this).val()
      if (value == "Other"){
        $("#recipe_other_cuisine_field").show()
      }else{
        $("#recipe_other_cuisine_field").hide()
      }
  	})
    $("#recipe_recipe_course").change(function(){
      value = $(this).val()
      if (value == "Other"){
        $("#recipe_other_course_field").show()
      }else{
        $("#recipe_other_course_field").hide()
      }
    })
    $("#recipe_treatment").change(function(){
      value = $(this).val()
      if (value == "Other"){
        $("#recipe_other_treatment_field").show()
      }else{
        $("#recipe_other_treatment_field").hide()
      }
    })
    $("#recipe_cooking_equipment").change(function(){
      value = $(this).val()
      if (value == "Other"){
        $("#recipe_other_equipment_field").show()
      }else{
        $("#recipe_other_equipment_field").hide()
      }
    })
  })