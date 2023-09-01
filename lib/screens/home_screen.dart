import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: size.height * 0.3,
            decoration: const BoxDecoration(
              image: DecorationImage(
                alignment: Alignment.topCenter,
                image: AssetImage('assets/images/top_header.png'),
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  Container(
                    height: 64,
                    margin: const EdgeInsets.only(bottom: 20),
                    child: const Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage: NetworkImage(
                              'https://static.vecteezy.com/system/resources/previews/019/896/008/original/male-user-avatar-icon-in-flat-design-style-person-signs-illustration-png.png'),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Jose Perez',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Medium',
                                    color: Colors.white,
                                    fontSize: 20)),
                            Text('7470622045',
                                style: TextStyle(
                                    fontFamily: 'Montserrat Regular',
                                    color: Colors.white,
                                    fontSize: 14))
                          ],
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: GridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      primary: false,
                      children: const [
                        _Card(
                          label: 'Personal Data',
                          icon: 'assets/svg/student.svg',
                        ),
                        _Card(
                          label: 'Course Schedule',
                          icon: 'assets/svg/schedule.svg',
                        ),
                        _Card(
                          label: 'Attendance Recap',
                          icon: 'assets/svg/attendance.svg',
                        ),
                        _Card(
                          label: 'Study result',
                          icon: 'assets/svg/test.svg',
                        ),
                        _Card(
                          label: 'Course Booking',
                          icon: 'assets/svg/books.svg',
                        ),
                        _Card(
                          label: 'Course Plan',
                          icon: 'assets/svg/book.svg',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({
    required this.label,
    required this.icon,
  });

  final String label;
  final String icon;

  @override
  Widget build(BuildContext context) {
    var cardTextStyle = const TextStyle(
      fontFamily: 'Montserrat Regular',
      fontSize: 14,
      color: Color.fromRGBO(63, 63, 63, 1),
    );

    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            icon,
            height: 128,
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            label,
            style: cardTextStyle,
          ),
        ],
      ),
    );
  }
}
