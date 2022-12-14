
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



func swap(array: inout [String],idx1:Int,idx2:Int){
    let temp = array[idx1]
    array[idx1] = array[idx2]
    array[idx2] = temp

}




var newArray = getWords()




for (index,_) in newArray.enumerated(){
    var lowest = index
    if index+1 != newArray.count{ //if not at end
        //find lowest value
        //iterate over newArray starting after sorted portion
        for (uIndex,unsorted) in newArray[index...].enumerated(){
            if unsorted < newArray[lowest]{
                lowest = uIndex+index // update value
            }
       
        swap(array:&newArray,idx1:lowest,idx2:index)//swap values
    }
}

for x in newArray{
    print(x)
}
