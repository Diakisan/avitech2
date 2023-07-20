import 'package:avitch/theme/app_color.dart';
import 'package:flutter/material.dart';

import '../connexion.dart';

class AuthForm extends StatefulWidget {
  AuthForm(
    this.submitFn,
    this.isLoading,
  );

  final bool isLoading;
  final void Function(
    String email,
    String password,
    String userName,
    bool isLogin,
  ) submitFn;

  @override
  State<AuthForm> createState() => _AuthFormState();
}

class _AuthFormState extends State<AuthForm> {
  final _formKey = GlobalKey<FormState>();
  var _isLogin = true;

  String? _userEmail = '';
  String? _userName = '';
  String? _userPassword = '';

  void _trySubmit() {
    final isValid = _formKey.currentState!.validate();
    FocusScope.of(context).unfocus();
    if (isValid) {
      _formKey.currentState!.save();
      widget.submitFn(
        _userEmail!.trim(),
        _userPassword!.trim(),
        _userName!.trim(),
        _isLogin,
      );
      // Use those value to send our auth request .....
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(170.0), //augmente la taille de ApppBar
        child: AppBar(
          centerTitle: true,
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(60)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/2.png'),
                  fit: BoxFit.contain,
                ),
              ),
              height: 170,
            ),
          ),
          elevation: 0,
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(75),
                  bottomRight: Radius.circular(75))),
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Card(
            margin: const EdgeInsets.all(20),
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Container(
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 45,
                            bottom: 30,
                            left: 10,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Connectez-vous:",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                              fontSize: 24,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(
                          bottom: 35,
                        ),
                        child: TextFormField(
                          key: const ValueKey('useremail'),
                          validator: (value) {
                            if (value!.isEmpty || !value.contains('@')) {
                              return 'Entrer votre address mail';
                            }
                            return null;
                          },
                          keyboardType: TextInputType.emailAddress,
                          decoration: const InputDecoration(
                            labelText: 'Adresse email',
                            prefixIcon: Icon(
                              Icons.email_outlined,
                              color: Colors.black,
                            ),
                            hintText: "email",
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: a_gray, width: 2.0),
                            ),
                          ),
                          onSaved: (newValue) {
                            _userEmail = newValue;
                          },
                        ),
                      ),
                      if (!_isLogin)
                        Container(
                          margin: const EdgeInsets.only(
                            bottom: 35,
                          ),
                          child: TextFormField(
                            key: const ValueKey('username'),
                            validator: (value) {
                              if (value!.isEmpty || value.length < 4) {
                                return 'Veuillez entrer au moins 4 caractères';
                              }
                              return null;
                            },
                            decoration: const InputDecoration(
                              labelText: 'Nom',
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.black,
                              ),
                              hintText: "Nom",
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(5.0)),
                                borderSide:
                                    BorderSide(color: a_gray, width: 2.0),
                              ),
                            ),
                            onSaved: (newValue) {
                              _userName = newValue;
                            },
                          ),
                        ),
                      Container(
                        child: TextFormField(
                          key: const ValueKey('userpassword'),
                          validator: (value) {
                            if (value!.isEmpty || value.length < 7) {
                              return 'Le mot de passe doit comporter au moins 7 caractères.';
                            }
                            return null;
                          },
                          decoration: const InputDecoration(
                            labelText: 'Mots de passe',
                            prefixIcon: Icon(
                              Icons.lock_outline_sharp,
                              color: Colors.black,
                            ),
                            hintText: "mot de passe",
                            enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5.0)),
                              borderSide: BorderSide(color: a_gray, width: 2.0),
                            ),
                          ),
                          obscureText: true,
                          onSaved: (newValue) {
                            _userPassword = newValue;
                          },
                        ),
                      ),
                      Container(
                        child: Container(
                          margin: const EdgeInsets.only(
                            top: 35,
                            bottom: 20,
                            left: 10,
                          ),
                          alignment: Alignment.centerLeft,
                          child: const Text(
                            "Mot de passe oublié ?",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: a_vert,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 12,
                      ),
                      if (widget.isLoading)
                        CircularProgressIndicator()
                      else
                        ElevatedButton(
                          onPressed: _trySubmit,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: a_vert,
                            padding:
                                const EdgeInsets.fromLTRB(129, 15, 129, 15),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: Text(_isLogin ? 'Connexion' : 'insciption'),
                        ),
                      if (!widget.isLoading)
                        Container(
                          margin: const EdgeInsets.only(
                            top: 20,
                          ),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: a_orange,
                              padding:
                                  const EdgeInsets.fromLTRB(35, 15, 35, 15),
                            ),
                            onPressed: () {
                              setState(() {
                                _isLogin = !_isLogin;
                              });
                            },
                            child: Text(_isLogin
                                ? 'Créer un nouveau compte'
                                : 'Vous avez déjà un compte'),
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
