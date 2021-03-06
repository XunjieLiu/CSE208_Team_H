<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Forget your Password</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="stylesheet" href="validator/dist/css/bootstrapValidator.css"/>
    <link rel="icon" href="photos/hicon.png">

    <script type="text/javascript" src="lib/jquery-3.3.1.js"></script>
    <script src="lib/bootstrap/js/bootstrap.js"></script>
    <script type="text/javascript" src="validator/dist/js/bootstrapValidator.js"></script>
    <script src="lib/background.js"></script>
</head>
<body>
<div class="container">
    <div class="col-md-6 col-md-offset-3  text-center" style="margin-top: 50px;background-color: rgba(220,220,220,0.4)">
        <div class="page-header">
            <h3 class="text-center" style="font-size: 40px;padding:35px">
                Password Assistance
            </h3>
            <div class="description">
                <p>
                    <i>Please answer the security questions to find your password</i>
                </p>
            </div>
        </div>

        <form id="forgotform" role="form" action="reset.html">
            <div class="row clearfix">
                <div class="form-group" style="padding: 0px 10px 20px;">
                    <div class="col-md-6 column" class="form-group">
                        <label>Question 1</label>
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6 column" class="input-group">
                            <label>Answer </label>
                            <input type=text class="form-control" placeholder="" name="answer1">
                        </div>
                    </div>
                    <div class="col-md-6 column" class="form-group">
                        <label>Question 2</label>
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 column" class="input-group">
                            <label>Answer </label>
                            <input type=text class="form-control" placeholder="" name="answer2">
                        </div>
                    </div>
                    <div class="col-md-6 column" class="form-group">
                        <label>Question 3</label>
                        <select class="form-control">
                            <option>1</option>
                            <option>2</option>
                            <option>3</option>
                            <option>4</option>
                        </select>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 column" class="input-group">
                            <label>Answer </label>
                            <input type=text class="form-control" placeholder="" name="answer3">
                        </div>
                    </div>
                </div>
            </div>
            <br><br>
            <div class="text-center">
                <button type="submit" class="btn btn-default">Continue</button>
            </div>
            <br>
        </form>

    </div>
</div>

<div class="backstretch" id="box1"
     style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 1080px; width: 1920px; z-index: -1; position: fixed;background-image: url(photos/backimg/1.jpg)">
</div>

<div class="backstretch" id="box2"
     style="left: 0px; top: 0px; overflow: hidden; margin: 0px; padding: 0px; height: 1080px; width: 1920px; z-index: -2; position: fixed;">
</div>

<script type="text/javascript">
    $(document).ready(function () {
        $("#forgotform").bootstrapValidator({
            message: 'This value is not valid',
            feedbackIcons: {
                valid: 'glyphicon glyphicon-ok',
                invalid: 'glyphicon glyphicon-remove',
                validating: 'glyphicon glyphicon-refresh'
            },
            fields: {/*validate*/
                answer1: {
                    message: 'Invalid',
                    validators: {
                        notEmpty: {
                            message: 'Answer cannot be empty'
                        },
                        stringLength: {
                            min: 3,
                            max: 10,
                            message: 'Answer must contain 3~10 characters'
                        },


                    }
                },

                answer2: {
                    message: 'Invalid',
                    validators: {
                        notEmpty: {
                            message: 'Answer cannot be empty'
                        },
                        stringLength: {
                            min: 3,
                            max: 10,
                            message: 'Answer must contain 3~10 characters'
                        },


                    }
                },

                answer3: {
                    message: 'Invalid',
                    validators: {
                        notEmpty: {
                            message: 'Answer cannot be empty'
                        },
                        stringLength: {
                            min: 3,
                            max: 10,
                            message: 'Answer must contain 3~10 characters'
                        },

                    }
                },
            }
        });
    });
</script>
</body>
</html>