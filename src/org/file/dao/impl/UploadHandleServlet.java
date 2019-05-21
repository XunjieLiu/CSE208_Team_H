package org.file.dao.impl;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class UploadHandleServlet
 */
@SuppressWarnings("serial")
@WebServlet("/UploadHandleServlet")
public class UploadHandleServlet extends HttpServlet {
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�õ��ϴ��ļ��ı���Ŀ¼�����ϴ����ļ������WEB-INFĿ¼�£����������ֱ�ӷ��ʣ���֤�ϴ��ļ��İ�ȫ
		String savePath = this.getServletContext().getRealPath("/WEB-INF/upload");
		File file = new File(savePath);
		
		// �ж��ϴ��ļ��ı���Ŀ¼�Ƿ����
		if(!file.exists() && !file.isDirectory()) {
			System.out.println(savePath + "This directory does not exist, need to be created");
			
			//����Ŀ¼
			file.mkdir();
		}
		
		// ��Ϣ��ʾ
		String message = "";
		
		// ʹ��Apache�ļ��ϴ���������ļ��ϴ�����
		// 1. ����һ��DiskFileItemFactory����
		DiskFileItemFactory factory = new DiskFileItemFactory();
		// 2. ����һ���ļ��ϴ��Ľ�����
		ServletFileUpload upload = new ServletFileUpload(factory);
		// ����ϴ��ļ�������������
		upload.setHeaderEncoding("UTF-8");
		// 3. �ж��ύ�����������Ƿ����ϴ���������
		if(!ServletFileUpload.isMultipartContent(request)) {
			return; // ���մ�ͳ������ȡ����
		}
		
		// 4��ʹ��ServletFileUpload�����������ϴ����ݣ�
		// ����������ص���һ��List<FileItem>���ϣ�ÿһ��FileItem��Ӧһ��Form����������
		try {
			List<FileItem> list = upload.parseRequest(request);
			
			for(FileItem item : list) {
				// ���fileitem�з�װ������ͨ�����������
				if(item.isFormField()) {
					String name = item.getFieldName();
					// ���������������
					String value = item.getString("UTF-8");
					System.out.println(name + "=" + value);
				}else {
					// ���fileitem�з�װ�����ϴ��ļ�
					String filename = item.getName();
					System.out.println(filename);
					if(filename == null || filename.trim().equals("")) {
						continue;
					}
					
					// ע�⣺��ͬ��������ύ���ļ����ǲ�һ���ģ���Щ������ύ�������ļ����Ǵ���·���ģ�
					// �磺  c:\a\b\1.txt������Щֻ�ǵ������ļ������磺1.txt
					
					// �����ȡ�����ϴ��ļ����ļ�����·�����֣�ֻ�����ļ�������
					filename = filename.substring(filename.lastIndexOf("\\") + 1);
					// ��ȡitem�е��ϴ��ļ���������
					InputStream in = item.getInputStream();
					FileOutputStream out = new FileOutputStream(savePath + "\\" + filename);
					// ����һ��������
					byte buffer[] = new byte[1024];
					// �ж��������е������Ƿ��Ѿ�����ı�ʶ
					int len = 0;
					//ѭ�������������뵽���������У�(len=in.read(buffer))>0�ͱ�ʾin���滹������
					while((len=in.read(buffer)) > 0) {
						//ʹ��FileOutputStream�������������������д�뵽ָ����Ŀ¼(savePath + "\\" + filename)����
						out.write(buffer, 0, len);
					}
					
					// �ر�������
					in.close();
					//�ر������
					out.close();
					// ɾ�������ļ��ϴ�ʱ���ɵ���ʱ�ļ�
					item.delete();
					
					message = "Success";
				}
			}
		} catch (FileUploadException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
			message = "Fail";
			e.printStackTrace();
		}
		
		System.out.println(getServletContext().getRealPath("/"));
		request.setAttribute("message",message);
		request.getRequestDispatcher("/HTML/message.html").forward(request, response);
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
