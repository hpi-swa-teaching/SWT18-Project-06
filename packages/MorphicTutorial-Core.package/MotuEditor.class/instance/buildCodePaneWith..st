code pane
buildCodePaneWith: builder

	^ (super buildCodePaneWith: builder)
		stylerClass: MotuTextStyler;
		yourself