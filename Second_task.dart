final numbers = [1,8,3,3,4,45,5,69,10,39,91,10];



int findMaximum(numb){
 
var largestNum = numbers[0];

for(var i=0; i < numb.length; i++){
if(numb[i] > largestNum){
  largestNum = numb[i];
}
}
  
 return largestNum;
}


int findMinimum(numb){
 
var smallestNum = numbers[0];

for(var i=0; i < numb.length; i++){
if(numb[i] < smallestNum){
  smallestNum = numb[i];
}
}
  
 return smallestNum;
}


int calculateSum(numb){
  var sum = 0;
  for(int n in numb){
    sum += n;

  }
return sum;
}

double calculateAverage(numb){
var sum = calculateSum(numb);
var average = sum/numb.length;
return average;
}

void main(){

var max_num = findMaximum(numbers);
var min_num = findMinimum(numbers);
var sum = calculateSum(numbers);
var average = calculateAverage(numbers);
print("The maximum number in the list is ");
print(max_num);
print("The minmum number in the list is ");
print(min_num);
print("The sum of numbers in the list is ");
print(sum);
print("The average number of the list is ");
print(average);

}