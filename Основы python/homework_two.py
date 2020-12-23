#1
list = [10, 'apple', 8.2 , [5, 20]]

for i in list:
  print(type(i))

#2
list = input('Введите элементы списка через пробел: ').split(' ')

new_list = []
for i in range(1,len(list),2):
  new_list.append(list[i])
  new_list.append(list[i-1])
if len(list) % 2 != 0:
  new_list.append(list[-1])
print(' '.join(new_list))

#3
#список
month_number = int(input('Введите месяц в виде числа: '))
months = ['январь','февраль','март','апрель','май','июнь','июль','август','сентябрь','октябрь','ноябрь','декабрь']

if 1 <= month_number <= 12:
  for number in range(len(months)+1):
    if number == month_number:
      print(months[number-1])
      break

# словарь
month_number = int(input('Введите месяц в виде числа: '))

months = {
  1: 'январь',
  2: 'февраль',
  3: 'март',
  4: 'апрель',
  5: 'май',
  6: 'июнь',
  7: 'июль',
  8: 'август',
  9: 'сентябрь',
  10: 'октябрь',
  11: 'ноябрь',
  12: 'декабрь',
}

for key in months:
  if key == month_number:
    print(months[key])
    break

#4
words = input('Введите строку из нескольких слов: ').split(' ')

i = 1
for word in words:
  if len(word) > 10:
    print(i,word[:10])
  else:
    print(i,word)
  i += 1

#5
my_list = [7, 5, 3, 3, 2]

element = int(input('Введите число: '))

my_list.append(element)

my_list.sort()
my_list.reverse()

print(my_list)

#6
## не понял как, но вроде получилось
# 6.1
number = int(input("Введите количество товара: "))
n = 1
my_dict = []
my_list = []
product = {}
while n <= number:
    my_dict = dict({'название': input("Введите название: "), 'цена': input("Введите цену: "),
                    'количество': input('Введите количество: '), 'eд': input("Введите единицу измерения: ")})
    my_list.append((n, my_dict))
    n += 1
    product = dict(
        {'название': my_dict.get('название'), 'цена': my_dict.get('цена'), 'количество': my_dict.get('количество'),
         'ед': my_dict.get('ед')})
print(tuple(my_list))
print(product)

#6.2
number = int(input("Введите количество товара: "))

my_dict = dict({'название': input("Введите название: ").split(' '), 'цена': input("Введите цену: ").split(' '),
                'количество': input('Введите количество: ').split(' '), 'eд': input("Введите единицу измерения: ")})

print(my_dict)