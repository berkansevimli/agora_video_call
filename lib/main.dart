import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
import 'package:permission_handler/permission_handler.dart';
import 'package:video_call/pages/video_call.dart';

const APP_ID = "b3f9b07c88df44b985d3e780cd68710a";
const Token =
    "006b3f9b07c88df44b985d3e780cd68710aIABZA8Z9B4XBK+18TBTp+sDmh2cmj5cCMrTuWqpmI7NCxgYkvQsAAAAAEACNSCPiv9szYgEAAQC/2zNi";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HanMobil Video Chat'),
      ),
      body:Center(child: TextButton(child: Text('Video Call'), onPressed: ()=>Navigator.of(context).push(MaterialPageRoute(builder: (builder)=>VideoCallScreen())),),)
    );
  }

}
