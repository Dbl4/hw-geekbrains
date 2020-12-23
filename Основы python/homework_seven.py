#1
class Matrix:
    def __init__(self, n, matrix):
        self.n = n
        self.matrix = matrix

    def __add__(self, other):
        for i in range(self.n):
            for j in range(self.n):
                self.matrix[i][j] = self.matrix[i][j] + other.matrix[i][j]
        return str('\n'.join(
            [' '.join([str(elem) for elem in line]) for line in self.matrix]))

    def __str__(self):
        return str('\n'.join(
            [' '.join([str(elem) for elem in line]) for line in self.matrix]))


n = int(input('Количество строк: '))
my_matrix_1 = Matrix(
    n, [[int(j) for j in input('Введите числа матрицы А: ').split()]
        for i in range(n)])
print(my_matrix_1)

my_matrix_2 = Matrix(
    n, [[int(j) for j in input('Введите числа матрицы В: ').split()]
        for i in range(n)])
print(my_matrix_2)

print(f'Сумма матриц равна: \n{my_matrix_1 + my_matrix_2}')

#2
class Clothes:
  def __init__(self, name):
    self.name = name

class Costume(Clothes):
  def __init__(self, name, growth):
    super().__init__(name)
    self.growth = growth

  @property
  def sum_cloth(self):
    return 2 * self.growth + 0.3 

class Coat(Clothes):
  def __init__(self, name, size):
    super().__init__(name)
    self.size = size

  @property
  def sum_cloth(self):
    return round(self.size / 6.5, 1) + 0.5 

clothes = Clothes(input('Введите одежду: '))
#print(clothes.name)

if clothes.name == 'Костюм':
  costume = Costume('Костюм', int(input('Введите рост: ')))
  print('Расход ткани для костюма:', costume.sum_cloth)

elif clothes.name == 'Пальто':
  coat = Coat('Пальто', int(input('Введите размер: ')))
  print('Расход ткани для пальто:', coat.sum_cloth)

else:
  print('Одежды нет в наличии')


#3

class Cell:
    def __init__(self, number_of_cells):
        self.number_of_cells = number_of_cells

    def __add__(self, other):
        return f'Сумма ячеек клетки: {self.number_of_cells + other.number_of_cells}'

    def __sub__(self, other):
        if self.number_of_cells > other.number_of_cells > 0:
            return f'Разность клеток: {self.number_of_cells - other.number_of_cells}'
        elif self.number_of_cells > self.number_of_cells > 0:
            return f'Разность клеток: {other.number_of_cells - self.number_of_cells}'
        else:
            return 'Количество ячеек клетки - ноль или меньше нуля'

    def __mul__(self, other):
        return f'Умножение клеток: {self.number_of_cells * other.number_of_cells}'

    def __truediv__(self, other):
        if self.number_of_cells > other.number_of_cells > 0:
            return f'Деление клеток: {self.number_of_cells // other.number_of_cells}'
        elif self.number_of_cells > self.number_of_cells > 0:
            return f'Деление клеток: {other.number_of_cells // self.number_of_cells}'
        else:
            return 'Деление клеток невозможно или равно 1'

    def make_order(self, cells_in_row):
        self.cells_in_row = cells_in_row
        my_list = []
        if self.number_of_cells >= self.cells_in_row:
            while self.number_of_cells != 0:
                if self.number_of_cells % self.cells_in_row == 0:
                    my_list.append('/n')
                my_list.append('*')
                self.number_of_cells -= 1
            my_list.reverse()
            return ' '.join(my_list)
        else:
            return 'Размер ячеек в ряду больше чем в клетке'


cell_one = Cell(int(input('Введите количество ячеек 1 клетки: ')))

cell_two = Cell(int(input('Введите количество ячеек 2 клетки: ')))

if __name__ == '__main__':
    print(cell_one + cell_two)
    print(cell_one - cell_two)
    print(cell_two - cell_one)
    print(cell_one * cell_two)
    print(cell_one / cell_two)
    print(cell_two / cell_one)
    print(
        cell_one.make_order(int(input('Введите количество ячеек в ряду 1 клетки: '))))