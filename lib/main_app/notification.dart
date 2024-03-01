import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class notificationPage extends StatefulWidget {
  const notificationPage({super.key});

  @override
  State<notificationPage> createState() => _notificationPageState();
}

class _notificationPageState extends State<notificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: AppBar(
                toolbarHeight: 100,
                leading: Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: IconButton(
                    icon:
                        SvgPicture.asset('assets/icons/arrow-square-left.svg'),
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                  ),
                ),
                title: const Padding(
                  padding: EdgeInsets.only(top: 25.0),
                  child: Text(
                    'Notification',
                    style: TextStyle(
                      color: Color(0xffA7A7A7),
                    ),
                  ),
                )),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.1,
          ),
          const Icon(Icons.notifications_none, color: Color(0xffA7A7A7),size: 100.0 ,),
          const Text('You have no notification', style: TextStyle(
            color: Color(0xff3A3A3A),
            fontSize: 16,
            fontWeight: FontWeight.w600
          ),)
        ],
      ),
    );
  }
}
