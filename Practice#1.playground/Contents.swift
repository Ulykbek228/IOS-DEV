let firstName: String = "Luka"
let lastName: String = "Kaka"
let birthYear: Int = 2006
let currentYear: Int = 2025
let age: Int = currentYear - birthYear
let isStudent: Bool = true
let height: Double = 1.73

let hobby: String = "weightlifting"
let numberOfHobbies: Int = 3
let favoriteNumber: Int = 7
let isHobbyCreative: Bool = false

let lifeStory = """
My name is \(firstName) \(lastName). I am \(age) years old, born in \(birthYear).
I am currently a student: \(isStudent).
My height is \(height) meters.
I enjoy \(hobby), which is a creative hobby: \(isHobbyCreative).
I have \(numberOfHobbies) hobbies in total, and my favorite number is \(favoriteNumber).
"""

print(lifeStory)

let futureGoals: String = "In the future, I want to become a professional iOS developer."
print(futureGoals)
