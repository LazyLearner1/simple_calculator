
import 'package:flutter/material.dart';




void main() => runApp(MaterialApp(
  home: Home(),

  ));
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);



  @override






  _HomeState createState() => _HomeState();

}

class _HomeState extends State<Home> {


  
  String txt = 'Calculator';
  String memory = '';
  int num1 = 0 ;
  int num2 = 0 ;
  String operation = '';


  void btn_clicked(String btnval){
    if(btnval == 'AC'){
      txt = '0';
      memory = '0';
      num1 = 0 ;
      num2 = 0 ;
      operation = '';
    }
    else if(btnval == 'Icons.cancel_presentation_rounded'){
      txt = '0';
      memory = '0';
      num1 = 0 ;
      num2 = 0 ;
    }
    else if(btnval == 'x'|| btnval == '+'|| btnval == '-'|| btnval == '÷'){
      num1 = int.parse(txt);
      operation = btnval ;
      memory = '';
    }
    else if(btnval == '.'){
      if(memory.contains(".")){
        print((data) => 'ERROR');
        return;
      }
      else{
        memory = memory + btnval ;
      }
    }
    else if(btnval == '='){
      num2 = int.parse(txt);

      if(operation == '+'){
        memory = (num1 + num2).toString() ;

        txt = int.parse(memory).toString();
        print(txt) ;
      }

      if(operation == '-'){
        memory = (num1 - num2).toString() ;
        txt = int.parse(memory).toString();
        print(txt) ;
      }

      if(operation == 'x'){
        memory = (num1 * num2).toString() ;
        txt = int.parse(memory).toString();
        print(txt) ;
      }

      if(operation == '÷') {
        memory = (num1 / num2).toString() ;
        txt = int.parse(memory).toString();
        print(txt) ;
      }

      num1 = 0;
      num1 = 0;
      operation = '';

    }
    else{
      memory = memory + btnval ;
      print(memory);

    }


    setState(() {
      txt = int.parse(memory).toString();
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text(
            'IIT-B Safe Calculator',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,

              height: 1,
            ),
          ),
          centerTitle: true
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              // Container(
              //   height: 50,
              //   width: 250,
              //   child: Text(
              //     memory,
              //     style: TextStyle(
              //       fontSize: 40,
              //       color: Colors.white38,
              //
              //     ),
              //   ),
              // ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 130,
                width: 250,
                child: Text(
                  txt,
                  style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,

                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              ElevatedButton(onPressed: () {
                btn_clicked('AC');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.amber,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'AC',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('Icons.cancel_presentation_rounded');
              },
                  style: ElevatedButton.styleFrom(
                  primary: Colors.red[400],
                  minimumSize: Size(96, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                ),
                child: Icon(
                  Icons.cancel_presentation_rounded,
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('÷');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '÷',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('x');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  'x',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),

            ],
          ),

          Row(
            children: [
              ElevatedButton(onPressed: () {
                btn_clicked('7');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '7',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('8');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '8',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('9');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '9',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('+');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '+',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {
                btn_clicked('4');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '4',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('5');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '5',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('6');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '6',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton(onPressed: () {
                    btn_clicked('-');
                  },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.black,
                      minimumSize: Size(96, 100),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                    child: Text(
                      '-',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                      ),
                    ),
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {
                btn_clicked('1');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('2');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('3');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '3',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('=');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '=',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ElevatedButton(onPressed: () {
                btn_clicked('.');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '.',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              ElevatedButton(onPressed: () {
                btn_clicked('0');
              },
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                  minimumSize: Size(96, 100),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                  ),
                ),
                child: Text(
                  '0',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(onPressed: () {
                  btn_clicked('00');
                },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    minimumSize: Size(96, 100),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Text(
                    '00',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }
}








