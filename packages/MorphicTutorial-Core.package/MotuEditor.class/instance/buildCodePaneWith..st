building
buildCodePaneWith: builder

	^ (super buildCodePaneWith: builder)
		stylerClass: MotuTextStyler;
		setText: #evaluateAndSaveText:notifying:;
		yourself