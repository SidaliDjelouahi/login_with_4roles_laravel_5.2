<?php

namespace App\Http\Controllers;

use App\Http\Requests;
use Illuminate\Http\Request;
use Auth;
use DB;   
use App\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        return view('home');
    }

    public function showUsers()
    {
        if(Auth::user()->role == 1)
        {   
            return redirect('/');
        }
        $users= DB::table('users')->get();
        return view('users', compact('users'));
    }

    public function profile()
    {
        return view('profile');
    }

    public function updateRole(Request $request, User $user)
    {
        $user->update($request->all());
        return redirect('users');
    }
}
