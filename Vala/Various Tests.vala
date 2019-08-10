int add (int a, int b) {
    return a + b;
}


// Returns the length of a given list "list" of strings
int list_size (string[] list) {
    int counter = 0;
    foreach (string i in list) {
        counter += 1;
    }

    return counter;
}

// Returns the length of a given string "str"
int string_size (string str) {
    int counter = 0;
    for (int c = 0; c < str.length; c++) {
        counter += 1;
    }

    return counter;
}

// Returns a string of a given "character" multiplied by the given "times"
string multiply_char(string character, int times) {
    string result = "";
    for (int c = 0; c < times; c++) {
        result += character;
    }

    return result;
}

// Returns the biggest string length in the "list"
int biggest_length(string[] list) {
    int biggest = 0;

    for (int c = 0; c < list.length; c++) {
        if (list[c].length >= biggest) {
            biggest = list[c].length;
            
            //print("Current: " + list[c].length.to_string() + " is bigger than biggest: " + biggest.to_string() + " --> " + (list[c].length >= biggest).to_string() + "\n");
        }
        else {
            continue;
        }
    }

    return biggest;
}

// Length of digits e.g.: 10 --> 2 digits
int digits (int number) {
    return number.to_string().length;
}

/* // NOT WORKING
// Append a given number of strings "elements" to a given list of strings
void multi_append_str(string[] list, string[] elements) {
    foreach (string element in elements) {
        list += element;
    }
}
*/

// Playing around. Random stuff, for practice
string[] fruits;
string[] fruits_length_digits;

void printing_stuff(string[] args) {
    int added = add(int.parse(args[2]), int.parse(args[3]));
    print("GOT ARGS. ABOUT TO ADD:\n");
    print(args[2] + " + " + args[3] + " == " + added.to_string() + "\n\n");

    string name = args[1];

    fruits += "Apple";
    fruits += "Orange";
    fruits += "Watermelon";
    fruits += "Melon";
    fruits += "Lemon";
    fruits += "Mango";

    // Populating fruits_length_digits
    foreach (string fruit in fruits) {
        fruits_length_digits += fruit.length.to_string();
    }
    
    //print(fruits[0] + "\n");
    //print(list_size(fruits).to_string());
    
    string size_of_list = list_size(fruits).to_string();
    string length_of_list = fruits.length.to_string();

    print("Hello, " + name + "!\n\n");
    print("List size(Mine): " + size_of_list + "\n");
    print("List Length(Built-in): " + length_of_list + "\n\nLIST OF FRUITS:\n");

    foreach (string fruit in fruits) {
        print(fruit + multiply_char(" ", (biggest_length(fruits)-fruit.length) + 1) + "| ");
        print(string_size(fruit).to_string() + multiply_char(" ", (biggest_length(fruits_length_digits)-digits(fruit.length)) + 1) + "Letters [");
        for (int c = 0; c < fruit.length; c++) {
            print(fruit[c].to_string() + " ");
        }
        print("]\n");
    }
}

// Main function
int main (string[] args) {
    printing_stuff(args);

    return 0;
}
