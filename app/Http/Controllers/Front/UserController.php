<?php

namespace App\Http\Controllers\Front;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class UserController extends Controller
{
    public function signup(Request $request) 
    {
        $messages = [
            'name.required' => 'Vui lòng nhập tên',
            'name.max' => 'Vui lòng nhập tên nhỏ hơn 50 kí tự',
            'email.required' => 'Vui lòng nhập email',
            'email.max' => 'Vui lòng nhập email nhỏ hơn 50 kí tự',
            'email.unique' => 'Email này đã được đăng kí bởi tài khoản khác',
            'email.email' => 'Vui lòng nhập đúng định dạng email',
            'phone.required' => 'Vui lòng nhập số điện thoại',
            'phone.unique' => 'Số điện thoại này đã được đăng kí bởi tài khoản khác',
            'password.required' => 'Vui lòng nhập mật khẩu',
            'password.max' => 'Vui lòng nhập mật khẩu nhỏ hơn 50 kí tự',
            'password.confirmed' => 'Xác nhận mật khẩu không khớp'
        ];

        $validator = Validator::make($request->all(), [
            'name' => 'required|string|max:50',
            'email' => 'required|string|email:rfc,dns|max:50|unique:users',
            'password'=>'required|string|max:50|confirmed',
            'phone' => 'required|unique:users',
        ],$messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors())->withInput();
        }

        User::create([
            'name' => $request->name,
            'email' => $request->email,
            'phone' => $request->phone,
            'level' => 0,
            'password' => Hash::make($request->password)
        ]);
        return redirect('dang-nhap')->with('success','Đăng ký thành công! Vui lòng đăng nhập.');
    }

    public function login(Request $request)
    {
        $messages = [
            'email.required' => 'Vui lòng nhập email',
            'password.required' => 'Vui lòng nhập mật khẩu',
            'email.email' => 'Vui lòng nhập email đúng định dạng',
            'email.max' => 'Vui lòng nhập email nhỏ hơn 50 kí tự',
            'password.max' => 'Vui lòng nhập mật khẩu nhỏ hơn 50 kí tự'
        ];

        $validator = Validator::make($request->all(), [
            'email' => 'required|string|email:rfc,dns|max:50',
            'password'=>'required|max:50',
        ],$messages);

        if ($validator->fails()) {
            return redirect()->back()->withErrors($validator->errors())->withInput();
        }

        if (Auth::attempt(['email' => $request->email, 'password' => $request->password], $request->remember)) {
            return redirect('/');
        } else {
            return redirect('dang-nhap')->with('error','Thông tin đăng nhập không chính xác');
        }
    }

    public function logout() 
    {
        Auth::logout();
        return redirect()->back();
    }
}