#1

with open('my_work.txt', 'w') as f:
    number_words = 0
    while number_words != 3:
        word = input('Введите текст: ')
        f.write(f'{word}\n')
        number_words += 1

#2

with open('my_work.txt', 'r') as f:
    content = f.readlines()
    print(f'Количество строк: {len(content)}')
    count = 1
    for word in content:
        number = word.split()
        print(f'В строке {count} - {len(number)} слова')
        count += 1

#3

with open('job.txt', 'r') as f:
    team_list = f.readlines()
    print('Сотрудники с наименьшим окладом:')
    summ_salary = 0  ## сумма оклада сотрудников
    number_workers = 0  ##количество сотрудников
    for employee in team_list:
        worker = employee.split()
        summ_salary += int(worker[1])
        number_workers += 1
        if int(worker[1]) < 20000:
            print(worker[0])
    print(f'Средний оклад сотрудников: {summ_salary//number_workers}')

#4

with open('old_file.txt', 'r') as f:
  content = f.readlines()
  new_words = ['Один', 'Два', 'Три', 'Четыре']
  number = 0
  new_file = []
  for word in content:
    my_list = word.split(' — ')
    my_list[0] = new_words[number]
    number += 1
    new_content = ' — '.join(my_list)
    new_file.append(new_content)
  #print(new_file)

with open('new_file.txt','w') as f: 
  f.writelines(new_file)

#5

with open('summ.txt', 'w') as f:
    numbers = [
        int(numbers)
        for numbers in input('Введите числа разделенные пробелом: ').split()
    ]
    summ = sum(numbers)
    print(f'Сумма чисел равна: {summ}')
    f.write(f'Сумма чисел равна: {summ}')

#6
import re

with open('exersize6.txt', 'r') as f:
    my_dict = {}
    my_line = 0
    summ_val = 0
    for line in f:
        line = line.split(':')
        val = re.findall('(\d+)',
                         line[1])  ## поиск цифр через регулярные выражения
        sum_val = sum([int(number) for number in val])  ## сумма чисел в списке
        my_dict[line[0]] = sum_val
    print(my_dict)


#7
import json

with open('exersize7.txt', 'r') as f:
    profit = 0
    average_profit = 0
    new_firm_list = []
    firm_dict = {}
    average_dict = {}
    for line in f:
        firm_list = line.split()
        profit = int(firm_list[2]) - int(firm_list[3])
        print(f'Прибыль {firm_list[0]}: {profit}')
        if profit >= 0:
            average_profit += profit / 3  ### это если 3 фирмы (средняя прибыль)
        firm_dict[firm_list[0]] = profit  ##  первый словарь
    new_firm_list.append(firm_dict)
    average_dict['avverage_profit'] = int(average_profit)  ## второй словарь
    new_firm_list.append(average_dict)
    print(f'Средняя выручка: {int(average_profit)}')
    print(new_firm_list)

with open('exersize7_new.txt', 'w') as f:
    json.dump(new_firm_list, f)