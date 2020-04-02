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
                    <li><a data-toggle="pill" href="#time4">02/04</a></li>
                </ul>

                <div class="row tab-content">
                    <%-- <div id="home" class="tab-pane fade in active">
                        <h3>HOME</h3>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                    </div>--%>
                    <div id="time1" class="active tab-pane fade in active">
                        <asp:repeater id="repeter29" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-12 col-md-12 message_style">
                                    <h4 class="title_message"><%# Eval("name_contact")%></h4>
                                    <p><%#Eval("message_contact")%></p>
                                    <div class="info_message">                                  
                                        <span class="glyphicon glyphicon-time"></span>&nbsp;<%#Eval("Date_contact")%>&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<%#Eval("email_contact")%>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:repeater>
                    </div>
                    <div id="time2" class="tab-pane fade">
                        <asp:repeater id="Repeater30" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-12 col-md-12 message_style">
                                    <h4 class="title_message"><%# Eval("name_contact")%></h4>
                                    <p><%#Eval("message_contact")%></p>
                                    <div class="info_message">                                  
                                        <span class="glyphicon glyphicon-time"></span>&nbsp;<%#Eval("Date_contact")%>&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<%#Eval("email_contact")%>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:repeater>
                    </div>
                    <div id="time3" class="tab-pane fade">
                        <asp:repeater id="Repeater01" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-12 col-md-12 message_style">
                                    <h4 class="title_message"><%# Eval("name_contact")%></h4>
                                    <p><%#Eval("message_contact")%></p>
                                    <div class="info_message">                                  
                                        <span class="glyphicon glyphicon-time"></span>&nbsp;<%#Eval("Date_contact")%>&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-envelope"></span>&nbsp;<%#Eval("email_contact")%>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:repeater>
                    </div>
                    <div id="time4" class="tab-pane fade">
                        <asp:Repeater ID="Repeater2" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-12 col-md-12 message_style">
                                    <h4 class="title_message"><%# Eval("name_contact")%></h4>
                                    <p><%#Eval("message_contact")%></p>
                                    <div class="info_message">                                  
                                        <span class="glyphicon glyphicon-time"></span><%#Eval("Date_contact")%>&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-envelope"></span><%#Eval("email_contact")%>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:Repeater>
                        <%--<asp:repeater id="Repeater02" runat="server">
                            <ItemTemplate>
                                <div class="col-sm-12 col-md-12 message_style">
                                    <h4 class="title_message"><%# Eval("name_contact")%></h4>
                                    <p><%#Eval("message_contact")%></p>
                                    <div class="info_message">                                  
                                        <span class="glyphicon glyphicon-time"></span><%#Eval("Date_contact")%>&nbsp;&nbsp;
                                        <span class="glyphicon glyphicon-envelope"></span><%#Eval("email_contact")%>

                                    </div>
                                </div>
                            </ItemTemplate>
                        </asp:repeater>--%>
                    </div>
                </div>
            </div>
        </div>

    </section>


    <!---------------location--------------->
     <section class="sections about">
        <div class="container">
            <div class="section-header text-center">
                <h2 id="Cantact" class="section-title"> Location</h2>
                <div class="line"><span></span></div>

            </div>
            <!---------------------------------------------->

            <div class="row container_map">
                <div class="col-md-12 map col-xs-12 style="width: 100% !importan"t">
                   <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d27183.41686948803!2d-7.968534435170939!3d31.60845702823989!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xdaff1d1f4459e43%3A0x810fc5827a35bcd3!2sRoyal%20Golf%20Marrakech!5e0!3m2!1sfr!2sma!4v1585570268638!5m2!1sfr!2sma" width="100%" height="600" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
                </div>
              
            </div>
        </section>
</asp:Content>

