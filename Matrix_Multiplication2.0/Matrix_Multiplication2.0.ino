void setup() {
  Serial.begin(9600);
}

void loop() {
  int m=15;
  int n=20;
  int p=6;
 
  int a[m][p];    
  int b[p][n];
  
  Serial.println("Array A: ");
  for (int i=0; i<m; i++){
    for (int j=0; j<p; j++){
      a[i][j] = random(0,255);
      Serial.print(a[i][j]);
      Serial.print(" ");
    }
    Serial.println(" ");
  }
  
  Serial.println("Array B: ");
  for (int i=0; i<p; i++){
    for (int j=0; j<n; j++){
      b[i][j] = random(0,255);
      Serial.print(b[i][j]);
      Serial.print(" ");
    }
    Serial.println(" ");
  }
  Serial.println(" ");
  
  int c[m][n] ={};
  
  Serial.println("Naive Method: O(n^3)");
  float start = micros();
  for (int i=0; i< m; i++){
    for (int j=0; j<p; j++){
        for (int k=0; k<n; k++){
            c[i][k] = c[i][k] + a[i][j] * b[j][k];
            }
        }
  }
  float dur = micros()-start;
  Serial.print("Duration = ");
  Serial.print(dur);
  Serial.println(" us");  
  Serial.println("Arrays Multiplied: ");

  for (int i=0; i<m; i++){
    for (int j=0; j<n; j++){
      Serial.print(c[i][j]);
      Serial.print(" ");
    }
    Serial.println(" ");
  }
  Serial.end();
}
