<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AdminHome.aspx.cs" Inherits="AdminHome" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/AdminHome.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div id="page-inner ">
        <!----------------------->
        <div class="row">
            <div class="col-md-12">
                <h1 class="page-header">Dashboard <small>Summary of your App</small>
                </h1>
                <ol class="breadcrumb">
                    <li><a href="AdminHome.aspx">Home</a></li>
                    <li class="active">Data</li>
                </ol>
            </div>
        </div>
        <!-- /. ROW  View et Nombre Visiteur -->
        <div class="row">

            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="panel panel-primary text-center no-boder bg-color-green">
                    <div class="panel-left pull-left green">
                        <i class="fa fa-eye fa-5x"></i>
                    </div>
                    <div class="panel-right">
                        <h3>15,823 </h3>
                        <strong>Total Visits </strong>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="panel panel-primary text-center no-boder bg-color-red">
                    <div class="panel-left pull-left red">
                        <i class="fa fa-users fa-5x"></i>

                    </div>
                    <div class="panel-right">
                        <h3>15,823 </h3>
                        <strong>Total Registrations </strong>
                    </div>
                </div>
            </div>

            <div class="col-md-3 col-sm-12 col-xs-12">
                <div class="panel panel-primary text-center no-boder bg-color-brown">
                    <div class="panel-left pull-left brown">
                        <i class="fa fa-users fa-5x"></i>

                    </div>
                    <div class="panel-right">
                        <h3>36,752 </h3>
                        <strong>Current Visits</strong>

                    </div>
                </div>
            </div>
        </div>

    </div>
    <!-- . PAGE Afficher Regester  -->
    <div class="row">
        <div class="col-md-4 col-sm-12 col-xs-12">
            <div class="panel panel-default">
                <div class="panel-heading">
                    Recent Registrations
                </div>
                <div class="panel-body">
                    <div class="list-group">

                        <%--<a href="#" class="list-group-item">
                                        <span class="badge">7 minutes ago</span>
                                        <i class="fa fa-fw fa-comment"></i> Commented on a post
                                    </a>
                                    <a href="#" class="list-group-item">
                                        <span class="badge">16 minutes ago</span>
                                        <i class="fa fa-fw fa-truck"></i> Order 392 shipped
                                    </a>--%>

                        <asp:Repeater ID="Repeater_register" runat="server">
                            <ItemTemplate>
                                <a href="#" class="list-group-item">
                                    <span class="badge"><%# Eval("Date_register")%></span>&nbsp;&nbsp;
                                    <i class="glyphicon glyphicon-user"></i><%# Eval("fullName_register")%>
                                </a>


                            </ItemTemplate>
                        </asp:Repeater>

                    </div>
                    <div class="text-right">
                        <a href="AllRegister.aspx">More Tasks <i class="fa fa-arrow-circle-right"></i></a>
                    </div>
                </div>
            </div>

        </div>
        <!-- . /Afficher Regester et  Debut Table Message  -->
        <div class="col-md-8 col-sm-12 col-xs-12">

            <div class="panel panel-default">
                <div class="panel-heading">
                    Recent Registrations
                </div>
                <div class="panel-body">
                    <div class="table-responsive">
                        <table class="table table-striped table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th>First Name</th>
                                    <th>Login</th>
                                    <th>Message</th>
                                    <th>Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <asp:Repeater ID="Repeater_message" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("name_contact")%></td>
                                            <td><%# Eval("email_contact")%></td>
                                            <td><%# Eval("message_contact")%></td>
                                            <td><%# Eval("Date_contact")%></td>

                                        </tr>
                                    </ItemTemplate>
                                </asp:Repeater>


                            </tbody>
                        </table>
                        <div class="text-right">
                            <a href="AllMessage.aspx">More Tasks <i class="fa fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <!--  fin Table Message  -->
</asp:Content>

