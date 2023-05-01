@extends('layouts.studentpanel.master')


@section('content')
<div class="container-xxl flex-grow-1 container-p-y">
    @if (\Session::has('success'))
        <div class="row">
            <div class="col-md-12">
                <div id="notificationAlert" style="display: block;">

                    <div class="alert alert-warning">
                        <span style="color:black;">
                            {!! \Session::get('success') !!}
                        </span>
                    </div>
                </div>
            </div>
        </div>
    @endif
    <div class="d-flex justify-content-between">
        <div>
            <h4 class="fw-bold py-3 mb-4"><span class="text-muted fw-light">Skill Test</h4>
        </div>        
    </div>

    <div class="row">
        
        @if ($participated_exam == true)
            <div class="col-md-12 mb-3">
                <h3>You have already participated in the Exam</h3>
                <p>You scored: {{ $user->skill_test->marks_obtained ?? NULL }}</p>
            </div>
            @if ($user->skill_test->marks_obtained >= 3)
                <div class="col-md-12 mb-3">
                    <h1>Congratulations you acheived the Batch of Digital Marketing!</h1>
                    <img src="https://th.bing.com/th/id/R.41eb4de502151b3ff0587cd12eb96ded?rik=ufnxHHE8gANkPg&riu=http%3a%2f%2famericantesol.com%2fblogger%2fwp-content%2fuploads%2f2013%2f08%2fProfessional-Development-for-English-Language-Teachers.gif&ehk=Sc6FH5uzpZv5VnDAgKOVhCbE0Iryoamq3RRimtfjqCE%3d&risl=&pid=ImgRaw&r=0" alt="Medal" style="width:150px;height:150px;">
                </div>
            @endif
            
        @else
            <div class="col-md-12 mb-3">
                <div class="card mb-4">
                    <div class="card-header d-flex align-items-center justify-content-between">
                        <h5 class="mb-0">Annwer the Questions</h5>
                    </div>
                    <div class="card-body">
                        <form action="{{route('skill_test_exam_submission')}}" method="POST" enctype="multipart/form-data">
                            @csrf
                            <div class="row mb-3">
                            <div class="col-md-12 mb-3">
                                    <div>
                                        <h4>1. Which of the following is a common method for measuring website traffic?</h4>
                                    </div>                                
                                    <div>
                                        <p>A) Search engine optimization</p>
                                        <p>B) Conversion rate optimization</p>
                                        <p>C) Pay-per-click advertising</p>
                                        <p>D) Web analytics</p>
                                    </div>

                                    <div style="width:250px;">
                                        <select name="answer_1" class="form-control" required>
                                            <option value="" selected disabled>--Select Option--</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                        </select>
                                    </div>
                            </div>
                            
                            <hr>

                            <div class="col-md-12 mb-3">
                                    <div>
                                        <h4>2. Which of the following is a benefit of social media marketing?</h4>
                                    </div>                                
                                    <div>
                                        <p>A) Increased website traffic</p>
                                        <p>B) Increased email open rates</p>
                                        <p>C) Increased sales revenue</p>
                                        <p>D) All of the above</p>
                                    </div>

                                    <div style="width:250px;">
                                        <select name="answer_2" class="form-control" required>
                                            <option value="" selected disabled>--Select Option--</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                        </select>
                                    </div>
                            </div>
                            <hr>

                                <div class="col-md-12 mb-3">
                                    <div>
                                        <h4>3. Which of the following is an example of a lead magnet?</h4>
                                    </div>                                
                                    <div>
                                        <p>A) Newsletter subscription form</p>
                                        <p>B) Blog post</p>
                                        <p>C) Free e-book download</p>
                                        <p>D) Social media post</p>
                                    </div>

                                    <div style="width:250px;">
                                        <select name="answer_3" class="form-control" required>
                                            <option value="" selected disabled>--Select Option--</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                        </select>
                                    </div>
                            </div>
                            <hr>

                                <div class="col-md-12 mb-3">
                                    <div>
                                        <h4>4. Which of the following is a common form of email marketing?</h4>
                                    </div>                                
                                    <div>
                                        <p>A)  Direct mail</p>
                                        <p>B) Text message marketing</p>
                                        <p>C) Newsletter</p>
                                        <p>D) Display advertising</p>
                                    </div>

                                    <div style="width:250px;">
                                        <select name="answer_4" class="form-control" required>
                                            <option value="" selected disabled>--Select Option--</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                        </select>
                                    </div>
                            </div>
                            <hr>


                            <div class="col-md-12 mb-3">
                                    <div>
                                        <h4>5. Which of the following is an example of a key performance indicator (KPI) for a pay-per-click (PPC) advertising campaign?</h4>
                                    </div>                                
                                    <div>
                                        <p>A)  Impressions</p>
                                        <p>B) Click-through rate (CTR)</p>
                                        <p>C) Social media engagement</p>
                                        <p>D) Website bounce rate</p>
                                    </div>

                                    <div style="width:250px;">
                                        <select name="answer_5" class="form-control" required>
                                            <option value="" selected disabled>--Select Option--</option>
                                            <option value="A">A</option>
                                            <option value="B">B</option>
                                            <option value="C">C</option>
                                            <option value="D">D</option>
                                        </select>
                                    </div>
                            </div>
                            <hr>


                            </div>
                        

                            
                            <div class="row justify-content-start">
                                <div class="col-sm-10">
                                    <button type="submit"  class="btn btn-success btn-sm">Save Changes</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        @endif
        
        
     
    </div>




</div>
@endsection


@section('footer_js')



@endsection