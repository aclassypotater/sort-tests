func getWords() -> [String] {
    var inputArray = [String]()

    var recieved : String?
    repeat{
        recieved = readLine()
        if recieved != nil{
            inputArray.append(recieved!)
        }
        
    }while recieved != nil
return inputArray
}


func swap(integers:inout Array<String>,firstIndex:Int,secondIndex:Int) {
    let temp = integers[firstIndex]
    integers[firstIndex] = integers[secondIndex]
    integers[secondIndex] = temp
}



var words = getWords()
infLoop : while true{
    var swapped = false
    for (index,_) in words.enumerated(){
        if index+1 != words.count { // if not at end
            
            if words[index] > words[index+1]{
                swap(integers:&words,firstIndex:index,secondIndex:index+1)
                swapped = true
            }
        }
    }
    if !swapped{
        break
    }
}



for x in words{
    print(x)
}
