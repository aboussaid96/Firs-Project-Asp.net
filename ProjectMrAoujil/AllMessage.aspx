<%@ Page Title="" Language="C#" MasterPageFile="~/AdminMaster.master" AutoEventWireup="true" CodeFile="AllMessage.aspx.cs" Inherits="AllRegister" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">

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
                    <table class="table table-striped table-bordered table-hover">
                        <thead>
                            <tr>
                                <th>Id </th>
                                <th>Full Name </th>
                                <th>Message</th>
                                <th>Date Message</th>
                                <th>Etat</th>

                            </tr>
                        </thead>
                        <tbody>
                            <asp:repeater id="Repeater_message" runat="server">
                                    <ItemTemplate>
                                        <tr>
                                            <td><%# Eval("name_contact")%></td>
                                            <td><%# Eval("email_contact")%></td>
                                            <td><%# Eval("message_contact")%></td>
                                            <td><%# Eval("Date_contact")%></td>
                                            <td></td>

                                        </tr>
                                    </ItemTemplate>
                                </asp:repeater>

                        </tbody>
                    </table>
                </div>
            </div>
        </div>

    </div>





</asp:Content>

