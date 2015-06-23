

jQuery ->
  
  if $('#post_body').length > 0
    editor = new EpicEditor(textarea: "post_body").load()