import 'dart:async';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '1-2-3-4-5-6-7-8-9',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  int _level = 0;
  String _descLevel = "1 minute";

  double wp(Size sz, double perc){
    return sz.width * (perc / 100);
  }

  double hp(Size sz, double perc){
    return sz.height * (perc / 100);
  }

  @override
  Widget build(BuildContext context) {
    Size sz = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          color: Color.fromRGBO(230, 230, 234, 1.0),
          child: Column(
            children: <Widget>[
              SizedBox(height: 10,),
              Center(
                child: Container(
                  height: hp(sz, 24),
                  width: wp(sz, 41.6),
                  child: FittedBox(
                    child: Image.asset('assets/abil.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                alignment: Alignment.center,
                child: Text("Découvrir les numéros de 1 à 9", style: TextStyle(fontSize: hp(sz, 2.9), fontWeight: FontWeight.bold, color: Colors.lightBlue),),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey, ),
                    boxShadow: [
                      BoxShadow(blurRadius: 1.0, color: Colors.lightBlue)
                    ]
                ),

                child: Text("Choisir un jeu d'après leur temps.", style: TextStyle(fontSize: hp(sz, 2.9), fontWeight: FontWeight.bold, color: Colors.black),),
              ),
              SizedBox(height: hp(sz, 2.3),),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 0;
                              _descLevel = "1 minute";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("0", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 0 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 0 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 1;
                              _descLevel = "30 secondes";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("1", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 1 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                          duration: Duration(milliseconds: 300),
                          curve: Curves.ease,
                          height: 10,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: _level == 1 ? Colors.red : Colors.transparent,
                          )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 2;
                              _descLevel = "15 secondes";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("2", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 2 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 2 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        InkWell(
                          onTap: (){
                            setState(() {
                              _level = 3;
                              _descLevel = "5 secondes";
                            });
                          },
                          child: AnimatedContainer(
                              duration: Duration(milliseconds: 300),
                              curve: Curves.ease,
                              alignment: Alignment.center,
                              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                              child: Text("3", style: TextStyle(fontSize: hp(sz, 8.2), fontWeight: FontWeight.bold),),
                              decoration: BoxDecoration(
                                color: _level == 3 ? Colors.red : Colors.transparent,
                                border: Border.all(color: Colors.grey, ),
                              )
                          ),
                        ),
                        SizedBox(height: 5,),
                        AnimatedContainer(
                            duration: Duration(milliseconds: 300),
                            curve: Curves.ease,
                            height: 10,
                            width: 40,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(Radius.circular(10)),
                              color: _level == 3 ? Colors.red : Colors.transparent,
                            )
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(height: 20,),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(vertical: 10),
                child: Text(_descLevel, style: TextStyle(
                  fontSize: 25, fontWeight: FontWeight.bold, color: Colors.blue
                ),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  color: Colors.grey.withOpacity(0.3),
                )
              ),
              SizedBox(height: 10,),
              Container(
                alignment: Alignment.center,
                child: Icon(Icons.school, size: hp(sz, 5.8),),
              ),
              SizedBox(height: hp(sz, 3.5),),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    InkWell(
                      onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyGame(level: _level,

                              )
                          ),
                        );
                      },
                      child: Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(20)),
                            color: Colors.orange,

                        ),

                        child: Text("Commencer", style: TextStyle(fontSize: hp(sz, 2.1), fontWeight: FontWeight.bold, color: Colors.black),),
                      ),
                    ),
                    SizedBox(height: 20,)
                  ],
                ),
              ),
            ],
          ),
        ),
    );
  }
}


class MyGame extends StatefulWidget{
  MyGame({Key key, this.level}) : super(key: key);

  final int level;

  @override
  _MyGameState createState() => _MyGameState();
}

class _WidgetNumberState extends State<WidgetNumber>{
  Color _color = Colors.grey[200];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        Container(
          child: Text(
            "${widget.number.toString()}", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),

          ),
          decoration: BoxDecoration(
            color: _color,
            border: Border.all(color: Colors.black87, ),
          ),
          padding: EdgeInsets.symmetric(horizontal: 30),
        ),
        SizedBox(height: 5,),
        //Container(
        //  child: Text(
        //    "(${numToText(widget.number)})", style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        //---
        //  ),
        //),
      ],
    );
  }

  void resetColor(){
    setState(() {
      _color = Colors.grey[200];
    });
  }

  void setColor(Color col){
    setState(() {
      _color = col;
    });
  }

  void setNumber(int num){
    setState(() {
      if(num > 0 && num < 10) {
        widget.number = num.toString();
      } else {
        widget.number = '🙈';
      }
    });
  }


  @override
  void initState() {

    super.initState();
  }
}
class WidgetNumber extends StatefulWidget{
  WidgetNumber({Key key, this.number}) : super(key: key);

  String number;

  _WidgetNumberState state;

  @override
  _WidgetNumberState createState() => state = _WidgetNumberState();


}

class _MyGameState extends State<MyGame> {
  var player = AudioCache();
  List<String> items = [
      '⚽',
      '🍅🍅',
      '🐱🐱🐱',
      '🍎🍎🍎🍎',
      '🐰🐰🐰\n🐰🐰',
      '🌷🌷🌷\n🌷🌷🌷',
      '🍦🍦🍦🍦\n🍦🍦🍦',
      '🎈🎈🎈🎈\n🎈🎈🎈🎈',
      '🍓🍓🍓\n🍓🍓🍓\n🍓🍓🍓'
  ];
  Size _size = null;
  Timer _timerTemps;
  double _timerProgress = 0;
  double _timeLevel = 0;
  double _timeLevelRemain;
  bool _gameStart = false;
  bool _gameOver = false;
  int _totalEtoile = 0;
  int _score = 0;
  int _questionNo = 0;
  String _information = "";
  int _var_question1 = 0;
  int _var_question2 = 0;
  int _var_option1 = 0;
  int _var_option2 = 0;
  int _var_option3 = 0;
  int _var_option4 = 0;

  WidgetNumber w1;
  WidgetNumber w2;
  WidgetNumber w3;
  WidgetNumber w4;

  void generateQuestion(){

    var rnd = new Random();
    _var_question1 = rnd.nextInt(9);
   
    int _r = rnd.nextInt(3);

    if (_r == 0){
      _var_option1 = _var_question1 + 1;
      _var_option2 = _var_question1 - 1 ;
      _var_option3 = _var_question1;
      _var_option4 = _var_question1 + 2;
    }else if (_r == 1){
      _var_option1 = _var_question1 - 1;
      _var_option2 = _var_question1 + 1;
      _var_option3 = _var_question1 + 2;
      _var_option4 = _var_question1;
    }else if (_r == 2){
      _var_option1 = _var_question1 - 2;
      _var_option2 = _var_question1 - 1;
      _var_option3 = _var_question1 + 1;
      _var_option4 = _var_question1;
    }else{
      _var_option1 = _var_question1 - 1;
      _var_option2 = _var_question1 - 2;
      _var_option3 = _var_question1;
      _var_option4 = _var_question1 + 1;
    }

    w1.state.resetColor();
    w2.state.resetColor();
    w3.state.resetColor();
    w4.state.resetColor();

    w1.state.setNumber(_var_option1);
    w2.state.setNumber(_var_option2);
    w3.state.setNumber(_var_option3);
    w4.state.setNumber(_var_option4);

//    w1 = WidgetNumber(number: _var_option1,);
//    w2 = WidgetNumber(number: _var_option2,);
//    w3 = WidgetNumber(number: _var_option3,);
//    w4 = WidgetNumber(number: _var_option4,);

    setState(() {

    });
  }
  List<Widget> getEtoile(){
    List<Widget> ret = [];
    for (int i = 0 ; i < _totalEtoile; i++){
      ret.add(Icon(Icons.star, color: Colors.yellow, size: 30.0,));
    }

    return ret;
  }

  void showAlert(BuildContext context, String title, String content){
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("$title", style: TextStyle(color: Colors.blue, fontSize: 20),),
          content: Text("$content", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            FlatButton(
              child: Text("Fin"),
              color: Colors.red,
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    _size = size;
    return Scaffold(
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          _gameOver? Container(
            alignment: Alignment.center,
              child: FlatButton.icon(onPressed: (){
                _totalEtoile = 0;
                _gameOver = false;
                _gameStart = true;
                _score = 0;
                if (widget.level == 0){
                  _timeLevel = 59;
                }else if (widget.level == 1){
                  _timeLevel = 30;
                }else if (widget.level == 2){
                  _timeLevel = 15;
                }else{
                  _timeLevel = 5;
                }
                _timeLevelRemain = _timeLevel;
                Future.delayed(Duration(milliseconds: 500), (){
                  _questionNo = 1;

                  _gameStart = true;
                  _timerProgress = _size.width;
                  generateQuestion();
                  startTimerTemps();
                });
              }, icon: Icon(Icons.refresh, color: Colors.red,), label: Text("Recommencer", style: TextStyle(color: Colors.red),),),
          ) : Container(

          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
              color: Colors.lightBlue,
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(blurRadius: 2.0, color: Colors.grey)
              ]),
            child: Text("Question No #$_questionNo", style: TextStyle(
              fontSize: 22, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Color.fromRGBO(255, 100, 126, 1.0),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(blurRadius: 2.0, color: Colors.red)
                ]),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                WidgetNumber(number: items[_var_question1],),
                SizedBox(width: 10,),
            ],),
          ),
          SizedBox(height: 20,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.grey[300],
                borderRadius: BorderRadius.circular(2.0),
                boxShadow: [
                  BoxShadow(blurRadius: 2.0, color: Colors.grey)
                ]),
            child: Text("Choisissez la réponse", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 0.0, 10.0),
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                  InkWell(
                    child: w1,
                    onTap: (){
                      if (_gameOver)return;
                      if ((_var_question1 + 1) == _var_option1){
                        w1.state.setColor(Colors.green);
                        setState(() { player.play('clap_half.mp3'); });
                      }else{
                        w1.state.setColor(Colors.red);
                        setState(() { player.play('youLose.mp3'); });
                      }

                      Future.delayed(Duration(milliseconds: 200), (){
                        if ((_var_question1 + 1) == _var_option1){
                          _score++;
                          _information = "Correcte";
                        }else{
                          _gameOver = true;
                          _information = "Mauvaise réponse";
                          showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                          _timerTemps.cancel();
                          setState(() {
                            //player.play('youLose.mp3');
                          });
                          return;
                        }

                        if (_questionNo == 50){ //. habis
                          _gameOver = true;
                          _information = "Questions résolues";
                          showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                          _timerTemps.cancel();
                          setState(() {
                            player.play('youWin.mp3');
                          });
                          return;
                        }
                        _questionNo++;
                        _totalEtoile = (_score / 10).toInt();
                        resetTemps();
                        generateQuestion();
                      });


                    },

                  ),

                  InkWell(
                    child: w2,
                    onTap: (){
                      if (_gameOver) return;
                      if ((_var_question1 + 1) == _var_option2){
                        w2.state.setColor(Colors.green);
                        setState(() { player.play('clap_half.mp3'); });
                      }else{
                        w2.state.setColor(Colors.red);
                        setState(() { player.play('youLose.mp3'); });
                      }

                      Future.delayed(Duration(milliseconds: 200), (){
                        if ((_var_question1 + 1) == _var_option2){
                          _score++;
                          _information = "Correcte";
                        }else{
                          _gameOver = true;
                          _information = "Mauvaise réponse";
                          showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                          _timerTemps.cancel();
                          setState(() {
                            //player.play('youLose.mp3');
                          });
                          return;
                        }
                        if (_questionNo == 50){ //. habis
                          _gameOver = true;
                          _information = "Questions résolues";
                          showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                          _timerTemps.cancel();
                          setState(() {
                            player.play('youWin.mp3');
                          });
                          return;
                        }
                        _questionNo++;
                        _totalEtoile = (_score / 10).toInt();
                        resetTemps();
                        generateQuestion();
                      });


                    },

                  ),

                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    InkWell(
                      child: w3,
                      onTap: (){
                        if (_gameOver) return;
                        if ((_var_question1 + 1) == _var_option3){
                          w3.state.setColor(Colors.green);
                          setState(() { player.play('clap_half.mp3'); });
                        }else{
                          w3.state.setColor(Colors.red);
                          setState(() { player.play('youLose.mp3'); });
                        }

                        Future.delayed(Duration(milliseconds: 200), (){
                          if ((_var_question1 + 1) == _var_option3){
                            _score++;
                            _information = "Correcte";
                          }else{
                            _gameOver = true;
                            _information = "Mauvaise réponse";
                            showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                            _timerTemps.cancel();
                            setState(() {
                              //player.play('youLose.mp3');
                            });
                            return;
                          }
                          if (_questionNo == 50){ //. habis
                            _gameOver = true;
                            _information = "Questions résolues";
                            showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                            _timerTemps.cancel();
                            setState(() {
                              player.play('youWin.mp3');
                            });
                            return;
                          }
                          _questionNo++;
                          _totalEtoile = (_score / 10).toInt();
                          resetTemps();
                          generateQuestion();
                        });


                      },

                    ),

                    InkWell(
                      child: w4,
                      onTap: (){
                        if (_gameOver) return;
                        if ((_var_question1 + 1) == _var_option4){
                          w4.state.setColor(Colors.green);
                          setState(() { player.play('clap_half.mp3'); });
                        }else{
                          w4.state.setColor(Colors.red);
                          setState(() { player.play('youLose.mp3'); });
                        }

                        Future.delayed(Duration(milliseconds: 200), (){
                          if ((_var_question1 + 1) == _var_option4){
                            _score++;
                            _information = "Correcte";
                          }else{
                            _gameOver = true;
                            _information = "Mauvaise réponse";
                            showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                            _timerTemps.cancel();
                            setState(() {
                              //player.play('youLose.mp3');
                            });
                            return;
                          }
                          if (_questionNo == 50){ //. habis
                            _gameOver = true;
                            _information = "Questions résolues";
                            showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
                            _timerTemps.cancel();
                            setState(() {
                              player.play('youWin.mp3');
                            });
                            return;
                          }
                          _questionNo++;
                          _totalEtoile = (_score / 10).toInt();
                          resetTemps();
                          generateQuestion();
                        });


                      },

                    ),

                  ],
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Text("Votre score", style: TextStyle(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        alignment: Alignment.center,
                        child: Text("$_score", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
                        height: 40,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Container(
                        alignment: Alignment.center,
                        padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                        decoration: BoxDecoration(
                            color: Colors.grey[300],
                            borderRadius: BorderRadius.circular(2.0),
                            boxShadow: [
                              BoxShadow(blurRadius: 2.0, color: Colors.grey)
                            ]),
                        child: Text("Votre étoiles", style: TextStyle(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold
                        ),),
                      ),
                      SizedBox(height: 10,),
                      Container(
                        height: 40,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: getEtoile(),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10,),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                border: Border.all(color: Colors.black)),
            child: Text("Temps restant", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),
          Stack(//. color: Color.fromRGBO(255, 100, 126, 1.0)
            children: <Widget>[
              Container(
                alignment: Alignment.center,
                height: 40,
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                decoration: BoxDecoration(
                    color: Colors.grey[300],
                    ),
              ),
              AnimatedContainer(
                duration: Duration(milliseconds: 100),
                curve: Curves.decelerate,
                alignment: Alignment.center,
                height: 40,
                width: _timerProgress,
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
                decoration: BoxDecoration(
                  color: Color.fromRGBO(255, 100, 126, 1.0),
                ),
              ),
              Container(
                alignment: Alignment.center,
                height: 40,
                child: Text("${_timeLevelRemain.toStringAsFixed(0)} Secondes", style: TextStyle(
                    fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
                ),),
              ),
            ],
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 10.0),
            decoration: BoxDecoration(
                color: Colors.red,
                border: Border.all(color: Colors.red)),
            child: Text("$_information", style: TextStyle(
                fontSize: 18, color: Colors.black, fontWeight: FontWeight.bold
            ),),
          ),


        ],
      ),
    );
  }

  @override
  void dispose() {
    _timerTemps.cancel();
    super.dispose();
  }
  @override
  void initState() {
    if (widget.level == 0){
      _timeLevel = 59;
    }else if (widget.level == 1){
      _timeLevel = 30;
    }else if (widget.level == 2){
      _timeLevel = 15;
    }else{
      _timeLevel = 5;
    }
    _timeLevelRemain = _timeLevel;
    w1 = WidgetNumber(number: _var_option1.toString(),);
    w2 = WidgetNumber(number: _var_option2.toString(),);
    w3 = WidgetNumber(number: _var_option3.toString(),);
    w4 = WidgetNumber(number: _var_option4.toString(),);
    Future.delayed(Duration(milliseconds: 500), (){
      _questionNo = 1;

      _gameStart = true;
      _timerProgress = _size.width;
      generateQuestion();
      startTimerTemps();
    });

    super.initState();
  }

  void resetTemps(){
    _timerProgress = _size.width;
    _timeLevelRemain = _timeLevel;
    setState(() {

    });

  }
  void startTimerTemps(){
    _timerTemps = Timer.periodic(Duration(milliseconds: 100), (timer) {
      if (_timerProgress > 0){
        _timerProgress = _timerProgress - (_size.width / _timeLevel / 10);
        _timeLevelRemain = _timeLevelRemain - ( 1 / 10);
        if (_timerProgress < 0) _timerProgress = 0;
        if (_timeLevelRemain < 0) _timeLevelRemain = 0;
        //. waktu habis
        if (_timeLevelRemain == 0){
          _timerTemps.cancel();
          _gameOver = true;
          _information = "Le temps est écoulé";
          setState(() { player.play('youLose.mp3'); });
          showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
        }


      }else{
        _timerTemps.cancel();
        _gameOver = true;
        _information = "Le temps est écoulé";
        setState(() { player.play('youLose.mp3'); });
        showAlert(context, "Game Over", "$_information, Vous avez $_score points, et $_totalEtoile étoiles.");
      }
      setState(() {

      });
    });
  }
}
