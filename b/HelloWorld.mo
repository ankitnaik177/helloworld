within b;

model HelloWorld "A simple model with a differential equation"
  Real x(start = 1);
equation
  der(x) = -x;
  
end HelloWorld;
