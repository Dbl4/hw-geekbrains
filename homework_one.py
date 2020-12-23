#1

number_one = int(input('Введите первое число: '))
number_two = int(input('Введите второе число: '))
print(f'Вы ввели {number_one}')
print(f'Вы ввели {number_two}')
print(f'Вы ввели {number_one} и {number_two}')

#2
second = int(input('Введите время в секундах: '))
hour = second // 3600
minute = (second % 3600)//60
ost_second = (second % 3600) % 60
print(f'Время: {hour}:{minute}:{ost_second}')

#3
import random

n = random.randint(1,10)
#print(n)
summ = n + (n * 10 + n) + (n * 100 + n * 10 + n)
print(f'n + nn + nnn =  {summ}')

number = int(input('Введите число: '))
while number != n:
  if number != n:
    print('Попробуйте снова')
    number = int(input('Введите число: '))
else:
  print('Вы угадали')

#4

number = int(input('Введите число: '))

big_number = 0

while number > 0:
  if number % 10 > big_number:
    big_number = number % 10
  number = number // 10

print(f'Cамая большая цифра: {big_number}')

#5

profit = int(input('Выручка составляет: '))
costs = int(input('Затраты: '))
result = profit - costs
print(f'Результат: {result}')

if profit > costs:
  rentab = result / profit
  print(f'Рентабильность составила: {rentab}')
  employee = int(input('Колличество сотрудников: '))
  profit_emp = result // employee 
  print(f'Прибыль на 1 одного сотрудника составляет: {profit_emp}')

6

a = int(input('Первый день пробежал: '))
b = int(input('Общий результат, который нужен достигнуть: '))
day = 1

while a < b:
  a = a * 1.1
  a = round(a,2)
  day += 1

print(f'На {day} день спортсмен достиг результата - не менее {b} км')