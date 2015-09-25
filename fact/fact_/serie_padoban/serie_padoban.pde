void setup(){
  size(1000,600);
};

void draw(){
  for(int i=0;i<height;i++){
    fill(50,200,50);
    ellipse(40*i,-padoban(i)+height,5,5);
    println(padoban(i));
  };
};

int padoban(int i){
  if(i==1){
    return 1;
  }else{
    if(i==2){
      return 1;
    }else{
      if(i==3){
        return 1;
      }else{
        if(i==0){
          return padoban(i+1);
        }else{
          return padoban(i-2)+padoban(i-3);
        }
      }
    }
  } 
}