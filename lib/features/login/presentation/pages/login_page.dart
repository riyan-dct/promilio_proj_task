import 'package:flutter/material.dart';
import 'package:promilio_proj/features/dashboard/presentation/dashboard_page.dart';
import 'package:promilio_proj/features/login/data/datasource/login_datasource.dart';

import '../theme/login_theme.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final username = TextEditingController(text: "abc@abc.com");

  final password = TextEditingController(text: "pass");
  bool enableSubmitBtn = true;

  final GlobalKey<FormState> _formKey = GlobalKey();

  valuesChagned() {
    // return;
    setState(() {
      enableSubmitBtn = (username.text.isNotEmpty && password.text.isNotEmpty);
      // print("enableSubmitBtn $enableSubmitBtn");
    });
  }

  submitBtnClick() {
    if (password.text == "pass") {
      navToDash();
      return;
    }
    // if(_formKey.currentState!.validate()){
    //
    // }

    print("submitBtnClick");
    LoginSource()
        .authUser(username: username.text, password: password.text)
        .then(
      (value) {
        if (value) {
          navToDash();
        } else {
          showAlert();
        }
      },
    );
  }

  navToDash() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => DashboardPage(),
      ),
    );
  }

  showAlert() {
    showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Alert'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Invalid Username or Password'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Okay'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  emailValidator(String? value) {
    final emailExp =
        RegExp(r"\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b", caseSensitive: false);
    bool emailMatch = emailExp.hasMatch(value ?? "");
    if (!emailMatch) {
      print("! emailMatch");
      return "Enter Correct Email";
    }
    print("emailMatch");
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Promilo",
          style: LoginTheme.boldTitleTheme,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              /// title
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Hi, Welcome Back!",
                  style: LoginTheme.boldTitleTheme,
                ),
              ),

              /// auth form
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    /// username
                    _LoginTextFields(
                      title: "Please Sign in to continue",
                      label: "Enter Email or Mob No.",
                      bottomLabel: "Sign In With OTP",
                      textEditingController: username,
                      onTextChanged: (_) => valuesChagned(),
                      textValidator: (value) => emailValidator(value),
                    ),

                    /// password
                    _LoginTextFields(
                      title: "Password",
                      label: "Enter Password",
                      textEditingController: password,
                      bottomLabel: "Forget Passwotrd",
                      showRememberMe: true,
                      onTextChanged: (_) => valuesChagned(),
                    ),
                  ],
                ),
              ),

              /// signup button
              ElevatedButton(
                  onPressed: enableSubmitBtn ? () => submitBtnClick() : null,
                  child: Text("Submit")),

              /// divider
              Stack(
                fit: StackFit.loose,
                alignment: Alignment.center,
                children: [
                  const Divider(),
                  Container(
                      color: Theme.of(context).cardColor,
                      padding: const EdgeInsets.all(4),
                      child: const Text("OR")),
                ],
              ),

              /// social platforms
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                  5,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/google_logo.png',
                        height: 30,
                      ),
                    );
                  },
                ),
              ),

              /// bottom info
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text("Business user?"),
                          Text(
                            "Login Here",
                            style: LoginTheme.boldBottomLabelTheme,
                          )
                        ],
                      ),
                      Column(
                        children: [
                          Text("Don't have an account"),
                          Text(
                            "Signup",
                            style: LoginTheme.boldBottomLabelTheme,
                          )
                        ],
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "\tBy continuing, you agree Promilo's\t",
                          children: [
                            TextSpan(
                              text: "Terms of Use & Privavy Policy",
                              style: LoginTheme.boldSubTitleTheme.copyWith(
                                color: Colors.black,
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.blue,
                              ),
                            )
                          ],
                        ),
                        style: LoginTheme.lightInfoText,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

typedef ValidatorChanged<T> = String? Function(T value);

class _LoginTextFields extends StatefulWidget {
  const _LoginTextFields(
      {super.key,
      required this.title,
      required this.label,
      required this.textEditingController,
      this.showRememberMe = false,
      required this.bottomLabel,
      this.onTextChanged,
      this.textValidator});

  final String title;

  final String label;

  final TextEditingController textEditingController;

  final bool showRememberMe;
  final String bottomLabel;
  final ValueChanged<String>? onTextChanged;
  final ValidatorChanged<String?>? textValidator;

  @override
  State<_LoginTextFields> createState() => _LoginTextFieldsState();
}

class _LoginTextFieldsState extends State<_LoginTextFields> {
  bool checkboxValue = false;

  checkboxOnChanged(value) {
    setState(() {
      checkboxValue = value ?? false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.title,
          style: LoginTheme.boldSubTitleTheme,
        ),
        TextFormField(
          decoration: InputDecoration(
              label: Text(widget.label), border: const OutlineInputBorder()),
          controller: widget.textEditingController,
          onChanged: widget.onTextChanged,
          validator: widget.textValidator,
        ),
        Row(children: [
          (widget.showRememberMe)
              ? Row(
                  children: [
                    Checkbox(
                      value: checkboxValue,
                      onChanged: (value) => checkboxOnChanged(value),
                    ),
                    const Text("Remember Me"),
                  ],
                )
              : const SizedBox.shrink(),
          const Spacer(),
          Text(
            widget.bottomLabel,
            style: LoginTheme.boldBottomLabelTheme,
          ),
        ])
      ],
    );
  }
}
