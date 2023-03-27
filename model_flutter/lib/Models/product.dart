import 'package:flutter/cupertino.dart';

class product {
  @required late String judul;
  @required late String imageUrl;
  @required late int harga;
  @required late String deskripsi;

  product(this.imageUrl, this.judul, this.harga, this.deskripsi);
}