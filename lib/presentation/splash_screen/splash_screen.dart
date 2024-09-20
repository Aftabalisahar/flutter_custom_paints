import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double blur = 0         ;
    final size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      // backgroundColor: Colors.blue,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 80),
            Center(
              child: Container(
                color: Colors.black,
                child: CustomPaint(
                  size: const Size(200, 200),
                  painter: RPainter(),
                ),
              ),
            ),
            const Spacer(),
            Center(
              child: Container(
                color: Colors.red.shade100.withOpacity(0.2),
                child: CustomPaint(
                  size: Size(size.width - 30, 80),
                  painter: MyPainter(),
                ),
              ),
            ),
            const SizedBox(height: 80),
            Center(
              child: Container(
                color: Colors.red.shade100.withOpacity(0.2),
                child: CustomPaint(
                  size: Size(size.width - 30, 80),
                  painter: MyFirstPainter(),
                ),
              ),
            ),
          ]),
      // body: SizedBox(
      //     height: double.infinity,
      //     width: double.infinity,
      //     child: Stack(children: [
      //       Image.asset("assets/bg3.png",
      //           height: double.infinity,
      //           width: double.infinity,
      //           fit: BoxFit.fill),
      //       // SvgPicture.asset("assets/bg.svg",height: double.infinity,width: double.infinity,fit: BoxFit.cover),
      //       BackdropFilter(
      //         filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
      //         child: Column(
      //           crossAxisAlignment: CrossAxisAlignment.center,
      //           mainAxisAlignment: MainAxisAlignment.center,
      //           children: [
      //             Container(
      //               padding: const EdgeInsets.all(20),
      //               color: Colors.white10,
      //               child: const Text("Glass Morphism",
      //                   style: TextStyle(color: Colors.blue)),
      //             )
      //           ],
      //         ),
      //       ),
      //     ]))),
    ));
  }
}



class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double partOfSize = size.width / 4;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black
      ..strokeWidth = 1;

    Path path = Path()..moveTo(0, 80);
    // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);

    path.lineTo(0, size.height / 4);

    path.quadraticBezierTo(partOfSize * 0.01, 0, partOfSize / 2, 0);

    path.lineTo((partOfSize / 2) * 1.8, 2.8);

    path.quadraticBezierTo(
        partOfSize * 1.2, 8, partOfSize * 1.5, size.height / 2.5);

    path.quadraticBezierTo(
        partOfSize * 2, size.height * 0.8, partOfSize * 2.5, size.height / 2.5);

    path.quadraticBezierTo(
        partOfSize * 3, size.height * 0.01, partOfSize * 3.2, 0);

    path.lineTo(partOfSize * 3.73, 0);

    path.quadraticBezierTo(
        size.width / 1.00, size.height * 0.01, size.width, size.height / 4);

    path.lineTo(size.width, size.height);

    // path.quadraticBezierTo(0,0,(partOfSize / 2),0);
    // path.quadraticBezierTo(
    //     partOfSize / 0.70, 0, (partOfSize / 2) * 3.7, size.height / 1.98);

    // path.quadraticBezierTo(partOfSize * 1.95, size.height / 1.68,
    //     (partOfSize / 2) * 4.08, size.height / 2.0);
    //
    //
    // path.quadraticBezierTo(partOfSize / 0.40, 0, partOfSize * 3, 0);
    //
    // path.lineTo((partOfSize / 2) * 7.5, 0);
    //
    // path.quadraticBezierTo(size.width,3,size.width,size.height / 6);
    //
    // path.lineTo(size.width, size.height);
    // // path.quadraticBezierTo(partOfSize * 4.5, 0, partOfSize * 3.9, 0);
    // // path.lineTo(0, size.height / 6);
    // // path.lineTo((partOfSize / 2) * 7.95, 0);
    // // path.lineTo(size.width, 0);
    // path.close();

    // path.quadraticBezierTo(partOfSize / 0.4, size.height / 5, partOfSize / 0.5, size.height / 2);

    // path.close();
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }
}

class MyFirstPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double partOfSize = size.width / 4;

    Paint paint = Paint()
      ..style = PaintingStyle.fill
      ..color = Colors.black
      ..strokeWidth = 1;

    Path path = Path()..moveTo(0, 80);
    // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);

    path.lineTo(0, size.height / 6);

    path.quadraticBezierTo(partOfSize * 0.002, 0, partOfSize / 2, 0);

    path.lineTo((partOfSize / 2) * 1.6, 0);

    path.quadraticBezierTo(
        partOfSize / 0.70, 0, (partOfSize / 2) * 3.7, size.height / 1.98);

    path.quadraticBezierTo(partOfSize * 1.95, size.height / 1.68,
        (partOfSize / 2) * 4.08, size.height / 2.0);

    path.quadraticBezierTo(partOfSize / 0.40, 0, partOfSize * 3, 0);

    path.lineTo((partOfSize / 2) * 7.5, 0);

    path.quadraticBezierTo(size.width, 3, size.width, size.height / 6);

    path.lineTo(size.width, size.height);
    // path.quadraticBezierTo(partOfSize * 4.5, 0, partOfSize * 3.9, 0);
    // path.lineTo(0, size.height / 6);
    // path.lineTo((partOfSize / 2) * 7.95, 0);
    // path.lineTo(size.width, 0);
    path.close();

    // path.quadraticBezierTo(partOfSize / 0.4, size.height / 5, partOfSize / 0.5, size.height / 2);

    // path.close();
    canvas.drawPath(path, paint);
    // TODO: implement paint
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}

class RPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.fill
    ..shader = ui.Gradient.linear(Offset.zero, Offset(size.width * 0.3, size.height * 0.3), [
      Colors.blue,
      Colors.yellow
    ]);

    Path path = Path()..moveTo(20, 20);

    path.arcToPoint(
      Offset(size.width * 0.1, size.height * 0.3),
      radius: const Radius.circular(9),
    );
    //
    path.lineTo(size.width * 0.2, size.height * 0.44);
    //
    path.lineTo(size.width * 0.15, size.height * 0.44);
    //
    path.lineTo(size.width * 0.05, size.height * 0.3);
    //
    path.lineTo(size.width * 0.05, size.height * 0.45);
    //
    path.lineTo(size.width * 0.02, size.height * 0.45);
    //
    path.lineTo(size.width * 0.02, size.height * 0.25);
    //
    path.lineTo(size.width * 0.1, size.height * 0.25);
    //
    path.arcToPoint(
      Offset(size.width * 0.1, size.height * 0.15),
      radius: const Radius.circular(9),
      clockwise: false
    );
    //
    path.lineTo(size.width * 0.02, size.height * 0.15);
    //
    path.lineTo(size.width * 0.02, 20);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return false;
  }
}
