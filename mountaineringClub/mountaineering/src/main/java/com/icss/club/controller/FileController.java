package com.icss.club.controller;

import java.io.File;
import java.io.IOException;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.icss.club.entity.Mountain;
import com.icss.club.service.MountainService;

@Controller
public class FileController {

	@Resource
	private MountainService mService;

	@RequestMapping(value = { "/upload_file" }, method = RequestMethod.POST)
	@ResponseBody
	public String upload(HttpServletRequest request,@RequestParam(value = "img")MultipartFile file) {
		//获取文件上传时的数据
		String imgName = file.getOriginalFilename();
		//获取路径
		String path = request.getServletContext().getRealPath("/statics/images");
		File f=new File(path,imgName);
		try {
			//将上传文件写到指定路径
			file.transferTo(f);
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Mountain mountain =new Mountain();
		mountain.setMRoadmap("statics/images/" + imgName);
		mService.add(mountain);
		Integer MId=mountain.getMId();
		return MId.toString(); 
//		File f = new File(path);
//		if (!f.exists()) {
//			f.mkdirs();
//		}
//		if (!file.isEmpty()) {
//			FileOutputStream fos;
//			try {
//				fos = new FileOutputStream(path + img);
//				InputStream in = file.getInputStream();
//				int a = 0;
//				if ((a = in.read()) != -1) {
//					fos.write(a);
//				}
//				in.close();
//				fos.close();
//			} catch (FileNotFoundException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		System.out.println(path + img);
	}
}
