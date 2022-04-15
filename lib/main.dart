import 'package:flutter/material.dart';
import 'package:keys24/thm.dart';

void main() {
  runApp(const App());
}

const borderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(36)),
    borderSide: BorderSide(color: Color(0xFFeceff1), width: 0));


class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: globalTheme(),
      home: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20,),
              SizedBox(
                width: 110,
                height: 84,
                child: Image.asset('assets/fon.png'),
              ),
              const SizedBox(height: 20,),
              const Text('Введите логин в виде 10 цифр номера телефона',
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(flex:1, child: Container()),
                  Expanded(flex:4,
                    child: SizedBox(
                      child: TextField(
                        keyboardType: TextInputType.number,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 25),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFeceff1),
                          enabledBorder: borderStyle,
                          focusedBorder: borderStyle,
                          labelText: '+7',
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex:1, child: Container()),
                ],
              ),
              const SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(flex:1, child: Container()),
                  Expanded(flex:4,
                    child: SizedBox(width: 224,
                      child: TextField(
                        obscureText: true,
                        style: Theme.of(context).textTheme.bodyText1?.copyWith(fontSize: 25),
                        textAlign: TextAlign.center,
                        decoration: const InputDecoration(
                          filled: true,
                          fillColor: Color(0xFFeceff1),
                          enabledBorder: borderStyle,
                          focusedBorder: borderStyle,
                          labelText: 'Пароль',
                        ),
                      ),
                    ),
                  ),
                  Expanded(flex:1, child: Container()),
                ],
              ),
              const SizedBox(height: 28,),
              SizedBox(
                width: 154,
                height: 42,
                child:
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF7998AC),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(36))
                    ),
                    onPressed: () => {},
                    child: Text('Войти', style: Theme.of(context).textTheme.bodyText2?.copyWith(fontSize: 25))
                ),
              ),
              const SizedBox(height: 30,),
              InkWell(
                child: const Text('Регистрация'),
                onTap:  () => {},
              ),
              const SizedBox(height: 20,),
              InkWell(
                child: const Text('Забыли пароль'),
                onTap: () => {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}