

List<String> titles2 = [

  ''' Problem Solving''',
  ''' Programming Fundamentals''',
  ''' Statements''',
  ''' Functions''',
  ''' Arrays and Strings''',
  ''' Pointers''',
  ''' Structures''',
  ''' File Input Output''',

];


List<String> texts2 = [

  '''

   I. Problem solving process

We face problems in our day-to-day life. Problem in this sense is one that can be solved using computers.

E.g.	Requirements for

    • Handling and manipulating employee data 
    • Solving mathematical equations based on formula
    •  etc.

A problem may be real problem (existing problem), or anticipated (potential) problem and reasons for problems may be 
    • Directives (in organizations)
    • Opportunities (to do things better)
    • Or other things.

In solving a problem, we may get various solutions. But all solutions involve the following formal problem solving steps.

    1. Defining the problem
    2. Planning the solution
    3. Coding the program
    4. Testing the program
    5. Documentation

    1. Defining the problem:	
Before starting any part of the solution, we have to be introduced with the problem. First, we must understand thoroughly what the problem is. This should lead us to complete specifications of the problem to be addressed.

    • What part of the problem is going to be solved?
    • What input data is required to solve the problem?
    • What output data (result) is expected?
    • What procedures are needed to achieve the result?

There are various methods to find these specifications, like interview, observations, or for simpler problems in written form, read the requirements carefully 

This and the next steps of the problem solving process are computer independent works. 

2.	Planning the Solution:-
This step involves the following tasks: 

    • Divide the original problem into a number of sub problems. These sub- problems, being necessarily smaller than the original problem, are easier to solve and their solution will be the components of our final solution. This method, by which a complex problem is divided into smaller and easier sub-problems is called “divide and conquer”


''',


'''

The Origins of C++
C++ was developed by Bjarne Stroustrup of AT&T Bell Laboratories in the early 1980's, and is based on the C language. The name is a pun - "++" is a syntactic construct used in C (to increment a variable), and C++ is intended as an incremental improvement of C. Most of C is a subset of C++, so that most C programs can be compiled (i.e. converted into a series of low-level instructions that the computer can execute directly) using a C++ compiler.
C is in many ways hard to categories. Compared to assembly language it is high-level, but it nevertheless includes many low-level facilities to directly manipulate the computer's memory. It is therefore an excellent language for writing efficient "systems" programs. But for other types of programs, C code can be hard to understand, and C programs can therefore be particularly prone to certain types of error. The extra object-oriented facilities in C++ are partly included to overcome these shortcomings.


How Compilation of C++ program works

Compiling a C++ program involves a number of steps (most of which are transparent to the user):

First, the C++ preprocessor goes over the program text and carries out the instructions specified by the preprocessor directives (e.g., #include). The result is a modified program text which no longer contains any directives.

Then, the C++ compiler translates the program code. The compiler may be a true C++  compiler which generates native (assembly or machine) code, or just a translator which translates the code into C. In the latter case, the resulting C code is then passed through a C compiler to produce native object code. In either case, the outcome may be incomplete due to the program referring to library routines which are not defined as a part of the program. For example, Listing 1.1 refers to the << operator which is actually defined in a separate IO library.

Finally, the linker completes the object code by linking it with the object code of any  library modules that the program may have referred to. The final result is an executable file.





''',



'''

STATEMENTS
Statements represent the lowest-level building blocks of a program.  Each statement represents a computational step which has a certain side-effect. (A side-effect can be thought of as a change in the program state, such as the value of a variable changing because of an assignment.) Statements are useful because of the side-effects they cause, the combination of which enables the program to serve a specific purpose (e.g., sort a list of names).
 A statement causes an action to be performed. In C++, a statement controls the sequence of execution, evaluates an expression, or does nothing (the null statement). The basic structure of any program can be represented like this: 
 
Begin
     Statement
     Statement
     Statement
     .....
End
A running program spends all of its time executing statements. The order in which statements are executed is called flow control (or control flow). This term reflect the fact that the currently executing statement has the control of the CPU, which when completed will be handed over (flow) to another statement.

 C++ insists that all statements end with a semicolon. The reason is that C++ is tolerant of different layouts. If you chose to put several statements on one line, then the semicolons would be the only way in which C++ would be able to separate them.
Like many procedural languages, C++ provides different forms of statements:

		

			Simple Statement
			Compound Statement
    Statement		Selection Statement
			Iterative/Loop Statement
			Jump Statement

1. Simple statement
A simple statement is a computation terminated by a semicolon. Variable definitions and semicolon- terminated expressions are representatives pf this category. 
		int i;	//declaration statement
		x++;	// this has a side-effect
		m+3;	//useless statement b/c it has no side-effect; result is just discarded
The simplest statement is the null statement which consists of just a semicolon:
; // null statement



''',


'''

Program Modules/Functions

        4.1 Functions

Function is group of program statements that make a unit and give it a name. The reason why we use functions is to aid modularization of a program. A program reduces program size. Any fragments of code that are needed frequently in a program are best candidates to be written as a function.

The function body is placed in one place in memory. But it could be invoked in several places in the program.

Function Declaration 

As you can’t use variables before declarations (telling the compiler what the variable is), you can’t use function before telling the compiler what this function is. The common approach to declare the functions is at the beginning of the program. The function declaration tells the compiler that later on in this program a function introduced in the declaration is going to be used, the function declaration is commonly known as function prototype.

Example 

void getName( );	//this is a function declaration
			//void shows that the function
			//doesn’t have a return type
			//function declaration is terminated
			//with semicolon.
			//if the function has arguments, then
			// they should be indicated in the
			// declaration 

Function Definition

The function definition consists of a decelerator (first line of the definition), followed by the function body. The function body consists of the statements that make up the function delimited by braces.

The decelerator must agree with the declaration; i.e it must use the same function name, have the same argument types in the same order, and have the same return types.

When the function is called, control is transferred to the first statement in the function body. The other statements in the function body are then executed, and when the closing brace is encountered, control returns to calling program



''',



'''

Arrays and Strings

        5.1 Arrays

Arrays are containers of many data items of the same data type. Unlike other data structures that contain data of different type, arrays hold data with same type. Arrays can hold a few data items, to data in ten thousands.

Defining Arrays

Like any other variable, array must be defined before it can be used to store data. The array definition comprises the variable type, the name of array and size in square brackets. 

Syntax 
Data_type ArrayName [size];

eg. int num[100];

The items in an array are called elements. The elements in an array should have same data type. Only their values vary.

The first element in an array has an index value of 0, the second 1, and so on. If an array has 10 elements, then the first element has index value of 0 and the 10th element has an index value of 9.

E.g. int num[10];  ( assuming this array has the elements 20, 30, 70, …, 21, it looks the following in the computer’s memory)
20
num [0]
num [1]
num [2]
num [3]
num [4]
num [5]
num [6]
num [7]
num [8]
num [9] 
30

70

64

29

37

16

19

26

21



Accessing Array Elements

To do some activities with the elements of the array, you have to access it first.

Accessing the array elements consists of name of the array, square brackets, and the array index inside the square brackets. 



''',


'''

POINTERS 
The memory of your computer can be imagined as a succession of memory cells, each one of the minimal size that computers manage (one byte). These single-byte memory cells are numbered in a consecutive way, so as, within any block of memory, every cell has the same number as the previous one plus one. 
This way, each cell can be easily located in the memory because it has a unique address and all the memory cells follow a successive pattern. For example, if we are looking for cell 1776 we know that it is going to be right between cells 1775 and 1777, exactly one thousand cells after 776 and exactly one thousand cells before cell 2776. 
Reference operator (&)
As soon as we declare a variable, the amount of memory needed is assigned for it at a specific location in memory (its memory address). We generally do not actively decide the exact location of the variable within the panel of cells. It  is a task automatically performed by the operating system during runtime. However, in some cases we may be interested in knowing the address where our variable is being stored during runtime in order to operate with relative positions to it.

The address that locates a variable within memory is a reference to that variable. This reference to a variable can be obtained by preceding the identifier of a variable with an ampersand sign (&), known as reference operator, and which can be literally translated as "address of". For example: 

//Ptr now holds the address of the variable ’var’.

E.g.	// demo of the reference operator
	//this prog prints the addresses of the three variables.
#include<iostream.h>
	Void main()
	{
	int var1=10,var2=20,var3=30;
	cout<<endl<<&var<<endl<<&var2<<endl<<&var3;
	return;
The variable that stores the reference to another variable is called a pointer. In other words, pointers are variables that hold an address value. Pointers are very powerful features (but



''',





'''

Structures
A structure is a group of data elements grouped together under one name. These data elements, known as members, can have different types and different lengths

Structure definitions have several formats, all of which include data members and member functions. To show the formats for structure definitions, let's look at structure data members first. The first structure format appears frequently in header files.

Declaration of structure
Just like variables structures need to be declared first. Data structures are declared in C++ using the following syntax:
struct structure_name {
member_type1 member_name1;
member_type2 member_name2;
member_type3 member_name3;
.
.
} variable_names; 
Where structure_name is a name for the structure type, variable_name can be a set of valid identifiers for variables that have the type of this structure. Within braces { } there is a list with the data members, each one is specified with a type and a valid identifier as its name. 
The first thing we have to know is that a data structure creates a new type: Once a data structure is declared, a new type with the identifier specified as structure_name is created and can be used in the rest of the program as if it was any other type. For example: 
struct product {
  		 int weight;
 		 float price;
		} ;
product apple;
product banana, melon;
We have first declared a structure type called product with two members: weight and price, each of a different fundamental type. We have then used this name of the structure type (product) to declare three variables of that type: apple, banana and melon as we would have done with any fundamental data type. 
Once declared, product has become a new valid type name like the fundamental ones int, char or short and from that point on we are able to declare variables (variables) of this compound new type, like we have done with apple, banana and melon. 
Right at the end of the struct declaration, and before the ending semicolon, we can use the optional field variable_name to directly declare variables of the structure type. For example,


''',


'''

File input/output

So far, we saw programs taking input data from the user via the keyboard using the extraction operator >> with the object cin, and displaying output to the user via the monitor using the insertion operator << with the object cout. Treated this way, the data that is processed by your program is lost by the time the program is stopped or when the computer is turned off, because your program used the computer’s volatile memory (RAM). It is obvious that most useful programs need to read and write data to disk files. This part of the course deals with handling a program’s data in relation with disk files.

Header files

Data flow in general (to and out of the program) is called stream in C++. We include the header file iostream.h for data flow to the monitor and from the keyboard using the objects cout and cin. For data streams to /from disk files, we include the header file fstream.h, in which the iostream class and other classes for disk file input /output like ofstream, ifstream and fstream are defined. (If we include fstream.h, we do not need to include iosream.h)

Creating objects for file streams

Earlier, we used the predefined cout and cin objects of the iostream class for stream output to video display and input from keyboard respectively. In file input /output, we create our own objects for both file output and input purposes using the following classes.

ofstream: to create objects for output data to files
ifstream: to create objects   for input data from files
fstream : to create object that can be used for both input/output data from and to files 

String input output
Example: the following program writes strings to a file 

#include<fstream.h> 		// for ofstream
void main( )
{
	ofstream my_ofile ("test.txt");
	my_ofile<<"This is a trial text\n";
	my_ofile<<"to be written in disk file \n";
	my_ofile<<"by file name \"Test\".\n";
}

In this program, we created an object called my_ofile using the ofsteam class, which is used to create objects for output data to files, and at the same time the file name test (to be created on the disk) is given to our output object as an argument in quotations.

A file with the .txt extension will be created in the folder …tc\bin, where tc.exe (the C++ compiler itself) is located in. You can set the drive for the above program as:



''',



];