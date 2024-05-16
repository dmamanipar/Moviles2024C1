import 'package:calc_upeu/comp/CustomAppBarX.dart';
import 'package:flutter/material.dart';

import 'package:calc_upeu/comp/CustomAppBar.dart';
import 'package:calc_upeu/theme/AppTheme.dart';

import './comp/CalcButton.dart';
import 'dart:math';
void main() => runApp(CalcApp());

class CalcApp extends StatefulWidget {
  const CalcApp({super.key}) ;
  @override
  CalcAppState createState() => CalcAppState();
}

class CalcAppState extends State<CalcApp> {
  String valorAnt = '';
  String operador = '';
  TextEditingController _controller = new TextEditingController();
  void numClick(String text) {
    setState(() => _controller.text += text);
    print(_controller);
  }
  void clear(String text) {
    setState(() {
      _controller.text = '';
    });
  }
  void opeClick(String text) {
    setState(() {
      valorAnt = _controller.text;
      operador = text;
      _controller.text = '';
    });
  }
  void accion(){
    setState(() {
      print("");
    });
  }



//Aquí Código
  void resultOperacion(String text) {
    setState(() {
      switch (operador) {
        case "/":
          _controller.text =
              (int.parse(valorAnt) / int.parse(_controller.text)).toString();
          break;
        case "*":
          _controller.text =
              (int.parse(valorAnt) * int.parse(_controller.text)).toString();
          break;
        case "+":
          _controller.text =
              (int.parse(valorAnt) + int.parse(_controller.text)).toString();
          break;
        case "-":
          _controller.text =
              (int.parse(valorAnt) - int.parse(_controller.text)).toString();
          break;
        case "%":
          _controller.text =
              (int.parse(valorAnt) % int.parse(_controller.text)).toString();
          break;
      }
    });
  }

  //


  final RestorableDateTime _selectedDate =
  RestorableDateTime(DateTime(2021, 7, 25));
  late final RestorableRouteFuture<DateTime?> _restorableDatePickerRouteFuture =
  RestorableRouteFuture<DateTime?>(
    onComplete: _selectDate,
    onPresent: (NavigatorState navigator, Object? arguments) {
      return navigator.restorablePush(
        _datePickerRoute,
        arguments: _selectedDate.value.millisecondsSinceEpoch,
      );
    },
  );

  @pragma('vm:entry-point')
  static Route<DateTime> _datePickerRoute(
      BuildContext context,
      Object? arguments,
      ) {
    return DialogRoute<DateTime>(
      context: context,
      builder: (BuildContext context) {
        return DatePickerDialog(
          restorationId: 'date_picker_dialog',
          initialEntryMode: DatePickerEntryMode.calendarOnly,
          initialDate: DateTime.fromMillisecondsSinceEpoch(arguments! as int),
          firstDate: DateTime(2021),
          lastDate: DateTime(2022),
        );
      },
    );
  }



  void _selectDate(DateTime? newSelectedDate) {
    if (newSelectedDate != null) {
      setState(() {
        _selectedDate.value = newSelectedDate;
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(
              'Selected: ${_selectedDate.value.day}/${_selectedDate.value.month}/${_selectedDate.value.year}'),
        ));
      });
    }
  }

  //


  @override
  Widget build(BuildContext context) {
//Aqui codigo
    List<List> labelList = [["AC","C","%","/"], ["7","8","9","*"],["4","5","6","-"],["1","2","3","+"],[".","0","00","="]];
    List<List> funx=[[clear,clear, opeClick,opeClick ],
      [numClick,numClick, numClick,opeClick ],
      [numClick,numClick, numClick,opeClick ],
      [numClick,numClick, numClick,opeClick ],
      [numClick,numClick, numClick,resultOperacion ]];

    AppTheme.colorX=Colors.blue;
    return MaterialApp(
      restorationScopeId: 'app',
      debugShowCheckedModeBanner: false,
      title: 'Calculator',
      themeMode: AppTheme.useLightMode ? ThemeMode.light : ThemeMode.dark,
      theme: AppTheme.themeDataLight,//Fin Agregado
      darkTheme: AppTheme.themeDataDark,
      home: Scaffold(
        appBar: CustomAppBarX(accionx: accion as Function),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
/*color:
Theme.of(context).colorScheme.surfaceVariant,*/
                margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: TextField(
                  textAlign: TextAlign.end,
                  controller: _controller,
                ),
              ),
//aqui codigo
              SizedBox(height: 20),
              ...List.generate(labelList.length, (index) =>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ...List.generate(
                        labelList[index].length,
                            (indexx) => CalcButton(
                          text: labelList[index][indexx],
                          callback: funx[index][indexx] as Function,
                        ),
                      ),
                    ],
                  )
              ),

            ],
          ),
        ),
      ),
    );
  }

}

