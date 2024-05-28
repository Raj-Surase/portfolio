import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/components/button.dart';
import 'package:portfolio/styles/apptheme.dart';
import 'package:portfolio/styles/icons.dart';
import 'package:portfolio/styles/links.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portfolio',
      home: PortfolioScreen(),
    );
  }
}

class PortfolioScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.backgroundColor,
      // appBar: AppBar(
      //   backgroundColor: AppTheme.backgroundColor,
      //   surfaceTintColor: Color.fromARGB(255, 197, 197, 197),
      //   actions: [
      //     IconButton(
      //       icon: Image.asset('assets/twitter.png'),
      //       onPressed: () => launch('https://x.com/raj-surase'),
      //     ),
      //     IconButton(
      //       icon: Image.asset('assets/linkedin.png'),
      //       onPressed: () => launch('https://linkedin.com/raj-surase'),
      //     ),
      //     IconButton(
      //       icon: Image.asset('assets/github.png'),
      //       onPressed: () => launch('https://github.com/raj-surase'),
      //     ),
      //     IconButton(
      //       icon: Image.asset('assets/gmail.png'),
      //       onPressed: () => launch('mailto:rajsurase3@gmail.com'),
      //     ),
      //     IconButton(
      //       icon: Icon(Icons.picture_as_pdf),
      //       onPressed: () => launch('https://your-resume-link.com'),
      //     ),
      //   ],
      // ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppTheme.isLargeScreen(context)
              ? EdgeInsets.fromLTRB(
                  AppTheme.screenWidth(context) * 0.1,
                  AppTheme.screenHeight(context) * 0.1,
                  AppTheme.screenWidth(context) * 0.1,
                  AppTheme.screenHeight(context) * 0.1,
                )
              : EdgeInsets.fromLTRB(
                  AppTheme.screenWidth(context) * 0.1,
                  AppTheme.screenHeight(context) * 0.1,
                  AppTheme.screenWidth(context) * 0.1,
                  AppTheme.screenHeight(context) * 0.1,
                ),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Section1(),
              AppTheme.isLargeScreen(context)
                  ? SizedBox(
                      height: AppTheme.screenHeight(context) * 0.2,
                    )
                  : SizedBox(
                      height: AppTheme.screenHeight(context) * 0.1,
                    ),
              Section2(),
              SizedBox(height: 32),
              SizedBox(
                height: AppTheme.screenHeight(context) * 0.7,
                child: Section3(),
              ),
              SizedBox(height: 32),
              SizedBox(
                height: AppTheme.screenHeight(context) * 0.7,
                child: Section4(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Section1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isLargeScreen = constraints.maxWidth > 600;
        return isLargeScreen
            ? Column(
                children: [
                  // SizedBox(
                  //   height: AppTheme.screenHeight(context) * 0.2,
                  // ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: AppTheme.screenWidth(context) * 0.3,
                        child: _buildTextContent(context),
                      ),
                      // SizedBox(width: 16),
                      Container(
                        height: AppTheme.screenHeight(context) * 0.4,
                        width: AppTheme.screenWidth(context) * 0.4,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          image: DecorationImage(
                              image: AssetImage('assets/profile.jpg')),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            : Column(
                children: [
                  _buildTextContent(context),
                  SizedBox(height: 60),
                  Container(
                    height: AppTheme.screenHeight(context) * 0.4,
                    width: AppTheme.screenWidth(context) * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage('assets/profile.jpg')),
                    ),
                  ),
                ],
              );
      },
    );
  }

  Widget _buildTextContent(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('HEY THERE!', style: AppTheme.headline3),
        SizedBox(height: 8),
        Text('I\'m Raj Surase', style: AppTheme.headline1),
        SizedBox(height: 16),
        Text(
          'A Flutter Developer with a passion for innovation and a drive to explore new technologies. Always eager to push the boundaries of creativity and functionality!',
          style: AppTheme.bodyText1,
        ),
        SizedBox(height: 16),
        Row(
          children: [
            SocialButton(icon: AssetIcons.x, link: AssetLinks.x),
            SocialButton(icon: AssetIcons.linkedin, link: AssetLinks.linkedin),
            SocialButton(icon: AssetIcons.github, link: AssetLinks.github),
            SocialButton(icon: AssetIcons.gmail, link: AssetLinks.gmail),
            SocialButton(icon: AssetIcons.resume, link: AssetLinks.resume),
          ],
        ),
      ],
    );
  }

  // void _showSocialMediaDialog(BuildContext context) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(16),
  //         ),
  //         content: Column(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             ListTile(
  //               leading: Icon(Icons.account_circle),
  //               title: Text('X'),
  //               onTap: () => launch('https://x.com'),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.linked_camera),
  //               title: Text('LinkedIn'),
  //               onTap: () => launch('https://linkedin.com'),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.code),
  //               title: Text('GitHub'),
  //               onTap: () => launch('https://github.com'),
  //             ),
  //             ListTile(
  //               leading: Icon(Icons.email),
  //               title: Text('Email'),
  //               onTap: () => launch('mailto:yourmail@example.com'),
  //             ),
  //           ],
  //         ),
  //       );
  //     },
  //   );
  // }
}

class Section2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text('My Career', style: AppTheme.headline1),
        SizedBox(height: 16),
        SizedBox(
          width: AppTheme.isLargeScreen(context)
              ? AppTheme.screenWidth(context) * 0.4
              : AppTheme.screenWidth(context) * 0.8,
          child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur et dolor eget massa suscipit suscipit.',
            style: AppTheme.bodyText1,
          ),
        ),
        SizedBox(height: 30),
        Row(
          children: [
            LayoutBuilder(
              builder: (context, constraints) {
                bool isLargeScreen = constraints.maxWidth > 600;
                return isLargeScreen
                    ? Column(
                        children: _buildCareerItems(context),
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: _buildCareerItems(context),
                      );
              },
            ),
          ],
        ),
      ],
    );
  }

  List<Widget> _buildCareerItems(BuildContext context) {
    final List<String> items = [
      'Android',
      'Web',
      'Front-End',
      'Back-End',
      'Database'
    ];
    return items
        .map((item) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item, style: AppTheme.bodyText1),
            ))
        .toList();
  }
}

class Section3 extends StatelessWidget {
  final List<String> projectImages = [
    'https://dummyimage.com/300.png/09f/fff',
    'https://dummyimage.com/300.png/09f/fff',
    'https://dummyimage.com/300.png/09f/fff',
    'https://dummyimage.com/300.png/09f/fff',
    'https://dummyimage.com/300.png/09f/fff',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Projects', style: AppTheme.headline1),
        SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            int crossAxisCount = constraints.maxWidth > 600 ? 3 : 1;
            double gridHeight = constraints.maxWidth > 600 ? 600 : 1000;
            return SizedBox(
              height: gridHeight,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1,
                ),
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: projectImages.length,
                itemBuilder: (context, index) {
                  return _projectItem(projectImages[index]);
                },
              ),
            );
          },
        ),
      ],
    );
  }

  Widget _projectItem(String imageUrl) {
    return Stack(
      children: [
        Image.network(imageUrl, fit: BoxFit.cover),
        Positioned.fill(
          child: Container(
            color: Colors.black.withOpacity(0.6),
            child: Center(
              child: IconButton(
                icon: Icon(Icons.code, color: Color(0xFF9AA9E6)),
                onPressed: () => launch('https://github.com/yourrepo'),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Section4 extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _subjectController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Contact', style: AppTheme.headline1),
        SizedBox(height: 16),
        LayoutBuilder(
          builder: (context, constraints) {
            bool isLargeScreen = constraints.maxWidth > 600;
            return Column(
              children: [
                isLargeScreen
                    ? Row(
                        children: [
                          Expanded(
                              child: _buildTextField(
                                  _emailController, 'Email', context)),
                          SizedBox(width: 16),
                          Expanded(
                              child: _buildTextField(
                                  _subjectController, 'Subject', context)),
                        ],
                      )
                    : Column(
                        children: [
                          _buildTextField(_emailController, 'Email', context),
                          SizedBox(height: 16),
                          _buildTextField(
                              _subjectController, 'Subject', context),
                        ],
                      ),
                SizedBox(height: 16),
                _buildTextField(_bodyController, 'Body', context, maxLines: 10),
                SizedBox(height: 16),
                ElevatedButton(
                    onPressed: () => _sendEmail(),
                    child: Text('Submit'),
                    style: ButtonStyle(
                        backgroundColor:
                            WidgetStatePropertyAll(AppTheme.backgroundColor))),
              ],
            );
          },
        ),
      ],
    );
  }

  Widget _buildTextField(
      TextEditingController controller, String label, BuildContext context,
      {int maxLines = 1}) {
    return TextField(
      controller: controller,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: Color(0xFF8F8F8F)),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      style: TextStyle(color: Colors.black),
    );
  }

  void _sendEmail() {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: _emailController.text,
      query: 'subject=${_subjectController.text}&body=${_bodyController.text}',
    );
    launch(emailLaunchUri.toString());
  }
}
