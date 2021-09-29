import 'package:bhagavad_gita/Constant/app_colors.dart';
import 'package:bhagavad_gita/Constant/app_size_config.dart';
import 'package:bhagavad_gita/Constant/string_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AboutGitaScreen extends StatefulWidget {
  @override
  _AboutGitaScreenState createState() => _AboutGitaScreenState();
}

class _AboutGitaScreenState extends State<AboutGitaScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage('assets/images/image_aboutGita.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height / 2.7,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(
                            'assets/images/black_imageAboutGita.png'),
                        fit: BoxFit.cover),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height / kPadding * 2.7,
                  left: kDefaultPadding,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          StringConstant.strAbout(),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 28, color: whiteColor),
                        ),
                        Text(
                          StringConstant.strGita(),
                          textAlign: TextAlign.justify,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 28, color: orangeColor),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(kDefaultPadding * 2),
                          child: SvgPicture.asset(
                            'assets/icons/icon_quote_AboutGita.svg',
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      top: kDefaultPadding * 2.7,
                      left: 0,
                      right: 0,
                      child: Container(
                        child: Text(
                          StringConstant.strUnlikeModernWriting(),
                          textAlign: TextAlign.center,
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 18, color: orangeColor),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                children: [
                  RichText(
                    textAlign: TextAlign.left,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: StringConstant.strBhagvadGita(),
                          style: Theme.of(context)
                              .textTheme
                              .headline1!
                              .copyWith(fontSize: 16, color: blackColor),
                        ),
                        TextSpan(
                            text:
                                StringConstant.strGitaStory(),
                            style: Theme.of(context).textTheme.subtitle1)
                      ],
                    ),
                  ),
                  SizedBox(height: kDefaultPadding * 1.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/icons/icon_left_rtansection.svg"),
                      SizedBox(width: kDefaultPadding),
                      Text(
                        StringConstant.strStory(),
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: kDefaultPadding),
                      SvgPicture.asset(
                          "assets/icons/icon_right_translation.svg")
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                      StringConstant.strGitaStoryDetail(),
                      style: Theme.of(context).textTheme.subtitle1),
                  SizedBox(height: kDefaultPadding * 1.5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                          "assets/icons/icon_left_rtansection.svg"),
                      SizedBox(width: kDefaultPadding),
                      Text(
                        StringConstant.strConclusion(),
                        style: Theme.of(context).textTheme.subtitle1!.copyWith(
                            fontSize: 14, fontWeight: FontWeight.w600),
                      ),
                      SizedBox(width: kDefaultPadding),
                      SvgPicture.asset(
                          "assets/icons/icon_right_translation.svg")
                    ],
                  ),
                  SizedBox(height: kDefaultPadding),
                  Text(
                    StringConstant.strConclusionDetail(),
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  SizedBox(height: kDefaultPadding),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
