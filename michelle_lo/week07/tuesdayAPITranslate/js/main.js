$(document).ready(function() {

var translateRequest = function(request,language) {


  var baseURL = 'https://translate.yandex.net/api/v1.5/tr.json/translate';



  $.ajax ({
    url:baseURL,
    data: {
    key:"trnsl.1.1.20170627T084739Z.06f8907ff46f3db4.8f9f551892cd96b80c1a8cfa39f71a4a26afc72c",
    text: request,
    lang: language
    }
  })
  .done(function(res){
    console.log(res);
    var $div = $('<div class="translated bg-warning">').html("Translation (" + language+ "): "+ res.text[0]);
    $('#conversationWrapper').append($div);
// debugger;
  })
  .fail(function(xhr, status, err){
    console.log(xhr, status, err);
  })

}

$('#languageButton').click(function(){
  var languageRequest = $('#language').val();
  console.log(languageRequest);
  submitText(languageRequest)
})

  var submitText = function(languageRequest){
    var line = $('#conversation').val();

    var language = languageRequest
    $('#conversation').val('');

    var $div = $('<div class="user">').empty;
    $div = $('<div class="user bg-danger">').html("Your request: " + line);
    $('#conversationWrapper').append($div);

    translateRequest(line, language)

  }


});
