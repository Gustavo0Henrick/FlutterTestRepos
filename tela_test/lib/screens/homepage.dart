import 'package:flutter/material.dart';
import 'package:tela_test/core/color.dart';

import 'package:tela_test/core/components/custom_body.dart';
import 'package:tela_test/core/routes.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool obscure = true;
  bool _value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.deep_skyblue,
        title: Center(child: Text('Demo')),
        elevation: 0,
      ),
      backgroundColor: AppColors.deep_skyblue,
      body: CustomBody(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 70),
                  child: Text(
                    'Login',
                    style: TextStyle(
                        color: AppColors.white,
                        fontSize: 50,
                        fontWeight: FontWeight.w700),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, top: 60),
                child: Text(
                  'Email',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 50),
                child: Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 2),
                    child: TextFormField(
                      cursorColor: AppColors.deep_skyblue,
                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 50, top: 35),
                child: Text(
                  'Senha',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                    color: AppColors.white,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15, left: 50),
                child: Container(
                  height: 30,
                  width: 300,
                  decoration: BoxDecoration(
                    color: AppColors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(left: 10, bottom: 2),
                    child: TextFormField(
                      cursorColor: AppColors.deep_skyblue,
                      obscureText: obscure,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              obscure = !obscure;
                            });
                          },
                          child: obscure
                              ? Icon(
                                  Icons.visibility,
                                  color: AppColors.deep_skyblue,
                                )
                              : Icon(
                                  Icons.visibility_off,
                                  color: AppColors.deep_skyblue,
                                ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Checkbox(
                      onChanged: (bool newValue) {
                        setState(() {
                          _value = !_value;
                        });
                      },
                      activeColor: AppColors.white,
                      value: _value,
                      checkColor: AppColors.deep_skyblue,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    child: Text(
                      'Lembrar de mim',
                      style: TextStyle(
                          color: AppColors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 25),
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: AppColors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Entrar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.deep_skyblue,
                      ),
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 10),
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      side: BorderSide(color: AppColors.white),
                      primary: AppColors.deep_skyblue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    onPressed: () {
                      setState(() {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => AppRoutes.cadastro));
                      });
                    },
                    child: Text(
                      'Cadastrar',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
