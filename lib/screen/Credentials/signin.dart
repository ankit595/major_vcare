import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Signin extends StatefulWidget {
  const Signin({Key? key}) : super(key: key);

  @override
  State<Signin> createState() => _SigninState();
}

class _SigninState extends State<Signin> with SingleTickerProviderStateMixin {
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isLoading = true;
  late TabController tabController;

  @override
  void dispose() {
    emailController.dispose();
    phoneController.dispose();
    super.dispose();
  }

  @override
  void initState() {
// TODO: implement initState
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.white, Color.fromRGBO(129, 71, 255, 0.7)],
                stops: [0.3, 1.0],
              ),
            ),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Image(image: AssetImage("assets/spl.png"),
                    width: MediaQuery.of(context).size.width*.8,
                    height: MediaQuery.of(context).size.height*.3,
                  ),
                  const SizedBox(height: 50),
                  TabBar(
                    controller: tabController,
                    tabs: [
                      Tab(
                        text: 'Sign-in',
                      ),
                      Tab(
                        text: 'Sign-up',
                      ),
                    ],
                    labelColor: Colors.black,
                  ),
                  Expanded(
                    child: TabBarView(
                      controller: tabController,
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(129, 71, 255, 1.0),
                                        blurRadius: 25,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              margin: EdgeInsets.all(20.0),
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.email_outlined,
                                        color: Color.fromRGBO(129, 71, 255, 1.0)),
                                    labelText: "User name or Email",
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(129, 71, 255, 1.0),
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                    ),
                                  ]
                              ),
                              margin: EdgeInsets.only(left: 20,
                                  right: 20,
                                  bottom: 20),
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.fingerprint,
                                        color: Color.fromRGBO(129, 71, 255, 1.0)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: "Password",
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.white
                                        ),
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*.07,
                              width: MediaQuery.of(context).size.width*.83,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      primary: Color.fromRGBO(129, 71, 255, 1.0)),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign-in",
                                    style: TextStyle(fontSize: 22, fontFamily: "Itim"),
                                  )),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: TextButton(onPressed: () {}, child: Text("Forgot Password ?",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20
                                ),
                              )),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*.05,
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        color: Color.fromRGBO(129, 71, 255, 1.0),
                                        blurRadius: 25,
                                        offset: Offset(0, 10)
                                    )
                                  ]
                              ),
                              margin: EdgeInsets.all(20.0),
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    filled: true,
                                    fillColor: Colors.white,
                                    prefixIcon: Icon(Icons.supervised_user_circle_outlined,
                                        color: Color.fromRGBO(129, 71, 255, 1.0)),
                                    labelText: "User name",
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Colors.white,
                                            width: 2
                                        ),
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(129, 71, 255, 1.0),
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                    ),
                                  ]
                              ),
                              margin: EdgeInsets.only(left: 20,
                                  right: 20,
                                  bottom: 20),
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email_outlined,
                                        color: Color.fromRGBO(129, 71, 255, 1.0)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: "Email",
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.white
                                        ),
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),Container(
                              decoration: BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color.fromRGBO(129, 71, 255, 1.0),
                                      blurRadius: 20,
                                      offset: const Offset(0, 10),
                                    ),
                                  ]
                              ),
                              margin: EdgeInsets.only(left: 20,
                                  right: 20,
                                  bottom: 20),
                              padding: EdgeInsets.all(5.0),
                              child: TextField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.fingerprint,
                                        color: Color.fromRGBO(129, 71, 255, 1.0)),
                                    filled: true,
                                    fillColor: Colors.white,
                                    labelText: "Password",
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            width: 2,
                                            color: Colors.white
                                        ),
                                        borderRadius: BorderRadius.circular(20))),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height*.07,
                              width: MediaQuery.of(context).size.width*.83,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(15))
                                      ),
                                      primary: Color.fromRGBO(129, 71, 255, 1.0)),
                                  onPressed: () {},
                                  child: Text(
                                    "Sign-up",
                                    style: TextStyle(fontSize: 22, fontFamily: "Itim"),
                                  )),
                            ),

                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
