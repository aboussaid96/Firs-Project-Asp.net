<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="RegistrePage01.aspx.cs" Inherits="RegistrePage01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/RegisterStyle.css" rel="stylesheet" />
</asp:Content>


<asp:Content ID="Content3" ContentPlaceHolderID="home" runat="Server">

    <h1 class="title_job">Register & Join</h1>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

    <div class="container wrapper">
        <div class="inner">

            <h3>Sign Up</h3>
            
            <div class="form_regester">
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-user"></span>
                <asp:TextBox ID="TextBoxusername" runat="server" CssClass="form-control" placeholder="Full Name" Height="33px" Width="315px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_username" runat="server" ControlToValidate="TextBoxusername" ErrorMessage="user name is obligatory" ForeColor="#CC0000" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidaUsernamelenght1" runat="server" ErrorMessage="characters allowed" ControlToValidate="TextBoxusername" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="^[\s\S]{5,30}$"></asp:RegularExpressionValidator>
                
            </div>
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-earphone"></span>
                <asp:TextBox ID="txt_phonenumber" runat="server" CssClass="form-control" placeholder="phone number" Height="33px" Width="315px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_phonenumber" runat="server" ErrorMessage="*" ControlToValidate="txt_phonenumber" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorTel" runat="server" ErrorMessage="tel invalid" ControlToValidate="txt_phonenumber" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="(\+212|0)([ \-_/]*)(\d[ \-_/]*){9}"></asp:RegularExpressionValidator>
            </div>
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-briefcase"></span>
                <asp:TextBox ID="txt_job" runat="server" CssClass="form-control" placeholder="Job" Height="33px" Width="315px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_job" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txt_job" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorJob" runat="server" ErrorMessage="characters allowed" ControlToValidate="txt_job" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="^[\s\S]{3,30}$"></asp:RegularExpressionValidator>
            </div>
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
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-lock"></span>
                <asp:TextBox ID="TextBox_confirpassword" TextMode="Password" runat="server" CssClass="form-control" placeholder="Confirm Password" Height="33px" Width="315px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_confirmepassword" runat="server" ErrorMessage="*" ControlToValidate="TextBox_confirpassword" ForeColor="#CC0000"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidatorpassword" runat="server" ErrorMessage="Password incorect" ControlToCompare="TextBox_password" ControlToValidate="TextBox_confirpassword" Display="Dynamic" ForeColor="#CC0000"></asp:CompareValidator>


            <div class="form-holder">
                <span class="icon upload_icon glyphicon glyphicon-upload"></span>
                <asp:FileUpload ID="FileUpload1" runat="server" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_image" runat="server" ErrorMessage="*" ControlToValidate="FileUpload1" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
                
            </div>

            <asp:Button ID="Button2" runat="server" Text="Button" CssClass="button_registre btn btn-success" OnClick="Button2_Click" />
            <br />
               
                <asp:Label ID="labelerreur" runat="server" CssClass="erreurlabel" ></asp:Label>
                 <asp:Label ID="label1" runat="server" CssClass="erreurlabel" ></asp:Label>
    </div>

    </div>
    </div>
</asp:Content>

