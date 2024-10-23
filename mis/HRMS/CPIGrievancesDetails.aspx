﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="CPIGrievancesDetails.aspx.cs" Inherits="mis_Transaction_CPIGrievancesDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row">
        <div class="col-12">
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
                            <a href="#GrievanceReports" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Grievance Report</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Complaints Grievance forwarded from CPI</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5"">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
                <img src="../../img/Grievance%20Logo.png" style="height: 60px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card   card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">Complaints Grievance forwarded from CPI /
सी.पी.आई से अग्रेषित शिकायत का विवरण
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <h3 class="fw-bold justify-content-center" style="position: relative; left: 500PX; top: 10PX; color: brown;"></h3>
            <div runat="server" id="show">
                <fieldset>
                    <legend>Forwarded Grievances Details from CPI / सी.पी.आई से अग्रेषित शिकायत का विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-4 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded w-55">Excel</button>
                                <button class="btn btn-info btn-rounded w-55">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput3" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table  table-bordered text-center" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance">
                                    <thead class="nowrap">
                                        <tr>
                                            <th data-class="expand" scope="col">Sr.No.
                                                <br />
                                                सरल क्र.
                                            </th>
                                            <th>Grievances No.
                                                <br />
                                                शिकायत क्र.
                                            </th>
                                            <th>Employee Name
                                                <br />
                                                कर्मचारी का नाम</th>
                                            <th>Type
                                                <br />
                                                प्रकार</th>
                                            <th>Subject 
                                                <br />
                                                विषय</th>
                                            <th data-hide="phone,tablet" scope="col">Registered Date 
                                                <br />
                                                पंजीकृत तिथि</th>
                                            <th data-hide="phone,tablet" scope="col">Status 
                                                <br />
                                                स्थिति</th>
                                            <th data-hide="phone,tablet" scope="col">Forwarded To 
                                                <br />
                                                इनको अग्रेषित</th>
                                            <th data-hide="phone,tablet" scope="col">Forward Date 
                                                <br />
                                                अग्रेषित दिनांक</th>
                                            <th data-hide="phone,tablet" scope="col">Forwarded By 
                                                <br />
                                                द्वारा अग्रेषित किया गया</th>
                                            <th data-hide="phone,tablet" scope="col">Office 
                                                <br />
                                                कार्यालय</th>
                                            <th data-hide="phone,tablet" scope="col">Section 
                                                <br />
                                                अनुभाग</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRowNumber">1</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_hdnId" value="38485">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance">38485</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblName">Indunath Tiwari [ AY1566 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblShikayat">27/08/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>

                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForward_Date">22/04/2024</span>


                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblOIS_Name">DEO, SAGAR</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblRowNumber">2</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl03$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_hdnId" value="49507">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance">49507</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblName">Vishwa Nath Prasad Shukla [ AT3128 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblShikayat">06/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>

                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForward_Date">22/04/2024</span>


                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblOIS_Name">DEO, PANNA</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblRowNumber">3</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl04$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_hdnId" value="50324">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance">50324</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblName">Vishwa Nath Prasad Shukla [ AT3128 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblsubject">Promotions</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblShikayat">27/10/2022</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForward_Date">22/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblOIS_Name">DPC, PANNA</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl04_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblRowNumber">4</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl05$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_hdnId" value="62251">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance">62251</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblName">Pradeep Dwivedi [ BE6506 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblsubject">senior Scale - First</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblShikayat">28/04/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForward_Date">22/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl05_lblSection_Name">Est-3</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblRowNumber">5</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl06$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_hdnId" value="62877">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance">62877</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblName">Laxmikant Mishra [ AW4327 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblShikayat">13/05/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForward_Date">22/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl06_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblRowNumber">6</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl07$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_hdnId" value="19738">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance">19738</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblName">Bhopendra Sharma [ BB6892 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblsubject">senior Scale - First</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblShikayat">06/02/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForward_Date">16/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl07_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblRowNumber">7</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl08$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_hdnId" value="1372">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblGrievance">1372</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblName">Pradeep Kumar Goswami [ AI6577 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblShikayat">30/12/2020</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl08_lblSection_Name">NSDL</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblRowNumber">8</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl09$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_hdnId" value="1548">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblGrievance">1548</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblName">Dashrath Prasad Kushwaha [ BD4501 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblShikayat">31/12/2020</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl09_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblRowNumber">9</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl10$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_hdnId" value="1567">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance">1567</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblName">Hareesh Kumar Goyal [ AK2705 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblsubject">Promotions</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblShikayat">31/12/2020</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl10_lblSection_Name">Est-2</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblRowNumber">10</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl11$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_hdnId" value="1594">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblGrievance">1594</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblName">Ram Lal Swarnakar [ BU1753 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblShikayat">31/12/2020</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl11_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblRowNumber">11</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl12$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_hdnId" value="2586">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblGrievance">2586</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblName">Manoj Kumar Rajak [ BW8353 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblGrievance_Type">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblsubject">Others</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblShikayat">02/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl12_lblSection_Name">NSDL</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblRowNumber">12</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl13$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_hdnId" value="4759">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblGrievance">4759</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblName">Rashmi Shukla [ AM5676 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblShikayat">04/01/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForward_Date">15/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl13_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblRowNumber">13</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl14$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_hdnId" value="37431">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblGrievance">37431</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblName">Kamlesh Prshad [ BF4440 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblsubject">Other Claims</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblShikayat">03/08/2021</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>

                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblOIS_Name">DEO, VIDISHA</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl14_lblSection_Name">NA</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblRowNumber">14</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl15$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_hdnId" value="59249">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblGrievance">59249</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblName">Bharti Bhatia [ AO1778 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblShikayat">11/02/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl15_lblSection_Name">New Cadre</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblRowNumber">15</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl16$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_hdnId" value="59345">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblGrievance">59345</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblName">Saurabh Singh [ BW2883 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblsubject">Salary</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblShikayat">20/02/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblOIS_Name">DEO, BHIND</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl16_lblSection_Name">TMC</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblRowNumber">16</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl17$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_hdnId" value="59638">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblGrievance">59638</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblName">Dharmendra Kumar Dongre [ AP6275 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblGrievance_Type">Financial Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblsubject">Pending arrears</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblShikayat">02/03/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblOIS_Name">DEO, BALAGHAT</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl17_lblSection_Name">TMC</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblRowNumber">17</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl18$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_hdnId" value="60778">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblGrievance">60778</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblName">Vijeyta Thakur [ AA6188 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblsubject">Other Grievances</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblShikayat">10/03/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblStatus">DEO</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForwarded_To">DEO</span>
                                            </td>
                                            <td>

                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblOIS_Name">DEO, SEHORE</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl18_lblSection_Name">TMC</span>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="expand">
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblRowNumber">18</span>
                                                <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl19$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_hdnId" value="60824">
                                            </td>
                                            <td class="phone,tablet">
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblGrievance">60824</span>
                                                </div>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblName">Satish Swaroop [ AX9593 ] </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblGrievance_Type">Establishment Related</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblsubject">Transfer related problems</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblShikayat">11/03/2023</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblStatus">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForwarded_To">CPI</span>
                                            </td>
                                            <td>

                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForward_Date">12/04/2024</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblForwarded_By">CPI</span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblOIS_Name">Commissioner, Public Instructions </span>
                                            </td>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl19_lblSection_Name">TMC</span>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

