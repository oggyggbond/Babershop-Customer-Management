/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/9.0.48
 * Generated at: 2021-07-05 13:14:36 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp.WEB_002dINF.views;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class profile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

    if (!javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      final java.lang.String _jspx_method = request.getMethod();
      if ("OPTIONS".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        return;
      }
      if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method)) {
        response.setHeader("Allow","GET, HEAD, POST, OPTIONS");
        response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSPs only permit GET, POST or HEAD. Jasper also permits OPTIONS");
        return;
      }
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
      response.setContentType("text/html;charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html dir=\"ltr\" lang=\"en\">\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("    <meta charset=\"utf-8\">\r\n");
      out.write("    <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\r\n");
      out.write("    <!-- Tell the browser to be responsive to screen width -->\r\n");
      out.write("    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("    <meta name=\"keywords\"\r\n");
      out.write("        content=\"wrappixel, admin dashboard, html css dashboard, web dashboard, bootstrap 5 admin, bootstrap 5, css3 dashboard, bootstrap 5 dashboard, Ample lite admin bootstrap 5 dashboard, frontend, responsive bootstrap 5 admin template, Ample admin lite dashboard bootstrap 5 dashboard template\">\r\n");
      out.write("    <meta name=\"description\"\r\n");
      out.write("        content=\"Ample Admin Lite is powerful and clean admin dashboard template, inpired from Bootstrap Framework\">\r\n");
      out.write("    <meta name=\"robots\" content=\"noindex,nofollow\">\r\n");
      out.write("    <title>Barbershop customer management</title>\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <!-- Bread crumb and right sidebar toggle -->\r\n");
      out.write("            <!-- ============================================================== -->\r\n");
      out.write("            <div class=\"page-breadcrumb bg-white\">\r\n");
      out.write("                <div class=\"row align-items-center\">\r\n");
      out.write("                    <div class=\"col-lg-3 col-md-4 col-sm-4 col-xs-12\">\r\n");
      out.write("                        <h4 class=\"page-title\">Personal Information</h4>\r\n");
      out.write("                    </div>\r\n");
      out.write("                    <!-- /.col-lg-12 -->\r\n");
      out.write("                </div>\r\n");
      out.write("\r\n");
      out.write("                <div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("                    <!-- Row -->\r\n");
      out.write("                    <div class=\"row\">\r\n");
      out.write("                        <!-- Column -->\r\n");
      out.write("                        <div class=\"col-lg-4 col-xlg-3 col-md-12\">\r\n");
      out.write("                            <div class=\"white-box\">\r\n");
      out.write("                                <div class=\"user-bg\"> <img width=\"100%\" alt=\"user\" src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/plugins/images/large/img1.jpg\">\r\n");
      out.write("                                    <div class=\"overlay-box\">\r\n");
      out.write("                                        <div class=\"user-content\">\r\n");
      out.write("                                            <a href=\"javascript:void(0)\"><img src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/plugins/images/users/genu.jpg\"\r\n");
      out.write("                                                    class=\"thumb-lg img-circle\" alt=\"img\"></a>\r\n");
      out.write("                                            <h4 class=\"text-white mt-2\">User Name</h4>\r\n");
      out.write("                                            <h5 class=\"text-white mt-2\">info@myadmin.com</h5>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </div>\r\n");
      out.write("                                </div>\r\n");
      out.write("                                <div class=\"user-btm-box mt-5 d-md-flex\">\r\n");
      out.write("                                    <div\r\n");
      out.write("                                        class=\"col-md-4 col-sm-4 text-center btn btn-danger  d-none d-md-block pull-right ms-3 hidden-xs hidden-sm waves-effect waves-light text-white\">\r\n");
      out.write("                                        <h3>Vip</h3>\r\n");
      out.write("                                    </div>\r\n");
      out.write("\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- Column -->\r\n");
      out.write("                        <!-- Column -->\r\n");
      out.write("                        <div class=\"col-lg-8 col-xlg-9 col-md-12\">\r\n");
      out.write("                            <div class=\"card\">\r\n");
      out.write("                                <div class=\"card-body\">\r\n");
      out.write("\r\n");
      out.write("                                    <!-- form xử lý-->\r\n");
      out.write("                                    <form class=\"form-horizontal form-material\">\r\n");
      out.write("                                        <div class=\"form-group mb-4\">\r\n");
      out.write("                                            <label class=\"col-md-12 p-0\">Full Name</label>\r\n");
      out.write("                                            <div class=\"col-md-12 border-bottom p-0\">\r\n");
      out.write("                                                <input type=\"text\" placeholder=\"Johnathan Doe\"\r\n");
      out.write("                                                    class=\"form-control p-0 border-0\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group mb-4\">\r\n");
      out.write("                                            <label for=\"example-email\" class=\"col-md-12 p-0\">Email</label>\r\n");
      out.write("                                            <div class=\"col-md-12 border-bottom p-0\">\r\n");
      out.write("                                                <input type=\"email\" placeholder=\"johnathan@admin.com\"\r\n");
      out.write("                                                    class=\"form-control p-0 border-0\" name=\"example-email\"\r\n");
      out.write("                                                    id=\"example-email\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group mb-4\">\r\n");
      out.write("                                            <label class=\"col-md-12 p-0\">Password</label>\r\n");
      out.write("                                            <div class=\"col-md-12 border-bottom p-0\">\r\n");
      out.write("                                                <input type=\"password\" value=\"password\"\r\n");
      out.write("                                                    class=\"form-control p-0 border-0\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                        <div class=\"form-group mb-4\">\r\n");
      out.write("                                            <label class=\"col-md-12 p-0\">Phone Number</label>\r\n");
      out.write("                                            <div class=\"col-md-12 border-bottom p-0\">\r\n");
      out.write("                                                <input type=\"text\" placeholder=\"123 456 7890\"\r\n");
      out.write("                                                    class=\"form-control p-0 border-0\">\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("\r\n");
      out.write("                                        <div class=\"form-group mb-4\">\r\n");
      out.write("                                            <div class=\"col-sm-12\">\r\n");
      out.write("                                                <button type=\"submit\" class=\"btn btn-success\">Update\r\n");
      out.write("                                                    Information</button>\r\n");
      out.write("                                            </div>\r\n");
      out.write("                                        </div>\r\n");
      out.write("                                    </form>\r\n");
      out.write("                                    <!-- form xử lý-->\r\n");
      out.write("                                </div>\r\n");
      out.write("                            </div>\r\n");
      out.write("                        </div>\r\n");
      out.write("                        <!-- Column -->\r\n");
      out.write("                    </div>\r\n");
      out.write("                </div>\r\n");
      out.write("    <!-- Logout Modal-->\r\n");
      out.write("	<div class=\"modal fade\" id=\"logoutModal\" tabindex=\"-1\" role=\"dialog\"\r\n");
      out.write("		aria-labelledby=\"exampleModalLabel\" aria-hidden=\"true\">\r\n");
      out.write("		<div class=\"modal-dialog\" role=\"document\">\r\n");
      out.write("			<div class=\"modal-content\">\r\n");
      out.write("				<div class=\"modal-header\">\r\n");
      out.write("					<h5 class=\"modal-title\" id=\"exampleModalLabel\">Ready to Leave?</h5>\r\n");
      out.write("					<button class=\"close\" type=\"button\" data-dismiss=\"modal\"\r\n");
      out.write("						aria-label=\"Close\">\r\n");
      out.write("						<span aria-hidden=\"true\">×</span>\r\n");
      out.write("					</button>\r\n");
      out.write("				</div>\r\n");
      out.write("				<div class=\"modal-body\">Select \"Logout\" below if you are ready\r\n");
      out.write("					to end your current session.</div>\r\n");
      out.write("				<div class=\"modal-footer\">\r\n");
      out.write("					<button class=\"btn btn-secondary\" type=\"button\"\r\n");
      out.write("						data-dismiss=\"modal\">Cancel</button>\r\n");
      out.write("					<a class=\"btn btn-primary\" href=\"login.html\">Logout</a>\r\n");
      out.write("				</div>\r\n");
      out.write("			</div>\r\n");
      out.write("		</div>\r\n");
      out.write("	</div>\r\n");
      out.write("    \r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/plugins/bower_components/jquery/dist/jquery.min.js\"></script>\r\n");
      out.write("        <!-- Bootstrap tether Core JavaScript -->\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/bootstrap/dist/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/js/app-style-switcher.js\"></script>\r\n");
      out.write("        <!--Wave Effects -->\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/js/waves.js\"></script>\r\n");
      out.write("        <!--Menu sidebar -->\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/js/sidebarmenu.js\"></script>\r\n");
      out.write("        <!--Custom JavaScript -->\r\n");
      out.write("        <script src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/js/custom.js\"></script>\r\n");
      out.write("      	<script\r\n");
      out.write("		src=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.proprietaryEvaluate("${pageContext.servletContext.contextPath}", java.lang.String.class, (javax.servlet.jsp.PageContext)_jspx_page_context, null));
      out.write("/resources/assets/vendor/bootstrap/js/bootstrap.bundle.min.js\"></script>\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
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
