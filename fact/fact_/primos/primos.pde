void setup(){
 size(1000,600);
 background(0);
}
void draw(){
 for(int i=0;i<height;i++){
   stroke(125,125,125);
   fill(255);
   ellipse(9*i,-nesimoprimo(i)+height,5,5);
 };
};
int nesimoprimo (int a){
 int c=0;
 for(int i=0; i<10000; i++){
   if(esprimo(i) == true){
     c++;
     if(c==a){
       return i;
     }
   }
 }
 return 0;
}

boolean esprimo(int a){
 if(a==0||a==1){
   return false;
 }else{
   for(int i=2;i<a;i++){
     if(a%i==0){
       return false;
     }
   }
   return true;
 }
}