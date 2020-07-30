$(function(){
  function buildHTML(comment){
    var html = `<div class="comments__list">
                  <strong>
                  <a href="/users/@user.id">${comment.user_name}</a>
                  :</strong>
                  ${comment.text}
                </div>`
    return html;
  }
  $('#new_comment').on('submit', function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr('action');
    $.ajax({
      url: url,
      type: "POST",
      data: formData,
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      var html = buildHTML(data);
      $('.comments').append(html);
      $('#comment-area').val('');
      $('#comment-btn').prop('disabled', false);
    })
    .fail(function(){
      alert('通信エラー発生');
    })
  })
});