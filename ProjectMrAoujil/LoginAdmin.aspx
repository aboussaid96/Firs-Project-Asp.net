<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginAdmin.aspx.cs" Inherits="LoginAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />

    <!-- script--->
    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>

    <link href="css/RegisterStyle.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container wrapper">
            <div class="inner">

                <h3>Sign Up</h3>

                <div class="form_regester">
                    
                    <div class="form-holder">
                        <span class="icon glyphicon glyphicon-envelope"></span>
                        <asp:TextBox ID="txt_mail" runat="server" CssClass="form-control" placeholder="Mail" Height="33px" Width="315px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_mail" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txt_mail" Display="Dynamic"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Email invalid" ControlToValidate="txt_mail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </div>

                    <div class="form-holder">
                        <span class="icon glyphicon glyphicon-lock"></span>
                        <asp:TextBox ID="TextBox_password" TextMode="Password" runat="server" CssClass="form-control" placeholder="Password" Height="33px" Width="315px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator_password" runat="server" ErrorMessage="*" ControlToValidate="TextBox_password" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                    </div>
                    

                        

                        <asp:Button ID="Button2" runat="server" Text="Button" CssClass="button_registre btn btn-success" OnClick="Button2_Click" />
                        <br />
                    <label>
                        &nbsp;&nbsp;&nbsp;&nbsp <asp:CheckBox ID="CheckBox1" runat="server" name="remember"/>&nbsp;&nbsp;Remember me    
                    </label>
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp<asp:Label ID="Label1" runat="server" ForeColor="#CC0000"></asp:Label>
             </div>

        </div>
        </div>
    </form>
</body>
</html>
