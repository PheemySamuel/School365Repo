<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseForm.aspx.cs" Inherits="School365.Students.CourseForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        
        .auto-style2 {
            font-weight: normal;
        }

        .auto-style3 {
            width: 220px;
        }

        .auto-style4 {
            width: 209px;
        }
        .auto-style5 {
            width: 279px;
        }
        .auto-style6 {
            width: 88px;
            height: 66px;
        }
    </style>
</head>
<body>
    <div>
        <p>
            <img alt="" class="auto-style6" src="../Image/Image2.PNG" /></p>
     <p align="center" style="font-size:x-large">FEDERAL COLLEGE OF EDUCATION, ABEOKUTA</p>
        <p align="center" style="font-size:large">Course Form</p>
        <p align="center" style="font-size:medium">&nbsp;SECOND 2012-2013 </p>
         </div>
   <br />
    <form id="form1" runat="server">
        <table style="width: 100%; margin-top: 5px; border-top: 1px solid #aaa; border-bottom: 1px solid #aaa; font-size: x-small; font-weight: 700;" border="0" cellspacing="0">
            <tr>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">S/N</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">Course Code</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">Course Title</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">Cr</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">Instructor</th>
            </tr>
            <% 
                var result = (from d in db.Results where d.StudentID == StudentID.FirstOrDefault() join f in db.Subjects on d.SubjectID equals f.SubjectID select new { f.SubjectCode, f.SubjectName, f.SubjectValue }).AsEnumerable().ToList();

                foreach (var setResult in result)
                {
                    sn += 1;
                    totalUnit += setResult.SubjectValue;
            %>
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"><%Response.Write(sn); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"><%Response.Write(setResult.SubjectCode); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"><%Response.Write(setResult.SubjectName); %></td>
                <td style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"><%Response.Write(setResult.SubjectValue); %></td>
            </tr>
            <%}
            %>
        </table>
        <hr />
        <table>
            <tr>
                <th>Total number of registered courses :<%Response.Write(totalUnit);%><br />
                </th>
            </tr>
            <tr>
                <th class="auto-style5">H.O.D Signature<br />
                    <br />
                    <span class="auto-style2"><strong>...................................................</strong></span><br />
                </th>
                <th class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    School Official Signature 
                    <br />
                    <br />
                    .......................................................<br />
                </th>
                <th class="auto-style3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Dean of School Signature 
                    <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ..................................................<br />
                </th>
            </tr>
        </table>
    </form>
</body>
</html>
