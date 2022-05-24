import 'package:flutter/material.dart';
//Salazar Castrellón Eva Rocío 4° "A" 25/Noviembre/2020 
class BasicoPage extends StatelessWidget {
  final estiloTitulo = TextStyle( fontSize: 20.0, fontWeight: FontWeight.bold);
  final estiloSubtitulo = TextStyle( fontSize: 18.0, color: Colors.grey);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
      ),
    );
  }
  Widget _crearImagen() {
     return Container(
       width: double.infinity,
       child: Image(
          image: NetworkImage('https://media-exp1.licdn.com/dms/image/C561BAQGEbvT3SFyR9Q/company-background_10000/0?e=2159024400&v=beta&t=hI9WfHDdxBHKVfJmjvSggOVF8VBYIwilVWHqR_ChmdM'),
          height: 200.0,
          fit: BoxFit.cover,
        ),
     );
    }

  Widget _crearTitulo(){
    return SafeArea(
          child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
                child: Row(
                  children: <Widget>[
                   Expanded(
                      child : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Lago asombroso', style: estiloTitulo),
                          SizedBox(height: 7.0),
                          Text('El lago más asombroso que se encuentra en Rumania', style: estiloSubtitulo),
                        ],
                      ),
                    ),
                    Icon(
                      Icons.star, 
                      color: Colors.red, 
                      size: 30.0),
                    Text('41', style: TextStyle(fontSize: 20)),
                  ],
                ),
              ),
    );
  }

Widget _crearAcciones(){
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      _accion(Icons.call, 'CALL'),
      _accion(Icons.near_me,'ROUTE'),
      _accion(Icons.share, 'SHARE'),

      
    ]
  );
}

Widget _accion(IconData icon, String texto){
return Column(
        children: <Widget> [
          Icon(icon, color: Colors.blue, size: 40.0),
          SizedBox(height: 5.0),
          Text(texto, style: TextStyle(fontSize: 15.0, color: Colors.blue),
          )
        ],
      );
}

Widget _crearTexto() {
  return SafeArea(
      child: Container(
      padding: EdgeInsets.symmetric(horizontal: 40.0),
      child: Text("Un lago es un cuerpo de agua generalmente dulce, de una extensión considerable, que se encuentra separado del mar. El aporte de agua a todos los lagos viene de los ríos, de aguas freáticas y precipitación sobre el espejo del agua. Los lagos se forman en depresiones topográficas creadas por una variedad de procesos geológicos como movimientos tectónicos, movimientos de masa, vulcanismo, formación de barras, acción de glaciares e incluso impactos de meteoritos. También existen lagos creados artificialmente por la construcción de una presa.")),
  );
}

}
