/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.66
 * Generated at: 2021-07-22 13:38:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class footer_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP들은 오직 GET, POST 또는 HEAD 메소드만을 허용합니다. Jasper는 OPTIONS 메소드 또한 허용합니다.");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"https://pro.fontawesome.com/releases/v5.10.0/css/all.css\" integrity=\"sha384-AYmEC3Yw5cVb3ZcuHtOA93w35dYTsvhLPVnYs9eStHfGJvOvKxVfELGroGkvsg+p\" crossorigin=\"anonymous\"/>\n");
      out.write("<footer>\n");
      out.write("<div class=\"footer_wrapper\">\n");
      out.write("	<div class=\"footer_blank\"></div>\n");
      out.write("	<div class=\"footer_blank\"></div>\n");
      out.write("	<div class=\"footer_blank\"></div>\n");
      out.write("	<div class=\"footer_header\">\n");
      out.write("		\n");
      out.write("				<div class=\"footer_icon_img\">\n");
      out.write("					<img class=\"logo\" src=\"img/logo2.png\">\n");
      out.write("				</div>\n");
      out.write("				<div class=\"footer_icon\">			\n");
      out.write("						<i class=\"fab fa-facebook\"></i>\n");
      out.write("						<i class=\"fab fa-instagram\"></i>\n");
      out.write("						<i	class=\"far fa-envelope\"></i>\n");
      out.write("					\n");
      out.write("				</div>\n");
      out.write("		\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div style=\"font-size : 1.2em; font-weight: bold\">\n");
      out.write("			Copyright (c)2021 AirShop INC<br>\n");
      out.write("			All rights reserved\n");
      out.write("		</div>\n");
      out.write("		<div style=\"margin-top : 5px\">\n");
      out.write("			(주)에어샵\n");
      out.write("		</div>\n");
      out.write("	\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div class=\"footer_items_title\">\n");
      out.write("			투자정보\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_items_list\">\n");
      out.write("			<ul>\n");
      out.write("				<li><a href=\"#\">공고</a></li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div class=\"footer_items_title\">\n");
      out.write("			브랜드스토리\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_items_list\">\n");
      out.write("			<ul>\n");
      out.write("				<li><a href=\"#\">Airshop 스토리</a></li>\n");
      out.write("				<li><a href=\"#\">News</a></li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div class=\"footer_items_title\">\n");
      out.write("			고객센터\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_items_list\">\n");
      out.write("			<ul>\n");
      out.write("				<li><a href=\"#\">FAQ</a></li>\n");
      out.write("				<li><a href=\"#\">친절상담</a></li>\n");
      out.write("				<li><a href=\"#\">A/S신청</a></li>\n");
      out.write("				<li><a href=\"#\">A/S안내</a></li>\n");
      out.write("				<li><a href=\"#\">매장찾기</a></li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div class=\"footer_items_title\">\n");
      out.write("			친절상담\n");
      out.write("		</div>\n");
      out.write("		<div class=\"footer_items_list\">\n");
      out.write("			<ul>\n");
      out.write("			<li>7777 - 7777</li>\n");
      out.write("			<li>평일  | 09:00 ~ 17:30</li>\n");
      out.write("			<li>주말,공휴일 휴무</li>\n");
      out.write("			</ul>\n");
      out.write("		\n");
      out.write("		\n");
      out.write("		</div>\n");
      out.write("	</div>\n");
      out.write("	<div class=\"footer_items\">\n");
      out.write("		<div class=\"footer_items_title\">AS문의</div>\n");
      out.write("		<div class=\"footer_items_list\">\n");
      out.write("			<ul>\n");
      out.write("				<li>1:1 상담</li>\n");
      out.write("			</ul>\n");
      out.write("		</div>\n");
      out.write("		\n");
      out.write("	</div>\n");
      out.write("\n");
      out.write("\n");
      out.write("</div>\n");
      out.write("</footer>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
