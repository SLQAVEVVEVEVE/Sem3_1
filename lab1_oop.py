import sys
import math

class BiQuadraticEquation:
    def __init__(self, a, b, c):
        self.a = a
        self.b = b
        self.c = c

    def calculate_discriminant(self):
        return self.b**2 - 4 * self.a * self.c

    def find_roots(self):
        if self.a == 0:
            print("Коэффициент A не может быть равен нулю для биквадратного уравнения.")
            return []

        discriminant = self.calculate_discriminant()

        if discriminant < 0:
            return []

        z1 = (-self.b + math.sqrt(discriminant)) / (2 * self.a)
        z2 = (-self.b - math.sqrt(discriminant)) / (2 * self.a)

        roots = []

        for z in [z1, z2]:
            if z >= 0:
                root1 = math.sqrt(z)
                root2 = -math.sqrt(z)
                roots.extend([root1, root2])

        return roots

def get_coefficient(prompt):
    while True:
        try:
            return float(input(prompt))
        except ValueError:
            print("Неверный ввод. Пожалуйста, введите числовое значение.")

def main():
    args = sys.argv[1:]

    if len(args) == 3:
        try:
            a, b, c = map(float, args)
        except ValueError:
            print("Некорректные параметры командной строки. Используйте ввод с клавиатуры.")
            a = get_coefficient("Введите коэффициент A: ")
            b = get_coefficient("Введите коэффициент B: ")
            c = get_coefficient("Введите коэффициент C: ")
    else:
        a = get_coefficient("Введите коэффициент A: ")
        b = get_coefficient("Введите коэффициент B: ")
        c = get_coefficient("Введите коэффициент C: ")

    equation = BiQuadraticEquation(a, b, c)
    roots = equation.find_roots()

    if roots:
        print("Действительные корни:", ", ".join(map(str, roots)))
    else:
        print("Действительных корней нет.")

if __name__ == "__main__":
    main()