 COS 170 : Lab 2 - Integer variables and expressions    

COS 170 : Lab 2 - Integer variables and Expressions - Making Change
===================================================================

Objectives

Calculating change is something that we do without thinking much about it. For example, the change for 58 cents is 2 quarters, one nickel, and three pennies.  In this lab, you will write a program to calculate the coins for an amount of money less than one dollar (expressed in cents). Of course, there are different ways to make change. Our change for 58 cents could consist of 58 pennies or we could use 5 dimes and 8 pennies, or ... What we would really like to do is use a minimal number of coins.  

For this lab, you will develop a greedy solution for calculating change. A greedy solution for making change is quite simple. Assume you want to convert an arbitrary number of cents into coins of the following denominations: quarter, dime, nickel, and penny. Use as many quarter coins as possible; then, on what's left over, use as many dime coins as possible; then on the left over, use as many nickels as possible; finally the remainder is in pennies.  

Preparation

Set up a new eclipse project for each lab [(detailed instructions)](StartingANewLabProject.html)

Exercise 1: (1 point) Getting input from the user  

We start by writing a program to ask the user for a number between 0 and 99 that represents the number of cents.

Create a new Java Class for your program. I called mine **ChangeUS**  

When finished it will work like this:  

Please enter the amount of change to be returned (a number between 0 & 99): **58**  
The change for 58 cents is:  

Use **System.out.print()** to display the prompt. Use a **Scanner** to read the user's input into your program. And then use **System.out.println()** to display a message showing the amount that the user typed in.  (See zybooks section 1.2 if you need help.)

Run your program. You will need to click on the Console panel to enter your input value. Fix any problems.  

Proper code indentation in not required by Java, but it is essential in writing legible programs. Just like the line breaks in poetry help us to understand the structure of a poem, proper program indention help the reader quickly see its structure. Eclipse helps you maintain proper indentation automatically. Sometimes, however, the indentation gets off, such as when you cut and paste sections of code.  The shortcut key (Windows:  Ctrl+I  , macs: **Cmd+I**) will correct the indentation for the current line, or if you select a block of code, it will correct the whole block. You can select and then indent the entire program with (Windows: Ctrl-A  Ctrl-I , macs: Cmd-A  Cmd-I). This is also on the pulldown menu: Source -> Correct Indentation. Try it out.  All code that you turn in for the exercises and programs should always be properly indented.

Copy your modified program and the output from the Console into your solutions document.

Exercise 2: (3 points) Calculating the number of Quarters

Modify the above program to also calculate the number of quarters and the amount left over after giving quarters. Now the interaction should look something like :  

Please enter the amount of change to be returned (a number between 0 & 99): **58**  
The change for 58 cents is:  
    2 Quarters  
    8 cents remaining  

Use the division and remainder operators: **/** and **%**. (See zybooks section 2.8 if you need help.) Store the values in variables with meaningful names like: change, quarters, remainingChange. 

Copy the modified program and the output from the Console into your solutions document.  

Exercise 3: (3 points) Dimes, Nickels, and Pennies

Modify the program from Exercise 2 to calculate the number of quarters,dimes, nickels, and pennies. Now the interaction should look something like :  

Please enter the amount of change to be returned (a number between 0 & 99): **58**  
The change for 58 cents is:  
    2 Quarters  
    0 Dimes  
    1 Nickel  
    3 Pennies  
Next time, bring exact change!  

Test it with several input values and make sure that it always works.  
Copy the modified program and the output from the Console for **3 different runs** into your solutions document.

Exercise 4: (3 points) There is a big world out there

You are now going to make a similar program that works with Euro's. Start by making a copy of your program as a starting point. In the "Package Explorer" panel on the left side of Eclipse (expand folders if needed) right-click on your ChangeUS.java file. Then paste is right back (Windows: Ctrl-V , Macs: Cmd-V). It asks for a new name. I used: ChangeEuros

In 1999, the European Union introduced a currency called the Euro which consists of eight coin denominations : €0.01, €0.02, €0.05, €0.10, €0.20, €0.50, €1 and €2.  In 2002, the country members of the EU replaced their national currency with the common EU currency ([Wikipedia](https://en.wikipedia.org/wiki/Euro_coins)). A single shared currency among many countries is an interesting experiment that is still very much a work in progress.

Now, write a program that calculates change in Euros for an amount less than 500 Euro cents. The interaction should look something like:

Please enter the amount of change in euro cents to be returned (a number between 0 & 499): **328**  
The change for 328 euro cents is:  
    1 €2  
    1 €1  
    0 €0.50  
    1 €0.20  
    0 €0.10  
    1 €0.05  
    1 €0.02  
    1 €0.01  

You may be interested to know how to make that interesting Euro symbol. The following will print out the first line of change in the above example.  

        System.out.println(1 + "  \\u20ac" +"2");

The \\u is telling println to treat the 20ac as a unicode character, Unicode supports the representation of many different charaters and languages. Just using a capital E will also be accepted.

Copy your program and the Console output into your solutions document.

YOU ARE DONE!

Save your document. [(lab instructions for copying to partner's USB drive)](SavingAndCopyingYourLab.html)