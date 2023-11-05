<?php

namespace App\Http\Controllers;

use App\Http\Requests\ContactUsRequest;
use App\Http\Resources\CategoryResourse;
use App\Http\Resources\ContactUsResource;
use App\Models\Contact;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        return ContactUsResource::collection(
            Contact::paginate(20)
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
    public function store(ContactUsRequest $request)
    {
        $request->validated($request->all());
        $contact=Contact::create([
            "fullName"=>$request["fullName"],
            "location"=>$request["location"],
            "phoneNumber"=>$request["phoneNumber"],
            "email"=>$request["email"],
        ]);
        return new ContactUsResource($contact);
    }

    /**
     * Display the specified resource.
     */
    public function show(Contact $contact)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Contact $contact)
    {
        return new ContactUsResource($contact);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Contact $contact)
    {
        $contact->update($request->all());
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Contact $contact)
    {
        return $contact->delete();
    }
}
