Every Icon
==========

In 1996, John F. Simon, Jr. created "Every Icon", a program/art piece to display every possible 32x32 icon. 

Here is his statement about the project: http://numeral.com/articles/paraicon/paraicon.html

You can see it run online as a java applet: http://numeral.com/panels/everyicon.html 

I was inspired by this project and reverse-engineered it in ruby for fun. It runs in the terminal with ascii output.

Run it
------

    ruby every_icon.rb

It starts by displaying all 8x8 icons and then moves on to 32x32 (after a few billion years).

Run for different size grids
---------------------------

Look at the last line - it's easy to run it for different size grids.

    Grid.new(8).run

Environment
-----------

It works on ruby 1.9.3 on OSX.

ToDo
----

Feel free to make the display nicer. Send me a pull request.

