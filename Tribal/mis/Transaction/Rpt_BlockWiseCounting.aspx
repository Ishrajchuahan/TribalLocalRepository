﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_BlockWiseCounting.aspx.cs" Inherits="mis_Transaction_Rpt_BlockWiseCounting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        .SingleSelectBhopalData {
            padding-top: 8rem !important;
        }

        .SingleSelectRaisenData {
            padding-top: 9rem !important;
        }

        .SingleSelectSehoreData {
            padding-top: 8rem !important;
        }

        .SingleSelectVidishaData {
            padding-top: 9rem !important;
        }

        .SingleSelectGwaliorData {
            padding-top: 6rem !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div id="dv_Masters_LocationMasters" runat="server">
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
                                <a href="#AdministrativeLevelTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                    <span>Administrative Level Transfer</span></a>
                            </li>
                            <li class="breadcrumb-item"><span>Block Wise Counting Report</span></li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>        <div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -2rem;">
                <img src="../../img/OTTMS.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="content-wrapper">
            <div class="container-fluid">
                <div class="card card-border-primary">
                    <div class="card-header">
                        <div class="row">
                            <div class="col-lg-6">
                                <h4 class="card-title">Block Wise Counting Report <br />
                                    ब्लॉक वार सांख्यिकी रिपोर्ट<br />
                                </h4>
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

                                        <li class="nav-item dropdown ">
                                            <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Transfer Process</b></a>
                                            <ul class="dropdown-menu">

                                                <li><a class="dropdown-item" href="../HRMS/Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                            </ul>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link text-white " href="../HRMS/Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                        </li>
                                        <li class="nav-item dropdown ">
                                            <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                            <ul class="dropdown-menu">
                                                <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                                <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                                <li><a class="dropdown-item" href="../HRMS/Rpt_AdministrativeTransferReport.aspx">Transfer Report</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <br />
                        <br />--%>

                        <fieldset>

                            <legend>Block Wise Counting Report/ब्लॉक वार सांख्यिकी रिपोर्ट</legend>

                            <div class="row">

                                <div class="col-md-3">
                                    <div class="form-group">


                                        <label>Block Name <br />विकासखण्ड का नाम<span style="color: red">*</span></label>

                                        <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>" ControlToValidate="ddlDistrictN" Display="Dynamic"></asp:RequiredFieldValidator>

                                        <asp:DropDownList runat="server" ID="ddlDistrictN" CssClass="select2">
                                            <asp:ListItem Value="0">--Select--</asp:ListItem>
                                            <asp:ListItem Value="6">All</asp:ListItem>
                                            <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                            <asp:ListItem Value="2">Raisen</asp:ListItem>
                                            <asp:ListItem Value="3">Sehore</asp:ListItem>
                                            <asp:ListItem Value="4">Vidisha</asp:ListItem>
                                            <asp:ListItem Value="5">Gwalior</asp:ListItem>

                                        </asp:DropDownList>
                                    </div>
                                </div>
                                <hr />
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btn" Text="Search" CssClass="btn btn-outline-success btn-border w-lg" OnClick="btn_Click" />
                                    </div>
                                </div>

                            </div>

                        </fieldset>



                        <fieldset id="table1" runat="server" visible="false">
                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>
                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td rowspan="5" class="SingleSelectBhopalData">Bhopal</td>
                                                    <td>Phanda URBAN-Old City</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Phanda URBAN-New City</td>
                                                    <td>70</td>
                                                    <td>40</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <td>Phanda Gramin</td>
                                                    <td>50</td>
                                                    <td>20</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <td>Berasia</td>
                                                    <td>50</td>
                                                    <td>30</td>
                                                    <td>15</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Huzur</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset id="table2" runat="server" visible="false">

                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td rowspan="6" class="SingleSelectRaisenData">Raisen</td>
                                                    <td>Badi</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Begamganj</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Gairatganj</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Obedullaganj</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sanchi</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Silwani</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                            </tbody>

                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset id="table3" runat="server" visible="false">

                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td rowspan="5" class="SingleSelectSehoreData">Sehore</td>
                                                    <td>Ashta</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Budni</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Ichhawar</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Nasrullaganj</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sehore</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset id="table4" runat="server" visible="false">

                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td rowspan="6" class="SingleSelectVidishaData">Vidisha</td>
                                                    <td>Basoda</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Gyaraspur</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Kurwai</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sironj</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sanchi</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Vidisha</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>


                        <fieldset id="table5" runat="server" visible="false">

                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>

                                            <tbody>
                                                <tr>
                                                    <td rowspan="4" class="SingleSelectGwaliorData">Gwalior</td>
                                                    <td>Bhitarwar</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Dabra</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Ghatigaon</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Morar</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>

                        <fieldset id="table6" runat="server" visible="false">

                            <legend>Details / विवरण</legend>
                            <div class="row justify-content-end">

                                <div class="col-md-4 text-end">
                                    <div class="form-group">
                                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                                    </div>
                                </div>
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                    </div>
                                </div>
                            </div>
                            <div class="row">

                                <div class="col-md-12">

                                    <div class="table-responsive">

                                        <table class="table table-bordered text-center">
                                            <thead>

                                                <tr>
                                                    <th>District <br />
                                                        जिला</th>
                                                    <th>Block <br />
                                                        ब्लॉक</th>
                                                    <th>Received Application <br />
                                                        प्राप्त आवेदन</th>
                                                    <th>Approved Application <br />
                                                        स्वीकृत आवेदन</th>
                                                    <th>Pending Application <br />
                                                        लंबित आवेदन</th>
                                                    <th>Reject Application <br />
                                                        निराकृत आवेदन</th>
                                                </tr>
                                            </thead>


                                            <tbody>
                                                <tr>
                                                    <td rowspan="5" class="SingleSelectBhopalData">Bhopal</td>
                                                    <td>Phanda URBAN-Old City</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>

                                                    <td>Phanda URBAN-New City</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Phanda Gramin</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Berasia</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Huzur</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="6" class="SingleSelectRaisenData">Raisen</td>
                                                    <td>Badi</td>

                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Begamganj</td>

                                                    <td>60</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <td>Gairatganj</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Obedullaganj</td>

                                                    <td>55</td>
                                                    <td>20</td>
                                                    <td>20</td>
                                                    <td>15</td>
                                                </tr>
                                                <tr>
                                                    <td>Sanchi</td>

                                                    <td>50</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>20</td>
                                                </tr>
                                                <tr>
                                                    <td>Silwani</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>

                                                <tr>
                                                    <td rowspan="5" class="SingleSelectSehoreData">Sehore</td>
                                                    <td>Ashta</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Budni</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Ichhawar</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Nasrullaganj</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sehore</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>

                                                <tr>
                                                    <td rowspan="6" class="SingleSelectVidishaData">Vidisha</td>
                                                    <td>Basoda</td>

                                                    <td>40</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <td>Gyaraspur</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Kurwai</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sironj</td>

                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Sanchi</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Vidisha</td>

                                                    <td>70</td>
                                                    <td>40</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                </tr>

                                                <tr>
                                                    <td rowspan="4" class="SingleSelectGwaliorData">Gwalior</td>
                                                    <td>Bhitarwar</td>

                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>5</td>
                                                    <td>5</td>
                                                </tr>
                                                <tr>
                                                    <td>Dabra</td>

                                                    <td>60</td>
                                                    <td>30</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                </tr>
                                                <tr>
                                                    <td>Ghatigaon</td>

                                                    <td>50</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>20</td>
                                                </tr>
                                                <tr>
                                                    <td>Morar</td>

                                                    <td>40</td>
                                                    <td>20</td>
                                                    <td>10</td>
                                                    <td>10</td>
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
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

