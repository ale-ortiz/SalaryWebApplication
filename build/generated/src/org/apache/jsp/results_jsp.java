package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.text.NumberFormat;

public final class results_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Salary Info</title>\n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" href=\"styles.css\"\n");
      out.write("    </head>\n");
      out.write("    ");

        NumberFormat defaultFormat = NumberFormat.getCurrencyInstance();
        int hoursWorked = Integer.parseInt(request.getParameter("hours"));
        double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        double preTaxDeduct = Double.parseDouble(request.getParameter("pre"));
        double postTaxDeduct = Double.parseDouble(request.getParameter("post"));
        int regularHours = 0;
        int otHours = 0;
        double otPayRate = 0;
        double otPay = 0;
        double regularPay = 0;
        double grossPay = 0;
        double taxablePay = 0;
        double taxAmount = 0;
        double postTaxPay = 0;
        double netPay = 0; 

        if (hoursWorked > 40) {
                regularHours = 40;
                otHours = hoursWorked - 40;
                otPayRate = hourlyPay * 1.5;
                otPay = otHours * otPayRate;
                regularPay = regularHours * hourlyPay;
                grossPay = regularPay + otPay;
        } 
        else {
                grossPay = hoursWorked * hourlyPay;
        }               
        taxablePay = grossPay - preTaxDeduct;
        
        if (grossPay < 500) 
            taxAmount = taxablePay * .18;
        else
            taxAmount = taxablePay * .22;
                    
        postTaxPay = taxablePay - taxAmount;
        netPay = postTaxPay - postTaxDeduct ;      
                
      out.write("\n");
      out.write("    <body>\n");
      out.write("        <h2>Salary Info</h2>\n");
      out.write("        <hr>\n");
      out.write("        <div>\n");
      out.write("        <table class=\"t2\" border=\"1\">\n");
      out.write("                 <tbody>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td1\">Total Hours Worked:</td>\n");
      out.write("                            <td class=\"td2\">");
      out.print(hoursWorked );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td3\">Hourly Rate:</td> \n");
      out.write("                            <td class=\"td4\">");
      out.print(hourlyPay );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td5\"># Hours Overtime:</td>\n");
      out.write("                            <td class=\"td6\">");
      out.print(otHours );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td7\">Overtime Hourly Rate:</td>\n");
      out.write("                            <td class=\"td8\">");
      out.print(otPayRate );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td9\">Gross Pay:</td>\n");
      out.write("                            <td class=\"td10\">");
      out.print(grossPay );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td11\">Pre-tax Deduct:</td>\n");
      out.write("                            <td class=\"td12\">");
      out.print(preTaxDeduct );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td13\">Tax Amount:</td>\n");
      out.write("                            <td class=\"td14\">");
      out.print(taxAmount );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td15\">Post-tax Pay:</td>\n");
      out.write("                            <td class=\"td16\">");
      out.print(postTaxPay );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td17\">Post-tax Deduct:</td>\n");
      out.write("                            <td class=\"td18\">");
      out.print(postTaxDeduct );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                        <tr>\n");
      out.write("                            <td class=\"td19\">Net Pay:</td>\n");
      out.write("                            <td class=\"td20\">");
      out.print(netPay );
      out.write("</td>\n");
      out.write("                        </tr>\n");
      out.write("                 </tbody>\n");
      out.write("            </table>\n");
      out.write("            <p>\n");
      out.write("\t\t\t<a href=\"index.jsp\" title=\"Home\">Home</a>\n");
      out.write("            </p>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
