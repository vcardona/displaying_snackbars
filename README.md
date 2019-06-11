# En este proyecto vas a encontrar diferentes Branch con varios ejemplos, puedes navegar en cada uno y ver los ejercicios realizados.

# Working with Tabs

Trabajar con tabs es un patron común en las aplicaciones, Flutter incluye una forma conveniente de crear Tabs.

En la siguiente sección podemos ver como se define cada uno de los tabs.

```dart
home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
            title: Text('Tabs Demo'),
          ),
      
   ```


![](FlutterTabsDemo.gif)
