import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'currency_counter',
    home: note(),
  ));
}

class note extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    return notestate();
  }
}

class notestate extends State<note>{
  TextEditingController controller1=TextEditingController();
  TextEditingController controller2=TextEditingController();
  TextEditingController controller3=TextEditingController();
  TextEditingController controller4=TextEditingController();
  TextEditingController controller5=TextEditingController();
  TextEditingController controller6=TextEditingController();
  TextEditingController controller7=TextEditingController();
  var displayresult='';
  @override
  void initState(){
    super.initState();
    controller1.text='0';
    controller2.text='0';
    controller3.text='0';
    controller4.text='0';
    controller5.text='0';
    controller6.text='0';
    controller7.text='0';
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          title: Center(child:Text("Currency Counter"),),

        ),
        body:Container(
            child: ListView(

                children: <Widget>[
                  getImageAsset(),
                  Padding(
                    padding:EdgeInsets.only(bottom:8.0) ,
                    child:Center(child:Text("Enter no of notes.",textDirection: TextDirection.ltr,)),),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:TextField(
                            keyboardType:TextInputType.number,
                            controller: controller1,
                            decoration:InputDecoration(

                                labelText:'10',
                                hintText: 'enter no of 10rs notes',
                                border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                )

                            )
                        ),
                      )
                      ,
                      Container(width:10.0),
                      Expanded(child:TextField(
                          keyboardType:TextInputType.number,
                          controller: controller2,
                          decoration:InputDecoration(

                              labelText:'20',
                              hintText: 'enter no of 20rs notes',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              )

                          )
                      ),
                      )],),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:TextField(
                            keyboardType:TextInputType.number,
                            controller: controller3,
                            decoration:InputDecoration(

                                labelText:'50',
                                hintText: 'enter no of 50rs notes',
                                border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                )

                            )
                        ),
                      )
                      ,
                      Container(width:10.0),
                      Expanded(child:TextField(
                          keyboardType:TextInputType.number,
                          controller: controller4,
                          decoration:InputDecoration(

                              labelText:'100',
                              hintText: 'enter no of 100rs notes',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              )

                          )
                      ),
                      )],),
                  Padding(
                    padding: EdgeInsets.all(3.0),
                  ),
                  Row(
                    children: <Widget>[
                      Expanded(
                        child:TextField(
                            keyboardType:TextInputType.number,
                            controller: controller5,
                            decoration:InputDecoration(

                                labelText:'200',
                                hintText: 'enter no of 200rs notes',
                                border:OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(5.0)
                                )

                            )
                        ),
                      )
                      ,
                      Container(width:10.0),
                      Expanded(child:TextField(
                          keyboardType:TextInputType.number,
                          controller: controller6,
                          decoration:InputDecoration(

                              labelText:'500',
                              hintText: 'enter no of 500rs notes',
                              border:OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(5.0)
                              )

                          )
                      ),
                      )],),
                  Padding(
                    padding:EdgeInsets.only(top:6.0,bottom:6.0),
                    child:TextField(
                        keyboardType:TextInputType.number,
                        controller: controller7,
                        decoration:InputDecoration(

                            labelText:'2000',
                            hintText: 'enter no of 2000rs notes',
                            border:OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5.0)
                            )

                        )
                    ),
                  ),
                  Row(
                      children: <Widget>[
                        Expanded(
                          child:RaisedButton(
                            child:Text('Calculate'),
                            onPressed: (){
                              setState(() {
                                this.displayresult=calculate();
                              });


                            },
                          ),
                  ),
                       Expanded(
                           child:RaisedButton(
                               child:Text('Reset'),
                               onPressed: () {
                                 setState(() {
                                   reset();
                                 });
                               }
                       ),),
                        ]  ),
                  Padding(
                    padding: EdgeInsets.all(5.0*2),
                    child:Center(
                      child:Text(this.displayresult)
                    )
                  )


                ]
            )
        )
    );
  }
  Widget getImageAsset(){
    AssetImage assetImage=AssetImage('images/unnamed.png');
    Image image=Image(image: assetImage,width:125.0,height:125.0);
    return Container(
        child:image,margin:EdgeInsets.all(50.0)
    );

  }
  String calculate(){
    double ten=double.parse(controller1.text);
    double twenty=double.parse(controller2.text);
    double fifty=double.parse(controller3.text);
    double hundred=double.parse(controller4.text);
    double twohundred=double.parse(controller5.text);
    double fivehundred=double.parse(controller6.text);
    double twothousand=double.parse(controller7.text);

    double total=(ten*10)+(twenty*20)+(fifty*50)+(100*hundred)+(twohundred*200)+(fivehundred*500)+(twothousand*2000);
    String result='Total Amount=$total';
    return result;
  }
void reset(){
    controller1.text='0';
    controller2.text='0';
    controller3.text='0';
    controller4.text='0';
    controller5.text='0';
    controller6.text='0';
    controller7.text='0';
    displayresult='Total Amount=0.0';

  }
}
