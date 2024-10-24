﻿
<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeOtherCurriculumActivitiesNotw.aspx.cs" Inherits="mis_Transaction_EmployeeOtherCurriculumActivitiesNotw" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-md-12">
            <div class="page-title-box d-sm-flex align-items-center justify-content-between bg-galaxy-transparent">
                <h4 class="mb-sm-0"></h4>
                <div class="=page-title-right">
                    <ol class="breadcrumb m-0">
                        <li class="breadcrumb-item">
                            <span>Home</span>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#HRMS" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>HRMS</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About Other Curriculum Activities</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row" >
    <div class="col-md-4" >
       
            <img src="/img/Employee.png" style="height: 70px" >
    </div>
    </div>


    <%-- <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-7 align-self-center">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Employee" title="click to go on">Employee</a></li>
                    <li class="breadcrumb-item active">Employee Other Curriculum Activities</li>
                </ol>
            </div>
        </div>
    </div>--%>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <%--  <div class="card-header ">
        </div>--%>
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">About Other Curriculum Activities
                       /
                                अन्य पाठ्यचर्या गतिविधियों के बारे में</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">



                    <%--<nav class="navbar navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0 ">
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesNotw.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                            <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivities.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तरीय प्रशिक्षण</b></a>
                            &nbsp; <i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i><a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab2.aspx" role="button"><b class="font-16 font-bold">राष्ट्रीय/राज्य स्तर के पुरस्कार</b></a>
                            &nbsp;<i class="fa fa-circle text-white" style="font-size: 7px; margin-top: 17px;"></i>  <a class="nav-link  text-white " href="EmployeeOtherCurriculumActivitiesTab3.aspx" role="button"><b class="font-16 font-bold">प्रशिक्षण का विवरण</b></a>
                        </ul>

                    </div>
                </div>
            </nav>
            <br />
            <br />--%>
                    <div class="row">
                        <div class="col-md-12">
                            <h4 style="color: brown; background-color: bisque; height: 30px; font-weight: bold; width: fit-content; border-radius: 10px; padding-top: 5px; margin-bottom: 20px" class="font-20"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी अन्य पाठयक्रम गतिविधियां संबंधी जानकारी:-</h4>
                        </div>
                    </div>
                    <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>

                    <div>
                        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
                            <b>1)</b> समस्त जानकारी सावधानी पूर्वक भरें |<br />
                            <b>2)</b> किसी भी प्रकार के त्रुटि होने पर मुख्यालय संपर्क करें |<br />
                            <b>3)</b> कर्मचारी  राष्ट्रीय और राज्य स्तरीय प्रशिक्षण में सम्मिलित हुए हैं संबंधी जानकारी फार्म में भरी जाएगी।<br />
                            <b>4)</b> कर्मचारी की प्रशिक्षण का विवरण (In-service, induction, CWSN, Computer, Dakshata, ABL, 90 Days IED) फार्म के अंतर्गत भरा जाएगा |<br />
                            <b>5)</b> कर्मचारियों को यदि कोई पुरस्कार राष्ट्रीय एवं राज्य स्तर पर मिला है या अन्य कोई पुरस्कार विभाग द्वारा मिला है उसकी जानकारी फॉर्म में भारी जा सकती है।<br />
                            <b>6)</b> समस्त जानकारी कर्मचारी की सर्विस बुक में अपडेट की जाएगी |<br />


                        </p>
                    </div>
                </div>
            </div>
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

