$(document).ready(function() {
  console.log ("All sorted");


$("#search-submit").click(function () {
  var query = $("#search").val();
  console.log(query);

  doMovieSearch(query);

}); //search click function


var doMovieSearch = function (query){
  url = "https://api.themoviedb.org/3/search/movie?api_key=24d863d54c86392e6e1df55b9a328755&query=" +  query
  xhr.open('GET', url);
  xhr.send();

} //take input and create a string

// var doDetailSearch = function (){
//   url = "https://api.themoviedb.org/3/movie/"+ $(this).attr('movie-id') + "?api_key=24d863d54c86392e6e1df55b9a328755"
//   xhr.open('GET', url);
//   xhr.send();
//
// } //take input and create a string

var xhr = new XMLHttpRequest();

xhr.onreadystatechange = function() {
    // unless readyState = 4, dont run (4 means finished recieving response)
  if (xhr.readyState !== 4) {
    return;
  }

  console.log('Ready!');

    // given a specific JSON string, parse it and save it to searchResults
  var searchResults = JSON.parse(xhr.responseText);
    console.log(searchResults);

    for (var i = 0; i < searchResults.results.length; i++) {
      var result = searchResults.results[i];
      console.log(i, result.title); //searchResults.results[i].title

      // creating a new paragraph to appear in html
      var $para = $('<p class="results">').html(result.title);
      $para.attr('movie-id', result.id)
      // debugger;
 //create new detached DOM node

      $('#main').append($para); // append new node to div#main DOM element (already in HTML file)
      var imageSource = 'http://image.tmdb.org/t/p/w300' + result.poster_path;
      var $image = $('<img class="poster">').attr("src", imageSource).css('display', 'none')
      $("#main").append($image);

      var $synopsis = $('<div class="descrip">').html("Synopsis: " +result.overview).css('display', 'none')
      $("#main").append($synopsis)

// debugger;
    }


  $("#search-submit").click(function () {
      var query = $("#search").val();
      console.log(query);
      doMovieSearch(query);
    }); //search click function

  // $(".")
  };


  $(document).on ('click','.results', function(){

    console.log( $(this).attr('movie-id') );
    // doDetailSearch()

  });
  // (above) want whole doc to handle clicks. when any click happens, the code could potentially be returned. doc delegates the click to this handler if the specific requirements are met. Will apply click handler to all ID results - current and future


  // $('.result').on('click',function()

});

// $('#main').hide
