<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation.aspx.cs" Inherits="FORM_ASP.NET.Validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 74%;
        }
        .auto-style2 {
            width: 139px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2>Student Registration Form</h2>
            
            <table class="auto-style1">
                <tr>
                    <td colspan="2">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" BackColor="#CCFFCC" Font-Size="Large" ForeColor="Red" />
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Name</td>
                    <td>
                        <asp:TextBox ID="NameTextBox" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="Please Enter Name." ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Student Email</td>
                    <td>
                        <asp:TextBox ID="EmailTextBox" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Please Enter Mail" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" Display="Dynamic" ErrorMessage="Email Is Invalid" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Re-Enter Email</td>
                    <td>
                        <asp:TextBox ID="ReEnterEmailTextBox" runat="server" Width="160px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="ReEnterEmailTextBox" Display="Dynamic" ErrorMessage="Please Re-Enter Mail" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="EmailTextBox" ControlToValidate="ReEnterEmailTextBox" Display="Dynamic" ErrorMessage="Email doesn't Match" ForeColor="Red" SetFocusOnError="True">*</asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Class</td>
                    <td>
                        <asp:TextBox ID="ClassTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Please Enter Class" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="ClassTextBox" Display="Dynamic" ErrorMessage="Class Should Be From 1 To 12" ForeColor="Red" MaximumValue="12" MinimumValue="1" SetFocusOnError="True">*</asp:RangeValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Gender</td>
                    <td>
                        <asp:RadioButton ID="MaleRadioButton" runat="server" GroupName="GenderGroup" Text="Male" />
                        <asp:RadioButton ID="FemaleRadioButton" runat="server" GroupName="GenderGroup" Text="Female" />
                        <asp:CustomValidator ID="CustomValidator1" runat="server" Display="Dynamic" ErrorMessage="Please Select Gender" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Any Even Number<br />
                    </td>
                    <td>
                        <asp:TextBox ID="EvenNoTextBox" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="EvenNoTextBox" Display="Dynamic" ErrorMessage="Enter An Even Number" ForeColor="Red" SetFocusOnError="True">*</asp:RequiredFieldValidator>
                        <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="EvenNoTextBox" Display="Dynamic" ErrorMessage="Please Enter An Even Number" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate" SetFocusOnError="True">*</asp:CustomValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">&nbsp;</td>
                    <td>
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="SUBMIT" Width="81px" />
                    </td>
                </tr>
            </table>
            
        </div>
    </form>
</body>
</html>
