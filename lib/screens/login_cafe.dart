import 'package:flutter/material.dart';

void main() => runApp(const LoginCafeScreen());

class LoginCafeScreen extends StatelessWidget {
  const LoginCafeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.spaceAround, //da una separación entre componentes
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cafe',
                      style: TextStyle(
                        color: Colors.brown,
                        fontSize: 70,
                        fontWeight: FontWeight.bold,
                      ),),
                    Text('Nuestro mejor cafe del mundo',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey.shade700,
                      ),
                    ),
                  ],
                ),
            Image.asset('assets/taza.gif'), //imagen
            Column(
              children: [ //para botones
                ElevatedButton(
                  onPressed: (){}, child: Text('Iniciar sesión', 
                  style: TextStyle(color: Colors.white),),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.brown,
                    padding: 
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                  ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                ElevatedButton(
                  onPressed: (){}, child: Text(
                    'Regístrate', 
                    style: TextStyle(color: Colors.brown) ,
                    ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey.shade200,
                    side: BorderSide(color: Colors.brown),
                    padding: 
                      EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                      minimumSize: Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                  ),
                  ),
              ],
            )
            ],
            ),
        )),
    );
  }
}