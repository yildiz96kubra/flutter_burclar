import 'package:flutter/material.dart';
import 'package:flutter_burclar/model/burc.dart';
import 'package:flutter_burclar/burc_detay.dart';
import 'package:flutter_burclar/model/burc_detay.dart';

class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listelenenBurc),
                ),
              );
            },
            leading: Image.asset(
              "images/" + listelenenBurc.burcKucukResim,
            ),
            title: Text(
              listelenenBurc.burcAdi,
            ),
            subtitle: Text(
              listelenenBurc.burcTarihi,
            ),
            trailing: const Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
