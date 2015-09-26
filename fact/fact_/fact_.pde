int num = 30;// numero del factorial
int value;//copia del resultado para manejar la ellipse y sus colores
int A = 800; // limite para pintar la ellipse del factorial
int col=value ; //colores
int col1=value ; 
int col2=value ; 

void setup() {
  size(800,800);
  println(factorial(num));// mostrar el factorial en consola

}
 
 
 // funcion para encontrar el factorial de un numero 
int factorial(int n) {
  for (int i=n-1;i>=1;i--) {
    
    n=n+i;
    println (n);//pintar todos los resultados anteriores al buscado en consola 
  }
  value = n;
  return n;
}

void draw (){
  
  background(125);
 
  // colores de la ellipse segun sus valores
  if (value<800) {
    col = value-1;
    if (value>600) {
        col = value-1; 
        col1 = col1+1;
    } 
    else 
    { if (value>400) {
   col2 = value -1;
   col1 = col1+1;
    }
    else {
    col = value + value;
    col1 = col1+1;
    }
    }
     fill(col, col1, col2);
  //tamaño de la ellipse segun sus valores
  ellipse(400,400,factorial(num),factorial(num));
  }
  
  // si los valores no pueden ser representados en pantalla 
  else { if(A>=-798 && A<=800) A = A-5;
          else {
           A= A+1600;
         }
     fill(A, value, col1);
    ellipse(400,400,A,A);
}
  
}