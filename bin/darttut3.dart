//проект на дарте инциализировать репозиторий, коммит отправить, ссылку на публичнцый репозиторий
//Через Map или freezed
//jason http
//dio
//Вариант 1 - ищем кол-во всех продуктов (iphone-15шт, банан-2шт и тд просто число)
//Получаем список продуктов 

import 'dart:convert' as convert; //импортим конверты и http
import 'package:http/http.dart' as http;

void main(List<String> arguments) async { //используем метод по подключение к сайту дамиджсон
  final url = Uri.https(
  'dummyjson.com',
  '/products',
  );
  final response = await http.get(url); //используем async await Для того чтобы дождать ответа от сайта

  if(response.statusCode != 200){ //условие того, что при ошибке будет выводиться error
    print('Error');
    return;
  }

  Map<String,dynamic> jsonData = convert.jsonDecode(response.body); //Создаем map 
  
  List<dynamic> products = jsonData["products"]; //раскладываем массив продукты
  int summa = 0;
  
  List<int> colvo = products.map((s) => s["stock"] as int).toList(); //ищем в массиве значение стонк
  
  summa = colvo.reduce((id, s) => id + s); //суммируем 
  print("Сумма всех товаров состовляет: $summa"); //выводим
}

