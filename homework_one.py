# 1

# number_one = int(input('Введите первое число: '))
# number_two = int(input('Введите второе число: '))
# print(f'Вы ввели {number_one}')
# print(f'Вы ввели {number_two}')
# print(f'Вы ввели {number_one} и {number_two}')

#2

second = int(input('Введите время в секундах: '))
hour = second // 3600
minute = int((second / 3600 - hour)*60)
ost_second = minute - second % 60
print(f'Время: {hour}:{minute}:')