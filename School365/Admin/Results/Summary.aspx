<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Summary.aspx.cs" Inherits="School365.Admin.Results.Mastermarksheet" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SUMMARY</title>
</head>
<body>
    <div>

        <table style="float: right; width: 17%; margin-top: 5px; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; font-size: x-small; font-weight: 700;" border="0" cellspacing="0">
            <tr>
                <td colspan="3">
                    <p class="auto-style7"><strong>KEY</strong></p>
                </td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">70-100</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">A</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">5 point</td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">60-69</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">B</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">4 point</td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">50-59</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">C</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">3 point</td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">45-49</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">D</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">2 point</td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">40-44</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">E</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">1 point</td>
            </tr>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">0-39</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style6">F</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">0 point</td>
            </tr>
        </table>
        <br />
    </div>
    <div>

        <img alt="" class="auto-style2" src="Image2.PNG" /><p align="center"><strong>FEDERAL COLLEGE OF EDUCATION ABEOKUTA</strong></p>
        <p align="center" class="auto-style3">CENTRE FOR SANDWICH AND PRE-NCE PROGRAMME(CESAPREP)</p>
        <p align="center" class="auto-style3">NCE SUMMARY FOR 100 LEVEL</p>
        <p class="auto-style4">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
            <asp:Label ID="sessionLbl" runat="server" Text=""></asp:Label>
        </p>
    </div>

    <form id="form1" runat="server">
        <table style="width: 100%; margin-top: 5px; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; font-size: x-small;" border="0" cellspacing="0">
           <tr>
               <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan=""></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan=""></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan=""></th>
               <%foreach (int getID in getSubjectCombinationID)
                  {
                      var getDepartment = (from d in db.Departments where d.DepartmantID == getID select d.DepartmentCode).FirstOrDefault();
                %>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="4"><%Response.Write(getDepartment); %></th>
                <% }
                %>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="4">OVERALL</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="4">REMARKS</th>
           </tr>
            
             <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">S/N</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">NAME</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">MATRIC NO</td>
                
                  <%foreach (int getID in getSubjectCombinationID)
                  {
                      var getDepartment = (from d in db.Departments where d.DepartmantID == getID select d.DepartmentCode).FirstOrDefault();
                %>
                 <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="0"><%Response.Write("TCP"); %></th>
                  <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="0"><%Response.Write("TNU"); %></th>
                  <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="0"><%Response.Write("TNUP"); %></th>
                  <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1" colspan="0"><%Response.Write("CGPA"); %></th>
                <% }
                %>
                 <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">TCP</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">TNU</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">TNUP</td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">CGPA</td>
            </tr>

            <tr>
                <%
                    foreach (int setStudentID in getStudentID)
                    {
                        var getStudentDetails = (from d in getAllResult where d.StudentID == setStudentID join r in db.Students on d.StudentID equals r.StudentID select new { r.Surname, r.Firstname, r.Middlename, r.StudentID, d.MatricNo, d.CGPA, d.CTNU, d.CTNUP, d.CTCP }).FirstOrDefault();
                        var getFailed = (from d in db.Results where d.StudentID == setStudentID && d.TA <= 44 select d.SubjectID).Count();
                        serialValue = serialValue + 1;
                %>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(serialValue); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails.Surname + " " + getStudentDetails.Firstname + " " + getStudentDetails.Middlename); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails.MatricNo);%></td>
                <%foreach (int getID in getSubjectCombinationID)
                  {
                      var getDepartmentDetail = (from h in getAllResult where h.StudentID == setStudentID && h.DepartmentID == getID join d in db.Departments on h.DepartmentID equals d.DepartmantID select new { h.TCP, h.TNU, h.TNUP, h.GPA, d.DepartmentCode }).FirstOrDefault();
                %>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getDepartmentDetail == null ? "NA" : getDepartmentDetail.TCP.ToString()); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getDepartmentDetail == null ? "NA" : getDepartmentDetail.TNU.ToString()); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getDepartmentDetail == null ? "NA" : getDepartmentDetail.TNUP.ToString()); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getDepartmentDetail == null ? "NA" : string.Format("{0:0.00}", double.Parse(getDepartmentDetail.GPA.ToString()))); %></td>
                <% }%>

                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails == null ? "NA" : getStudentDetails.CTCP.ToString()); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails == null ? "NA" : getStudentDetails.CTNU.ToString()); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails == null ? "NA" : getStudentDetails.CTNUP.ToString());%></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1"><%Response.Write(getStudentDetails == null ? "NA" : string.Format("{0:0.00}", getStudentDetails.CGPA));%></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa;" class="auto-style1"><%Response.Write(getFailed > 0 ? " F. " : "PASSED");%></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style1">
                    <%
                        foreach (int setSub in getSubjectID)
                        {
                            var getSubjectDetail = (from h in getAllResult where h.StudentID == setStudentID && h.SubjectID == setSub && h.TA <= 44 join d in db.Subjects on h.SubjectID equals d.SubjectID select new { d.SubjectCode, d.SubjectUnit, d.SubjectValue, h.TA }).FirstOrDefault();
                    %>
                    <%Response.Write(getSubjectDetail == null ? " " : getSubjectDetail.SubjectCode + " " + getSubjectDetail.TA + " " + getSubjectDetail.SubjectValue + "" + getSubjectDetail.SubjectUnit + "|"); %>
                    <% }                        
                    %>
                </td>
            </tr>
            <%} %>
        </table>
    </form>
</body>
</html>
