package com.company.shopping.action;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang.StringUtils;
import org.apache.log4j.Logger;
import org.apache.struts2.ServletActionContext;

public class BrowerAction {
	protected final Logger logger = Logger	.getLogger(BrowerAction.class);
	/** ~~~ �ϴ��ļ��ı���·�� */
	private static final String FILE_UPLOAD_DIR = "upload";
	/** ~~~ �ϴ��ļ��ı������һ��·������ʾ�洢���� */
	private static final String FILE_UPLOAD_SUB_IMG_DIR = "image";

	public void execute() {
		HttpServletRequest request = ServletActionContext.getRequest();
		HttpServletResponse response = ServletActionContext.getResponse();
		String typeStr = request .getParameter("type");
		String floderName = request.getParameter("fo");
		
		if (logger.isDebugEnabled()) {
			logger.debug("����ļ����ļ���ʽ:" + typeStr);
		}

		// ��λ��Ŀ���ļ��� �� �ϴ�Ŀ¼
		String realPath = "";
//		if(StringUtils.isNotBlank(floderName)){
//			floderName = URLDecoder.decode(floderName);
//			// ��������д����ļ������ƣ���λ���ļ�����
//			realPath = request.getSession().getServletContext().getRealPath(floderName);
//			if(logger.isInfoEnabled()){
//				logger.info("sub floder:"+realPath);
//			}
//		}else if(StringUtils.equalsIgnoreCase(typeStr, "Image")){
//			// ��������в������ļ������ƣ���ʹ��Ĭ�ϵ��ļ���
//			realPath = request.getSession().getServletContext().getRealPath(File.separator+FILE_UPLOAD_DIR+ File.separator+FILE_UPLOAD_SUB_IMG_DIR);
//			if(logger.isInfoEnabled()){
//				logger.info("default floder:"+realPath);
//			}
//		}
		realPath = request.getSession().getServletContext().getRealPath(File.separator+FILE_UPLOAD_DIR+ File.separator+FILE_UPLOAD_SUB_IMG_DIR);
		System.out.println("realPath"+realPath);
		File folder = new File(realPath);
		System.out.println(folder.getParent());
		if(!folder.exists()){
			System.out.println("return exit");
			return;
		}
		
		// �洢��Ŀ¼ ,·����Ҫ��/freemarker��ʼ
		List<String> subFolderSet = new ArrayList<String>();
		// �洢�ļ���
		List<String> subFileerSet = new ArrayList<String>();
		
		File[] subFiles = folder.listFiles();
		if(null != subFiles && 0 < subFiles.length){
			for(int i=0;i < subFiles.length; i++){
				File _file = subFiles[i];
				if(_file.isDirectory()){
					subFolderSet.add("upload/image");
				} else {
					subFileerSet.add(_file.getName());
				}
			}
		}
		
		String callback = request.getParameter("CKEditorFuncNum");
		System.out.println(callback);
		PrintWriter out;
		
		response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		try {
			out = response.getWriter();
			out.println("<script type='text/javascript'><!--");
			
			// ������ѡ��js
			out.println("function choose(obj){");
			out.println("window.opener.CKEDITOR.tools.callFunction(" + callback
					+ ",obj)");
			out.println("window.close();");
			out.println("}");
			
			// �����ļ��е����Ӧjs
			out.println("function view(obj){window.location.href='browerServer.do?type=image&CKEditorFuncNum="+callback+"&fo='+obj;}");
			out.println("// --></script>");
			
			// ������ʾһ�����ض���Ŀ¼��Ҳ���Ƿ���freemarkerĿ¼
			out.print("<div style='width:100%;float:left;word-break:break-all;' onclick =view('" + URLEncoder.encode("/upload/image") + "')>");
			out.print("<span>[��Ŀ¼]<span/>");
			out.print("</div>");
			System.out.println("here");
			
			// ��������ļ��У���ʾ�ϼ�Ŀ¼����
			if(StringUtils.isNotBlank(floderName) && !checkIsRoot(folder)){
				String parent = "upload/image";
				out.print("<div style='width:100%;float:left;word-break:break-all;' onclick =view('" + URLEncoder.encode(parent) + "')>");
				out.print("<span>[�ϼ�Ŀ¼]"+parent+"<span/>");
				out.print("</div>");
				if(logger.isDebugEnabled()){
					logger.debug("�����ϼ�Ŀ¼:"+ parent);
				}
			}
			
			// ������ļ��У�����ʾ�ļ��в��ҿ����ٴδ����¼����ϼ�Ŀ¼
			if(0 < subFolderSet.size()){
				Iterator<String> subFolderSetIndex = subFolderSet.iterator();
				while(subFolderSetIndex.hasNext()){
					String ftemp = subFolderSetIndex.next();
					// ����url���ݵ�ʱ���ļ��ָ����������⣬��Ҫת��
					out.print("<div style='width:100%;float:left;word-break:break-all;' onclick =view('" + URLEncoder.encode(ftemp) + "')>");
					out.print("<span>[�¼�Ŀ¼]"+ftemp+"</span>");
					out.print("</div>");
					
					if(logger.isDebugEnabled()){
						logger.debug("�����Ŀ¼��"+ftemp);
					}
				}
			}
			
			// ������ļ���������ѡ���ļ����ؼ���
			if(0 < subFileerSet.size()){
				Iterator<String> subFileerSetIndex = subFileerSet.iterator();
				while(subFileerSetIndex.hasNext()){
					String ftemp = subFileerSetIndex.next();
					String f = "/upload/image";
					String fileUrl = f + File.separator + ftemp;
					fileUrl = StringUtils.replace(fileUrl, "//", "/");
					
					out.print("<div style='width:150px;height:150px;float:left;word-break:break-all;padding:5px;background:#666699;margin:5px;'>");
					out.print("<a href=\"javascript:void(0)\" mce_href=\"javascript:void(0)\" onclick=choose('"+fileUrl+"')><img style='border:none;width:145px;height:145px;' src=\""+fileUrl+"\" mce_src=\""+fileUrl+"\" title='"+fileUrl+"'/></a>");
					out.print("</div>");
					
					if(logger.isDebugEnabled()){
						logger.debug("����ļ���"+fileUrl);
					}
				}
			}
			
			out.flush();
			out.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
		
	/**
	 * �ж��Ƿ��Ǹ�Ŀ¼
	 * @param floderName
	 * @return
	 */
	private static boolean checkIsRoot(File folder){
		String name = folder.getName();
		return StringUtils.equalsIgnoreCase(name, FILE_UPLOAD_DIR);
	}
}
