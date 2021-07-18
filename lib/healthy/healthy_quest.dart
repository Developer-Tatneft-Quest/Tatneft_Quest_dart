import 'package:flutter/material.dart';
import 'package:tatneft_quest/healthy/h_first.dart';
import 'package:tatneft_quest/main_p.dart';
import 'package:tatneft_quest/shamsinur/sh_first.dart';

class HealthyQuest extends StatefulWidget {

  @override
  _HealthyQuestState createState() => _HealthyQuestState();
}

class _HealthyQuestState extends State<HealthyQuest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) {
                  return MainP();
                }));
          },
        ),
        centerTitle: true,
        backgroundColor: Colors.black54,
        title: Image.asset('images/logo_for_slider.png', height: 50),
      ),
      body: ListView(
        children: <Widget>[
          Center(
            child: Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Text("Парк Здоровья",style: TextStyle(fontWeight: FontWeight.bold,fontStyle: FontStyle.italic),)),
          ),
          Image.asset("images/park_healthy.jpg"),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Text("2 сентября 2018 года Президент Республики Татарстан Рустам Минниханов, глава Альметьевского муниципального района Айрат Хайруллин и Генеральный директор ПАО «Татнефть» Наиль Маганов открыли в Альметьевске новый благоустроенный парк «Здоровье». Из-за близости парка к Детской и Центральной районной больницам, его сделали зоной тихого отдыха. Пациенты смогут гулять в парке, а время, проведенное здесь с родственниками и друзьями, позволит им быстрее идти на поправку. В функциональном наполнении парка выделяется три участка: площадь с фонтаном, детская площадка и оздоровительная спортивная площадка. Центральная площадь с фонтаном — знаковое место парка. Для отдыха и игры детей установили детскую площадку с батутами, горками и качелями. Основные её элементы изготовлены из натурального материала — дерева. В спортивной зоне появились тренажеры для реабилитации пациентов больницы и для людей с ограниченными возможностями здоровья. У входа в парк со стороны улицы Зифы Балакиной установили арт-объект — объемную надпись «Здоровье». На территории парка появился купольный детский развлекательный центр с планетарием. Современное интерактивное оборудование позволит детям узнать об устройстве планет и истории созвездий – изучить Солнечную систему и «увидеть» Млечный Путь.")),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child:RaisedButton(
                elevation: 0,
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) {
                        return HFirst();
                      }));},
                color: Colors.red,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text("Начать квест",
                      style:
                      TextStyle(color: Colors.white,)),
                ),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ))
        ],
      ),
    );
  }
}
