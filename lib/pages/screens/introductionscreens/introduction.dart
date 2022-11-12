import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:scoring_app/pages/homepage.dart';
import 'package:scoring_app/pages/screens/introductionscreens/screens/screen1.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IntroductionScreen extends StatefulWidget {
  const IntroductionScreen({super.key});

  @override
  State<IntroductionScreen> createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  final PageController pagecontroller = PageController();

  int current_page_index = 0;

  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      height: double.infinity,
      width: double.infinity,
      child: Stack(
        children: [
          PageView(
              controller: pagecontroller,
              onPageChanged: (value) {
                setState(() {
                  current_page_index = value;
                });
              },
              children: const [
                Screen(
                    heading: "Is Covid still around or gone?",
                    subheading: "NO ONE KNOWS",
                    mainlottie: "assets/lottie/mask.json",
                    backgroundlottie:
                        "assets/lottie/26731-circles-being-shaped.json",
                    message:
                        "We've never been in a better place to end the Covid-19 pandemic, but only if all countries, manufacturers, communities and individuals step up and seize this opportunity. Otherwise, we run the risk of more variants, more deaths, disruption and uncertainty. Let's finish the job!"),
                Screen(
                    heading: "Covid is not like any other virus~!",
                    subheading: "ITS FAR MORE DANGEROUS.",
                    mainlottie: "assets/lottie/21378-3d-covid-19.json",
                    backgroundlottie:
                        "assets/lottie/46062-syncromind-shape-2.json",
                    message:
                        "Dr. Cowl says that SARS-CoV-2 is likely more contagious than the viruses that cause influenza and common cold because it is new to humans. Humans have no way to prepare for it, and their immune systems are not ready to fight it. This results in the virus causing more cellular damage and producing more inflammatory cells."),
                Screen(
                    heading: "When will the COVID-19 pandemic end?",
                    subheading: "NO ONE KNOWS",
                    mainlottie:
                        "assets/lottie/35647-covid-19-attack-to-world-wide.json",
                    backgroundlottie: "",
                    message: ""),
                Screen(
                    heading: "Till than what we can do?",
                    subheading: "Be Safe from the virus",
                    mainlottie:
                        "assets/lottie/92187-healthy-food-courier-fight-againts-covid-viruses.json",
                    backgroundlottie: "assets/lottie/83584-shape.json",
                    message:
                        "The COVID-19 pandemic has been a part of our daily lives since March 2020, but with about 151,000 new cases a day in the United States, it remains as important as ever to stay vigilant and know how to protect yourself from coronavirus."),
                Screen(
                    heading: "Get your vaccination dose",
                    subheading: "Be a Covidhero",
                    mainlottie: "assets/lottie/62228-covid-vaccination.json",
                    backgroundlottie: "",
                    message:
                        "WHO is determined to maintain the momentum for increasing access to COVID-19 vaccines and will continue to support countries in accelerating vaccine delivery, to save lives and prevent people from becoming seriously ill."),
                Screen(
                    heading: "How this app will be helpful",
                    subheading: "One app many solutions.",
                    mainlottie: "assets/lottie/24042-covid-chat.json",
                    backgroundlottie:
                        "assets/lottie/126066-red-circle-animation.json",
                    message:
                        "Covid Info is a app created to notify you with important  information regarding covid cases, precautions, new cases, new varients, news and how to take care of yourself when you get the Covid-19 virus. In future, other features like chatting with doctors, Live tracking of covid patients and cases around your area will be added. Lets defeat covid together."),
                Screen(
                    heading: "Get right advices from experienced doctors",
                    subheading: "Save you and your loved ones",
                    mainlottie: "assets/lottie/72925-covid-man.json",
                    backgroundlottie:
                        "assets/lottie/92082-three-commashaped-figures-in-a-circle.json",
                    message:
                        "WHO is determined to maintain the momentum for increasing access to COVID-19 vaccines and will continue to support countries in accelerating vaccine delivery, to save lives and prevent people from becoming seriously ill."),
                Screen(
                    heading: "Get your vaccination dose",
                    subheading: "Be a Covidhero",
                    mainlottie:
                        "assets/lottie/60080-sanitiser-kills-corona-covid-precaution.json",
                    backgroundlottie: "",
                    message:
                        "WHO is determined to maintain the momentum for increasing access to COVID-19 vaccines and will continue to support countries in accelerating vaccine delivery, to save lives and prevent people from becoming seriously ill.")
              ]),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05,
                vertical: MediaQuery.of(context).size.height * 0.02),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          pagecontroller.jumpToPage(8);
                        },
                        child: Text(
                          "Skip",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      SmoothPageIndicator(
                        controller: pagecontroller,
                        count: 8,
                        effect: ExpandingDotsEffect(
                            activeDotColor: Theme.of(context).indicatorColor),
                      ),
                      GestureDetector(
                        onTap: () {
                          pagecontroller.nextPage(
                              duration: const Duration(seconds: 1),
                              curve: Curves.easeIn);
                        },
                        child: Text(
                          "Next",
                          style: TextStyle(
                              fontSize:
                                  MediaQuery.of(context).size.width * 0.05,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                current_page_index == 7
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: GestureDetector(
                          onTap: () {
                            Get.to(() => Homepage());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 0.06,
                            // margin: EdgeInsets.symmetric(
                            //     horizontal: MediaQuery.of(context).size.width * 0.03),
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.pink,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              "Get started",
                              style: TextStyle(
                                  color: Theme.of(context).brightness ==
                                          Brightness.dark
                                      ? Colors.white
                                      : Colors.black,
                                  fontSize:
                                      MediaQuery.of(context).size.width * 0.05,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
