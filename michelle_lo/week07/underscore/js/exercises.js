// # Collections!
//
// Log out the answers to all of the following questions!
//
// Here is some data that you can work with.
//
// ```js
var numbers = [ 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 ];

var people = [
  { id: 1, username: "A", active: true,  age: 20 },
  { id: 2, username: "B", active: false, age: 35 },
  { id: 3, username: "C", active: false, age: 50 },
  { id: 4, username: "D", active: true,  age: 65 },
  { id: 5, username: "E", active: true,  age: 80 },
  { id: 6, username: "E", active: true,  age: 95 },
];
// ```
//
// ## Exercises
//
// - Iterate through ` numbers ` and log each number to the console
_.each(numbers,function(val){
	console.log(val)
})

// - Iterate through ` numbers ` and multiply each one of them by 5

_.each(numbers,function(val){
	val = val*5;
	console.log(val)
})

var timesFive = _.map(numbers, function(num){
  return num*5;
})

// - Iterate through ` numbers ` and reduce it by adding them together
_.reduce(numbers,function(sum,num){
	return sum + num
},0);

// - Get an array of all of the people in ` people ` that have the username "E"
_.where(people,{username: "E"});

// - Find the first object in ` people ` that has the id of 3
_.find(people, function(obj) {
    return obj.id ===3
  })

_.findWhere(people, {id: 3}) // can use findWhere because you're looking for equality not a logical comparison

// - Find the first person who has an age of less than 50
_.find(people, function(obj) {
    return obj.age ===50
  })

// - Get an array of all of the people with an age of over 60
_.filter(people, function(obj) {
    return obj.age >60})
// - Remove all of the people with an age less than 40
people = _.reject(people, function(obj) {
    return obj.age < 40})

//
// ## Remember!
//
// You have the [documentation!](https://underscorejs.org/)


//CollectionsExercises
//
// Sort the people by 'uid'
// Group the random words by the lower case version of their first letter
// Check to see if all the words have more than 3 characters
// Check if some words are over twenty characters long
// Get an array of all of the uids in people
// Find the person with the highest uid
// Return an object that says how many even numbers and how many odd numbers there are in numbers
// Get three random numbers out of numbers
