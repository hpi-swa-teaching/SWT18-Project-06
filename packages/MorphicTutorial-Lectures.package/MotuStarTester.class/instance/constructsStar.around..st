star checking
constructsStar: anArray around: aPoint

	^ (anArray withIndexCollect: [ :this :index | 
		|next last|
		next := anArray at: (self indexOf: index offset: 1 in: anArray).
		last := anArray at: (self indexOf: index offset: 2 in: anArray).
		
		(self distanceFrom: this to: aPoint) > (self distanceFrom: next to: aPoint) 
			ifTrue: [(self distanceFrom: next to: aPoint) < (self distanceFrom: last to: aPoint)] 
			ifFalse: [(self distanceFrom: next to: aPoint) > (self distanceFrom: last to: aPoint)]]) 
		reduce: [ :star :next |
			star and: next]