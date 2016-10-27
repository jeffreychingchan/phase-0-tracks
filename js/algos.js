//RELEASE 0

//==LONGEST PHRASE PROGRAM==//  
//build a function that takes phrases 
//make a place holder (var longestPhrase)
//write a loop that takes the longest string (.length) and place it in the placeholder(var longestPhrase)
//placeholder will be stored as integer
//write a loop to find the string length that matches the phrases
//return the placeholder 


//==DETECT KEY-VALUE MATCH PROGRAM==//  
//build a function that compaire the value between two data
//input data with key and value
//if key-value matches, return true. If not, return false


//==GENERATING WORDS PROGRAM==//
//build a function that generate random words
//build a function that stores words into an array from random word function 
//output the array 



//var longPhrase = ["long phrase","longest phrase","longer phrase"];
function returnLongestString(phrases) {
	
	var longestPhrase = 0;

	for (var i = 0; i < phrases.length; i++) {
		if(phrases[i].length > longestPhrase){
			longestPhrase = phrases[i].length;
     	}
    }
	 
	 
	for (var e = 0; e < phrases.length; e++) {
		if(phrases[e].length == longestPhrase){
			longestPhrase = phrases[e];
     	}
	}
	
	console.log(longestPhrase);
}

//Driver Code 
returnLongestString(["long phrase","longest phrase","longer phrase"]);



//===========================================================//

//RELEASE 1

function comparison(data1, data2) {
	
	if (data1.age == data2.age) {
		return true;
	}
	else {
		return false;
	}
	
	
} 

var data1 = {name: "Steven", age: 52};
var data2 = {name: "Tamir", age: 54};

comparison(data1, data2)



//===========================================================//

//RELEASE 2 

function buildsArrayRandomWord(numberOfArray) {
	
	this.numberOfArray = numberOfArray
	
	function randomWord() {
		word = ''
		
		
		var alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";
		
		var randomNumber = (Math.floor(Math.random()*11));
		
		
		
	   	for( var i=0; i < randomNumber; i++ ){
	        word +=  alphabet.charAt(Math.floor (Math.random() * alphabet.length ) + 1);
	   
	   		}
        	return word 
	}	
	
	
	function buildingArray() {
		array = [];
		
		for( var i=0; i < this.numberOfArray; i++ ){
			array.push(randomWord());
			
		}
		return array 
		
	}
	
	return buildingArray();
}

//driver code//

var array10Words = buildsArrayRandomWord(10);

console.log(array10Words);

returnLongestString(array10Words);


