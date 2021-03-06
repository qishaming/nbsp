package com.jk.util;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;

public class FileUtil {
	/**
	 * <pre>upLoad(用于上传文件)   
	 * @param flie  前台传过来的文件
	 * @param fileName 前台传过来的文件名
	 * @param folderName 要上传到的文件夹名称
	 * @return  文件的相对路径</pre>
	 */
	public static String upLoad(File flie,String fileName,String folderName){
		BufferedInputStream bis =null;
		BufferedOutputStream bos = null;
		String url="";
		try {
			//读取文件  就是输入流
			FileInputStream in = new FileInputStream(flie);
			//创建缓冲输入流   提高效率
			bis= new BufferedInputStream(in);
			//获取项目的真实路径
			String realPath = ServletActionContext.getServletContext().getRealPath("/"+folderName);
			//判断要写入的文件夹是否存在
			File file = new File(realPath);
			if(!file.exists()){ //判断文件是否存在
				file.mkdir(); //根据文件的路径  创建文件夹
			}
			//重命名文件名  保证文件的唯一性
			
			String newFileName = UUID.randomUUID()+"_"+fileName;
			url+="/"+folderName+"/"+newFileName;
			//写文件  就是输出流
			FileOutputStream out = new FileOutputStream(realPath+"\\"+newFileName);
			//创建缓冲输出流 提高效率
			bos = new BufferedOutputStream(out);
			//把上传的文件写入到指定文件内  
			byte[] b =  new byte[1024];
			while(bis.read(b) != -1){
				bos.write(b);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			//关闭流
			try {
				if(bis != null){
					bis.close();
				}
				if(bos != null){
					bos.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		return ServletActionContext.getRequest().getContextPath()+url;
	}
	// 下载文件
	/**
	 * <pre>downLoad(下载指定文件)   
	 * @param filePath 数据库存储的路径</pre>
	 */
	public static void downLoad(String filePath){
		// 1. 获得文件的真实路径
		String newPath = ServletActionContext.getServletContext().getRealPath(filePath);
		// 2. 实例化 文件对象  
		File f = new File(newPath);
		// 3. 获得文件名
		String fileName = f.getName();
		// 4. 定义输入输出流
		BufferedInputStream buffIn = null;
		BufferedOutputStream buffOut = null;
		try {
			// 5. 获得输入流
			buffIn = new BufferedInputStream(new FileInputStream(f));
			// 6. 获得 response  和  request (获得 request 和 response )
			HttpServletResponse response  = ServletActionContext.getResponse();
			HttpServletRequest request = ServletActionContext.getRequest();
			// 7. 获得输入流       response.getOutputStream() 是servlet的输出流  浏览器的输出流
			buffOut = new BufferedOutputStream(response.getOutputStream());
			
			// 8. 对浏览器进行设置========================================================
			//解决浏览器兼容问题
	        if (request.getHeader("User-Agent").toLowerCase().indexOf("firefox") > 0) {
	        	fileName = new String(fileName.getBytes("GB2312"),"ISO-8859-1");
	        } else {
	        	// 对文件名进行编码处理中文问题
	        	fileName = java.net.URLEncoder.encode(fileName, "UTF-8");// 处理中文文件名的问题
	        	fileName = new String(fileName.getBytes("UTF-8"), "GBK");// 处理中文文件名的问题
	        }
	        response.reset();
	        response.setContentType("application/x-msdownload");// 不同类型的文件对应不同的MIME类型
		     // inline在浏览器中直接显示，不提示用户下载
		        // attachment弹出对话框，提示用户进行下载保存本地
		        // 默认为inline方式
	        response.setHeader("Content-Disposition", "attachment;filename="+fileName);
			//==========================================================================
			// 9. 循环 读写 赋值
			byte[] b = new byte[1024];
			int s = 0;
			while((s=buffIn.read(b))!=(-1)){
				buffOut.write(b);
			}
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{
			try {
				if(buffIn!=null){
					buffIn.close();
				}
				if(buffOut!=null){
					buffOut.close();
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	} 
	/**
	 * <pre>deleteFile(这里用一句话描述这个方法的作用)   
	 * 删除失败返回  false  路径下文件不存在  返回false
	 * 删除成功返回 true </pre>
	 */
	public static boolean deleteFile(String filePath){
		//获取物理路径
		String newPath = ServletActionContext.getServletContext().getRealPath(filePath);
		System.out.println(newPath+"============");
		//实例化 文件
		File file = new File(newPath);
		//判断路径 和  文件是否存在
		if(file.exists() && file.isFile()){
			if(file.delete()){
				return true;
			}else{
				return false;
			}
		}else{
			return false;
		}
	}
	public static void downloadFile(HttpServletRequest request,
			HttpServletResponse response, String filePath, String fileName) {
		BufferedInputStream bis = null;
		InputStream is = null;
		OutputStream os = null;
		BufferedOutputStream bos = null;
		try {
			File file = new File(filePath);
			is = new FileInputStream(file); // :文件流的声明
			os = response.getOutputStream(); // 重点突出
			bis = new BufferedInputStream(is);
			bos = new BufferedOutputStream(os);

			if (request.getHeader("User-Agent").toLowerCase()
					.indexOf("firefox") > 0) {
				fileName = new String(fileName.getBytes("GB2312"), "ISO-8859-1");
			} else {
				// 对文件名进行编码处理中文问题
				fileName = java.net.URLEncoder.encode(fileName, "UTF-8");// 处理中文文件名的问题
				fileName = new String(fileName.getBytes("UTF-8"), "GBK");// 处理中文文件名的问题
			}

			response.reset(); // 重点突出
			response.setCharacterEncoding("UTF-8"); // 重点突出
			response.setContentType("application/x-msdownload");// 不同类型的文件对应不同的MIME类型
																// // 重点突出
			// inline在浏览器中直接显示，不提示用户下载
			// attachment弹出对话框，提示用户进行下载保存本地
			// 默认为inline方式
			response.setHeader("Content-Disposition", "attachment;filename="
					+ fileName);
			// response.setHeader("Content-Disposition",
			// "attachment; filename="+fileName); // 重点突出
			int bytesRead = 0;
			byte[] buffer = new byte[4096];// 4k或者8k
			while ((bytesRead = bis.read(buffer)) != -1) { // 重点
				bos.write(buffer, 0, bytesRead);// 将文件发送到客户端
			}

		} catch (Exception ex) {
			throw new RuntimeException(ex.getMessage());
		} finally {
			// 特别重要
			// 1. 进行关闭是为了释放资源
			// 2. 进行关闭会自动执行flush方法清空缓冲区内容
			try {
				if (null != bis) {
					bis.close();
					bis = null;
				}
				if (null != bos) {
					bos.close();
					bos = null;
				}
				if (null != is) {
					is.close();
					is = null;
				}
				if (null != os) {
					os.close();
					os = null;
				}
			} catch (Exception ex) {
				throw new RuntimeException(ex.getMessage());
			}
		}
	}
}
