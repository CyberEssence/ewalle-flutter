import 'package:ewalle/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(EWalleLogin());

class EWalleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: App());
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  height: 800,
                  width: 155,
                  child: Image(
                    fit: BoxFit.fitHeight,
                    image: AssetImage("assets/images/image_left_side.png"),
                  ),
                )
              ],
            ),
            Flexible(
              child: Column(
                children: [
                  ContRight()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginScreenLeftImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Image(

        fit: BoxFit.cover,
        image: AssetImage("assets/images/image_left_side.png"),
      ),
    );
  }
}

class ImageLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        LoginScreenLeftImage()
      ],
    );
  }

}

class ContRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DateTimeCloudRow(),
        CenterWidget(),
        BottomWidget()
      ],
    );
  }

}

class DateTimeCloudRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        TimeCloudRow(),
        DateRow()
      ],
    );
  }

}

class DateRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        TopDateText()
      ],
    );
  }

}

class TimeCloudRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        TimeRow(),
        CloudRow(),
      ],
    );
  }

}

class TimeRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        TopTimeText()
      ],
    );
  }

}

class CloudRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CloudImage(),
        TopWeatherText()
      ],
    );
  }

}

class CenterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        CenterImageCont(),
        CenterBoldTextCont(),
        CenterGrayTextCont(),
        CenterGrayTextJoinCont()
      ],
    );
  }

}

class BottomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        AccountB(),
        AccountT()
      ],
    );
  }

}

class AccountT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CreateAccountText()
      ],
    );
  }

}

class AccountB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CreateAccountTextButton(),
      ],
    );
  }

}

class CenterImageCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CenterImage(),
      ],
    );
  }

}

class CenterBoldTextCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CenterBoldText(),
      ],
    );
  }

}

class CenterGrayTextCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CenterGrayText()
      ],
    );
  }

}

class CenterGrayTextJoinCont extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CenterGrayTextJoin()
      ],
    );
  }

}




class CenterImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 60,
      height: 40,
      padding: const EdgeInsets.only(top: 1, left: 1),
      child: const SizedBox(
        child: Image(
          image: AssetImage("assets/images/image_logo.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class CenterBoldText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 5),
      child: const Text(
        'eWalle',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
      ),
    );
  }
}

class CenterGrayText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 1, left: 1),
      child: const Text(
        'Open An Account For Digital \n'
            'E-Wallet Solutions. Instant \n'
            'Payouts. ',
        style: TextStyle(color: Colors.grey, fontSize: 17.0),
      ),
    );
  }
}

class CenterGrayTextJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 20, bottom: 100),
      child: const Text(
        'Join For Free.',
        style: TextStyle(color: Colors.grey, fontSize: 17.0),
      ),
    );
  }
}

class CloudImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5,  top: 5),
      child: Container(
        width: 40,
        height: 25,
        child: const Image(
          image: AssetImage("assets/images/ic_cloud_login.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}

class TopTimeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 10, left: 5),
      child: const Text(
        '06:20 PM',
        style: TextStyle(fontSize: 18.0),
      ),
    );
  }
}

class TopDateText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 170, left: 1),
      child: const Text(
        'Nov.10.2020 | Wednesday',
        style: TextStyle(color: Colors.grey, fontSize: 14.0),
      ),
    );
  }
}

class TopWeatherText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 5),
      child: const Text(
        '34 C',
        style: TextStyle(fontSize: 12.0),
      ),
    );
  }
}

class CreateAccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 40, left: 28),
      child: const Text(
        'Create An Account',
        style: TextStyle(fontSize: 16.0),
      ),
    );
  }
}

class CreateAccountTextButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 225,
      height: 60,
      padding: const EdgeInsets.only(top: 20, right: 40),
      child: ElevatedButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => EWalleHome()),
          );
        },
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.amber),
            textStyle: MaterialStateProperty.all(
                const TextStyle(color: Colors.black, fontSize: 20)),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)
      )
    )),
        child: const Text("Sign in ->",
          style: TextStyle(
            color: Color(0xff1E0B11),
          ),
        ),

      ),
    );
  }
}

