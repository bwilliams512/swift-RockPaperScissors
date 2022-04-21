/*
Rock, paper, scissors is a classic two player hand game dating back to ancient China.

Here are its universal rules:
- Rock destroys scissors
- Scissors cut paper
- Paper covers rock

Keeping these guidelines in mind, I created a rock, paper, scissors
program but with a modern twist - one of the players is a computer!

My program will consist of 3 functions and utilize Swift concepts including
if/else and switch statements to determine the winner amongst 2 players.
*/

// User Choice....................................

func getUserChoice(userInput: String) -> String {
  if userInput == "rock" || userInput == "paper" || userInput == "scissors"  {
    return userInput;
  } else {
    return "You can only enter rock, paper, or scissors. Try again."
  }
}

// Computer Choice................................

func getComputerChoice() ->  String {
  let randomNumber = Int.random(in: 0...2)

  switch randomNumber {
    case 0:
      return "rock"
    case 1:
      return "paper"
    case 2:
      return "scissors"
    default:
     return "Something went wrong"
  }
}

// Determine Winner...............................

func determineWinner(_ userChoice: String, _ compChoice: String) -> String {

  var decision: String = "It's a tie"

  switch userChoice {
    case "rock":
      if compChoice == "paper" {
        decision = "The computer won"
      } else if compChoice == "scissors"{
        decision = "The user won"
      }

    case "paper":
      if compChoice == "rock" {
        decision = "The user won"
      } else if compChoice == "scissors"{
        decision = "The computer won"
      }

    case "scissors":
      if compChoice == "rock" {
        decision = "The computer won"
      } else if compChoice == "paper" {
        decision = "The user won"
      }
    default:
      print("Something went wrong")
  }
  return decision
}

// Display Result.................................

let userChoice = getUserChoice(userInput: "paper")
let compChoice = getComputerChoice()

print("You threw \(userChoice)")
print("The computer threw \(compChoice)")
print(determineWinner(userChoice, compChoice))
