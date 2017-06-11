# nested_start
# Удаление одной роли
@delete_one_al = (link)->
  if confirm("Вы уверены?")
    link.parent().find("input[type=hidden].remove_fields").first().val("1")
    link.parent().parent().parent().parent().hide()
# Включаем все кнопки удаления
@del_all_als = ->
  $('a.remove_author_list').on 'click', ->
    window.delete_one_al($(this))
    false
  false
# Включаем кнопку добавления роли
@add_new_author = ->
  $('#add_author_link').on 'click', ->
    # Подменяем временный id с фразой new_ru на случайной число
    new_id = new Date().getTime()
    regexp = new RegExp("new_author_list", "g")
    content = $(this).attr('data-content')
    content = content.replace(regexp, new_id)
    # Вставляем на страницу
    $(this).parent().parent().after(content)
    panel = $(this).parent().parent().parent().find('.panel-info').first()
    
    panel.find('a.remove_author_list').on 'click', ->
      window.delete_one_al($(this))
      false    
    false
# Запуск всего вышеописанного
ru_ready = ->
  window.add_new_author()
  window.del_all_als()
$(document).on 'page:load', ru_ready # Включаем при ajax обновлении страницы
$(document).ready ru_ready # Включаем при обычном обновлении страницы
# nested_finish
