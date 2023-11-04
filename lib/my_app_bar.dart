import 'package:flutter/material.dart';

// PreferredSizeWidget MyAppBar() {
//   return AppBar(
//     leading: const IconButton(
//         onPressed: null, icon: Icon(Icons.search, color: Colors.white)),
//     title: const Center(child: Text('MA`WAY')),
//     actions: const [
//       Icon(Icons.notifications, color: Colors.white),
//       Padding(
//           padding: EdgeInsets.only(right: 10),
//           child: Icon(Icons.notifications, color: Colors.white)),
//     ],
//   );
// }

PreferredSizeWidget MyAppBar() {
  return AppBar(
    title: Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.withOpacity(0.5),
          width: 2.0,
        ),
        borderRadius: BorderRadius.circular(4.0),
      ),
      margin: const EdgeInsets.all(12),
      padding: const EdgeInsets.all(4),
      child: Row(
        children: const <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Icon(
              Icons.search,
              color: Color(0xFF285D2B),
              size: 20,
            ),
          ),
          Expanded(
            child: TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: "Pesquisar...",
                hintStyle: TextStyle(color: Color(0xFF285D2B)),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 8, horizontal: 8),
                isDense: true,
              ),
              style: TextStyle(
                fontSize: 14.0,
                color: Color(0xFF285D2B),
              ),
            ),
          )
        ],
      ),
    ),
    actions: const [
      Padding(
          padding: EdgeInsets.only(right: 20), child: Icon(Icons.notifications))
    ],
  );
}
