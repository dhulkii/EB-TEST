from django.http import HttpResponse

def hello(request):
   text = """<!DOCTYPE html>
<html>
<head>
    <title>Centered Content</title>
    <style>
        body {
            background-color: #A3EBB1;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        p {
            font-size: 50px;
        }
    </style>
</head>
<body>
     <p>Hi Welcome To Django &#128512; !</p>
</body>
</html>
"""
   return HttpResponse(text)