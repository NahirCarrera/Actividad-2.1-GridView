import 'package:coche/model/coche.dart';
import 'package:flutter/material.dart';
import '../controller/coche_controller.dart';
import 'detalles_coche_view.dart';
import '../utils/constants.dart';
class VistaCoches extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => VistaCochesState();
  }

class VistaCochesState  extends State<VistaCoches>{
  final CocheController _controller =  CocheController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Ejemplo Gridview",
          style: TextStyle(
            color: Colors.white
          ),
        ),
        backgroundColor: colorPrimario,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: _controller.coches.length,
          itemBuilder: (context, index){
            final item = _controller.coches[index];
            return GestureDetector(
              onTap: (){
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>DetallesCoche(coche:item),
                    ),
                );
              },
              child: Card(
                color: colorPrimario,
                elevation: 3.0,
                child: Container(
                  padding: EdgeInsets.fromLTRB(15, 0,15,0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      item.image,
                      Divider(color: colorSecundario),
                      Text(
                        '${item.modelo}',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20
                        ),
                      ),
                      Text(
                        '${item.marca}',
                        style: TextStyle(
                            color: colorQuinto,
                            fontSize: 15
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }
      ),
    );
  }

}
