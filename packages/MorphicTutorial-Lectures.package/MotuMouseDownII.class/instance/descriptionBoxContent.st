setup
descriptionBoxContent

	^ '<b>Click me more</b><br>
While the solution from the last excercise works for a single instance of the colorful morph, it has no effect on new instances that are created. When you click at the morph above, nothing will happen.<br>
We now would like to make the click event being handled on every ColorfulMorph. Therefore we need to do two things. First we need to tell the world, that our morph will accept events.<br>
<br>
Your task is to implement <a href="code://ColorfulMorph >> #handlesMouseDown:">handlesMouseDown:</a> on <a href="code://ColorfulMorph">ColorfulMorph</a>.' asTextFromHtml 