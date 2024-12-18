import math
a = float(input())
b = float(input())
c = float(input())


d = b**2 - 4 * a * c
if d>0:
    x1 = (-b+math.sqrt(d))/2/a
    x2 = (-b-math.sqrt(d))/2/a
    if x1>=0 and x2>=0:

        y11 = math.sqrt(x1)
        y21 = math.sqrt(x2)
        y12 = -math.sqrt(x1)
        y22 = -math.sqrt(x2)
        print(y11 , " " , y21, " and ", y21, " ", y22)
    else:
      print("Даун тупой")
      breakpoint  

elif d==0:
    x = (-b+math.sqrt(d))/2/a
    if x>=0:
        y = math.sqrt(x)    
        print("+", y, " -", y)
    #print(x)
    else:
        print("Даун тупой")
        breakpoint

else:
    print("Даун тупой")
    breakpoint
# Для решения квадратного уравнения

#y^2 = x1,x2