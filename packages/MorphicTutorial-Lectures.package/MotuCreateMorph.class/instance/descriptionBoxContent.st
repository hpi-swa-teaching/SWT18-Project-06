setup
descriptionBoxContent

	^ '<b>Let us build a Morph</b><br>
In this first lecture we want to create a <a href="code://Morph">Morph</a> and show it to the user. In order to create a Morph we call "new" on the class - just as we do for every instance of a class in Squeak. Then open the Morph in the tutorial world. We are providing the tutorial world as the "aWorld" parameter. Outside this tutorial you should use <a href="code://Morph >> #openInWorld">openInWorld</a> to use the currently active world, instead of using <a href="code://Morph >> #openInWorld:">openInWorld:</a>.<br>
<br>
Do not forget to return your Morph to us using the return character <b>^</b> , so we can exhibit it in our gallery of first Morphs.' asTextFromHtml 