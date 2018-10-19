setup
descriptionBoxContent

	^ '<b>Every now and then ...</b><br>
We now would like to change the color of our <a href="code://ColorfulMorph">ColorfulMorph</a> every 2 seconds.<br>
<br>
Morphs already have a simple way of implementing such recurring behavior through so-called <a href="code://Morph >> #step">steps</a>.<br>
<br>
But first we want to specify the time between steps by overriding <a href="code://Morph >> #stepTime">Morph>>stepTime</a> to return 2 seconds instead of the default 1 second.' asTextFromHtml