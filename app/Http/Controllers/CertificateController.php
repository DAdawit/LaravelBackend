<?php

namespace App\Http\Controllers;

use App\Http\Requests\CertificateRequest;
use App\Http\Resources\CertificateResource;
use App\Models\Certificate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;

class CertificateController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return CertificateResource::collection(
          Certificate::paginate(20)
        );
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CertificateRequest $request)
    {
        $request->validated($request->all());
        $image_path = $request->file('image')->store('image', 'public');

        $certificate= Certificate::create([
            "name"=>$request["name"],
            "image"=>$image_path
        ]);
    }

    /**
     * Display the specified resource.
     */
    public function show(Certificate $certificate)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Certificate $certificate)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Certificate $certificate)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Certificate $certificate)
    {  $image_path=$certificate->image;

        if (Storage::disk('public')->exists($image_path)) {
            Storage::disk('public')->delete($image_path);
        }
        return $certificate->delete();
    }
}
