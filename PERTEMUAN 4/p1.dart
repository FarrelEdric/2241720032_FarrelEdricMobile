void main() {
  final list = List<String?>.filled(5, null); // Membuat list dengan panjang 5 dan nilai default null
  
  // Mengisi indeks ke-1 dan ke-2 dengan nama dan NIM sebagai string
  list[1] = 'FransiscusFarrelEdricWijanarko'; // Nama
  list[2] = '2241720032';  // NIM sebagai string
  
  // Print hasil
  print(list);
}
