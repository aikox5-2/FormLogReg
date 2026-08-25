import 'package:flutter/material.dart';

// Widget StatefulWidget
class RegForm extends StatefulWidget {
  const RegForm({super.key});

  @override
  State<RegForm> createState() => _RegFormState();
}

class _RegFormState extends State<RegForm> {
  bool _isPasswordObscured = true;
  String _jenisKelamin = 'Laki-laki';
  String? _pendidikanSelected;
  double _pengalamanValue = 0.0;
  bool _isNotificationActive = true;
  bool _isAgreed = false;

  final List<String> _listPendidikan = [
    'SD / Sederajat',
    'SMP / Sederajat',
    'SMA / SMK',
  ];

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
                    color: Color(0xFFD8EADF), // Hijau tua lembut
                    shape: BoxShape.circle,
                  ),
                  // Widget Center
                  child: const Center(
                    // Widget Icon
                    child: Icon(
                      Icons.person_add_alt_1_outlined,
                      size: 42,
                      color: Color(0xFF1E4D2B), // Hijau tua
                    ),
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 16),

                // Widget Text
                const Text(
                  'Buat Akun Baru',
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
                  'Silakan lengkapi data untuk membuat akun',
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
                        'Nama Lengkap',
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
                        decoration: InputDecoration(
                          hintText: 'Masukkan nama lengkap',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          // Widget Icon
                          prefixIcon: const Icon(Icons.person_outline, color: Colors.grey),
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
                          hintText: 'contoh@email.com',
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
                      const SizedBox(height: 20),

                      // Widget Divider
                      Divider(color: Colors.grey.shade200, thickness: 1),
                      // Widget SizedBox
                      const SizedBox(height: 16),

                      // Widget Text
                      const Text(
                        'Jenis Kelamin',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 6),

                      // Widget RadioGroup
                      RadioGroup<String>(
                        groupValue: _jenisKelamin,
                        onChanged: (String? value) {
                          if (value != null) {
                            setState(() {
                              _jenisKelamin = value;
                            });
                          }
                        },
                        // Widget Row
                        child: Row(
                          children: [
                            // Widget Row
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Widget Radio
                                Radio<String>(
                                  value: 'Laki-laki',
                                  activeColor: const Color(0xFF1E4D2B),
                                ),
                                // Widget Text
                                const Text('Laki-laki', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                            // Widget SizedBox
                            const SizedBox(width: 24),

                            // Widget Row
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                // Widget Radio
                                Radio<String>(
                                  value: 'Perempuan',
                                  activeColor: const Color(0xFF1E4D2B),
                                ),
                                // Widget Text
                                const Text('Perempuan', style: TextStyle(fontSize: 14)),
                              ],
                            ),
                          ],
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget Text
                      const Text(
                        'Pendidikan',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 8),

                      // Widget DropdownButtonFormField
                      DropdownButtonFormField<String>(
                        initialValue: _pendidikanSelected,
                        hint: Text(
                          'Pilih pendidikan',
                          style: TextStyle(color: Colors.grey[400], fontSize: 14),
                        ),
                        decoration: InputDecoration(
                          // Widget Icon
                          prefixIcon: const Icon(Icons.school_outlined, color: Colors.grey),
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
                        items: _listPendidikan.map((String item) {
                          // Widget DropdownMenuItem
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(item),
                          );
                        }).toList(),
                        onChanged: (String? newValue) {
                          setState(() {
                            _pendidikanSelected = newValue;
                          });
                        },
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget Text
                      const Text(
                        'Tingkat Pengalaman',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                          color: Colors.black87,
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 4),

                      // Widget SliderTheme
                      SliderTheme(
                        data: SliderTheme.of(context).copyWith(
                          activeTrackColor: const Color(0xFF1E4D2B), // Hijau Tua
                          inactiveTrackColor: Colors.grey.shade200,
                          thumbColor: const Color(0xFF1E4D2B), // Hijau Tua
                          overlayColor: const Color(0xFF1E4D2B).withValues(alpha: 0.2),
                          trackHeight: 4.0,
                        ),
                        // Widget Slider
                        child: Slider(
                          value: _pengalamanValue,
                          min: 0.0,
                          max: 1.0,
                          onChanged: (double value) {
                            setState(() {
                              _pengalamanValue = value;
                            });
                          },
                        ),
                      ),

                      // Widget Row
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // Widget Text
                          Text(
                            'Pemula',
                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                          ),
                          // Widget Text
                          Text(
                            'Ahli',
                            style: TextStyle(fontSize: 12, color: Colors.grey[500]),
                          ),
                        ],
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 18),

                      // Widget Text
                      const Text(
                        'Alamat',
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
                        maxLines: 3,
                        decoration: InputDecoration(
                          hintText: 'Masukkan alamat lengkap',
                          hintStyle: TextStyle(color: Colors.grey[400]),
                          // Widget Padding
                          prefixIcon: const Padding(
                            padding: EdgeInsets.only(bottom: 36.0),
                            // Widget Icon
                            child: Icon(Icons.home_outlined, color: Colors.grey),
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
                      const SizedBox(height: 20),

                      // Widget Container
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade50,
                          borderRadius: BorderRadius.circular(12.0),
                          border: Border.all(color: Colors.grey.shade200),
                        ),
                        // Widget Column
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            // Widget Row
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Widget Column
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    // Widget Text
                                    const Text(
                                      'Notifikasi',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 14,
                                        color: Colors.black87,
                                      ),
                                    ),
                                    // Widget SizedBox
                                    const SizedBox(height: 2),
                                    // Widget Text
                                    Text(
                                      'Aktifkan notifikasi aplikasi',
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),

                                // Widget Switch
                                Switch(
                                  value: _isNotificationActive,
                                  activeThumbColor: Colors.white,
                                  activeTrackColor: const Color(0xFF1E4D2B),
                                  onChanged: (bool value) {
                                    setState(() {
                                      _isNotificationActive = value;
                                    });
                                  },
                                ),
                              ],
                            ),
                            // Widget SizedBox
                            const SizedBox(height: 12),

                            // Widget Container
                            Container(
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade200,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              // Widget Row
                              child: Row(
                                children: [
                                  // Widget Expanded
                                  Expanded(
                                    // Widget Text
                                    child: Text(
                                      'Saya menyetujui syarat dan ketentuan',
                                      style: TextStyle(
                                        fontSize: 13,
                                        color: Colors.grey[800],
                                      ),
                                    ),
                                  ),
                                  // Widget SizedBox
                                  SizedBox(
                                    width: 24,
                                    height: 24,
                                    // Widget Checkbox
                                    child: Checkbox(
                                      value: _isAgreed,
                                      activeColor: const Color(0xFF1E4D2B),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      onChanged: (bool? value) {
                                        setState(() {
                                          _isAgreed = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      // Widget SizedBox
                      const SizedBox(height: 24),

                      // Widget SizedBox
                      SizedBox(
                        width: double.infinity,
                        height: 48,
                        // Widget ElevatedButton
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFD8EADF),
                            foregroundColor: const Color(0xFF1E4D2B),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.0),
                              side: const BorderSide(color: Color(0xFFB5D7C2)),
                            ),
                          ),
                          // Widget Row
                          child: const Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              // Widget Icon
                              Icon(Icons.app_registration, size: 20),
                              // Widget SizedBox
                              SizedBox(width: 8),
                              // Widget Text
                              Text(
                                'REGISTRASI',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0.8,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                // Widget SizedBox
                const SizedBox(height: 24),

                // Widget TextButton
                TextButton(
                  onPressed: () {
                    // Widget Navigator
                    Navigator.pop(context);
                  },
                  // Widget Text
                  child: const Text(
                    'Sudah memiliki akun? Login',
                    style: TextStyle(
                      color: Color(0xFF1E4D2B),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
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
