$(document).ready(function() {
  console.log ("All sorted");

  $("#search-submit").click(function () {
    $("#main").empty();
    var query = $("#search").val();
    console.log(query);
    doMovieSearch(query);
    $("#main").show();
  }); //search click function

  //take input from user and get api info
  var doMovieSearch = function (query){
    url = "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" +  query
    var xhr = new XMLHttpRequest();

    xhr.open('GET', url);
    xhr.send();
   //take input and create a string


  xhr.onreadystatechange = function() {
      // unless readyState = 4, dont run (4 means finished recieving response)
    if (xhr.readyState !== 4) {
      return;
    }
    console.log('Ready!');
      // given a specific JSON string, parse it and save it to searchResults
    var searchResults = undefined;
    var searchResults = JSON.parse(xhr.responseText);
      console.log(searchResults);

    for (var i = 0; i < searchResults.results.length; i++) {
      var result = searchResults.results[i];
      console.log(i, result.title); //searchResults.results[i].title

      // creating a new paragraph to appear in html
      var $para = $('<p class="results">').html(result.title);
      $para.attr('movie-id', result.id)
   //create new detached DOM node
      $('#main').append($para); // append new node to div#main DOM element
    };
  };
}

  //use ID obained above and conduct detailed search
  var doDetailSearch = function (info){
    url = "https://api.themoviedb.org/3/movie/"+ info + "?api_key=24d863d54c86392e6e1df55b9a328755"
    xhr2.open('GET', url);
    xhr2.send();
  } //take input and create a string

  var xhr2 = new XMLHttpRequest();

  xhr2.onreadystatechange = function() {
    if (xhr2.readyState !== 4) {
      return;
    }
    console.log('Ready for second API call');

    var DetailSearch = JSON.parse(xhr2.responseText);
      console.log(DetailSearch);

    // populating text for detailed results
    var $title = $('<h1 class="detailedResults">').html(DetailSearch.title);
    var $overview = $('<p class="detailedResults">').html( DetailSearch.overview);

    var imageSource = 'http://image.tmdb.org/t/p/w300' + DetailSearch.poster_path;
    var $image = $('<img class="poster">').attr("src", imageSource);
    var $backButton = $("<h4 id='backButton'>").html('Back');

    $('#detail').append($title)
                .append($overview)
                .append($image)
                .append($backButton);
  }

  $(".results").click(function () {
    //console.log( $(this).attr('movie-id') );
      doDetailSearch('movie-id');
    });


  $(document).on ('click','.results', function(){
    var info = $(this).attr('movie-id') ;
    $("#detail").empty();

    doDetailSearch(info);
    $('#detail').show();
    $("#main").hide();

  });

  $(document).on ('click','#backButton', function(){
    console.log("clicked button");
    $('#detail').hide();
    $('#main').show();
  });


    // (above) want whole doc to handle clicks. when any click happens, the code could potentially be returned. doc delegates the click to this handler if the specific requirements are met. Will apply click handler to all ID results - current and future
});
