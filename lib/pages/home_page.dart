import 'package:ewalle/pages/user_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(EWalleHome());

class EWalleHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                RowStart(),
                AccountTextHome(),
                CardWidget(),
                SendMoney(),
                FabCardUser(),
                Services(),
                ServicesCards()
              ],
    ))));
  }
}


class EWalleStartWidgetHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        EWalleImage(),
        EWalleBoldText(),
        ImageDot4()
      ],
    );
  }

}

class ImageTextLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        EWalleImage(),
        EWalleBoldText(),
      ],
    );
  }
}

class ImageRightSettings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        EWalleImage(),
        EWalleBoldText(),
      ],
    );
  }
}

class ImageDot4Right extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ImageDot4()
      ],
    );
  }
}

class RowStart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ImageTextLeft(),
        ImageDot4Right()
      ],
    );
  }
}

class AccountTextHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        AccountText()
      ],
    );
  }

}

class CardHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        CardWidgetText(),
        FabCardImage()
      ],
    );
  }

}

class SendMoney extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        SendMoneyText(),
        ImageRight()
      ],
    );
  }

}

class CardsHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        FabCardImage(),
        ImageCard()
      ],
    );
  }

}

class Services extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ServicesText(),
        ImageSettingsRight()
      ],
    );
  }

}

class ServicesCards extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ImageCardServicesOne(),
        ImageCardServicesTwo()
      ],
    );
  }

}

class FabCardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        Fab(),
        CardUser()
      ],
    );
  }

}

class CardUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        ImageCard()
      ],
    );
  }

}

class Fab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      children: [
        FabExample()
      ],
    );
  }

}


class EWalleImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 35, left: 25),
            child: SizedBox(width: 50, height: 50, child: Image.asset("assets/images/image_logo.png"),
            )
    );
  }
}

class EWalleBoldText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 35, left: 23),
            child: const Text(
              'eWalle',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
            )
    );
  }
}

class AccountText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 40, left: 25),
            child: const Text(
              'Account Overview',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15.0),
            )
    );
  }
}

class CardWidgetText extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 30, left: 25),
        child: Center(
      child: Card(
        color: Theme.of(context).colorScheme.surfaceVariant,
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            debugPrint('Card tapped.');
          },

            child:
              const ListTile(
                title: Text('20,600', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26.0)),
                subtitle: Text('Current Balance', style: TextStyle(color: Colors.grey, fontSize: 11.0)),
          ),
        ),
      ),
    ));
  }
}

class CardWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 20.0,
        child: Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('20,600', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 26.0)),
                  Text('Current Balance', style: TextStyle(color: Colors.grey, fontSize: 11.0)),
                ],
              ),
              Container(
                child: FloatingActionButton(
                  onPressed: () {
      // Add your onPressed code here!
                },
                child: const Icon(Icons.add, color: Colors.black),
                  backgroundColor: Colors.amber,
             )
              )
            ],
          ),
        ),
    );
  }
}


class FabExample extends StatelessWidget {
  const FabExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.only(top: 0, left: 40),
        child: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add, color: Colors.black),
          backgroundColor: Colors.amber,
    ));
  }
}

class SendMoneyText extends StatelessWidget {
  const SendMoneyText({super.key});

  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 30, left: 25),
            child: const Text(
              'Send Money',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15.0),
            )
    );
  }
}

class ImageDot4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 30, left: 135),
            child: SizedBox(width: 50, height: 50, child: IconButton(
              icon: Image.asset('assets/images/dot_4.png'),
              iconSize: 50,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EWalleUser()),
                );
              },
            )
            )
    );
  }
}


class ImageRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 30, left: 190),
            child: SizedBox(width: 50, height: 50, child: IconButton(
              icon: Image.asset('assets/images/image.png'),
              iconSize: 50,
              onPressed: () {
              },
            )
            ));
  }
}

class ServicesText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
            padding: const EdgeInsets.only(top: 15, left: 25),
            child: const Text(
              'Services',
              style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 15.0),
            )
        );
  }
}

class SettingsRightImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
              padding: const EdgeInsets.only(top: 15, right: 40),
              child: ConstrainedBox(
                  constraints: BoxConstraints.expand(),
                  child: TextButton(
                      onPressed: null,
                      child: Image.asset("assets/images/dot_4.png")))
    );
  }
}

class FabCardImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(top: 25, left: 20),
        child: SizedBox(width: 100, height: 125, child: IconButton(
          icon: Image.asset('assets/images/test.png'),
          iconSize: 50,
          onPressed: () {
          },
        )
        ));
  }
}

class ImageCardServicesOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(top: 1, left: 5),
        child: SizedBox(width: 350, height: 125, child: IconButton(
          icon: Image.asset('assets/images/services.png'),
          onPressed: () {
          },
        )
        ));
  }
}

class ImageCardServicesTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(top: 0, left: 5),
        child: SizedBox(width: 350, height: 125, child: IconButton(
          icon: Image.asset('assets/images/services.png'),
          onPressed: () {
          },
        )
        ));
  }
}

class ImageSettingsRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Container(
        padding: const EdgeInsets.only(top: 30, left: 210),
        child: SizedBox(width: 50, height: 50, child: IconButton(
          icon: Image.asset('assets/images/settings.png'),
          onPressed: () {
          },
        )
        ));
  }
}


