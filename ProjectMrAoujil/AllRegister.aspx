<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AllRegister.aspx.cs" Inherits="AllRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <form id="form" runat="server">
        <div class="col-md-12">
            <h1 class="page-header">Dashboard <small>Summary of your App</small>
            </h1>
            <ol class="breadcrumb">
                <li><a href="AdminHome.aspx">Home</a></li>

                <li class="active">All Register</li>
            </ol>
        </div>

        <!------------------------------------->
        <div class="col-md-12 col-sm-12 col-xs-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    All Regester
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>Image Register</th>
                                    <th>ID Register</th>
                                    <th>Full Name Register</th>
                                    <th>Login Register</th>
                                    <th>Password Register</th>
                                    <th>Number Phone Register</th>
                                    <th>Job Register</th>
                                    <th>Date Register</th>
                                    <th>Etat</th>
                                    <th></th>
                                </tr>
                            </thead>
                            <tbody>
                                
                                        <asp:Repeater ID="Repeaterregister" runat="server" OnItemCommand="Repeater1_ItemCommand">
                                            <ItemTemplate>
                                                <tr>
                                                    <td>
                                                        <img src="<%# Eval("img_register")%>" style="width: 50px;" /></td>
                                                    <td><%# Eval("id_register")%></td>
                                                    <td><%# Eval("fullName_register")%></td>
                                                    <td><%# Eval("login_register")%></td>
                                                    <td><%# Eval("password_register")%></td>
                                                    <td><%# Eval("numberPh_register")%></td>
                                                    <td><%# Eval("job_register")%></td>
                                                    <td><%# Eval("Date_register")%></td>
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
                                                            CommandArgument='<%#Eval("id_register") %>'
                                                            CssClass="btn btn-danger"
                                                            OnClientClick='javascript:return confirm("Cofirmation Do you  Have Delete ? ?")'>Delete</asp:LinkButton>
                                                </tr>
                                            </ItemTemplate>
                                        </asp:Repeater>
                                   


                            </tbody>
                        </table>
                                         </ContentTemplate>
                                    <Triggers>

                                        <asp:AsyncPostBackTrigger ControlID="Repeaterregister" EventName="ItemCommand" />
                                    </Triggers>
                                </asp:UpdatePanel>
                    </div>
                </div>
            </div>

        </div>
    </form>




</asp:Content>

