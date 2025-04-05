@extends('../general/layouts/main')

@section('contents')

<div class="flex flex-wrap px-16">
    <div class="w-full self-center">
        <h1 class="text-base text-center font-semibold md:text-xl lg:text-2xl">
            Materi Belajar Nursing Management
        </h1>

        <a href='/academies' class="text-md font-light text-white bg-slate-500 p-5 mb-2 rounded-md hover:bg-slate-700">
            Kembali
        </a>
    </div>
</div>

{{-- Pastikan variabel $materi ada dan tidak kosong --}}
@if(isset($materi) && count($materi) > 0)  
    @foreach ($materi as $a)
        <div class="pb-20">
            <div class="mt-4 grid gap-4 mx-16">
                <a href="/academies/materi/{{ $a->id }}" class="bg-white rounded overflow-hidden shadow-md px-4">
                    
                    {{-- Menampilkan Judul dan Deskripsi Materi --}}
                    <h3 class="pt-8 font-semibold text-lg">{{ $a->name }}</h3>
                    <p class="block pb-4 text-gray-700">{{ $a->desc }}</p>
                    
                    {{-- Menampilkan Gambar Jika Ada --}}
                    @if(!empty($a->image))
                        <img src="{{ asset('storage/' . $a->image) }}" alt="Gambar Materi" class="w-full h-auto rounded-lg">
                    @else
                        <p class="text-gray-500 italic">Gambar tidak tersedia</p>
                    @endif

                    {{-- Menampilkan Video Jika Ada --}}
                    @if(!empty($a->video_url))
                        <div class="mt-4">
                            <iframe width="100%" height="315" src="https://www.youtube.com/embed/{{ $a->video_url }}" frameborder="0" allowfullscreen class="rounded-lg"></iframe>
                        </div>
                    @else
                        <p class="text-gray-500 italic">Video tidak tersedia</p>
                    @endif

                </a>
            </div>
        </div>
    @endforeach
@else
    <p class="text-center text-gray-600 mt-10">Belum ada materi yang tersedia.</p>
@endif

@endsection
