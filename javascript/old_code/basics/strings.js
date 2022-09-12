// strings are a datatype in javascript that allow you to send messages to the console without it holding any real world data.

var content;

content = "This line your reading is a string.";

// you can use '' | "" | `` with strings.

console.log(content); // outputs content

// to pass in data to a string you can use back ticks.

// exmaple:

// below were making an javascript object and inputting some data to log in the console.
var data = {
  // storing pets in an array.
  pets: ["dogs", "cats", "snake"],
  gender: ['male', 'female']
};

console.log(data) // when you log this, yuou will see the whole object. You can also you the data.<name> to call forms of data from objects.

// using back-ticks
console.log(`The gender option for pets are... ${data.gender}`) // outputs: The gender option for pets are...male,female
