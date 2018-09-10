setup
descriptionBoxContent

	^ '<b>Advanced Positioning</b><br>
Actually, we cheated in the last lecture. When we introduced positioning to you, we pretended, that the Morph would be at its position relative to its owners position (in this case the tutorial world). That is not the case. Positions are always relative to the upper left screen corner. That means depending on how you positioned the window, the Morph at 100@50 would not even be in the visible area of its owner (the tutorial world).<br>
To fix this, you just need to add the relative coordinates onto the owners position and set the result as your own position.<br>
<br>
Try it and set the Morph you get from us to the position x=200 und y=100, but this time do it relative to its owners position.<br>
<br>
Hint: To get the owners position you need to get the owner. How do you get the owner of a given <a href="code://Morph">Morph</a>?' asTextFromHtml