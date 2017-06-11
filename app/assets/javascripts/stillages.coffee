# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@update_fields = (sel) ->
  form = $(sel).parent().parent().parent().parent()
  if !($(sel)).val()
    form.find('.name_full').val("")
    form.find('.name_short').val("")
    form.find("input[type=hidden].hall_id").val("")
  else
    new_reg = /(.*)\((.*)\)/
    new_vals = form.find('.hall_select option:selected').text().split(new_reg)
    #alert(new_vals[1]) 
    form.find('.name_full').val(new_vals[1])   
    form.find('.name_short').val(new_vals[2])
    new_id = $(sel).val()
    form.find("input[type=hidden].hall_id").val(new_id)
  false