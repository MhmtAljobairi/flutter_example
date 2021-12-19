import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  String value = "";

  void _handlebutton(String newAddedValue) {
    setState(() {
      value += newAddedValue;
    });
  }

  void _handlePlusMinus() {
    double newValue = double.parse(value);

    if (newValue > 0) {
      setState(() {
        value = "-" + value;
      });
    } else {
      setState(() {
        value = newValue.abs().toString();
      });
    }
  }

  void _handleClear() {
    setState(() {
      value = "";
    });
  }

  void _handleCalculation() {
    Parser parser = Parser();
    Expression exp = parser.parse(value); //double.parse()
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);
    setState(() {
      value = eval.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            _widgetHeader(),
            _widgetBody(),
          ],
        ),
      ),
    );
  }

  Widget _widgetHeader() {
    return Expanded(
        flex: 4,
        child: Container(
          color: Colors.grey[800],
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "$value",
                style: TextStyle(color: Colors.white, fontSize: 45),
              )
            ],
          ),
        ));
  }

  Widget _widgetBody() {
    return Expanded(
        flex: 7,
        child: Container(
          color: Colors.grey[800],
          child: Column(
            children: [
              Expanded(flex: 1, child: _widgetFirstRow()),
              Expanded(flex: 1, child: _widgetSecondRow()),
              Expanded(flex: 1, child: _widgetThirdRow()),
              Expanded(flex: 1, child: _widgetForthRow()),
              Expanded(flex: 1, child: _widgetFifthRow()),
            ],
          ),
        ));
  }

  Widget _button(String title, String value, Color? backgroundColor,
      GestureTapCallback function) {
    return InkWell(
      onTap: function,
      child: Container(
        margin: EdgeInsets.all(1),
        color: backgroundColor,
        child: Center(
          child: Text(
            title,
            style: TextStyle(
                fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }

  Widget _widgetFirstRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handleClear();
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[600],
                child: Center(
                  child: Text(
                    "C",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handlePlusMinus();
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[600],
                child: Center(
                  child: Text(
                    "+/-",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handlebutton("%");
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[600],
                child: Center(
                  child: Text(
                    "%",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handlebutton("/");
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "/",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _widgetSecondRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: _button("7", "7", Colors.grey[700], () {
              _handlebutton("7");
            })),
        Expanded(
            flex: 1,
            child: _button("8", "8", Colors.grey[700], () {
              _handlebutton("8");
            })),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handlebutton("9");
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "9",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handlebutton("*");
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "*",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _widgetThirdRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "4",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "5",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "6",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "-",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _widgetForthRow() {
    return Row(
      children: [
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "1",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "2",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "3",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "+",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ],
    );
  }

  Widget _widgetFifthRow() {
    return Row(
      children: [
        Expanded(
            flex: 2,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    "0",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.grey[700],
                child: Center(
                  child: Text(
                    ".",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
        Expanded(
            flex: 1,
            child: InkWell(
              onTap: () {
                _handleCalculation();
              },
              child: Container(
                margin: EdgeInsets.all(1),
                color: Colors.orange,
                child: Center(
                  child: Text(
                    "=",
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            )),
      ],
    );
  }
}
