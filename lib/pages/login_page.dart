import 'package:ewalle/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(EWalleLogin());

class EWalleLogin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
          child: Container(
              child: Row(
                children: [
                  ImageLeft(),
                  ContRight()
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
      width: 125,
      height: 800,
      padding: const EdgeInsets.only(top: 0, left: 0),
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

        BottomWidget()
      ],
    );
  }

}

class DateTimeCloudRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
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
        CloudRow(),
        TimeRow()
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


class DateTimeCloud extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DateTimeText(),
        CenterWidget(),
        BottomWidget()
      ],
    );
  }

}

class DateTimeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        DateTimeCloud(),
        TopDateText()
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
      children: [
        AccountT(),
        AccountB()
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
      width: 20,
      height: 20,
      padding: const EdgeInsets.only(top: 30, left: 20),
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
      padding: const EdgeInsets.only(top: 5, left: 20),
      child: const Text(
        'eWalle',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26.0),
      ),
    );
  }
}

class CenterGrayText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Text(
        'Open An Account For Digital '
            'E-Wallet Solutions. Instant '
            'Payouts. ',
        style: TextStyle(color: Colors.grey, fontSize: 22.0),
      ),
    );
  }
}

class CenterGrayTextJoin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 30, left: 30),
      child: const Text(
            'Join For Free.',
        style: TextStyle(color: Colors.grey, fontSize: 22.0),
      ),
    );
  }
}

class CloudImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Container(
        width: 25,
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
      child: const Text(
        '06:20 PM',
        style: TextStyle(fontSize: 20.0),
      ),
    );
  }
}

class TopDateText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text(
        'Nov.10.2020 | Wednesday',
        style: TextStyle(color: Colors.grey, fontSize: 12.0),
      ),
    );
  }
}

class TopWeatherText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      padding: const EdgeInsets.only(bottom: 40, left: 200),
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
      padding: const EdgeInsets.only(top: 650, left: 175),
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
                const TextStyle(color: Colors.black, fontSize: 20))),
        child: const Text('Sign in ->'),
      ),
    );
  }
}




