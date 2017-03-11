var array = [1,2,3,4,5,6,7,8,9,10]
//add all numbers
var arrayTotall: Int = 0

for var number in 0..<array.count {
    
   arrayTotall += (array[number])
    print(arrayTotall)
}
//// nubmer of grps
var arryGrpTotal = (array.count)
//// mean value of total/grp total
var arryMean = (arrayTotall/arryGrpTotal)
/// arry descending

var arryC = (array).sorted(by: >)

for each in arryC
{ if ((arryMean-(arryC[0]) + arryC[1])) < (arryMean-(arryC[0])){
        if((arryMean-(arryC[0] + arryC[1] + arryC[2])) < (arryMean-(arryC[0] + arryC[1]))){}
        else
    
        {
        var  g1 = arryC[0]
             g1 =  arryC[1]
        arryC = (arryC[0] - arryC[1])
        }

    else
    g1 = arryC[0]
    arryC = arryC - arryC[0]
}

for each in arryC
        if
