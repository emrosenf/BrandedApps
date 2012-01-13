# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

createFlashMessage = (message, type) ->
  $("<div class='alert-message #{type}' data-alert='alert'><a class='close' href='#'>x</a><p>#{message}</p></div>").appendTo($('#flash-messages'))


jQuery ->
  $('#messages .submit').click( (e) ->
    form = $(this).parents('form')
    $.post(form.attr('action'), form.serializeArray(), (response) ->
      if response.status == 1
        message = response.message
        $('.zebra-striped').prepend("<tr><td>#{message.recipients}</td><td>#{message.alert}</td><td>#{message.date}</td></tr>")
    );
    e.preventDefault()
    return false
  )
  
  
  $('#settings .submit').click( (e) ->
    form = $(this).parents('form')
    $.ajax(type: form.attr('method'), url: form.attr('action'), data: form.serializeArray(), success: (response) ->
      if response.status == 1
        createFlashMessage(response.message, response.type)
    );
    e.preventDefault()
    return false
  )
  
  $('.apps input[name=path]').keypress( (e) ->
    if e.which is 32
      e.preventDefault()
  )