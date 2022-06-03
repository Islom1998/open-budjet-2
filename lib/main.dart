import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Screen1(),
    );
  }
}

class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(53, 191, 220, 1),
                Color.fromRGBO(11, 139, 167, 1),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Авторизация",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 55),
          Center(
            child: Image.asset("assets/images/OpenBudget Logo-01 1.png"),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80, left: 15),
            child: const Text(
              "Введите номер телефона:",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.lightBlueAccent),
            ),
            child: const TextField(
                decoration: InputDecoration(border: InputBorder.none)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Код подтверждения",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Введите проверочный код',
              ),
            ),
          ),
          Container(
            height: 20,
            margin: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              children: [
                Image.asset("assets/images/减去 2.png"),
                const SizedBox(width: 10),
                const Text(
                  "Запомни меня",
                  style: TextStyle(color: Colors.lightBlueAccent),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 70, left: 15, right: 15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(53, 191, 220, 1),
                  Color.fromRGBO(11, 139, 167, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  "вход",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.lightBlueAccent),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen2(),
                  ),
                );
              },
              child: const Center(
                child: Text("регистрация"),
              ),
            ),
          ),
          const SizedBox(height: 25),
          Center(
            child: TextButton(
              onPressed: () {},
              child: const Text("Забили пароль?"),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen2 extends StatelessWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(53, 191, 220, 1),
                Color.fromRGBO(11, 139, 167, 1),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Регистрация",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "Создайте свой профиль",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Имя",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Фамилия",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "День рождения",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Пол",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 150, left: 15, right: 15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(53, 191, 220, 1),
                  Color.fromRGBO(11, 139, 167, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen3(),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "Далее",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen3 extends StatelessWidget {
  const Screen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(53, 191, 220, 1),
                Color.fromRGBO(11, 139, 167, 1),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Регистрация",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "Расскажи немного о себе",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Профессия",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Введите номер телефона:",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Регион / Территория",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Район / Город",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Район / Город",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 50, left: 15, right: 15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(53, 191, 220, 1),
                  Color.fromRGBO(11, 139, 167, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Screen4(),
                  ),
                );
              },
              child: const Center(
                child: Text(
                  "Далее",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Screen4 extends StatelessWidget {
  const Screen4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color.fromRGBO(53, 191, 220, 1),
                Color.fromRGBO(11, 139, 167, 1),
              ],
            ),
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
          ),
        ),
        title: const Text(
          "Регистрация",
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 25, left: 15),
            child: Text(
              "Пароль для подтверждения",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Пароль",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 25, left: 15),
            child: const Text(
              "Повторите пароль",
              textAlign: TextAlign.left,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 15),
            margin: const EdgeInsets.only(top: 5, left: 15, right: 15),
            height: 50,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 245, 247, 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const TextField(
              decoration: InputDecoration(border: InputBorder.none),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 15, left: 15),
            child: Row(
              children: [
                Image.asset("assets/images/减去 3.png"),
                const SizedBox(width: 15),
                const Text(
                  "Я принимаю условия и политику\nконфиденциальности",
                  style: TextStyle(
                    decoration: TextDecoration.underline,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 50,
            margin: const EdgeInsets.only(top: 293, left: 15, right: 15),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Color.fromRGBO(53, 191, 220, 1),
                  Color.fromRGBO(11, 139, 167, 1),
                ],
              ),
              borderRadius: BorderRadius.circular(8),
            ),
            child: TextButton(
              onPressed: () {},
              child: const Center(
                child: Text(
                  "Готово",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
