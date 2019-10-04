<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PegawaiController extends controller
{
  public function index() {
    $name = "Diki Alfarabi Hadi";
    $matkul = ['matematika', 'fisika', 'kalkulus'];
    //return view('biodata')->with('temp_name', $name); //passing data to view
    return view('biodataPegawai')->with(array('name' => $name, 'matkul'=>$matkul));
    //return $nama; //get data from methode get/url
  }

  public function formulir() {
    return view('formulirPegawai');
  }

  public function proses(Request $request) {
    $nama = $request->input('nama');
    $alamat = $request->input('alamat');
    return 'Nama : ' . $nama . ' Alamat : ' . $alamat;
  }
}
