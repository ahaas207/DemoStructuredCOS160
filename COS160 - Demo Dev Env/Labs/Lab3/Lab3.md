COS 170 : Lab 3 - Graphics  

=============================

Objectives

In this lab you will work with a few of the basic graphics programming methods of the Graphics2D class in the Java Abstract Windows Toolkit (AWT).  

Preparation  

*   You might see an option to update the cs50 extension, select 'Remind Me Later', if you select Update it will require a rebuild of the container. 
*   Select the Lab3.md tab and drag to right hand side of the screen so you can see the instructions side by side with the lab. 
*   Run BoxGuy.java (select tab and click drop down option next to the the arrow on top right of tab), select 'Run Java'.
*   On left hand side of the VSCode editor in the explorer section, you will see a icon that says CS50, click then choose "GUI". This will open up another tab in your browser and display the output. 
*   You can leave this tab open. If you make changes to the file, click on the red square on top right of tab to stop running the program and 'Run Java' again. This will automtically update the display in the other browser tab. 

  

Exercise 1: (4 points)  

> ![](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/BoxGuy1.PNG)

This program illustrates a few of the functions available in the Graphics2D class. Basic documentation about the DrawingPanel and Graphics2D class can be found at: [http://www.cs.usm.maine.edu/~boothe/cos160/UsingJavaGraphics.pdf](http://www.cs.usm.maine.edu/%7Eboothe/cos160/UsingJavaGraphics.pdf) and Comprehensive documentation about Graphics2D can be found at : [https://docs.oracle.com/javase/7/docs/api/index.html?java/awt/Graphics2D.html](https://docs.oracle.com/javase/7/docs/api/index.html?java/awt/Graphics2D.html)

Look over the BoxGuy program and make sure you understand it. You are going to be making a few small changes. Below are the changes that you need to make. Make each change one at a time and test it and make sure you understand it before moving on.  

*   Change the background color  
    
*   Change the eyes to white
*   Add small round black pupils to the eyes  
    
*   Change the word the box guy says

Screen capture your final drawing panel and paste it into your solutions document. 

On a Mac,

*   command-shift-4 key initiates the capture
*   click on one corner of the image and drag to the other diagonal corner.  
    
*   You will likely find the file with the image on the desktop.  
    

In Windows this can be done by:

*   Selecting the window you want to capture.
*   Hit Alt-PrintScreen to capture an image of your window to the clipboard.
*   Switch into your editor and paste it with Ctrl-V.

Also paste your final program into your solutions document.

Exercise 2: (3 points)

We take inspiration from the [Pyramid of Djoser](https://en.wikipedia.org/wiki/Pyramid_of_Djoser) (a few artist liberties) to motivate us to produce an image that looks like :  

> ![Step Pyramid](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/StepPyramid.png)

  
Create a new Java class called StepPyramid in your lab3 project and, using the example code from step 1 as a guide, develop a Java program that produces an image similar to the above (you can exercise a few artistic liberties of your own).  

Create a screen capture and put it in your solutions document and include your code as well.

Exercise 3: (3 points)

Make a copy of the StepPyramid code. Right click on the StepPyramid.java file and select the copy option. Next, right click on the default package and select paste. It will ask for a new name and you should type RedSnowMan. Modify the RedSnowMan code to produce :

>  ![Red SnowMan](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/Red%20SnowMan.png)

Include a screen snapshot in your solutions document (code not necessary)  

Exercise 4: Extra Credit (2 points)

Successive drawing calls to the same region will overwrite earlier pixels. We can use this to create some interesting effects. Create a new Java class called Rings and write code that creates an image that looks like:  

![Rings](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/Rings.png)

Note the black edges around each of the rings. To have the colors change from a deep red to darker reds, you will need to create a new Color object. There is an example of creating and using Color objects in the DrawShapesAndText.java code. For this case, we will start with Red at 255 (max) and decrease it by about 50 units each time we create a smaller ring.

Include a screen snapshot and code in the solutions document.

Exercise 5: More Extra Credit (2 Points)

Draw the Box Guy a hat of your own design.  
![](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/BoxGuy2.PNG)![](https://www.cs.usm.maine.edu/~boothe/cos160/labs/Lab3_files/BoxGuy3.PNG)  
Include a screenshot and your code in the solutions document.

YOU ARE DONE!

Save this document document to your USB flash drive and print a copy to turn in.
