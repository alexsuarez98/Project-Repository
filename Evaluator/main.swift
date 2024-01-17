//print("What is your name?")
//let name = readLine()
//print("Hello, \(name!)")







//function to ask the user for an iput for a truth variable, and to decline if they respond with something unusable, then ask again.
func userInput(varName: String) -> Int {
    print("What is the value of variable \(varName)?: ")
    //initial variable
    let int = readLine()
    //returned varibale. This is initially 2 because it is a number the function will not allow to be returned, so the user can change it to a correct one or the function will fail.
    var Rint = 2
    
    if(["1", "TRUE", "True", "true"].contains(int)){
        //== "1" || "TRUE" || "true" {
        Rint = 1
        //Returns the user input of 1
    }
    else if(["0", "FALSE", "False", "false"].contains(int)){
        //int == "0" {//|| "FALSE" || "false" {
        Rint = 0
        //Returns the user input of 0
    } 
    else {
        print("That is not an accepted value. Please respond with a acceptable truth value for variable \(varName).")
        Rint = 2
    }
    
    if Rint == 2 {
        //checks to see if the variable was changed to a 1 or 0, and asks again to reinput if the number is unusable.
        userInput(varName: varName)
    }
    
    return Rint
    //returns a 1 or 0
}

func chooseLogic() -> String {
    print("What is the truth function you would like to preform with A and B?: ")
    let boolFunc = readLine()
    var RboolFunc = ""

    if(["and", "AND", "And"].contains(boolFunc)){
        RboolFunc = "and"
    }
    else if(["nand", "NAND", "Nand"].contains(boolFunc)){
        RboolFunc = "nand"
    }
    else if(["or", "OR", "Or"].contains(boolFunc)){
        RboolFunc = "or"
    }
    else if(["nor", "NOR", "Nor"].contains(boolFunc)){
        RboolFunc = "nor"
    }
    else if(["eq", "EQ", "equates", "Equates", "EQUATES"].contains(boolFunc)){
        RboolFunc = "eq"
    }
    else if(["neq", "NEQ", "Neq", "negate", "NEGATE", "Negate"].contains(boolFunc)){
        RboolFunc = "neq"
    }
    else if(["xor", "XOR", "Xor"].contains(boolFunc)){
        RboolFunc = "xor"
    }
    else {
        print("That is not an accepted value. Please respond with a Logical Function.")
        RboolFunc = "Wrong"
    }

    if RboolFunc == "Wrong" {
        chooseLogic()
    }

    return RboolFunc
}
   


let A = userInput(varName: "A")
let B = userInput(varName: "B")

let LogicalFunction = chooseLogic()
//func main() {
// 1. Read user input
// 2. 

//}
