/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.66
 * Generated at: 2021-07-17 07:26:46 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class signup_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(2);
    _jspx_dependants.put("jar:file:/Users/seungsu/dev/java/carrot/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/carrot/WEB-INF/lib/jstl-1.2.jar!/META-INF/c.tld", Long.valueOf(1153352682000L));
    _jspx_dependants.put("/WEB-INF/lib/jstl-1.2.jar", Long.valueOf(1620997196000L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private org.apache.jasper.runtime.TagHandlerPool _005fjspx_005ftagPool_005fc_005fset_0026_005fvar;

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
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _005fjspx_005ftagPool_005fc_005fset_0026_005fvar.release();
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
      out.write("	\n");
      out.write("\n");
      if (_jspx_meth_c_005fset_005f0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"UTF-8\">\n");
      out.write("<link href=\"css/style.css?v=7\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<title>회원가입</title>\n");
      out.write("<style>\n");
      out.write(".sign_text{\n");
      out.write("	margin-bottom : 1.2em;\n");
      out.write("	font-size : 0.8em;\n");
      out.write("	color :grey;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("<script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("<body class=\"singup_body\">\n");
      out.write("	\n");
      out.write("	<div class=\"sign_wrapper\">\n");
      out.write("		<div class=\"sign_title\">\n");
      out.write("			<a href=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${cpath }", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/main.jsp\">Airshop</a>\n");
      out.write("		</div>\n");
      out.write("		\n");
      out.write("		<form action=\"joining.jsp\" method=\"post\">\n");
      out.write("		\n");
      out.write("		<div class=\"sign_input_wrapper\">\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for=\"sign_id\">아이디</label>\n");
      out.write("				<input type=\"text\" name=\"id\" id=\"sign_id\" autofocus>\n");
      out.write("			\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for=\"sign_pwd\">비밀번호</label>\n");
      out.write("					<input style=\"font-size:14px;\" type=\"password\" name=\"pwd\" id=\"sign_pwd\" placeholder=\"한글,영어,특수문자포함 8자리이상\">		\n");
      out.write("					<span class=\"sign_text\" id =\"pwd_text\"></span>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for=\"sign_pwd2\">비밀번호 재확인</label>\n");
      out.write("				<input type=\"password\" name=\"pwd2\" id=\"sign_pwd2\">\n");
      out.write("				<span class=\"sign_text\" id=\"pwd2_text\"></span>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for =\"sign_name\">이름</label>\n");
      out.write("				<input type=\"text\" name =\"name\" id=\"sign_name\">\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for=\"sign_gender\">성별</label>\n");
      out.write("				<select id=\"sign_gender\" name=\"sign_gener\">\n");
      out.write("					<option value=\"남자\">남자</option>\n");
      out.write("					<option value=\"여자\">여자</option>\n");
      out.write("				</select>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("			 	<label for=\"sign_email\">본인 확인 이메일</label>\n");
      out.write("				<input type=\"email\" name=\"sign_email\" id=\"sign_email\">\n");
      out.write("			</div>\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<label for =\"sign_phone_num\">전화번호</label>\n");
      out.write("				<input type=\"text\" placeholder=\"010 - **** - ****\" name=\"phone_num\" id=\"sign_phone_num\">\n");
      out.write("			</div>\n");
      out.write("			<div class=\"sign_box2\">\n");
      out.write("				<label>생년월일</label>\n");
      out.write("				<div class=\"sign_birth_wrapper\">\n");
      out.write("				<input id=\"sign_year\"type=\"text\" name=\"birthyy\" placeholder=\"년(4자)\">\n");
      out.write("				<select id=\"sign_month\" name=\"birthmm\">\n");
      out.write("					\n");
      out.write("					<option value=\"01\">1</option>\n");
      out.write("					<option value=\"02\">2</option>\n");
      out.write("					<option value=\"03\">3</option>\n");
      out.write("					<option value=\"04\">4</option>\n");
      out.write("					<option value=\"05\">5</option>\n");
      out.write("					<option value=\"06\">6</option>\n");
      out.write("					<option value=\"07\">7</option>\n");
      out.write("					<option value=\"08\">8</option>\n");
      out.write("					<option value=\"09\">9</option>\n");
      out.write("					<option value=\"10\">10</option>\n");
      out.write("					<option value=\"11\">11</option>\n");
      out.write("					<option value=\"12\">12</option>\n");
      out.write("				</select>\n");
      out.write("				<input type=\"number\" name=\"birthdd\" min=\"1\" max=\"31\" placeholder=\"일\">\n");
      out.write("				</div>\n");
      out.write("			</div>\n");
      out.write("			\n");
      out.write("			<div class=\"sign_box\">\n");
      out.write("				<input type=\"submit\" id=\"sign_submit\" value=\"가입하기\">\n");
      out.write("			</div>\n");
      out.write("		</div>\n");
      out.write("		\n");
      out.write("		</form>\n");
      out.write("	</div>\n");
      out.write("</body>\n");
      out.write("<script>\n");
      out.write("let pwd = document.getElementById('sign_pwd');\n");
      out.write("let pwd2 = document.getElementById('sign_pwd2');\n");
      out.write("\n");
      out.write("\n");
      out.write("pwd2.addEventListener('blur',() =>{\n");
      out.write("	let text = document.getElementById('pwd2_text');\n");
      out.write("	if(pwd.value === pwd2.value){\n");
      out.write("		text.innerHTML = '비밀번호가 일치합니다.';\n");
      out.write("		text.style.color='blue';\n");
      out.write("	}\n");
      out.write("	else{\n");
      out.write("		text.innerHTML = \"비밀번호가 일치하지 않습니다.\";\n");
      out.write("		text.style.color ='red';\n");
      out.write("	}\n");
      out.write("});\n");
      out.write("		\n");
      out.write("pwd.addEventListener('blur',()=>{\n");
      out.write("	let text = document.getElementById('pwd_text');\n");
      out.write("\n");
      out.write("	if(!/[!?@#$%^&*():;+-=~{}<>\\_\\[\\]\\|\\\\\\,\\.\\/a-zA-Z0-9]{8,16}$/.test(pwd.value)){\n");
      out.write(" 		\n");
      out.write("		text.innerHTML =\"비밀번호는 영어,한글,특수문자 포함 8~ 16글자입니다.\";\n");
      out.write(" 	}\n");
      out.write("	\n");
      out.write("	  else{\n");
      out.write("		text.innerHTML = \"비밀번호가 적합합니다.\";\n");
      out.write("	} \n");
      out.write("});		\n");
      out.write("	\n");
      out.write("</script>\n");
      out.write("</html> ");
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

  private boolean _jspx_meth_c_005fset_005f0(javax.servlet.jsp.PageContext _jspx_page_context)
          throws java.lang.Throwable {
    javax.servlet.jsp.PageContext pageContext = _jspx_page_context;
    javax.servlet.jsp.JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_005fset_005f0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _005fjspx_005ftagPool_005fc_005fset_0026_005fvar.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    boolean _jspx_th_c_005fset_005f0_reused = false;
    try {
      _jspx_th_c_005fset_005f0.setPageContext(_jspx_page_context);
      _jspx_th_c_005fset_005f0.setParent(null);
      // /signup.jsp(5,0) name = var type = java.lang.String reqTime = false required = false fragment = false deferredValue = false expectedTypeName = null deferredMethod = false methodSignature = null
      _jspx_th_c_005fset_005f0.setVar("cpath");
      int _jspx_eval_c_005fset_005f0 = _jspx_th_c_005fset_005f0.doStartTag();
      if (_jspx_eval_c_005fset_005f0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        if (_jspx_eval_c_005fset_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = org.apache.jasper.runtime.JspRuntimeLibrary.startBufferedBody(_jspx_page_context, _jspx_th_c_005fset_005f0);
        }
        do {
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.request.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
          int evalDoAfterBody = _jspx_th_c_005fset_005f0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
        if (_jspx_eval_c_005fset_005f0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
          out = _jspx_page_context.popBody();
        }
      }
      if (_jspx_th_c_005fset_005f0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
      _005fjspx_005ftagPool_005fc_005fset_0026_005fvar.reuse(_jspx_th_c_005fset_005f0);
      _jspx_th_c_005fset_005f0_reused = true;
    } finally {
      org.apache.jasper.runtime.JspRuntimeLibrary.releaseTag(_jspx_th_c_005fset_005f0, _jsp_getInstanceManager(), _jspx_th_c_005fset_005f0_reused);
    }
    return false;
  }
}