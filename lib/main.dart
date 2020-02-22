import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      theme: ThemeData(
        primaryColor: Color(0xFFf1c40f),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallet"),
        actions: <Widget>[
          IconButton(
            icon: Icon(FontAwesomeIcons.bell),
            onPressed: () {},
          ),
        ],
        elevation: 0,
        backgroundColor: Color.fromARGB(255, 20, 0, 100),
        brightness: Brightness.dark,
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountEmail: Text("john@doe.com"),
              accountName: Text("John Doe"),
              currentAccountPicture: CircleAvatar(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image(
                    image: NetworkImage(
                        "https://s3.amazonaws.com/uifaces/faces/twitter/increase/128.jpg"),
                  ),
                ),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Prices"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Balance"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Account"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Settings"),
              onTap: () {},
            ),
            ListTile(
              title: Text("Help"),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Container(
        color: Color(0xFFbdc3c7),
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(


          child: Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                    color: Color.fromARGB(255, 20, 0, 100),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40),
                    )),
                child: Container(
                  child: Column(
                    children: <Widget>[
                      
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "Current Balance",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                            Text(
                              "USD",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            
                            Text(
                              "\$32,452 ",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.bold
                              ),
                            ),

                            Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF2ecc71),
                                borderRadius: BorderRadius.circular(16),
                              ),
                              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                              child: Text(
                                "+ 3.5 %",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),

                      SizedBox(height: 80,),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "3.4688823 BTC",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                      ),

                    ],
                  ),
                  margin: EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 40,
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFFe67e22),
                        Color(0xFFf1c40f),
                      ],
                    ),
                  ),
                ),
              ),

              

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20,),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[


                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.levelUpAlt, color: Color(0xff3498db),),
                        label: Text("Send"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                    SizedBox(width: 20,),

                    Expanded(
                      child: RaisedButton.icon(
                        onPressed: (){},
                        icon: Icon(FontAwesomeIcons.levelDownAlt, color: Color(0xFF2ecc71),),
                        label: Text("Receive"),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                    ),

                  ],
                ),
              ),


              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,),
                alignment: Alignment.topLeft,
                child: Text("Currency", style: TextStyle(fontSize: 22,),),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10,),
                alignment: Alignment.topLeft,
                child: Column(
                  children: <Widget>[
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xffecf0f1),
                          child: Icon(FontAwesomeIcons.bitcoin, color: Color(0xFFf1c40f),),
                        ),
                        title: Text("Bitcoin"),
                        trailing: Text("\$8,000"),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xffecf0f1),
                          child: Icon(FontAwesomeIcons.ethereum, color: Color(0xFF2980b9),),
                        ),
                        title: Text("Ethereum"),
                        trailing: Text("\$450"),
                      ),
                    ),

                    SizedBox(height: 10,),

                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: ListTile(
                        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        leading: CircleAvatar(
                          backgroundColor: Color(0xffecf0f1),
                          child: Icon(FontAwesomeIcons.euroSign, color: Color(0xff2ecc71),),
                        ),
                        title: Text("Euro"),
                        trailing: Text("\$99"),
                      ),
                    ),

                  ],
                ),
              ),


              SizedBox(height: 100,),


            ],
          ),
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.wallet),
            title: Text("Wallet"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.search),
            title: Text("Search"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.ticketAlt),
            title: Text("Coupans"),
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.userAlt),
            title: Text("Account"),
          ),
        ],
        currentIndex: 0,
        onTap: (i) {},
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 20, 0, 100),
      ),
    );
  }
}
