stepping
inOwner

	^ self position >= self owner position and: 
	[(self position + self extent) <= (self owner position + self owner extent)]