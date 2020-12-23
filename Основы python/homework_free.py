#1
def func(arg_1, arg_2):
  try:
    return arg_1 // arg_2
  except ZeroDivisionError:
    return 'Деление на 0'
  except Exception:
    return 'Неизвестная ошибка'


number_one = int(input('Введите первое число: '))
number_two = int(input('Введите второе число: '))

print(func(number_one, number_two))

#2

def my_person(name, first_name, year, city, email, phone):
  print(name, first_name, year, city, email, phone)

my_person( name = input('введите имя: '), first_name = input('введите фамилию: '), year = input('введите год рождения: '), city = input('введите город: '), email = input('введите email: '),  phone =  input('введите телефон: '))

# 3

def my_func(arg_1, arg_2, arg_3):
  result = [arg_1 + arg_2, arg_1 + arg_3, arg_2 + arg_3]
  return max(result)

number_one = int(input('Введите первое число: '))
number_two = int(input('Введите второе число: '))
number_three = int(input('Введите третье число: '))

print(my_func(number_one, number_two, number_three))

#4
#4.1

def my_func(x,y):
  return float(x ** y)

number_one = float(input('Введите целое положительное число: '))
number_two = int(input('Введите целое отрицательное число: '))

print(my_func(number_one, number_two))

#4.2

def my_func(x,y):
  while y < 0:
    y += 1
    return 1 / x

number_one = float(input('Введите целое положительное число: '))
number_two = int(input('Введите целое отрицательное число: '))

print(my_func(number_one, number_two))

#5

def my_func():
  sum_numbers = 0
  while True:
    numbers = input('Введите числа через пробел: ').split()
    if numbers != ['*']:
      if '*' in numbers:
        symvol = numbers.index('*')
        for i in range(symvol):
          numbers[i] = int(numbers[i])
          sum_numbers += int(numbers[i])
        print(f'Сумма: {sum_numbers}')
        print('Конец программы')
        break
      else:
        for i in range(len(numbers)):
          numbers[i] = int(numbers[i])
        sum_numbers += sum(numbers)
        print(f'Сумма: {sum_numbers}')
    else:
      print('Конец программы')
      break

try:
  my_func()
except ValueError:
  print('Вы ввели что-то не то')

#6

def int_func():
  new_text = []
  text = input('Введите строку: ').split()
  for word in text:
    word = word.capitalize()
    new_text.append(word)
  new_text = ' '.join(new_text)
  return new_text

print(int_func())