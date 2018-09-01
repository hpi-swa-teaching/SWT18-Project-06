building
buildCodePaneWith: builder

	^ (super buildCodePaneWith: builder)
		stylerClass: MotuTextStyler;
		yourself