### COS 160: Program #2 - Electricity Usage Calculations

Objectives: Working with variables and expressions.  
  
You are going to write a program to perform an energy audit of the electricity used by a computer.  Your main method should be organized into three section: 1. input values, 2. calculations, and 3. printing results. Separate these sections in your code with a comment at the start of each section and a blank line between sections.  

#### Part 1-a (5 points) Input Values

Here is the first section.  You can just copy and paste this into your code.  
  

        // input values  
        double usageHoursPerDay = 8;    // hours computer is on per day  
        double usageDaysPerWeek = 5;    // days computer is used per week  
        double usageWeeksPerYear = 50;  // weeks computer is used per year  
        double wattsPerHour = 113;          // watts used by computer per hour  
  
        double CMPcostPerKWH = 0.145;       // prices of power per kilowatt hour  
        double CMPlbsCO2perKWH = 0.58815;   // pounds of CO2 generated per KWH  

  

#### Part 1-b (10 points) Calculations

In the second section calculate the values shown below.  In your program you should be writing mathematical expressions using the variables from the first and second sections.  Use type double for all calculations.  
  

        // values to be calculated  
        double usageHoursPerYear =  
        double usageKWHPerYear =  
        double costPerYear =  
        double lbsCO2PerYear =  

   
Note that for the calculation of usageKWHPerYear, you will need to calculate the total WATT HOURS used per year and then divide by 1000 to convert to KILO-WATT-HOURS.  

#### Part 1-c (10 points) Printing Results

Print your energy audit that shows input values and the calculated results.  Format it neatly like this:  
  

Computer Energy Audit:  
  
Your computer uses 113.0 watts.  
It is on 8.0 hours/day, 5.0 days/week, 50.0 weeks/year.  
This equals 2000.0 hours/year.  
This uses 226.0 KWH/year.  
It will cost 32.769999999999996 $/year for electricity.  
The CO2 pollution produced will be 132.9219 lbs.  

  
Later in this class we will learn how to round off and format printed values so you don't print all those excessive digits of precision.  

#### Part 2 (5 points) Your Computer Usage

The above was for a typical person working 8 hours a day in an office using a mid-level desktop business computer.  You can change the input values to calculate your own or anyone's electrical usage.  Later in this class we will learn how to get keyboard input into a program, but for now we are just going to directly change the values of the input variables inside our program.  
  
Change the input values to reflect your computer usage.  Here is a table of example watt usage of various computers.  Use the one that best matches the computer that you use the most.  
  

Computer & LCD Monitor  

Watts  

High End Desktop (gaming computer)  

175  

Mid Level Desktop (business computer)  

113  

Low End Desktop (basic home computer)  

78  

Laptop  

50  

   

#### Extra Credit (5 points) Gallons of Gasoline Equivalent

Add an extra calculation to your program to calculate and display the number of gallons of gasoline that would produce an equivalent amount of CO2 pollution.  To do this you will need to search the internet to find out how many pounds of CO2 are produced by burning a gallon of gasoline.  Include a comment that documents your source of information.  
  

* * *

### What to turn in:

1.  Your final program.
2.  The output from both runs of your program.
3.  If you do the extra credit, circle and label the extra credit parts added to you program and their output.
