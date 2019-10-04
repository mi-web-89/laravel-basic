<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Item;
use App\Supplier;

class ItemController extends Controller
{
    public function index() {
      //$item = Item::all();
      $item = Item::get();
      return view('itemHome', ['item' => $item]);
    }

    public function input() {
      return view('itemInput');
    }

    public function store(Request $request) {
      $request->validate([
        'name' => 'bail|required|min:5|max:32',
        'price' => 'required'
      ]);

      Item::create([
        'name' => $request->name,
        'price' => $request->price
      ]);

      return redirect('item');
    }

    public function edit($id) {
      $item = Item::find($id);
      return view('itemUpdate', ['item' => $item]);
    }

    public function update($id, Request $request) {
      $request->validate([
        'name' => 'bail|required',
        'price' => 'required'
      ]);

      $item = Item::find($id);
      $item->name = $request->name;
      $item->price = $request->price;
      $item->save();

      return redirect('/item');
    }

    public function delete($id) {
      //softdeletes
      $item = Item::find($id);
      $item->delete();

      return redirect('/item');
    }

    public function trash() {
      $item = Item::onlyTrashed()->get();
      return view('itemTrash', ['itemTrash' => $item]);
    }

    public function restore($id) {
      $item = Item::onlyTrashed()->where('id', $id);
      $item->restore();

      return redirect('/item/trash');
    }

    public function restore_all() {
      $item = Item::onlyTrashed();
      $item->restore();

      return redirect('/item');
    }

    public function delete_permanent($id) {
      $item = Item::onlyTrashed()->where('id', $id);
      $item->forceDelete();

      return redirect('/item/trash');
    }

    public function delete_all_permanent() {
      $item = Item::onlyTrashed();
      $item->forceDelete();

      return redirect('/item/trash');
    }
}
