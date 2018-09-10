setup
descriptionBoxContent

	^ '<b>Click me</b><br>
Your task is to add <i>Eventhandling</i> to the given morph.<br>
<br>
Whenever the Morph is clicked it should call its <a href="code://ColorfulMorph >> #switchColors">switchColors</a> method, so that it toggles its color. You should handle <i>mouseDown</i>-events.<br>
<br>Look for the method <a href="code://Morph >> #on:send:to:">on:send:to:</a>.' asTextFromHtml 