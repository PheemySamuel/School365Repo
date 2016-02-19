<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="EMS.aspx.cs" Inherits="School365.Admin.Results.EMS" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 73px;
            height: 64px;
        }
        .auto-style2 {
            width: 27px;
        }
        .auto-style3 {
            width: 25px;
        }
        .auto-style4 {
            width: 31px;
        }
        .auto-style5 {
            width: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
      <asp:TextBox ID="subCode" runat="server" placeholder="Subject Code"></asp:TextBox>
        <asp:DropDownList ID="level" runat="server">
            <asp:ListItem>100</asp:ListItem>
            <asp:ListItem>200</asp:ListItem>
            <asp:ListItem>300</asp:ListItem>           
        </asp:DropDownList>
        <asp:Button ID="getAllStudent" runat="server" Text="Get Students" OnClick="getAllStudent_Click" />
        <p>
            &nbsp;<img alt="" class="auto-style1" src="Image2.PNG" /></p>
        <p align="center">
            FEDERAL COLLEGE OF EDUCATION,  

        </p>
        <p align="center">
            ABEOKUTA
                            CENTRE FOR SANDWICH AND PRE-NCE PROGRAMME (CESAPREP)
                                
        </p>
        <p align="center">
            NCE Exam Mark Sheet 

        </p>
        <hr />
        <p align="center">
            Course Instructor: ______________________________________
        </p>
        <table style="border: thin solid #000000" cellspacing="0">
            <tr style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style13">S/N</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style13">Matric No</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style13">Program</th>
                <th colspan="4" style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style13">CA</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style32"><span class="auto-style13">TOTAL C.A.</span><br class="auto-style13" />
                    <span class="auto-style13">(40%)</span></th>
                <th colspan="6" style="border: thin solid #000000" class="auto-style13">EXAMINATION SCORE</th>
                <th style="border: thin solid #000000" class="auto-style37"><span class="auto-style13">TOTAL 
                </span>
                    <br class="auto-style13" />
                    <span class="auto-style13">EXAM(60%)</span></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style38"><span class="auto-style13">TOTAL</span><br class="auto-style13" />
                    <span class="auto-style13">&nbsp;CA & 
                    </span>
                    <br class="auto-style13" />
                    <span class="auto-style13">EXAM(100%)</span></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"><span class="auto-style13">H.O.D</span><br class="auto-style13" />
                    <span class="auto-style13">&nbsp;EXTERNAL</span><br class="auto-style13" />
                    <span class="auto-style13">&nbsp;MODERATOR'S 
                    </span>
                    <br class="auto-style13" />
                    <span class="auto-style13">REMARK</span></th>
            </tr>

            <tr style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;">
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"></th>
                <th style="border: thin solid #000000" class="auto-style6"></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style5">1</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style4">2</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style3">3</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style2">4</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style32"></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style40">1</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style40">2</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style40">3</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style30">4</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style30">5</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style40">6</th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style37"></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;" class="auto-style38"></th>
                <th style="border-bottom: 1px solid #aaa; border-top: 1px solid #aaa; border-left: 1px solid #aaa; border-right: 1px solid #aaa;"></th>
            </tr>

            
                <%
                    foreach (string setAllStudentsMatric in  AllStudentsMatric)
                    {
                        string getSubComb = (from d in db.Results where d.MatricNo.Trim() == setAllStudentsMatric.Trim() join f in db.SubjectCombinations on d.SubjectCombinID equals f.SubjectCombinID select f.SubjectCombinName).FirstOrDefault();
                        SerialValue = SerialValue + 1;
                      %> 
            <tr>
                <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style12"><%Response.Write(SerialValue); %></td>
                    <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style12"><%Response.Write(setAllStudentsMatric); %></td>  
                    <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style12"><%Response.Write(getSubComb); %></td>
                    <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style5"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style4"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style3"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style2"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style32"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style41"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style41"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style41"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style39"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style39"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style41"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style37"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;" class="auto-style38"></td>
                     <td style="border-bottom: 1px solid #aaa; border-top:1px solid #aaa; border-left:1px solid #aaa; border-right:1px solid #aaa;"></td> 

                 <%   } %>
            </tr>
            </table>
             <p align="left">
            NAME OF EXAMINER__________________________________SIGNATURE_________________________&nbsp;&nbsp;&nbsp; DATE_________________________</p>
        <p align="left">
            &nbsp;NAME OF HEAD OF DEPARTMENT______________________________ SIGNATURE_________________________ DATE____________________________

        </p>
        <p align="left">
            MODERATOR'S NAME______________________________________________  SIGNATURE_________________________ DATE__________________________________ </p>
        
    </form>
</body>
</html>
