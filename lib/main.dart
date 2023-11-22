import 'package:flutter/material.dart';

void main() {
  runApp(CardWidget());
}
class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Material(
          color: Colors.indigo.shade50,
          child: Center(
            child: Card(
              elevation: 10,
              shadowColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: SizedBox(
                width: 350,
                height: 500,
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 150,
                      decoration: BoxDecoration(
                        color: Colors.indigo.shade900,
                        borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
                      ),

                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                width: 100,
                                height: 100,
                                child: Container(
                                  width: 250,
                                  height: 250,
                                  child: Image.asset("assets/images/person.png"),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8,right: 8),
                              child: Text("GET IN TOUCH",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8,top: 16),
                        child: SizedBox(
                          width: 162,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.start,
                            textCapitalization: TextCapitalization.characters,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "Firstname",
                              hintStyle: TextStyle(
                                color: Colors.indigo,
                              ),
                              prefixIcon: Icon(Icons.person, color: Colors.indigo,),
                              labelText: "firstname",
                              border:OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8,top: 16),
                        child:SizedBox(
                          width: 162,
                          height: 50,
                          child: TextField(
                            textAlign: TextAlign.start,
                            textCapitalization: TextCapitalization.characters,
                            keyboardType: TextInputType.name,
                            textInputAction: TextInputAction.done,
                            decoration: InputDecoration(
                              hintText: "lastname",
                              hintStyle: TextStyle(
                                color: Colors.indigo,
                              ),
                              prefixIcon: Icon(Icons.person, color: Colors.indigo,),
                              labelText: "Lastname",
                              border:OutlineInputBorder(),
                            ),
                          ),
                        ),
                      ),

                    ],
                  ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          textAlign: TextAlign.start,
                          textCapitalization: TextCapitalization.characters,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Email",
                            hintStyle: TextStyle(
                              color: Colors.indigo,
                            ),
                            prefixIcon: Icon(Icons.email, color: Colors.indigo,),
                            labelText: "Email Address",
                            border:OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          textAlign: TextAlign.start,
                          textCapitalization: TextCapitalization.characters,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Password",
                            hintStyle: TextStyle(
                              color: Colors.indigo,
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.indigo,),
                            labelText: "Password",
                            border:OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: TextField(
                          textAlign: TextAlign.start,
                          textCapitalization: TextCapitalization.characters,
                          keyboardType: TextInputType.visiblePassword,
                          textInputAction: TextInputAction.done,
                          decoration: InputDecoration(
                            hintText: "Enter Confirmed Password",
                            hintStyle: TextStyle(
                              color: Colors.indigo,
                            ),
                            prefixIcon: Icon(Icons.lock, color: Colors.indigo,),
                            labelText: "Confirmed Password",
                            border:OutlineInputBorder(),
                          ),
                        ),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          child: Text("SIGN UP",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onPressed: (){
                            print("Elevated Button is pressed");
                          },
                          onLongPress: (){
                            print("Elevated Button is On Long Pressed");
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.pink.shade600,
                            elevation: 10,
                            shadowColor: Colors.black,
                            shape:RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ),
      ),
    );
  }
}
