// Arrays - Flatten and Reverse
//
// The goal of this exercise is to manipulate arrays by creating a function that can reverse an array and by creating a function that can flatten an array. Do not use any libraries to complete this task - write this stuff from scratch using standard JS methods and objects.
//
// Make two functions
// reverse
// flatten
// reverse( [1, 2, 3, 4] );
// // => [ 4, 3, 2, 1 ]
// flatten( ["Hello", ["World", 42] ] );
// // => [ "Hello", "World", 42 ]
// You only need to make flatten work to one level deep! You should be able to flatten this - ["Hello", ["World"]] - but not this - ["Hello", [[["World"]]]]
//
// Hint: You're going to need to be looping through the arrays to get a solution.


var arrayToReverse = [ 1, 2, 3, 4, 5, 6, 7, 8, 9]

console.log( "Original: ");
console.log( arrayToReverse);


var reverseMe = function ( array ) {
  var output = []

    for (var i = array.length -1; i >= 0 ; i--) {
       output.push(array[i])
       console.log(output);;

    }
}


reverseMe(arrayToReverse)


//flatten


arrayToFlatten =  [ 1, [2], [3, [4]], 5, [[[6]]]]

console.log('Original Flatten Array');
console.log(arrayToFlatten);


var flatten = function( array ){
  var flat = [].concat.apply( [], array )
  return flat

  // this takes and array as an argument and flattens down ONE level.

};

var flatten2 = function( array ){
  var output = [];
  //loop through my array
  for (var i = 0; i < array.length; i++) {
    //check if that index is an array
    if( Array.isArray(array[i]) ) {
      for (var j = 0; j < array[i].length; j++) {
        output.push( array[i][j] )
      } // j loop
    } else {
      output.push( array[i])
    } // if
  }  // i loop
  return output;
} //flatten2 function


var a = flatten2( arrayToFlatten )
