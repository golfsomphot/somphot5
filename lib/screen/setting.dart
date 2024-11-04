// import 'package:flutter/material.dart';
// import 'package:settings_ui/settings_ui.dart';

// class Setting extends StatefulWidget {
//   final VoidCallback logout;

//   const Setting({Key? key, required this.logout}) : super(key: key);

//   @override
//   State<Setting> createState() => _SettingState();
// }

// class _SettingState extends State<Setting> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.black,
//         title: Text(
//           'Setting',
//           style: TextStyle(color: Colors.white),
//         ),
//       ),
//       body: SettingsList(
//         sections: [
//           SettingsSection(
//             title: Text('Common'),
//             tiles: <SettingsTile>[
//               SettingsTile.navigation(
//                 leading: Icon(Icons.language),
//                 title: Text('Language'),
//                 value: Text('English'),
//                 onPressed: (context) {
//                   widget.logout();
//                 },
//               ),
//               SettingsTile.switchTile(
//                 onToggle: (value) {},
//                 initialValue: true,
//                 leading: Icon(Icons.format_paint),
//                 title: Text('Enable custom theme'),
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
