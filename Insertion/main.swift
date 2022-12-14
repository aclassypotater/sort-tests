


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


func swap(array:inout [String],idx1:Int,idx2:Int){
    let temp = array[idx1]
    array[idx1] = array[idx2]
    array[idx2] = temp
    }

var newArray = getWords()

     
for (index,_) in newArray.enumerated() {
    if index != newArray.count - 1{ // if not at end of array
        if newArray[index] > newArray[index+1]{ // if not ordered
            swap(array:&newArray,idx1:index,idx2:index+1)
            var workingIndex = index
            while true{ // iterate backwards until in correct spot
                //BUBBLE SORT BACKWARDS STARTING AT END AND ENDING AT INDEX IN FOR loop
                if workingIndex == 0{ //if at end
                    break
                }
                if newArray[workingIndex-1] > newArray[workingIndex]{
                    //swap if unordered
                    swap(array:&newArray,idx1:workingIndex-1,idx2:workingIndex)     
                }
                
                workingIndex -= 1

            }


        }





        
    }
    if index+1 == newArray.count{
        break
    }
         
    
}


for x in newArray{
    print(x)
}
