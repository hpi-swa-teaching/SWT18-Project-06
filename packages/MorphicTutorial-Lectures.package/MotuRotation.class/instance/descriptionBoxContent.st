setup
descriptionBoxContent

	^ '<b>Flex Shells</b><br>
You might ask yourself why rotation is put in a lecture about submorphs. That''s, because a Morph usually does not offer any functionality for rotation on its own.<br>
<br>
To achieve rotation, the Morph that is supposed to be rotated has to be wrapped by a <a href="code://TransformMorph">TransformMorph</a> or <a href="code://TransformationMorph">TransformationMorph</a>. These types of morphs hold the desired morph as a submorph, forming a "shell" around it.<br>
<br>
Your task is to add a TransformationMorph around the given Morph.' asTextFromHtml 