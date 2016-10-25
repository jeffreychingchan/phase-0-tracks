// REVERSE PROGRAM // 

// user input word 
// need variable that holds the word after it is reversed. 
// need a loop that goes through each letter of the word. 
// input the last letter of the word and loop down the index of letter. 
// need the word length - 1 (letter 1 is index 0)
// place the reversed word into the variable then return the variable. 


function reverse(word){
	var reversedWord = "";
	for (var i = word.length - 1; i >= 0; i--)
		{reversedWord += word[i];}
	return reversedWord; 
}

console.log(reverse("hello"));