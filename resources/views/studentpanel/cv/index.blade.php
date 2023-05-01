<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{ $user->name }} CV</title>

       <style>
      <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>{{ $user->name }} CV</title>

    <style>
        /* Add your custom styles for the CV here */
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            color: #444;
            padding: 20px;
        }
        h1 {
            font-size: 36px;
            margin-bottom: 10px;
            color: #337ab7;
            text-transform: uppercase;
        }
        h2 {
            font-size: 24px;
            margin-bottom: 10px;
            color: #337ab7;
        }
        h3 {
            font-size: 18px;
            margin-bottom: 5px;
        }
        ul {
            margin: 0;
            padding: 0;
            list-style: none;
        }
        li {
            margin-bottom: 5px;
        }
        img {
            max-width: 150px;
            margin-right: 20px;
            border-radius: 50%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .section {
            margin-bottom: 30px;
            padding: 20px;
            background-color: #fff;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }
        .section-title {
            font-size: 24px;
            margin-bottom: 10px;
            color: #337ab7;
            text-transform: uppercase;
        }
        .sub-section {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div>
        <img src="data:image/jpeg;base64,{{ base64_encode(file_get_contents(str_replace('public', 'storage', $user->image->url))) }}" alt="Student Image" style="max-width:150px;">
        <div>
            <h1>Name: {{ $user->name }}</h1>
            <h3>Email: {{ $user->email }}</h3>
            <h3>Gender: {{ $user->gender }}</h3>
            <h3>Phone: {{ $user->phone }}</h3>
            <h3>Address: {{ $user->address }}</h3>
            <h3>Status: {{ ($user->status == 1)? 'Active' : 'Inactive' }}</h3>
        </div>
    </div>
    <br>
    <br>
    
    <h2>Education:</h2>
    <ul>
        @foreach ($user->education as $edu)
            <li><b>{{ $edu->institution }}</b></li>
            <ul>
                <li>{{ $edu->degree }} | {{ $edu->major }}</li>
                <li>{{ $edu->start }} - {{ $edu->end }}</li>
            </ul>
            <br>
        @endforeach
    </ul>
    <br>
    <br>
    
    <h2>Work Experience:</h2>
    <ul>
        @foreach ($user->works as $work)
            <li><b>{{ $work->work_place }}</b></li>    
            <li>{{ $work->designation }}</li>
            <ul>
                <li>{{ $work->start }} - {{ $work->end }}</li>
                <li>{{ $work->job_description }}</li>
            </ul>
            <br>
        @endforeach
    </ul>
    <br>
    <br>

    <h2>Work Experience:</h2>
    <ul>
        @foreach ($user->training as $train)
            <li><b>{{ $train->institution }}</b></li>    
            <li>{{ $train->title }} | {{ $train->duration }}</li>
            <ul>
                <li>{{ $train->training_date }}</li>
                <li>{{ $train->description }}</li>
            </ul>
            <br>
        @endforeach
    </ul>
    <br>
    <br>

   @if(!empty($user->skills))
         <h2>Skills:</h2>
            <ul>
                @foreach ($user->skills as $skill)
                    <li><b>{{ $skill->course_name }}</b></li>    
                    <li>{{ $skill->faculty->name}}</li>
                    <ul>
                        <li>{{ $skill->course_completed }}</li>
                        <li>Grade: {{ $skill->course_grade }}</li>
                    </ul>
                    <br>
                @endforeach
            </ul>
            <br>
            <br>
   @endif


   @if(!empty($user->job_recommendations))
         <h2>Recommendations:</h2>
            <ul>
                @foreach ($user->job_recommendations as $recommendation)
                    <li><b>{{ $recommendation->faculty->name }}</b></li>    
                    <li>{{ $recommendation->faculty->email}}</li>
                    <li>{{ $recommendation->faculty->phone}}</li>
                    
                    <br>
                @endforeach
            </ul>
            <br>
            <br>
   @endif



</body>
</html>
