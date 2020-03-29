<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Schedule01.aspx.cs" Inherits="Schedule01" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link href="css/ScheduleStyle.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="home" runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="sections about" id="About">
        <div class="container">
            <div class="section-header text-center">
                <h2 class="section-title">SCHEDULE</h2>
                <div class="line"><span></span></div>
                <p>Event Time</p>


            </div>
            <br />
            <br />
            <!-------------------------------------->
            <div class="schedule">
                <ul class="nav nav-pills">
                    <%--<li class="active"><a data-toggle="pill" href="#home">Home</a></li>--%>
                    <li class="active"><a data-toggle="pill" href="#time1">29/03</a></li>
                    <li><a data-toggle="pill" href="#time2">30/03</a></li>
                    <li><a data-toggle="pill" href="#time3">01/04</a></li>
                </ul>

                <div class="tab-content">
                    <%-- <div id="home" class="tab-pane fade in active">
                        <h3>HOME</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>--%>
                    <div id="time1" class="active tab-pane fade in active">
                        <asp:Repeater ID="repeter29" runat="server">
                            <ItemTemplate>
                                <h1><%# Eval("name_contact")%></h1>
                            </ItemTemplate>
                        </asp:Repeater>
                    </div>
                    <div id="time2" class="tab-pane fade">
                        <h3>Menu 2</h3>
                        <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam.</p>
                    </div>
                    <div id="time3" class="tab-pane fade">
                        <h3>Menu 3</h3>
                        <p>Eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.</p>
                    </div>
                </div>
            </div>
        </div>

    </section>
</asp:Content>

