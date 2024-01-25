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
    else if(["neq", "NEQ", "Neq"].contains(boolFunc)){
        RboolFunc = "neq"
    }
    else if(["NEGATE", "Negate", "negate", "NEG", "Neg", "neg"].contains(boolFunc)){
        RboolFunc = "negate"
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

func execute(A: Int, B: Int, function: String) -> String {
    if function == "and" {
        return AND(A: A, B: B)
    }
    else if function == "nand" {
        return NAND(A: A, B: B)
    }
    else if function == "or" {
        return OR(A: A, B: B)
    }
    else if function == "nor" {
        return NOR(A: A, B: B)
    }
    else if function == "eq" {
        return EQ(A: A, B: B)
    }
    else if function == "neq" {
        return NEQ(A: A, B: B)
    }
    else if function == "negate" {
        return NEGATE(A: A, B: B)
    }
    else {
        return OR(A: A, B: B)
    }
}
   
func AND(A: Int, B: Int) -> String {
    var answer = ""
    if A == 1 {
        if B == 1 {
            answer = "true"
        }
        else {
            answer = "false"
        }
    }
    else {
        answer = "false"
    }
    return answer
}

func NAND(A: Int, B: Int) -> String {
    var answer = ""
    if A == 1 {
        if B == 1 {
            answer = "false"
        }
        else {
            answer = "true"
        }
    }
    else {
        answer = "true"
    }
    return answer
}

func OR(A: Int, B: Int) -> String {
    var answer = ""
    if A == 0 {
        if B == 0 {
            answer = "false"
        }
        else {
            answer = "true"
        }
    }
    else {
        answer = "true"
    }
    return answer
}

func NOR(A: Int, B: Int) -> String {
    var answer = ""
    if  A == 0 {
        if B == 0 {
            answer = "true"
        }
        else {
            answer = "false"
        }
    }
    else {
        answer = "false"
    }
    return answer
}

func EQ(A: Int, B: Int) -> String {
    var answer = ""
    if A == B {
        answer = "true"
    }
    else {
        answer = "false"
    }
    return answer
}
func NEQ(A: Int, B: Int) -> String {
    var answer = ""
    if A == B {
        answer = "false"
    }
    else {
        answer = "true"
    }
    return answer
}

func NEGATE(A: Int, B: Int) -> String {
    
    print("Would you like to negate A or B?")
    let AorB = readLine()
    var answer = ""
    if (["A", "a"].contains(AorB)) {
        if A == 1 {
            answer = "false"
        }
        else {
            answer = "true"
        }
    }
    else if(["B", "b"].contains(AorB)) {
        if B == 1 {
            answer = "false"
        }
        else {
            answer = "true"
        }
    }
    else {
        print("Please input an accpeted value (A/B)")
        NEQ(A: A, B: B)
    }
    return answer

}

func XOR(A: Int, B: Int) -> String {
    var answer = ""
    if A == B {
        answer = "false"
    }
    else {
        answer = "true"
    }
    return answer
}
    

func YN() -> String {
    let yesOrNo = readLine()
    var RyesOrNo = ""

    if(["Y", "y", "Yes", "yes"].contains(yesOrNo)) {
        RyesOrNo = "y"
    }
    else if (["N", "n", "No", "no"].contains(yesOrNo)) {
        RyesOrNo = "n"
    }
    else {
        print("Please enter an accepted value (y/n)")
        RyesOrNo = "wrong"
    }

    if RyesOrNo == "wrong" {
        YN ()
    }
    return RyesOrNo
}       
            
func main() {
    let A = userInput(varName: "A")
    //print(A)
    let B = userInput(varName: "B")
    //print(B)
    
    let LogicalFunction = chooseLogic()
    //print(LogicalFunction)
    
    let finalAnswer = execute(A: A, B: B, function: LogicalFunction)
    print("The outcome of your logical function is \(finalAnswer)!")

    print("Would you like to evaluate again? (y/n)")
    let YorN = YN()
    if YorN == "y" {
        main()
    }
    else {
        print("Thank you for your time.")
    }
    
}

main()

//func main() {
// 1. Read user input
// 2. 

//}
