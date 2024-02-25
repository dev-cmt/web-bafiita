<x-reports-layout>
    <style>
        body {
            margin: 0;
            padding: 0;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            background-color: #ffffff;
        }

        .bg-white {
            flex: 1;
            padding-bottom: 50px;
        }
        .footer {
            text-align: center;
            padding: 10px;
            position: fixed;
            bottom: 0;
            width: 100%;
        }
        .table th, .table td {
            padding: 0px 10px !important;
        }
    </style>
    <div class="bg-white">
        <div class="d-flex justify-content-center">
            <div class="text-center">
                <h3>Payslip</h3>
                <h6>Icon Information Systems Ltd.</h6>
                <h6>Tower 2, Suite # 12/D, Confidence Centre,</h6>
                <h6> Dhaka 1212</h6>
            </div>
        </div>
        <table class="table table-borderless">
            <tr>
                <td><strong> Employee Name </strong></td>
                <td>Motiur Rahman</td>
                <td><strong> Total Day </strong></td>
                <td>12 Day</td>
            </tr>
            <tr>
                <td><strong> Date Of Joining </strong></td>
                {{-- <td>{{date("j F, Y", strtotime($data->user->infoPersonal->joining_date))}}</td> --}}
                <td><strong> Working </strong></td>
                {{-- <td>{{$presentCount}} Day</td> --}}
            </tr>
            <tr>
                <td><strong> Department </strong></td>
                {{-- <td>{{$data->user->infoPersonal->mastDepartment->dept_name}}</td> --}}
                <td><strong> Leave </strong></td>
                {{-- <td>{{$leaveCount}} Day</td> --}}
            </tr>
            <tr>
                <td><strong> Designation </strong></td>
                {{-- <td>{{$data->user->infoPersonal->mastDesignation->desig_name}}</td> --}}
                <td><strong> Govt. Holiday </strong></td>
                {{-- <td>{{$govtVacationCount}} Day</td> --}}
            </tr>
            <tr>
                <td><strong> Pay Period </strong></td>
                {{-- <td>{{ date("j F, Y", strtotime($data->salary_year . '-' . $data->salary_month . '-01')) }}</td> --}}
                <td><strong> Month Of Week </strong></td>
                {{-- <td>{{$weeklyVacationCount}} Day</td> --}}
            </tr>
        </table>
        <br>
        <div class="table-responsive">
            <table id="items-table" class="table table-bordered">
                <thead class="thead-light">
                    <tr>
                        <th>Earnings</th>
                        <th>Amount</th>
                        <th>Deducions</th>
                        <th>Amount</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td><strong>Basic</strong></td>
                        {{-- <td class="text-right">{{$data->basic_pay}}</td> --}}
                        <td><strong>Late</strong></td>
                        {{-- <td class="text-right">{{( $data->basic_pay / 30 ) * $lateCount}}</td> --}}
                    </tr>
                    <tr>
                        <td><strong>House Rent</strong></td>
                        {{-- <td class="text-right">{{$data->house_rent_pay}}</td> --}}
                        <td><strong>Unauthorized Absent</strong></td>
                        {{-- <td class="text-right">{{( $data->basic_pay / 30 ) * $unauthorized}}</td> --}}
                    </tr>
                    <tr>
                        <td><strong>Medical Pay</strong></td>
                        {{-- <td class="text-right">{{$data->medical_pay}}</td> --}}
                        <td><strong>Leave Without Pay</strong></td>
                        {{-- <td class="text-right">{{( $data->basic_pay / 30 ) * $absentCount}}</td> --}}
                    </tr>
                    <tr>
                        <td><strong>Conveyance Pay</strong></td>
                        {{-- <td class="text-right">{{$data->conveyance_pay}}</td> --}}
                        <td></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td><strong>Additional Pay</strong></td>
                        {{-- <td class="text-right">{{$data->additional_pay}}</td> --}}
                        <td></td>
                        <td class="text-right"></td>
                    </tr>
                    <tr>
                        <td class="text-right"><strong>Total Earnings</strong></td>
                        <td class="text-right">
                            {{-- {{ number_format(($data->basic_pay ?? 0) + ($data->house_rent_pay ?? 0) + ($data->medical_pay ?? 0) + ($data->conveyance_pay ?? 0) + ($data->additional_pay ?? 0), 2) }} --}}
                        </td>
                        <td class="text-right"><strong>Total Deducions</strong></td>
                        {{-- <td class="text-right">{{$data->dedaction}}</td> --}}
                    </tr>
                    <tr>
                        <td></td>
                        <td class="text-right"></td>
                        <td><strong>Net Pay</strong></td>
                        {{-- <td class="text-right">{{$data->net_pay}}</td> --}}
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    
    <div class="footer">
        <table class="table table-borderless">
            <tr>
                <td></td>
                <td class="text-center">
                    <h5 style="border-bottom:1px solid #222;padding-bottom:40px">Employee Signature</h5>
                </td>
                <td></td>
                <td></td>
                <td class="text-center">
                    <h5 style="border-bottom:1px solid #222;padding-bottom:40px">Employee Signature</h5>
                </td>
                <td></td>
            </tr>
        </table>
    </div>
    
    
    
    
</x-reports-layout>