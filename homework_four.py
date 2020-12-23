#1

## 1 параметр, который на выходе

from sys import argv

def my_func():
  prodaction = int(input('Введите выработку в часах: '))
  rate = int(input('Введите ставку в час: '))
  prem = int(input('Введите размер премии: '))
  result = prodaction * rate + prem
  print(f'Результат: {result}')

result = argv

my_func()

## 3 параметра на входе

from sys import argv

script_name, par_1, par_2, par_3 = argv

def my_func():
  prem = int(par_3)
  rate = int(par_2)
  prodaction = int(par_1)
  print('Результат:', prodaction * rate + prem)

my_func()

# 2

list_1 = [300, 2, 12, 44, 1, 1, 4, 10, 7, 1, 78, 123, 55]

my_list = [
    list_1[number] for number in range(1, len(list_1))
    if list_1[number] > list_1[number - 1]
]

print(my_list)

#3

print([number for number in range(20, 240) if number % 20 == 0 or number % 21 == 0])

#4

my_list = [2, 2, 2, 7, 23, 1, 44, 44, 3, 2, 10, 7, 4, 11]

print([number for number in my_list if my_list.count(number) == 1])

#5

from functools import reduce

print(reduce(lambda x, y: x * y, [number for number in range(100, 1002, 2)]))

#6

from itertools import count, cycle

#a

for el in count(3):
    if el > 10:
        break
    else:
        print(el)

#b

my_list = ['1', 'A', '+']

count = 3
for el in cycle(my_list):
    if count > 10:
        break
    print(el)
    count += 1

#7

n = int(input('Введите число: '))


def fact(n):
    item = 1
    my_fact = 1
    while item <= n:
        my_fact *= item
        yield my_fact
        item += 1


for el in fact(n):
    print(el)