int b;
int a=501;
int value=30;
int x;

void setup()
{
  
 size(800,800); 
 println(par(a));   
}


int par(int a) {
  for (int n=a%2;;) {
    
if(n>0){
 println("es impar"); 
}
else {
  println("es par");
  
  }
  b=a;
  x=n;
  return a;
}}

void draw (){
  background(125);
  if(x>0){
  fill(a,190,a);
  triangle(a, a, 20, a, value, 400);
  if (a<800){
  a=a+1;
  }
  else {
    if (value<400)
   value=value+1;     
  }
  
  }
  else{
    
    if(value< 400 && a<600){
    value=value+1;
    a=a+1;}
  fill(a,190,a);
    rect(value,value,a,a);
  }
}