package org.file.dao;

import java.io.File;
import java.util.ArrayList;
import java.util.List;
 
public class ReadFileList {

	public List<File> test(String fileDir) {
		List<File> fileList = new ArrayList<File>();
		File file = new File(fileDir);
		File[] files = file.listFiles();// 获取目录下的所有文件或文件夹
		if (files == null) {// 如果目录为空，直接退出
			return null;
		}
		// 遍历，目录下的所有文件
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