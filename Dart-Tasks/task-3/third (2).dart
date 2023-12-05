import 'dart:io';

class Calculator{

int? first;
int? second;

Calculator(this.first, this.second);


int addition(){

  return this.first! + this.second!;

}
int subtraction(){
return this.first! - this.second!;

}
int multiplication(){
return this.first! * this.second!;
}

double division(){
double? res;
try{
if(this.second == 0){
  throw Exception("cant divide by a zero");
}else{
  res = this.first! / this.second!;
}
}
catch (e){
print(e);
}

return res!;
}

}


void main(){
print("Enter the first number");
var firstnum = int.parse(stdin.readLineSync()!);

print("Enter the second number");
var secondnum = int.parse(stdin.readLineSync()!);


Calculator cal = new Calculator(firstnum,secondnum);
  Future.delayed(Duration(seconds: 5), () {
    print("the sum is ");
    print(cal.addition());
    print("the difference is ");
    print(cal.subtraction());
    print("the product is ");
    print(cal.multiplication());
    print("the quotient is ");
    print(cal.division());
  });
}
