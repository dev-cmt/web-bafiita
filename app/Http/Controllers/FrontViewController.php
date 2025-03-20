<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Admin\Contact;
use App\Models\Admin\Gallery;
use App\Models\Admin\Event;
use App\Models\Admin\BlogPost;
use App\Models\Master\MemberType;
use App\Models\Master\CommitteeType;
use App\Models\User;
use DB;

class FrontViewController extends Controller
{
    public function welcome()
    {
        $user = User::where('status', 1)->get();
        $add_hoc = $user->where('committee_type_id', 1);
        $executive = $user->where('committee_type_id', 2);
        $event = Event::where('status', 1)->get();
        $contact = Contact::where('status', 1)->get();

        return view('welcome', compact('user', 'add_hoc', 'executive', 'event', 'contact'));
    }
    /**________________________________________________________________________________________
     * About Menu Pages
     * ________________________________________________________________________________________
     */
    public function about()
    {
        return view('frontend.pages.about-us');
    }
    public function profilePresidentSecretary()
    {
        return view('frontend.pages.profile-president-secretary');
    }
    public function aboutMessage($menu)
    {
        return view('frontend.pages.about-message', compact('menu'));
    }
    /**________________________________________________________________________________________
     * Committee Menu Pages
     * ________________________________________________________________________________________
     */
    public function committee($id)
    {
        // $data = User::where('committee_type_id', $id)->where('status', 1)->get();
        // $committeesType = CommitteeType::where('id', $id)->first();
        $committeesType = $id;

        return view('frontend.pages.committee',compact('committeesType'));
    }
    /**________________________________________________________________________________________
     * Members Menu Pages
     * ________________________________________________________________________________________
     */
    public function member($id)
    {
        $data = User::leftJoin('info_companies', 'info_companies.member_id', '=', 'users.id')
                ->where('users.is_admin', 0)
                ->where('users.status', 1)
                ->orderBy('info_companies.companyName', 'asc')
                ->select('users.*') // Select only user columns
                ->with('infoCompany') // Load relationship after sorting
                ->get();

        // $membersType = MemberType::where('id', $id)->first()->name;
        $membersType = $id;

        return view('frontend.pages.member',compact('data', 'membersType'));
    }
    public function memberDetails($id)
    {
        $data = User::orderBy('index', 'asc')->where('member_type_id', $id)->where('status', 1)->get();
        // $membersType = MemberType::where('id', $id)->first()->name;
        $membersType = $id;

        return view('frontend.pages.member-details',compact('data', 'membersType'));
    }
    public function search(Request $request)
    {
        $membersType = $request->input('member_type');
        $query = $request->input('search-member');

        // Mapping of member designation names to integer values for database query
        $memebrDesignation = [
            'Proprietor' => 1,
            'Managing Director' => 2,
            'Chairman' => 3,
            'CEO' => 4,
            'Partner' => 5,
            'Director' => 6,
        ];

        // Store designation ID separately
        $designationId = $memebrDesignation[$query] ?? null;

        $data = User::query()
            ->when(!empty($query), function ($q) use ($query, $designationId) {
                $q->where(function ($q) use ($query, $designationId) {
                    // Search within User fields
                    $q->where('name', 'LIKE', "%{$query}%")
                        ->orWhere('email', 'LIKE', "%{$query}%")
                        ->orWhere('member_code', 'LIKE', "%{$query}%")
                        // Search within the companyName and addressOrganization in the infoCompany relationship
                        ->orWhereHas('infoCompany', function ($q) use ($query) {
                            $q->where('companyName', 'LIKE', "%{$query}%")
                                ->orWhere('addressOrganization', 'LIKE', "%{$query}%");
                        })
                        // Search within the memebrDesignation, memberPhoneNo, and memberEmail in the infoPersonal relationship
                        ->orWhereHas('infoPersonal', function ($q) use ($query, $designationId) {
                            $q->where('memebrDesignation', 'LIKE', "%{$query}%")
                                ->orWhere('memberPhoneNo', 'LIKE', "%{$query}%")
                                ->orWhere('memberEmail', 'LIKE', "%{$query}%");

                            // If the search term matches a designation, filter by ID
                            if ($designationId) {
                                $q->orWhere('memebrDesignation', $designationId);
                            }
                        });
                });
            })
            ->with([
                'infoCompany:companyName,addressOrganization,member_id', // Select only needed fields for infoCompany
                'infoPersonal:memebrDesignation,memberPhoneNo,memberEmail,member_id' // Select only needed fields for infoPersonal
            ])
            ->when(!empty($membersType), function ($q) use ($membersType) {
                // Ensure that we filter by member_type_id correctly
                $q->where('member_type_id', $membersType);
            })
            ->where('is_admin', 0)
            ->where('status', 1)
            ->orderBy('index', 'asc')
            ->get();

        return view('frontend.pages.member', compact('data', 'membersType'));
    }




    
    /**________________________________________________________________________________________
     * Why-be-member Menu Pages
     * ________________________________________________________________________________________
     */
    public function whyBeMember()
    {
        return view('frontend.pages.why-be-member');
    }
    /**________________________________________________________________________________________
     * Requirements Menu Pages
     * ________________________________________________________________________________________
     */
    public function requirements()
    {
        return view('frontend.pages.requirements');
    }
    /**________________________________________________________________________________________
     * Gallery Menu Pages
     * ________________________________________________________________________________________
     */
    public function galleryImage()
    {
        $posts = Gallery::where('public','=','1')->with('user')->get();
        return view('frontend.pages.gallery_album',compact('posts'));
    }
    public function galleryShow($id)
    {
        $posts = Gallery::findOrFail($id);
        return view('frontend.pages.gallery_image')->with('posts',$posts);
    }
    /**________________________________________________________________________________________
     * Events Menu Pages
     * ________________________________________________________________________________________
     */
    public function events()
    {
        $events = Event::where('status', 1)->paginate(12);
        return view('frontend.pages.events',compact('events'));
    }
    public function eventSearch(Request $request)
    {
        $query = Event::query();

        if ($request->has('search')) {
            $searchTerm = $request->input('search');
            $query->where('title', 'like', '%' . $searchTerm . '%')
                ->orWhere('description', 'like', '%' . $searchTerm . '%');
        }

        $events = $query->where('status', 1)->paginate(12);

        return view('frontend.pages.events', compact('events'));
    }

    public function eventShow($id)
    {
        $events =Event::latest()->orderByDesc('id')->take(10)->orderBy('id')->get();
        $data =Event::findOrFail($id);
        return view('frontend.pages.events_details',compact('events','data'));
    }
    /**________________________________________________________________________________________
     * Blog Menu Pages
     * ________________________________________________________________________________________
     */
    public function blog()
    {
        $data = BlogPost::latest()->orderByDesc('id')->take(10)->orderBy('id')->get();
        return view('frontend.pages.blog', compact('data'));
    }
    public function blogDetails($id)
    {
        $data = BlogPost::findOrFail($id);
        return view('frontend.pages.blog-details', compact('data'));
    }
    /**________________________________________________________________________________________
     * Contact Menu Pages
     * ________________________________________________________________________________________
     */
    public function contact()
    {
        return view('frontend.pages.contact');
    }
    /**________________________________________________________________________________________
     * Other Menu Pages
     * ________________________________________________________________________________________
     */
    public function termsCondition()
    {
        return view('frontend.pages.terms-condition');
    }
    public function privacyPolicy()
    {
        return view('frontend.pages.privacy-policy');
    }
    /**________________________________________________________________________________________
     * Comming Soon Page
     * ________________________________________________________________________________________
     */
    public function comming_soon()
    {
        return view('comming_soon');
    }
}
