as yet unclassified
distFrom: aPoint to: anotherPoint

| result |
	result := ((aPoint x - anotherPoint x) squared + (aPoint y - anotherPoint y) squared) sqrt.
	^ result