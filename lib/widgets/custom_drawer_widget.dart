import 'package:flutter/material.dart';
import 'package:projeto_mini_ifood/pages/home_page.dart';
import 'package:projeto_mini_ifood/theme/colors_theme.dart';

class CustomDrawerWidget extends StatefulWidget {
  const CustomDrawerWidget({super.key});

  @override
  State<CustomDrawerWidget> createState() => _CustomDrawerWidgetState();
}

class _CustomDrawerWidgetState extends State<CustomDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 3,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: AppColorsTheme.secondaryColor),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.fastfood, color: AppColorsTheme.primaryColor),
              ),
              accountName: Text(""),
              accountEmail: Text(""),
            ),
          ),
          InkWell(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              width: double.infinity,
              child: Row(
                children: [
                  Icon(Icons.exit_to_app_outlined),
                  SizedBox(width: 12),
                  Text("Voltar ao início", style: TextStyle(fontSize: 16)),
                ],
              ),
            ),
            onTap: () {
              showDialog(
                context: context,
                builder: (BuildContext bc) {
                  return AlertDialog(
                    title: Text("Deseja voltar a tela inicial?"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("Não"),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (_) => HomePage()),
                            (route) => false,
                          );
                        },
                        child: Text("Sim"),
                      ),
                    ],
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
