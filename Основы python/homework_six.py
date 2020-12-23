#1
class TrafficLight:
    _color = input('Светофор: ').split()

    def _running(self):
        import time
        if self._color == ['красный', 'желтый', 'зеленый']:
            print(self._color[0])
            time.sleep(7)
            print(self._color[1])
            time.sleep(2)
            print(self._color[2])
            time.sleep(4)
        else:
            print('Порядок цветов нарушен!')


my_class = TrafficLight()

my_class._running()

#2
class Road:
    def __init__(self, lenth, width):
        self.__lenth = lenth
        self.__width = width

    def __my_method(self):
        weight_in_meter = int(input('Масса асфальта в 1 кв. метр: '))
        thikness = int(input('Толщина: '))
        wheight_all = self.__lenth * self.__width * weight_in_meter * thikness
        print(f'Масса асфальта равна: {wheight_all} кг')


my_road = Road(int(input('Длина: ')),int(input('Ширина: ')))
# print(my_road._Road__lenth)
# print(my_road._Road__width)
my_road._Road__my_method()

#3


class Worker:
    name = input('Имя: ')
    surname = input('Фамилия: ')
    position = input('Должность: ')
    __income = {"wage": 'wage', "bonus": 'bonus'}


class Position(Worker):
    def get_full_name(self):
        print(f'{self.name} {self.surname} -  {self.position}')

    def get_total_income(self):
        self._Worker__income['wage'] = int(input('Оклад: '))
        self._Worker__income['bonus'] = int(input('Премия: '))
        print('Оклад -', self._Worker__income['wage'])
        print('Премия -', self._Worker__income['bonus'])


my_position = Position()

my_position.get_full_name()
my_position.get_total_income()

#4


class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police

    def go(self):
        print('Машина поехала')

    def stop(self):
        print('Машина останавилась')

    def turn(self, direction):
        print(f'Машина повернула {direction}')

    def show_speed(self):
        #speed = int(input('Скорость: '))
        print(f'Текущая скорость: {self.speed} км/час')


class TownCar(Car):
    def show_speed(self):
        super().show_speed()
        if self.speed > 60:
            print('Вы привысили допустимую скорость 60 км/час')


class WorkCar(Car):
    def show_speed(self):
        super().show_speed()
        if self.speed > 40:
            print('Вы привысили допустимую скорость 40 км/час')


class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police


class PoliceCar(Car):
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.name = name
        self.is_police = is_police


func_car = Car(100, 'Цвет: красный', 'Название: какая-то машина ',
               'Полиция: -')
print(func_car.name)
print(func_car.color)
print(func_car.is_police)
func_car.go()
func_car.show_speed()
func_car.turn(direction=input('Выберите сторону: '))
func_car.stop()

work_car = WorkCar(
    int(input('Скорость: ')), 'Цвет: желтый', 'Название: Рабочая машина',
    'Не полиция')
print(work_car.name)
print(work_car.color)
print(work_car.is_police)
work_car.go()
work_car.show_speed()
work_car.turn(direction=input('Выберите сторону: '))
work_car.stop()

town_car = TownCar(
    int(input('Скорость: ')), 'Цвет: желтый', 'Название: Городская машина',
    'Не полиция')
print(town_car.name)
town_car.show_speed()

sport_car = SportCar(
    int(input('Скорость: ')), 'Цвет: желтый', 'Название: спортивная машина',
    'Не полиция')
print(sport_car.name)
sport_car.show_speed()

police_car = SportCar(
    int(input('Скорость: ')), 'Цвет: желтый', 'Название: полицейская машина',
    'Полиция')
print(police_car.name)
police_car.show_speed()

#5


class Stationery:
    def __init__(self, title):
        self.title = title

    def draw(self):
        print('Запуск отрисовки')


class Pen(Stationery):
    def draw(self):
        print('Отрисовка ручкой')


class Pencil(Stationery):
    def draw(self):
        print('Отрисовка карандашом')


class Handle(Stationery):
    def draw(self):
        print('Отрисовка маркером')


my_stationary = Stationery('Класс отрисовка')
print(my_stationary.title)
my_stationary.draw()

my_pen = Pen('Класс ручка')
print(my_pen.title)
my_pen.draw()

my_pencil = Pencil('Класс карандаш')
print(my_pencil.title)
my_pencil.draw()

my_handle = Handle('Класс маркер')
print(my_handle.title)
my_handle.draw()