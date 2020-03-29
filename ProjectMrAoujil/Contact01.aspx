<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact01.aspx.cs" Inherits="Contact01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/RegisterStyle.css" rel="stylesheet" />
    <link href="css/ContactStyle.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="home" Runat="Server">
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="container wrapper">
        <div class="contact_form inner">

            <h3>Contact Us</h3>
            
            <div class="form_regester">
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-user"></span>
                <asp:TextBox ID="txtsername" runat="server" CssClass="form-control" placeholder="Full Name" Height="33px" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_username" runat="server" ControlToValidate="txtsername" ErrorMessage="user name is obligatory" ForeColor="#CC0000" Display="Dynamic">*</asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidaUsernamelenght1" runat="server" ErrorMessage="characters allowed" ControlToValidate="txtsername" Display="Dynamic" ForeColor="#CC0000" ValidationExpression="^[\s\S]{5,30}$"></asp:RegularExpressionValidator>
                
            </div>
           
            <div class="form-holder">
                <span class="icon glyphicon glyphicon-envelope"></span>
                <asp:TextBox ID="txt_mail" runat="server" CssClass="form-control" placeholder="Mail" Height="33px" Width="400px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_mail" runat="server" ErrorMessage="*" ForeColor="#CC0000" ControlToValidate="txt_mail" Display="Dynamic"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidatorEmail" runat="server" ErrorMessage="Email invalid" ControlToValidate="txt_mail" ForeColor="#CC0000" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
            </div>
            
            <div class="form-holder">
                <span class=""></span>
                <asp:TextBox ID="txtmessage"  mode="multiline" runat="server" CssClass="form-control" placeholder="Your Message" Height="150px" Width="400px" TextMode="MultiLine"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator_password" runat="server" ErrorMessage="*" ControlToValidate="txtmessage" ForeColor="#CC0000" Display="Dynamic"></asp:RequiredFieldValidator>
            </div>
            
           
                <br />
                <asp:Button ID="btn_send" runat="server" Text="Send" CssClass="button_registre btn_send btn btn-success" OnClick="btn_send_Click"  />
                
            
               
               
             
           
        </div>
    </div>
</asp:Content>

