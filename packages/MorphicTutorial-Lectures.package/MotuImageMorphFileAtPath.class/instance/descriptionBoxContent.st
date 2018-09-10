setup
descriptionBoxContent

	^ ('<b>There is always a path</b><br>
In this lecture you should find out how you can access files on your system from Squeak.<br>
<br>
Therefore you have to return the path to an image on your harddrive as a string.<br>
<br>
Assume that you will start from the root.<br>
All supported file endings are: ', (ImageReadWriter allTypicalFileExtensions reduce: [:a :b | a, ', ', b]), '<br>
Hint: What system are you on?') asTextFromHtml 