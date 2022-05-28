import 'package:flutter/material.dart';
 import 'package:video_player/video_player.dart';

 class VideoPlayerScreen extends StatefulWidget {
   VideoPlayerScreen({Key? key}) : super(key: key);

   @override
   _VideoPlayerScreenState createState() => _VideoPlayerScreenState();
 }

 class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
   late VideoPlayerController _controller;
   late Future<void> _initializeVideoPlayerFuture;

   @override
   void initState() {
     // Create and store the VideoPlayerController. The VideoPlayerController
     // offers several different constructors to play videos from assets, files,
     // or the internet.
     _controller = VideoPlayerController.asset(
       'assets/video1.mp4',
     );

     // Initialize the controller and store the Future for later use.
     _initializeVideoPlayerFuture = _controller.initialize();

     // Use the controller to loop the video.
     _controller.setLooping(true);

     super.initState();
   }

   @override
   void dispose() {
     // Ensure disposing of the VideoPlayerController to free up resources.
     _controller.dispose();

     super.dispose();
   }

   @override
   Widget build(BuildContext context) {
     return Scaffold(
       resizeToAvoidBottomInset: false,
       appBar: AppBar(
         backgroundColor: Colors.green[200],
         title: Text('Ертегілер елі'),
         leading: IconButton(
           onPressed: () {
             Navigator.pop(context);
           },
           icon: Icon(Icons.arrow_back_ios),
         ),
       ),
       // Use a FutureBuilder to display a loading spinner while waiting for the
       // VideoPlayerController to finish initializing.
       body: Column(
         children: [
           FutureBuilder(
             future: _initializeVideoPlayerFuture,
             builder: (context, snapshot) {
               if (snapshot.connectionState == ConnectionState.done) {
                 // If the VideoPlayerController has finished initialization, use
                 // the data it provides to limit the aspect ratio of the video.
                 return AspectRatio(
                   aspectRatio: _controller.value.aspectRatio,
                   // Use the VideoPlayer widget to display the video.
                   child: VideoPlayer(_controller),
                 );
               } else {
                 // If the VideoPlayerController is still initializing, show a
                 // loading spinner.
                 return Center(child: CircularProgressIndicator());
               }
             },
           ),
           SizedBox(
             height: 20,
           ),
           Text('Қысқаша мазмұны',style: TextStyle(fontSize: 20),),
           Container(padding: EdgeInsets.all(10),
             child: const Text('Әдеттегідей, ересектер балалармен бірге мультфильмдер көреді. Менің жағдайымда "Қошқар мен Теке" мультфильмін біз алты-жеті жыл бұрын жиенімізбен бірге тамашаладық. Мен оның жиеніне ғана емес, бізге де – ересектерге де ұнағаны есімде. Қызықты выгранные кірістіру, заманауи және түсінікті барлық әзіл жасады бұл мультфильм бірі сүйікті біздің отбасы. Біз оны барлық туыстары мен таныстарына жібердік. Тіпті сол кезде балалары жоқ адамдар да. Себебі көңілді мультфильм бәріне ұнады-жеңілдік пен қарапайымдылық сезілді.\n Ал бүгін youtube порталының ескертулер қойындысында мультфильмнің орыс тілінде шығуы туралы хабарламаны оқыдым. Мен оны басынан аяғына дейін қарадым. Сюжетті жатқа білсем де, аудармашылардың басты кейіпкерлердің өзіндік әзілдері мен әзілдерін қалай жеңгені қызықты болды, бірақ бұл бүкіл мультфильмнің негізі. Аударманың стилі мен көрсетілімі, сондай-ақ дауыстың өзі өте ұнады. Әрине, кемшіліктер болуы мүмкін, бірақ олар айтқандай, жақсылықтың ең жақсы жауы. Сондықтан мен қазір орыс екеніне қуаныштымын',style: TextStyle(fontSize: 15),)),
         ],
       ),
       floatingActionButton: FloatingActionButton(
         backgroundColor: Colors.green[200],
         onPressed: () {
           // Wrap the play or pause in a call to `setState`. This ensures the
           // correct icon is shown.
           setState(() {
             // If the video is playing, pause it.
             if (_controller.value.isPlaying) {
               _controller.pause();
             } else {
               // If the video is paused, play it.
               _controller.play();
             }
           });
         },
         // Display the correct icon depending on the state of the player.
         child: Icon(
             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
             color: Colors.white),
       ), // This trailing comma makes auto-formatting nicer for build methods.
     );
   }
 }