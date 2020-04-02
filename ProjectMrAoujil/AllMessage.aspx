<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AllMessage.aspx.cs" Inherits="AllRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form" runat="server">
        <div class="col-md-12">
            <h1 class="page-header">Dashboard <small>Summary of your App</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="AdminHome.aspx">Home</a></li>
                <li class="active">All Message</li>
            </ol>
        </div>

        <!------------------------------------->
        <div class="col-md-12 col-sm-12 col-xs-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    All Message
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Id </th>
                                            <th>Full Name </th>
                                            <th>Message</th>
                                            <th>Date Message</th>
                                            <th>Etat</th>
                                            <th></th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <asp:Repeater ID="Repeater_message" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td><%# Eval("name_contact")%></td>
                                                    <td><%# Eval("email_contact")%></td>
                                                    <td><%# Eval("message_contact")%></td>
                                                    <td><%# Eval("Date_contact")%></td>
                                                    <td>
                                                        <asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem>En Atente</asp:ListItem>
                                                            <asp:ListItem>Accepete</asp:ListItem>
                                                            <asp:ListItem>Refisser</asp:ListItem>
                                                        </asp:DropDownList>
                                                    </td>
                                                    <td>
                                                        <asp:LinkButton AutoPostBack="True" ID="lnkDelete"
                                                            runat="server"
                                                            CommandName="Delete"
                                                            CommandArgument='<%#Eval("id_contact") %>'
                                                            CssClass="btn btn-danger"
                                                            OnClientClick='javascript:return confirm("Cofirmation Do you  Have Delete ?")'>Delete</asp:LinkButton>

                                                    </td>
                                                </tr>

                                            </ItemTemplate>
                                        </asp:Repeater>

                                    </tbody>
                                </table>

                            </ContentTemplate>
                            <Triggers>

                                <asp:AsyncPostBackTrigger ControlID="Repeater_message" EventName="ItemCommand" />
                            </Triggers>
                        </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
    </form>




</asp:Content>

