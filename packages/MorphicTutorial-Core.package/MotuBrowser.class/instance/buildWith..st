building
buildWith: aBuilder
	|playground|
	
	playground := PasteUpMorph new.
	playground
		extent: (300@300);
		beSticky;
		openInWorld.
	self playground: playground.
			
	^ aBuilder build: (aBuilder pluggableWindowSpec new
		model: self;
		label: #labelString;
		extent: self class defaultExtent;
		children: {
			self buildDescriptionBoxWith: aBuilder.
			self buildLectureListWith: aBuilder.
			self buildCodeEditorWith: aBuilder.
			self buildEvaluateButtonWith: aBuilder
			};
		yourself)