import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(TugasKonversiSuhu());
}

class TugasKonversiSuhu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Konversi Suhu',
      home: InputSelectionPage(title: 'Konversi Suhu'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class InputSelectionPage extends StatefulWidget {
  InputSelectionPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _InputSelectionPageState createState() => _InputSelectionPageState();
}

class _InputSelectionPageState extends State<InputSelectionPage> {
  String? selectedDropdown = "Kelvin";
  String? selectedDropdown2 = "Kelvin";
  var listSatuanSuhu = ["Kelvin", "Reamur", "Farenheit", "Celsius"];
  List<String> listHasil = [];
  final angka = TextEditingController();
  double _inputUser = 0;
  double _result = 0;

  konversiSuhu() {
    setState(() {
      print(listHasil.length);
      _inputUser = double.parse(angka.text);
      switch (selectedDropdown) {
        case "Kelvin":
          {
            switch (selectedDropdown2) {
              case "Kelvin":
                {
                  _result = _inputUser;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Reamur":
                {
                  _result = (_inputUser - 273) * 4 / 5;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Farenheit":
                {
                  _result = ((_inputUser - 273) * 9 / 5) + 32;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Celsius":
                {
                  _result = (_inputUser - 273);
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
            }
          }
          break;
        case "Reamur":
          {
            switch (selectedDropdown2) {
              case "Kelvin":
                {
                  _result = (_inputUser * 5 / 4) + 273;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Reamur":
                {
                  _result = _inputUser;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Farenheit":
                {
                  _result = ((_inputUser - 273) * 9 / 4) + 32;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Celsius":
                {
                  _result = (_inputUser * 5 / 4);
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
            }
          }
          break;
        case "Farenheit":
          {
            switch (selectedDropdown2) {
              case "Kelvin":
                {
                  _result = ((_inputUser - 32) * 5 / 9) + 273;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Reamur":
                {
                  _result = ((_inputUser - 32) * 4 / 9);
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Farenheit":
                {
                  _result = _inputUser;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Celsius":
                {
                  _result = ((_inputUser - 32) * 5 / 9);
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
            }
            break;
          }
        case "Celsius":
          {
            switch (selectedDropdown2) {
              case "Kelvin":
                {
                  _result = _inputUser + 273;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Reamur":
                {
                  _result = _inputUser * 4 / 5;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Farenheit":
                {
                  _result = (_inputUser * 9 / 5) + 32;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
              case "Celsius":
                {
                  _result = _inputUser;
                  listHasil.add("Konversi dari:\t" +
                      "$_inputUser\t" +
                      " $selectedDropdown\t" +
                      "ke\t" +
                      "$selectedDropdown2\t" +
                      "$_result");
                }
                break;
            }
            break;
          }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Column(
              children: <Widget>[
                Padding(padding: EdgeInsets.only(top: 20)),
                Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.only(left: 30, right: 30),
                  child: TextFormField(
                    controller: angka,
                    style: TextStyle(fontSize: 20),
                    decoration: InputDecoration(
                        labelText: "Masukkan Angka",
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(40))),
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    keyboardType: TextInputType.numberWithOptions(
                        decimal: true, signed: false),
                  ),
                ),
                Padding(padding: EdgeInsets.only(top: 10)),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30)),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          value: selectedDropdown,
                          onChanged: (value) {
                            setState(() {
                              selectedDropdown = value;
                            });
                          },
                          items: listSatuanSuhu
                              .map<DropdownMenuItem<String>>(
                                  (e) => DropdownMenuItem(
                                        child: Text(e.toString()),
                                        value: e,
                                      ))
                              .toList(),
                        ),
                      ),
                      Container(
                          child: Text(
                        "To",
                        style: TextStyle(color: Color.fromARGB(255, 184, 0, 0)),
                      )),
                      Container(
                        margin: EdgeInsets.only(right: 10),
                        padding:
                            EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30)),
                        child: DropdownButton<String>(
                          underline: SizedBox(),
                          value: selectedDropdown2,
                          onChanged: (value) {
                            setState(() {
                              selectedDropdown2 = value;
                            });
                          },
                          items: listSatuanSuhu
                              .map<DropdownMenuItem<String>>(
                                  (e) => DropdownMenuItem(
                                        child: Text(e.toString()),
                                        value: e,
                                      ))
                              .toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: ElevatedButton(
                    child: const Text('Konversi'),
                    style: ElevatedButton.styleFrom(),
                    onPressed: konversiSuhu,
                  ),
                ),
                Column(
                  children: <Widget>[
                    Container(
                      width: 600,
                      alignment: Alignment.center,
                      color: Colors.lime.shade100,
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        'Hasil Konversi',
                        style: TextStyle(fontSize: 30),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      width: 600,
                      alignment: Alignment.center,
                      color: Colors.lime.shade100,
                      child: Text(
                        _result.toStringAsFixed(3),
                        style: TextStyle(fontSize: 30),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 305,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: listHasil.length,
                    itemBuilder: (context, index) {
                      return Container(
                        child: Text(
                          listHasil[index],
                          style: TextStyle(fontSize: 15),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
