import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:postest5_1915016110_maulana_yusuf/data/constant.dart';

class ChatandAddToCart extends StatefulWidget {
  const ChatandAddToCart({Key? key}) : super(key: key);

  @override
  State<ChatandAddToCart> createState() => _ChatandAddToCartState();
}

class _ChatandAddToCartState extends State<ChatandAddToCart> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(kDefaultPadding),
      padding: EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
        vertical: kDefaultPadding / 2,
      ),
      decoration: BoxDecoration(
          color: kBlueColor, borderRadius: BorderRadius.circular(30)),
      child: Row(
        children: [
          SvgPicture.asset("assets/icons/chat.svg"),
          SizedBox(width: kDefaultPadding / 2),
          Text(
            "Chat",
            style: TextStyle(color: Colors.white),
          ),
          Spacer(),
          ElevatedButton.icon(
              style: ElevatedButton.styleFrom(primary: kBlueColor),
              onPressed: () {
                setState(() {
                  CoolAlert.show(
                    context: context,
                    type: CoolAlertType.success,
                    title: "Berhasil",
                    text: "Barang berhasil dimasukkan ke Keranjang",
                    confirmBtnText: 'Submit',
                  );
                });
              },
              icon: SvgPicture.asset("assets/icons/shopping-bag.svg"),
              label: Text(
                "Add to Cart",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
