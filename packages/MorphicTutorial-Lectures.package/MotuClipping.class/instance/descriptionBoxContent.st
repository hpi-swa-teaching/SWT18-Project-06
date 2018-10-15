setup
descriptionBoxContent

	^ '<b>Clip Submorphs</b><br>
Here you can see a static Morph and a moving one. The moving Morph is a submorph of the stationary one. However, we can always see this submorph, even when it leaves the bounds of its owner. This is quite often not what we want.<br>
<br>
To prevent our moving submorph from being drawn outside of the stationary Morph''s bounds, enable clipping on the provided Morph.' asTextFromHtml 