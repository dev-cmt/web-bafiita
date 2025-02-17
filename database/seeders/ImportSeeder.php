<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Master\MemberType;
use App\Models\Master\CommitteeType;
use App\Models\Master\MastQualification;
use App\Models\Member\InfoAcademic;

class ImportSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        
        /**___________________________________________________
         * Member Type
         * ___________________________________________________
         */
        MemberType::create([
            'name'=>'Donor Member',
            'prefix'=>'',
            'registration_fee'=> 3000.00,
            'monthly_fee'=> 0.00,
            'annual_fee'=> 4000.00,
            'description'=>'DR - 1',
            'status'=>'1',
            'user_id'=>'1',
        ]);
        MemberType::create([
            'name'=>'General Member',
            'prefix'=>'A-',
            'registration_fee'=> 2000.00,
            'monthly_fee'=> 0.00,
            'annual_fee'=> 4000.00,
            'description'=>'DR - 2',
            'status'=>'1',
            'user_id'=>'1',
        ]);
        /**___________________________________________________
         * Committee Type
         * ___________________________________________________
         */
        CommitteeType::create([
            'name'=>'Present Executive Committee',
            'description'=>'DR - 1',
            'status'=>'1',
            'user_id'=>'1',
        ]);
        CommitteeType::create([
            'name'=>'Past Executive Committee',
            'description'=>'DR - 1',
            'status'=>'1',
            'user_id'=>'1',
        ]);
        /**___________________________________________________
         * Qualification
         * ___________________________________________________
         */
        MastQualification::create([
            'name'=>'Secondary School Certificate (SSC)',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        MastQualification::create([
            'name'=>'Higher Secondary Certificate (HSC)',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        MastQualification::create([
            'name'=>'Diploma in Engineering',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        MastQualification::create([
            'name'=>'Bachelor Degree Certificate',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        MastQualification::create([
            'name'=>'Master Degree Certificate',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        MastQualification::create([
            'name'=>'Doctor of Philosophy (Ph.D.) Certificate',
            'description' => 'Admin Input',
            'status' => 1,
            'user_id' => 1,
        ]);
        
    }
}
