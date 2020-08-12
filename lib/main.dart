import 'package:flutter/material.dart';
import 'package:expression_language/expression_language.dart';

void main() => runApp(MaterialApp(
  home:CalcLayout(),
));

class CalcLayout extends StatefulWidget {

  @override
  _CalcLayoutState createState() => _CalcLayoutState();
}

class _CalcLayoutState extends State<CalcLayout> {
  String eval="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      appBar: AppBar(
        backgroundColor: Colors.blueAccent[400],
        title: Text(
            'Calculator',
            style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.white
            )
        ),
        centerTitle: true,
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            flex:4,
            child: Text(eval, style: TextStyle(fontSize: 20,color: Colors.white))
            ),
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        var temp=eval.split('');
                        temp.removeLast();
                        String tempL='';
                        for(var i in temp){
                          tempL+=i;
                        }
                        setState(() {
                          eval=tempL;
                        });
                      },
                      onLongPress: (){
                        setState(() {
                          eval="";
                        });
                      },
                      child: Center(
                          child: Icon(
                            Icons.backspace,
                          )
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),

                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="1";
                        });
                      },
                      child: Center(
                          child: Text(
                              '1',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="2";
                        });
                      },
                      child: Center(
                          child: Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="3";
                        });
                      },
                      child: Center(
                          child: Text(
                              '3',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: Row(
                    children: [
                      Expanded(
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: FlatButton(
                            onPressed: (){
                              setState(() {
                                eval+="+";
                              });
                            },
                            child: Center(
                                child: Text(
                                    '+',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                )
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Expanded(
                        flex:1,
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: FlatButton(
                            onPressed: (){
                              setState(() {
                                eval+="-";
                              });
                            },
                            child: Center(
                                child: Text(
                                    '-',
                                    style: TextStyle(
                                      color: Colors.black,
                                    )
                                )
                            ),
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="4";
                        });
                      },
                      child: Center(
                          child: Text(
                              '4',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          ),
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="5";
                        });
                      },
                      child: Center(
                          child: Text(
                              '5',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="6";
                        });
                      },
                      child: Center(
                          child: Text(
                              '6',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
        flex:1,
        child: Row(
          children: <Widget>[
            Expanded(
              flex:1,
              child: Row(
                children: [
                  Expanded(
                    flex:1,
                    child: Padding(
                      padding: const EdgeInsets.all(0.5),
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            eval+="*";
                          });
                        },
                        child: Center(
                            child: Text(
                                '*',
                                style: TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    flex:1,
                    child: Padding(
                      padding: const EdgeInsets.all(0.5),
                      child: FlatButton(
                        onPressed: (){
                          setState(() {
                            eval+="/";
                          });
                        },
                        child: Center(
                            child: Text(
                                '/',
                                style: TextStyle(
                                  color: Colors.black,
                                )
                            )
                        ),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.all(0.5),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      eval+="7";
                    });
                  },
                  child: Center(
                      child: Text(
                          '7',
                          style: TextStyle(
                            color: Colors.white,
                          )
                      )
                  ),
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.all(0.5),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      eval+="8";
                    });
                  },
                  child: Center(
                      child: Text(
                          '8',
                          style: TextStyle(
                            color: Colors.white,
                          )
                      )
                  ),
                  color: Colors.grey[800],
                ),
              ),
            ),
            Expanded(
              flex:1,
              child: Padding(
                padding: const EdgeInsets.all(0.5),
                child: FlatButton(
                  onPressed: (){
                    setState(() {
                      eval+="9";
                    });
                  },
                  child: Center(
                      child: Text(
                          '9',
                          style: TextStyle(
                            color: Colors.white,
                          )
                      )
                  ),
                  color: Colors.grey[800],
                ),
              ),
            ),
          ],
        ),
      ),
        Expanded(
            flex:1,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      color: Colors.white,
                      onPressed:(){
                        setState(() {
                          eval+='.';
                        });
                      } ,
                      child: Center(
                          child: Text('.',style:TextStyle(color:Colors.black) )
                      ),
                    ),
                  )
                ),
                Expanded(
                  flex:1,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: (){
                              setState(() {
                                eval+='(';
                              });
                            },
                            child:Center(
                                child: Text('(',style:TextStyle(color:Colors.black) )
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.all(0.5),
                          child: FlatButton(
                            color: Colors.white,
                            onPressed: (){
                              setState(() {
                                eval+=')';
                              });
                            },
                            child:Center(
                                child: Text(')',style:TextStyle(color:Colors.black) )
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        setState(() {
                          eval+="0";
                        });
                      },
                      child: Center(
                          child: Text(
                              '0',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.grey[800],
                    ),
                  ),
                ),
                Expanded(
                  flex:1,
                  child: Padding(
                    padding: const EdgeInsets.all(0.5),
                    child: FlatButton(
                      onPressed: (){
                        var value;
                        try {
                          var expressionGrammarDefinition = ExpressionGrammarParser(
                              {});
                          var parser = expressionGrammarDefinition.build();
                          var result = parser.parse(eval);
                          var expression = result.value as Expression;
                          value = expression.evaluate();
                        }
                        on InvalidSyntaxException{
                          value="Invalid Expression";
                        }
                        setState(() {
                          eval=value.toString();
                        });
                      },
                      child: Center(
                          child: Text(
                              '=',
                              style: TextStyle(
                                color: Colors.white,
                              )
                          )
                      ),
                      color: Colors.blue[800],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
