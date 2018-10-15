setup
descriptionBoxContent

	^ '<b>Abandon a Morph</b><br>
Now that you have learned to create a Morph and display it, you need to let it disappear again. <br>
<br>
There are two methods that can be used to delete a Morph. The first is <a href="code://Morph >> #delete">Morph>>delete</a>, which removes the Morph from its owner''s submorphs. The second is <a href="code://Morph >> #abandon">Morph>>abandon</a>, which is a wrapper for the delete method, allowing subclasses of Morph to additionally clean up resources. It is therefore preferable to use abandon (if you don''t intend to reuse it), so you can be sure that everything is cleaned up gracefully.<br>
<br>
Let the provided <a href="code://Morph">Morph</a> disappear using <a href="code://Morph >> #abandon">Morph>>abandon.' asTextFromHtml