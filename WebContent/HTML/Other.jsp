<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="lib/bootstrap/css/bootstrap_flatly.css">
    <link rel="icon" href="photos/hicon.png">
    <link rel="stylesheet" href="style.css">
    <script src="lib/jquery-3.3.1.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="lib/file_upload.js"></script>
    <link rel="stylesheet" href="lib/fileinput/fileinput.css">
    <script src="lib/fileinput/fileinput.js"></script>
    <title>Heuristic | Upload</title>
<title>Insert title here</title>
</head>
<body>
<script>
    $(function () {
        initFileInput("input-id");
    })
    function initFileInput(ctrlName) {
        var control = $('#' + ctrlName);
        control.fileinput({
            uploadUrl: "../UploadServlet", //上传的地址
            allowedFileExtensions: ['txt', 'java', 'docx'],//接收的文件后缀
            //uploadExtraData:{"id": 1, "fileName":'123.mp3'},
            uploadAsync: true, //默认异步上传
            showUpload: true, //是否显示上传按钮
            showRemove : true, //显示移除按钮
            showPreview : false, //是否显示预览
            showCaption: false,//是否显示标题
            browseClass: "btn btn-primary", //按钮样式
            enctype: 'multipart/form-data',
            validateInitialCount:true,
            previewFileIcon: "<i class='glyphicon glyphicon-king'></i>",
            msgFilesTooMany: "选择上传的文件数量({n}) 超过允许的最大数值{m}！",
        }).on('filepreupload', function(event, data, previewId, index) {     //上传中
            var form = data.form, files = data.files, extra = data.extra,
                response = data.response, reader = data.reader;
            console.log('File is uploading');
        })
    }
</script>
<div class="container">
    <div class="row clearfix">
        <div class="col-md-12 column">
            <div class="navbar navbar-default navbar-fixed-top" role="navigation" id="temp_nav">
                <div class="navbar-header">
                    <button class="navbar-toggle" data-toggle="collapse" data-target="#responsive-navbar">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a href="dashboard.html" class="href navbar-brand"><strong>Heuristic</strong></a>
                </div>

                <div class="collapse navbar-collapse" id="responsive-navbar">
                    <ul class="nav navbar-nav">
                        <li><a href="dashboard.html">Dashboard</a></li>
                        <li class="dropdown active">
                            <a href="file_download.jsp" class="dropdown-toggle" data-toggle="dropdown">File<strong
                                    class="caret"></strong></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <a href="file_upload.html">Upload</a>
                                </li>
                                <li>
                                    <a href="file_download.html">Download</a>
                                </li>
                            </ul>
                        </li>
                        <li><a href="calendar.html">Calendar</a></li>
                    </ul>
                    <form action="" class="navbar-form navbar-left">
                        <input type="text" placeholder="Search" class="form-control" id="key">
                        <button type="submit" id="open">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>
                    </form>
                    <div class="profile navbar-right">
                        <ul class="nav navbar-nav">
                            <li><a href="login.html">Log out</a></li>
                            <li>
                                <button class="btn btn-primary btn-xs navbar-btn navbar-right"><a href="profile.html">Profile</a>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="col-md-12" style="margin-top: 100px">
        <form id="form" action="/UploadServlet" method="post" enctype="multipart/form-data">
            <div class="row form-group">
                <label class="col-md-4">Upload your file</label>
                <div class="col-sm-12">
                    <input id="input-id" name="file" multiple type="file" data-show-caption="true">
                </div>
            </div>
        </form>
    </div>
</div>


</body>
</html>