PASS = "pass"
CARGO = "cargo"
#require_relative('train.rb')
#require_relative('station.rb')
#require_relative('route.rb')
#require_relative('vagon.rb')
def input_key
  puts "Выберите операцию, нажав соответствующую клавишу:"
  puts "1) Создать новую станцию"
  puts "2) Создать новый поезд"
  puts "3) Создать вогон"
  puts "4) Добавить вагон к поезду"
  puts "5) Отцепить вагон к поезду"
  puts "6) Принять поезд на станцию"
  puts "7) Посмотреть список поездов на станции"
  puts "8) Посмотреть список станций на маршруте"
  @input = gets


  case @input
    when 1
      station_create
    
    when 2
      train_create
    
    when 3 #Создать новый вагон
      vagon_create

    when 4
      train_add_vagon
      
    end
end
    







v1 = Vagon_cargo.new
v2 = Vagon_cargo.new
v3 = Vagon_cargo.new
v4 = Vagon_pass.new
v5 = Vagon_pass.new
v6 = Vagon_pass.new

#Создали новые объекты - поезда
tr1 = Train.new(1001)
tr2 = Train.new(1002, "cargo")
tr3 = Train.new(1003)

#создаём объект - станция
st1 = Station.new("Moskva")
st2 = Station.new("Piter")
st3 = Station.new("KRD")
st4 = Station.new("Novgorod")
st5 = Station.new("Egorievsk")
st6 = Station.new("Yaroslavl")

#Добавляем поезда на станцию
st1.station_take(tr1)
st1.station_take(tr2)
st1.station_take(tr3)

#Отображаем списк всех поездов
st1.station_train
#Отображаем списк всех поездов по типам
st1.station_train_type("gruz")
st1.station_train_type("cargo")

r1 = Route.new(st1, st4)
r2 = Route.new(st3, st6)
r1.route_add_station(st2)
r1.route_add_station(st3)
r2.route_add_station(st4)
r2.route_add_station(st5)
r1.route_station

tr1.train_add_route(r1)
tr2.train_add_route(r2)


puts "----"
tr1.train_list_station
tr1.train_next_station
tr1.train_next_station


tr1.train_prev_station
tr1.train_prev_station
