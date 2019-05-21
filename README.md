# CSE208_Team_H

## How to check
1. Front-end pages ->WebContent->HTML
2. Back-end:
···

|--src
│  │  org.zip
│  │  
│  |--org
│  │  |--ile
│  │  │  |--dao
│  │  │      │  IFileDao.java
│  │  │      │  ReadFileList.java
│  │  │      │  
│  │  │      |--impl
│  │  │              FileDaoImpl.java
│  │  │              UploadHandleServlet.java
│  │  │              
│  │  └─user
│  │      ├─dao
│  │      │  │  IStudentDao.java
│  │      │  │  ITeacherDao.java
│  │      │  │  
│  │      │  └─impl
│  │      │          208.cld
│  │      │          newf.cld
│  │      │          newfile.cld
│  │      │          StudentDaoImpl.java
│  │      │          TeacherDaoImpl.java
│  │      │          
│  │      ├─entity
│  │      │      File.java
│  │      │      Student.java
│  │      │      Teacher.java
│  │      │      test.java
│  │      │      
│  │      ├─service
│  │      │  │  IFileService.java
│  │      │  │  IStudentService.java
│  │      │  │  ITeacherService.java
│  │      │  │  
│  │      │  └─impl
│  │      │          FileServiceImpl.java
│  │      │          StudentServiceImpl.java
│  │      │          TeacherServiceImpl.java
│  │      │          
│  │      ├─servlet
│  │      │      AccessServlet.java
│  │      │      AddNoticeServlet.java
│  │      │      AddPlanServlet.java
│  │      │      AddToMyClassServlet.java
│  │      │      AddUserServlet.java
│  │      │      ArcServlet.java
│  │      │      BusiServlet.java
│  │      │      ChangeMyInfo.java
│  │      │      DeleteFileServlet.java
│  │      │      DeleteFromMyClassServlet.java
│  │      │      DeleteNoticeServlet.java
│  │      │      DeletePlanServlet.java
│  │      │      DeleteUserServlet.java
│  │      │      DemoServlet.java
│  │      │      DownloadServlet.java
│  │      │      ForgotServlet.java
│  │      │      RegisterServlet.java
│  │      │      SearchServlet.java
│  │      │      SetQuestionServlet.java
│  │      │      ShowAllFileServlet.java
│  │      │      ShowMyClassServlet.java
│  │      │      ShowMyInfoServlet.java
│  │      │      ShowNoticeServlet.java
│  │      │      ShowOneFileDetailServlet.java
│  │      │      ShowPlanServlet.java
│  │      │      Test.java
│  │      │      TestListServlet.java
│  │      │      TestSession.java
│  │      │      UpdateUserServlet.java
│  │      │      UploadGetModuleServlet.java
│  │      │      UploadServlet.java
│  │      │      
│  │      └─util
│  │              UserUtil.java

···
## Notification

1. Not all files are used in our porject, because we create all possible files before the implementation and only implemented some of them.
2. Front-end files such as JSP or HTML files are under WebContent->HTML folder, other files are mainly for testing during development.
3. For download and upload functions you may want to check, UploadServlet.java, ArcServlet and BusiServlet would be enough for you.
4. Login function -> AccessServlet, Register function -> RegisterServlet.java, SetQuestionServlet.java. 
5. In front-end, jsp are only used to nest java code, so some functions may have one jsp file and one html file with the same name, because I need to nest java codes according to the html files.
