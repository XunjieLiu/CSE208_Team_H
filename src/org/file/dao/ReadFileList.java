package org.file.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
 
public class ReadFileList {

	public List<File> test(String fileDir) {
		List<File> fileList = new ArrayList<File>();
		File file = new File(fileDir);
		File[] files = file.listFiles();// ��ȡĿ¼�µ������ļ����ļ���
		if (files == null) {// ���Ŀ¼Ϊ�գ�ֱ���˳�
			return null;
		}
		// ������Ŀ¼�µ������ļ�
		for (File f : files) {
			if (f.isFile()) {
				fileList.add(f);
			} else if (f.isDirectory()) {
				System.out.println(f.getAbsolutePath());
				test(f.getAbsolutePath());
			}
		}
//		for (File f1 : fileList) {
//			System.out.println(f1.getName());
//		}
		
		return fileList;
	}

}