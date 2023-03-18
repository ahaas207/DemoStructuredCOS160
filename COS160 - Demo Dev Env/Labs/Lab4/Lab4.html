  COS 170 : Lab 4 - if statements     function lti\_launch( vars, target ) { var query = ''; var new\_tab = false; for(var key in vars) { if(query.length == 0) { query += '?' + key + '=' + encodeURIComponent(vars\[key\]); } else { query += '&' + key + '=' + encodeURIComponent(vars\[key\]); } } var url = '/d2l/customization/pearsonlti/6606/Launch' + query;(target == '\_blank') ? window.open( url, '\_blank' ) : location.replace( url );}document.addEventListener('DOMContentLoaded', function() { if (document.querySelector('math') || /\\$\\$|\\\\\\(|\\\\\\\[|\\\\begin{|\\\\ref{|\\\\eqref{/.test(document.body.innerHTML)) { document.querySelectorAll('mspace\[linebreak="newline"\]').forEach(elm => { elm.setAttribute('style', 'display: block; height: 0.5rem;'); }); window.D2L.MathJax.loadMathJax({ 'outputScale': 1.3, 'renderLatex': false }); } });document.addEventListener('DOMContentLoaded', function() { document.querySelectorAll('.d2l-code').forEach(code => { window.D2L.Prism.formatCodeElement(code); }); });window.addEventListener('message', function(event) { if( !event.data ) { return; } var params; try { params = JSON.parse( event.data ); } catch { return; } if( !params.subject || params.subject !== 'lti.frameResize' ) { return; } const MAX\_FRAME\_HEIGHT = 10000 if( !params.height || params.height < 1 || params.height > MAX\_FRAME\_HEIGHT ) { console.warn( 'Invalid height value received, aborting' ); return; } var el = document.getElementsByTagName( 'iframe' ); for ( var i=0; i < el.length; i++ ) { if( el\[i\].contentWindow === event.source ) { el\[i\].style.height = params.height + 'px'; el\[i\].style.width = '100%'; console.info( 'Setting iFrame height to ' + params.height ); console.info( 'Setting iFrame width to 100%' ); } } });

COS 170 : Lab 4 - if statements and conditional expressions  

==============================================================

Objectives

In this lab you will experiment with conditional statements (if - else) and boolean expressions.  

Preparation  

  

*   Set up a new eclipse project for each lab [(detailed instructions)](http://www.cs.usm.maine.edu/%7Emacleod/courses/cos160/Fall2020Labs/StartingANewLabProject.html)  
    

*   Copy the files [DrawingPanel.java](http://www.cs.usm.maine.edu/%7Eboothe/cos160/DrawingPanel.java), [DrawLoop.java](Lab4_files/DrawLoop.java?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R) and [IfGrid.java](Lab4_files/IfGrid.java?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  into your lab4 project folder. (One simple way to do this is to save the links to desktop, and then drag the desktop icons into the Eclipse project).

  

Exercise 1: (3 points)  

Run the DrawLoop program to make sure it works.  

The DrawLoop code requires some explanation of a new construct, the **while loop**, which is being used to help make this lab more interesting. We will be learning about loops in class soon. Loops repeatedly execute a block of code, known as the body of the loop, which is highlighted in bold below:  

        int i = 0;       // start at i = 0  
        while (i < 8) **{    // repeat for i = 0,1,2...7**            **int cornerX = i\*50;  // calculate upper left corner**            **int cornerY = i\*25;**            **g.setColor(Color.WHITE);**            **g.fillOval(cornerX + 5, cornerY + 5, sizeX-10, sizeY-10);**            **g.setColor(Color.BLACK);**            **g.drawRect(cornerX, cornerY, sizeX, sizeY);**            **i++; // increment i for next iteration**        **}**  

  

This loop will repeat 8 times. The value of the variable i is 0 the first time, 1 the second time, and so on up to a value of 7. The effect of this code is to draw 8 ovals and eight rectangles. In this lab you will not need to change the behavior of the loop.  

You are going to be making a series of small changes.  When you are done it should look like this:  
   
![](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/DrawLoop2Soln.png?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)

Below are the changes that you need to make. Make each change one at a time and test it and make sure you understand it before moving on.  

*   Change the background color to a new color of your choice.  I used the Red Green Blue values shown below.  Experiment and create an interesting color. Note that the additive color model of emitted light (RGB) may not match your color mixing intuition (red plus green does not make brown.)  
    

   

panel.setBackground(new Color(200, 250, 150));  

  

*   Change the color of the ovals from all white to alternating between two colors. Specifically, replace the statement to set the color to white with:

  

if (i%2 == 0)                     <---- make sure there are 2 equal signs  
    g.setColor(Color.orange);  
else  
    g.setColor(Color.green);  

  

> Recall that the loop changes the value of **i** every iteration. The expression i%2 == 0 uses the modulus operator % (a.k.a. remainder) to test if a value is even or odd.   In this expression if the value of i is even, then the remainder when divided by two will be 0, but if i contains an odd value then the remainder will be 1.  This is used to make the if statement alternate each iteration between the true and false cases. (Remember this even/odd test. It is very useful!)  

Copy and paste a screen capture of the final drawing panel into your solutions document.  In Windows this can be done by:  

*   Selecting the window you want to capture.
*   Hit Alt-PrintScreen to capture an image of your window to the clipboard.
*   Switch into your editor and paste it with Ctrl-V.

On the Mac :  

*   Command-Shift-4  
    
*   Click on one corner and drag mouse to diagonal corner  
    
*   will find the screen snapshot on the desktop and you can insert this into your word file  
    

Also paste your final program into your solutions document.

Exercise 2: (2 points)  

The rest of the exercises will use the program IfGrid.java to experiment with conditional expressions used in if statements.  Run the program to make sure it works.  It should produce the drawing panel shown below.

![](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/IfGridx4.png?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  

Examine the code to see how it works. It is very similar to your program from the previous exercise. The main difference is that there are two loops with the second loop nested inside the first one. The behavior of these nested loops is to create all combinations of x & y, with  
          0 <= x <= 9  
          0 <= y <= 9  

The above diagram displays the x & y values in the nested loop. As in the previous exercise, we will not modify the loops, but we will use the x & y values that are generated from the loops to create interesting patterns using if statements.  

Notice that inside the block associated with the loops, there is also an if statement that sets the color for each rectangle.  

if (x == 4)  
    g.setColor(Color.green);  
else  
    g.setColor(Color.yellow);  
  
g.fillRect(cornerX, cornerY, sizeX-1, sizeY-1);  

Currently the program sets the color to green for each rectangle that has an x value of 4.  This ends up making a vertical stripe.  This is in fact a model of how pixel-based computer graphics systems work.  Each pixel is assigned a color and patterns of pixels are modified to draw lines, shapes, and pictures.  

Change the expression in the if statement so that the right half of the rectangles (those with x >= 5) are colored green :  

> ![X greater than 4](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/xGreaterThan4.png?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)

Copy your modified if statement into your solutions document.  You don't need to copy any more pictures for this lab.  

Exercise 3: (1 point)  

Change the expression in the if statement to make the diagonal green.  Note the relationship between x and y for the green squares.  

![](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/IfGridDiagonal.png?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  

Copy your modified if statement into your solutions document.  

  

Exercise 4: (1 point)  

Change the expression in the if statement to make the lower left triangle green.  Note the relationship between x and y for the green squares.  

![Lower left](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/LowerLeft.PNG?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  

Copy your modified if statement into your solutions document.

Exercise 5: (1 point)  

A little bit trickier.  Change the expression in the if statement to make the upper left triangle green.  Hint look at the sum x + y for the green squares.  

![upper left](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/UpperLeft.PNG?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  

Copy your modified if statement into your solutions document.

Exercise 6: (1 point)  

Another one.  Hint look at the sums of x + y for the green squares versus the yellow squares.

![checkerboard](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/Checker.PNG?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)  

Copy your modified if statement into your solutions document.

Exercise 7: (1 point)  

Now use a series of if - else statements to make column 4 green, column 5 blue, column 6 red, and leave the rest yellow.  

Copy your modified if statements into your solutions document.

YOU ARE DONE!

Save this document document to your USB flash drive and print a copy to turn in.  

Extras - If you are done early, here are some extra things to try.  You don't need to turn these in.  They are just to enhance your understanding and proficiency.  

  
  

![Border Star](https://courses.maine.edu/content/enforced/139829-2120.UMS06-S.62273.1/Labs/Lab4_files/BorderStar.PNG?_&d2lSessionVal=p95kN3dMAKRuVoCxs0U68Zf6R)
