//проект на дарте инциализировать репозиторий, коммит отправить, ссылку на публичнцый репозиторий
//Через Map или freezed
//jason http
//dio
//Вариант 1 - ищем кол-во всех продуктов (iphone-15шт, банан-2шт и тд просто число)
//Получаем список продуктов 

import 'package:darttut3/darttut3.dart' as darttut3;
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(List<String> arguments) async {
  final url = Uri.https(
  'dummyjson.com',
  '/products',
  );
  final response = await http.get(url);

  if(response.statusCode != 200){
    print('Error');
    return;
  }
