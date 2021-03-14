import 'package:flutter/material.dart';
import 'package:tela_test/core/color.dart';
import 'package:tela_test/core/components/custom_body.dart';
import 'package:tela_test/core/routes.dart';

class Cadastro extends StatefulWidget {
  @override
  _CadastroState createState() => _CadastroState();
}

class _CadastroState extends State<Cadastro> {
  bool obscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.deep_skyblue,
        title: Center(
          child: Text('Demo'),
        ),
      ),
      backgroundColor: AppColors.deep_skyblue,
      body: CustomBody(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 35),
                  child: Text(
                    'Cadastro',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 50, left: 50),
                child: Text(
                  'Nome',
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
                padding: EdgeInsets.only(top: 30, left: 50),
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
                padding: EdgeInsets.only(left: 50, top: 30),
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
              Container(
                padding: EdgeInsets.only(left: 50, top: 30),
                child: Text(
                  'Confirme a senha',
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
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 120,
                    padding: EdgeInsets.only(top: 35),
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
                                  builder: (context) => AppRoutes.login));
                        });
                      },
                      child: Text(
                        'Cancelar',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 120,
                    padding: EdgeInsets.only(top: 35),
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
                        'Salvar',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w700,
                          color: AppColors.deep_skyblue,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
