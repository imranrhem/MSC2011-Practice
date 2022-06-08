#BMI Calculator

#Get user input for height

height <- readline(prompt = "What is your height in metres? ")

#Convert height to a number

height <- as.numeric(height)

#Check if user input is valid

if (is.na(height) || height < 0) {
  print("Sorry, that is invalid. Exiting program.")
} else {
  
  #Get user input for weight
  
  weight <- readline(prompt = "What is your weight in kilograms? ")
  
  #Convert weight to a number
  
  weight <- as.numeric(weight)
  
  #Check if user input is valid
  
  if (is.na(weight) || weight < 0) {
    print("Sorry, that is invalid. Exiting program.")
  } else {
    
    #Calculate user BMI
    
    bmi <- weight/(height^2)
    
    #Print result
    
    if (bmi < 18.5) {
      print("You're in the underweight range.")
    } else if (bmi <= 24.9) {
      print("You're in the healthy weight range.")
    } else if (bmi <= 29.9) {
      print("You're in the overweight range.")
    } else if (bmi <= 39.9) {
      print("You're in the obese range.")
    } else
      print("Your BMI has not been categorized")
    
  }
  
}

