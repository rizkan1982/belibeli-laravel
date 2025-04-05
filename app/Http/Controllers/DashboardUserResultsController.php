<?php

namespace App\Http\Controllers;

use App\Models\User;
use App\Models\UserAnswer;
use App\Models\UserResults;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;

class DashboardUserResultsController extends Controller
{
    public function index()
    {
        // Ambil data yang memiliki relasi user valid
        $data = UserResults::whereHas('user')->with('user')->get();
    
        return view('admin.userresult.index', [
            'userInputs' => $data,
        ]);
    }    

    public function getAllResult()
    {
        $data = UserResults::with('user')->get();

        if ($data->isEmpty()) {
            return response()->json(['message' => 'Data tidak ditemukan'], 404);
        }

        return response()->json($data);
    }

    public function show($id)
    {
        $data = UserAnswer::where('user_result_id', $id)
            ->with('kuis') // Menggunakan relasi yang benar
            ->get();

        if ($data->isEmpty()) {
            return redirect('/dashboard/userresult')->with('error', 'Data tidak ditemukan');
        }

        return view('admin.userresult.show', [
            'title' => 'Detail Hasil Kuis',
            'answeres' => $data,
        ]);
    }

    public function edit($id)
    {
        $data = User::find($id);

        if (!$data) {
            return redirect('/dashboard/userresult')->with('error', 'User tidak ditemukan');
        }

        return view('dashboard.userresult.edit', [
            'usere' => $data,
        ]);
    }

    public function destroy()
    {
        // Hanya hapus jika ada data
        if (UserResults::exists()) {
            UserResults::truncate(); // Menghapus semua data di tabel UserResults
        }

        if (UserAnswer::exists()) {
            UserAnswer::truncate(); // Menghapus semua data di tabel UserAnswer
        }

        return redirect('/dashboard/userresult')->with('delete', 'Hasil Nilai Telah Dihapus');
    }
}
