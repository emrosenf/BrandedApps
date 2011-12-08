# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("input[name=business_name]").keyup( (e) ->
    $('span.biz-name').text($(this).val())
    return false; 
  )
  
  $("input[name=greeting]").keyup( (e) ->
    $('span.biz-greeting').text($(this).val())
    return false;
  )
  
  $("input[name=password_confirmation]").keyup( (e) ->
    parent = $(this).parents('.clearfix')
    if ($(this).val() is $('input[name=password]').val())
      parent.removeClass('error')
      parent.find('.help-block').hide()
    else
      parent.addClass('error')
      parent.find('.help-block').show()
    return false
  )
  
  $('ul.app-picker a').click((e) ->
    form = $(this).parents('form')
    form.find('input[name=app_id]').remove()
    type = $(this).attr('type')  
    idx = type.indexOf('-')
    app_id = type.slice(0,idx)
    form.append("<input type='hidden' name='app_id' value='#{app_id}'></input>")
    
    type = type.slice(idx+1)
    $('.app-configuration').removeClass('card-reader wikipedia').addClass(type)
    child_img = $(this).find('img')
    $('img.app-preview').attr('src', child_img.attr('src'))
    return false
  )
  
  showPreview = (c) ->
    if parseInt(c.w) > 0
      rx = 36 / c.w
      ry = 36 / c.h
    
      src = $('img.biz-logo-edit').last()
      width = src.width()
      height = src.height()
    
      $('img.biz-logo-thumbnail').css(width: Math.round(rx * width) + 'px',
    		height: Math.round(ry * height) + 'px',
    		marginLeft: '-' + Math.round(rx * c.x) + 'px',
    		marginTop: '-' + Math.round(ry * c.y) + 'px');
  
  jcrop_api = null
  
  $('.signup .btn.submit').click( (e) ->
    $(this).parents('form').submit()
    return false;
  )
  
  $("#greeting_cb").change( (e) ->
    name = $('span.biz-name')
    greeting = $('span.biz-greeting')
    top = parseInt(name.css('top'))
    if $(this).attr('checked')
      greeting.show()
      name.css('top', top + 10 + "px")
    else
      greeting.hide()
      name.css('top', top - 10 + "px")
    
  )
  
  $("input[name=logo_file]").change( (e) ->
    files = e.target.files
    f = files[0]
    reader = new FileReader()
    reader.onloadend = (e) ->
      if jcrop_api?
        jcrop_api.setImage(e.target.result)
      else      
        #$('img.biz-logo-edit').attr('src', e.target.result).show()
        #$('img.biz-logo-edit').Jcrop({
        #		onChange: showPreview,
        #		onSelect: showPreview,
        #		aspectRatio: 1}, ->
        #		  bounds = this.getBounds()
        #		  boundx = bounds[0]
        #		  boundy = bounds[1]
        #		  jcrop_api = this;
        #)
      $('img.biz-logo-thumbnail').attr('src', e.target.result)
      

    reader.readAsDataURL(f)
    return false;
  )