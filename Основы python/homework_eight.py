#1

class Data:

    def __init__(self, day=0, month=0, year=0):
        self.day = day
        self.month = month
        self.year = year

    @classmethod
    def class_method(cls, date_string):
        day, month, year = map(int, date_string.split('-'))
        date1 = cls(day, month, year)
        return date1

    @staticmethod
    def static_method(date_string):
      day, month, year = map(int, date_string.split('-'))
      return day <= 31 and month <= 12 and year <= 10000

date = Data.class_method((input('Введите число-месяц-год: ')))

date_1 = Data.static_method((input('Введите число-месяц-год: ')))



#2

class Mistake:
    def __init__(self, number = 0):
        self.number = number

    @staticmethod
    def mistake_method(number):
      try:
          print(100 // number)
      except ZeroDivisionError:
          print("На нуль делить нельзя")


Mistake.mistake_method(int(input('Введите число: ')))

#3

class Error:
  def __init__(self, number = 0):
    self.number = number

  def my_error_method(self):
    my_list = []
    while True:
      self.number = input('Введите число: ')
      if self.number == 'stop':
        break
      try:
        number = int(self.number)
        my_list.append(number)
      except ValueError:
        print('Вы ввели не число')
    print(my_list)

my_error = Error()
my_error.my_error_method()

#7

class ComplexNumber:
  def __init__(self, real = 0, imag = 0, value = 0):
    self.real = real
    self.imag = imag

  def __str__(self):
    if self.imag == 0:
      return str(self.real)
    elif self.real == 0:
      if self.imag == 1:
        return f'i'
      else:
        return f'{self.imag}i'
    else:
      if self.imag > 0:
        return f'{self.real}+{self.imag}i'
      else:
        return f'{self.real}{self.imag}i'

  def __add__(self, other):
    if isinstance(other, ComplexNumber):
        return str(complex(self.real + other.real,self.imag + other.imag))
    else:
        return str(complex(self.real + other.real, self.imag + other.imag))

  def __mul__(self, other):
    if isinstance(other, ComplexNumber):
        return str(complex(self.real * other.real - self.imag * other.imag, self.real * other.imag + other.real * self.imag))
    else:
        return str(complex(self.real * other.real - self.imag * other.imag, self.real * other.imag + other.real * self.imag))


complex_one = ComplexNumber(int(input('Введите 1 вещественное число: ')), int(input('Введите 1 мнимое число: ')))

complex_two = ComplexNumber(int(input('Введите 2 вещественное число: ')), int(input('Введите 2 мнимое число: ')))

if __name__ == '__main__':
  print(complex_one)
  print(complex_two)

  print(complex_one + complex_two)
  print(complex_one * complex_two)

#4,5,6

class OfficeEquipment:
  def __init__(self, dict_par=0):
    self.dict_par = {
      'Название': 'name',
      'Количество': 'quantity'
      }

  @property
  def __reception(self):  ### прием и разделение техники (состоит только из 3 представленных видов)
    self.dict_par['Название'] = input('Введите название техники: ')
    if self.dict_par['Название'] == 'принтер':
      return Printer()
    elif self.dict_par['Название'] == 'сканер':
      return Scaner()
    elif self.dict_par['Название'] == 'ксерокс':
      return Xerox()
    else:
      self.dict_par['Количество'] = input(f'Введите количество: ' )
      print(self.dict_par)


class Printer(OfficeEquipment):
  def __init__(self, dict_par=0):
    super().__init__(dict_par)
    self.dict_par['Название'] = 'принтер'
    self.dict_par['Количество'] = input('Введите количество принтеров: ' )
    self.dict_par['Скорость печати'] = input('Введите скорость печати: ' ) ## скорость печати
    print(self.dict_par) ### поставил для себя

  def valid_printers(self): #### обработка чисел для количества (№6)
    if type(self.dict_par['Количество']) == str:
      try:
        print(int(self.dict_par['Количество']))
      except ValueError:
        print('Вы ввели строку')
    
class Scaner(OfficeEquipment):
  def __init__(self, dict_par=0):
    super().__init__(dict_par)
    self.dict_par['Название'] = 'сканер'
    self.dict_par['Количество'] = input('Введите количество сканеров: ' )
    self.dict_par['Размер сканирования'] = input('Размер сканирования: ' )
    print(self.dict_par)

class Xerox(OfficeEquipment):
  def __init__(self,dict_par=0):
    super().__init__(dict_par)
    self.dict_par['Название'] = 'ксерокс'
    self.dict_par['Количество'] = input('Введите количество единиц ксерокса: ' )
    self.dict_par['Технология печати:'] = input('Введите технологию печати: ' )
    print(self.dict_par)


office = OfficeEquipment()
office._OfficeEquipment__reception

printer = Printer()
printer.valid_printers()

# scaner = Scaner()
# print(scaner.dict_par)

# xerox = Xerox()
# print(xerox.dict_par)