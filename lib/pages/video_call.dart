import 'package:flutter/material.dart';
import 'package:agora_uikit/agora_uikit.dart';

class VideoCallScreen extends StatefulWidget {
  @override
  _VideoCallScreenState createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  // Instantiate the client
  final AgoraClient client = AgoraClient(
    agoraConnectionData: AgoraConnectionData(
        appId: "YOUR_APP_ID",
        channelName: "fuck",
        tempToken:
            "YOUR_TOKEN"),
    enabledPermission: [
      Permission.camera,
      Permission.microphone,
    ],
  );

// Initialize the Agora Engine
  @override
  void initState() {
    super.initState();
    initAgora();
  }

  void initAgora() async {
    await client.initialize();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            AgoraVideoViewer(
              client: client,
              
              layoutType: Layout.grid,
              showNumberOfUsers: true,
              videoRenderMode: VideoRenderMode.Hidden,
              
            
            ),
            AgoraVideoButtons(client: client),
          ],
        ),
      ),
    );
  }
}
