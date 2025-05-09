<x-app-layout>
    @if (session('status'))
    <div class="card-body">
        <div class="alert alert-success" role="alert">
            {{ session('status') }}
        </div>
    </div>
    @endif
    <div class="w-full px-4">
        <div class="relative flex flex-col min-w-0 break-words w-full mb-6 shadow-lg rounded bg-white">
            <div class="rounded-t mb-0 px-4 py-3 border-0">
                <div class="flex flex-wrap items-center">
                    <div class="relative w-full px-4 max-w-full flex-grow flex-1">
                        <h3 class="font-semibold text-lg text-blueGray-700">
                            Hasil Jawaban Pengguna
                        </h3>
                    </div>
                </div>
                @if (session()->has('success'))
                <div class="bg-blue-100 border-t border-b border-blue-500 text-blue-700 px-4 py-3" role="alert">
                    <p class="font-bold">Pesan Informasi</p>
                    <p class="text-sm">{{ session('success') }}</p>
                </div>
                @endif
                @if (session()->has('delete'))
                <div class="bg-red-100 border-t border-b border-red-500 text-red-700 px-4 py-3" role="alert">
                    <p class="font-bold">Pesan Informasi</p>
                    <p class="text-sm">{{ session('delete') }}</p>
                </div>
                @endif
            </div>
            <div>
                <form action="/dashboard/userresult/" method="post">
                    @method('delete')
                    @csrf
                    <button class="flex flex-wrap bg-red-700 px-4 py-2 text-white ml-8 m-2 rounded-md hover:bg-red-500" onclick="return confirm('Apakah Kamu Yakin Ingin Menghapus?') ">
                        <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-white">
                            <path stroke-linecap="round" stroke-linejoin="round" d="M9.75 9.75l4.5 4.5m0-4.5l-4.5 4.5M21 12a9 9 0 11-18 0 9 9 0 0118 0z" />
                        </svg> Reset Nilai
                    </button>
                </form>
            </div>
            <div class="block w-full overflow-x-auto px-8 pt-8">
                <table class="items-center w-full bg-transparent border-collaps ">
                    <thead>
                        <tr>
                            <th class="px-6 py-3 text-xs uppercase font-semibold text-left bg-slate-100 text-slate-500 border-gray-100">#</th>
                            <th class="px-6 py-3 text-xs uppercase font-semibold text-left bg-slate-100 text-slate-500 border-gray-100">Nama Pengguna</th>
                            <th class="px-6 py-3 text-xs uppercase font-semibold text-left bg-slate-100 text-slate-500 border-gray-100">Nilai</th>
                            <th class="px-6 py-3 text-xs uppercase font-semibold text-left bg-slate-100 text-slate-500 border-gray-100">Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($userInputs as $userInput)
                        <tr>
                            <td class="border-t-0 px-6 py-4 text-xs whitespace-nowrap">{{ $loop->iteration }}</td>
                            <td class="border-t-0 px-6 py-4 text-xs whitespace-nowrap">
                                {{ $userInput->user ? $userInput->user->name : 'Tidak Ada User' }}
                            </td>
                            <td class="border-t-0 px-6 py-4 text-xs whitespace-nowrap">
                                {{ $userInput->nilai }}
                            </td>
                            <td class="border-t-0 px-6 py-4 text-xs whitespace-nowrap">
                                <a href="/dashboard/userresult/{{ $userInput->id }}">
                                    <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6 text-blue-700">
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                                        <path stroke-linecap="round" stroke-linejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                                    </svg>
                                </a>
                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</x-app-layout>
