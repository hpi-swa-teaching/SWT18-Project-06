setup
descriptionBoxContent

	^ '<b>Abandon a Morph</b><br>
Now that you have learned to create a Morph and display it you need to let it disappear again. There are two methods that could potentially be used for this task. The first is the <a href="code://Morph >> #delete">delete</a> method. The second possibility is to make use of the <a href="code://Morph >> #abandon">abandon</a> method. Since the abandon method is there to be overridden by subclasses of morph in order to clean up resources and then call delete. You should rather use the abandon method. With abandon you can be sure that everything is "deleted" gracefully.<br>
<br>
Let the provided <a href="code://Morph">Morph</a> disappear using <a href="code://Morph >> #abandon">abandon.' asTextFromHtml