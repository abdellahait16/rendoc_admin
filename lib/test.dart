// import 'package:flutter/material.dart';

// class ColorfulContainer extends StatefulWidget {
//   final Color initialColor;
//   final String text;
//   final bool isSelected;
//   final Function(String, int) onSelected;

//   ColorfulContainer({
//     this.initialColor = Colors.grey,
//     @required this.text,
//     this.isSelected = false,
//     @required this.onSelected,
//   })  : assert(text != null),
//         assert(onSelected != null);

//   @override
//   _ColorfulContainerState createState() => _ColorfulContainerState();
// }

// class _ColorfulContainerState extends State<ColorfulContainer> {
//   Color _color;

//   @override
//   void initState() {
//     super.initState();
//     _color = widget.isSelected ? Colors.blueAccent : widget.initialColor;
//   }

//   void _changeColor() {
//     setState(() {
//       _color = Colors.blueAccent;
//       widget.onSelected(widget.text, 1);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _changeColor,
//       child: Container(
//         width: 100,
//         height: 100,
//         color: _color,
//         child: Center(
//           child: Text(
//             widget.text,
//             style: TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ColorfulList extends StatefulWidget {
//   final Function(List<String>, List<int>) onSelected;

//   ColorfulList({@required this.onSelected}) : assert(onSelected != null);

//   @override
//   _ColorfulListState createState() => _ColorfulListState();
// }

// class _ColorfulListState extends State<ColorfulList> {
//   List<String> _selectedTexts = [];
//   List<int> _selectedIndexes = [];

//   void _handleSelection(String text, int index) {
//     setState(() {
//       if (_selectedTexts.contains(text)) {
//         _selectedTexts.remove(text);
//         _selectedIndexes.remove(index);
//       } else {
//         _selectedTexts.add(text);
//         _selectedIndexes.add(index);
//       }
//     });
//     widget.onSelected(_selectedTexts, _selectedIndexes);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: ColorfulContainer(
//             text: 'Item $index',
//             isSelected: _selectedIndexes.contains(index),
//             onSelected: (text, index) => _handleSelection(text, index),
//           ),
//         );
//       },
//     );

//=============the second app

// import 'package:flutter/material.dart';

// class ColorfulContainer extends StatefulWidget {
//   final Color initialColor;
//   final String text;

//   const ColorfulContainer({super.key, this.initialColor = Colors.grey, required this.text})
//       ;

//   @override
//   State<ColorfulContainer> createState() => _ColorfulContainerState();
// }

// class _ColorfulContainerState extends State<ColorfulContainer> {
//   Color? _color;

//   @override
//   void initState() {
//     super.initState();
//     _color = widget.initialColor;
//   }

//   void _changeColor() {
//     setState(() {
//       _color = Colors.blueAccent;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: _changeColor,
//       child: Container(
//         width: 100,
//         height: 100,
//         color: _color,
//         child: Center(
//           child: Text(
//             widget.text,
//             style: const TextStyle(color: Colors.white),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class ColorfulList extends StatefulWidget {
//   const ColorfulList({super.key});

//   @override
//   State<ColorfulList> createState() => _ColorfulListState();
// }

// class _ColorfulListState extends State<ColorfulList> {
//   int _selectedIndex = -1;

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: 10,
//       itemBuilder: (context, index) {
//         return Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: GestureDetector(
//             onTap: () {
//               setState(() {
//                 _selectedIndex = index;
//               });
//             },
//             child: ColorfulContainer(
//               text: 'Item $index',
//               initialColor: _selectedIndex == index
//                   ? Colors.blueAccent
//                   : Colors.blueGrey,
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class MyApp extends StatefulWidget {
//   const MyApp({super.key});

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Colorful List'),
//       ),
//       body:const MediaQuery(data: MediaQueryData(),
//       child:  ColorfulList()),
//     );
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

