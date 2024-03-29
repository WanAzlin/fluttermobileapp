import 'package:flutter/material.dart';

class TestLoginPage extends StatefulWidget {
  const TestLoginPage({Key? key}) : super(key: key);

  @override
  State<TestLoginPage> createState() {
    return _TestLoginPageState();
  }
}

class _TestLoginPageState extends State<TestLoginPage> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login to Your Account',
          style: TextStyle(
            color: Colors.deepPurple,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text('Email address'),
            const SizedBox(height: 10),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your email',
              ),
            ),
            const SizedBox(height: 10),
            const Text('Password'),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your password',
              ),
              obscureText: false,
            ),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {},
              child: const Text(
                'Forgot password?',
                style: TextStyle(
                  color: Colors.deepPurple,
                ),
              ),
            ),
            const SizedBox(height: 20),
            // BlocConsumer<AuthenticationBloc, AuthenticationState>(
            //   listener: (context, state) {
            //     if (state is AuthenticationSuccessState) {
            //       Navigator.pushNamedAndRemoveUntil(
            //         context,
            //         HomeScreen.id,
            //             (route) => false,
            //       );
            //     } else if (state is AuthenticationFailureState) {
            //       showDialog(
            //           context: context,
            //           builder: (context) {
            //             return const AlertDialog(
            //               content: Text('error'),
            //             );
            //           });
            //     }
            //   },
            //   builder: (context, state) {
            //     return SizedBox(
            //       height: 50,
            //       width: double.infinity,
            //       child: ElevatedButton(
            //         onPressed: () {
            //           BlocProvider.of<AuthenticationBloc>(context).add(
            //             SignUpUser(
            //               emailController.text.trim(),
            //               passwordController.text.trim(),
            //             ),
            //           );
            //         },
            //         child:  Text(
            //           state is AuthenticationLoadingState
            //           ? '.......',
            //               : 'Signup',
            //         style: TextStyle(
            //         fontSize: 20,
            //         ),
            //       ),
            //     ),
            //     );
            //   },
            // ),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text(
                  'Signup',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account? "),
                GestureDetector(
                  onTap: () {},
                  child: const Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.deepPurple,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
