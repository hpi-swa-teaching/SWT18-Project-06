utility
resetAll

	self lectureCategories do: [ :chapter | 
		chapter sublectures do: [ :lecture |
		lecture instance resetLecture. lecture instance: nil]]