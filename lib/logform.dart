import 'package:flutter/material.dart';
import 'regform.dart';

// Widget StatefulWidget
class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  bool _rememberMe = false;
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    // Widget Scaffold
    return Scaffold(
      backgroundColor: const Color(0xFFF4F7F5),
      // Widget SafeArea
      body: SafeArea(
        // Widget Center
        child: Center(
          // Widget SingleChildScrollView
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 32.0),
            // Widget Column
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Widget Container
                Container(
                  width: 80,
                  height: 80,
                  decoration: const BoxDecoration(
                    color: Color(0xFFD8EADF), // Latar lingkaran hijau tua lembut
                    shape: BoxShape.circle,
                  ),
                  // Widget Center
                  child: const Center(
                    // Widget Icon
                    child: Icon(
                      Icons.lock_outline_rounded,
                      size: 42,
                      color: Color(0xFF1E4D2B), // Hijau Tua
                    ),
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 16),

                // Widget Text
                const Text(
                  'Selamat Datang',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 6),

                // Widget Text
                Text(
                  'Silakan login untuk melanjutkan',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 28),

                // Widget Container
                Container(
                  padding: const EdgeInsets.all(24.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.grey.shade200),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withValues(alpha: 0.04),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  // Widget Column
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Widget Text
                      const Text(
                        'Email',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 8),

                      // Widget TextField
                      TextField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                          hintText: 'Masukkan email',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          // Widget Icon
                          prefixIcon: const Icon(Icons.email_outlined, color: Colors.grey),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Color(0xFF1E4D2B), width: 1.5),
                          ),
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget Text
                      const Text(
                        'Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 8),

                      // Widget TextField
                      TextField(
                        obscureText: _isPasswordObscured,
                        decoration: InputDecoration(
                          hintText: 'Masukkan password',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          // Widget Icon
                          prefixIcon: const Icon(Icons.lock_outlined, color: Colors.grey),
                          // Widget IconButton
                          suffixIcon: IconButton(
                            icon: Icon(
                              _isPasswordObscured
                                  ? Icons.visibility_off_outlined
                                  : Icons.visibility_outlined,
                              color: Colors.grey,
                            ),
                            onPressed: () {
                              setState(() {
                                _isPasswordObscured = !_isPasswordObscured;
                              });
                            },
                          ),
                          contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: BorderSide(color: Colors.grey.shade300),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12.0),
                            borderSide: const BorderSide(color: Color(0xFF1E4D2B), width: 1.5),
                          ),
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 12),

                      // Widget Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Widget Row
                          Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              // Widget SizedBox
                              SizedBox(
                                width: 24,
                                height: 24,
                                // Widget Checkbox
                                child: Checkbox(
                                  value: _rememberMe,
                                  activeColor: const Color(0xFF1E4D2B),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(4),
                                  ),
                                  onChanged: (bool? value) {
                                    setState(() {
                                      _rememberMe = value ?? false;
                                    });
                                  },
                                ),
                              ),
                              // Widget SizedBox
                              const SizedBox(width: 8),
                              // Widget Text
                              Text(
                                'Ingat saya',
                                style: TextStyle(
                                  fontSize: 13,
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                          

                          // Widget TextButton
                          TextButton(
                            onPressed: () {},
                            style: TextButton.styleFrom(
                              padding: EdgeInsets.zero,
                              minimumSize: Size.zero,
                              tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                            ),
                            // Widget Text
                            child: const Text(
                              'Lupa Password?',
                              style: TextStyle(
                                color: Color(0xFF1E4D2B),
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          )
                        ],
                      ),
                      // Widget SizedBox

                      DropdownButton(items: [], onChanged: ),
                    
                      const SizedBox(height: 24), 

                      // Widget SizedBox
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        // Widget ElevatedButton
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF1E4D2B),
                            foregroundColor: Colors.white,
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          // Widget Text
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                            ),
                          ),
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget Row
                      Row(
                        children: [
                          // Widget Expanded
                          Expanded(
                            // Widget Divider
                            child: Divider(color: Colors.grey.shade300, thickness: 1),
                          ),
                          // Widget Padding
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 12.0),
                            // Widget Text
                            child: Text(
                              'atau',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.grey[500],
                              ),
                            ),
                          ),
                          // Widget Expanded
                          Expanded(
                            // Widget Divider
                            child: Divider(color: Colors.grey.shade300, thickness: 1),
                          ),
                        ],
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget SizedBox
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        // Widget OutlinedButton
                        child: OutlinedButton(
                          onPressed: () {
                            // Widget 2tor
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegForm(),
                              ),
                            );
                          },
                          style: OutlinedButton.styleFrom(
                            side: const BorderSide(color: Color(0xFF1E4D2B), width: 1.5),
                            foregroundColor: const Color(0xFF1E4D2B),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                            ),
                          ),
                          // Widget Text
                          child: const Text(
                            'BUAT AKUN BARU',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0.8,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 32),

                // Widget Text
                Text(
                  '© 2026 My Application',
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[500],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
