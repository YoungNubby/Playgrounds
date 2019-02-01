import UIKit

var str = "Hello, playground"

//BMI Calc Imperial
//1 foot = 12 in
//1 inch = .0254 meters
//1 pound = .45359237 kg

func bmiCalcImperial (weightInPounds: Double, heightInFeet: Double, remainderInches: Double) -> String {
    
    let weightInKg = weightInPounds * 0.45359237
    let totalInches = heightInFeet * 12 + remainderInches
    let heightInM = totalInches * 0.0254
    
    let bmi = weightInKg / pow(heightInM, 2)
    
    let shortHand = String(format: "%.2f", bmi)
    
    var interpretation = ""
    
    
    if bmi > 25 {
        interpretation = "you fat, start a diet."
    } else if bmi > 18.5 {
        interpretation = "you aight, but how chin looking?"
    } else {
        interpretation = "you can afford to eat a pizza!"
    }
    
    return "Your BMI is \(shortHand) and \(interpretation)"
}




var bmiResult = bmiCalcImperial(weightInPounds: 160, heightInFeet: 6, remainderInches: 0)


print(bmiResult)


