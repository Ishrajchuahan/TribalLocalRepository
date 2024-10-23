﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="DistrictWiseProcessReport.aspx.cs" Inherits="mis_HRMS_DistrictWiseProcessReport" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        @media print {
            /* Show modal content in full page */
            .modal-dialog {
                width: 200%;
                height: auto;
                margin: 0;
                padding: 0;
            }

            .modal-content {
                height: 200%;
                border: none;
                box-shadow: none;
            }

            .modal-body {
                width: 70rem;
                height: auto;
                overflow: visible !important;
                zoom: 91%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }

            .table-responsive {
                overflow: visible !important;
                width: 100% !important;
            }

            .table {
                width: 100% !important;
                table-layout: fixed;
            }

                .table td, .table th {
                    word-wrap: break-word;
                    white-space: normal; /* Add this to prevent text from wrapping */
                }

            /* Add this to scale the table to fit the page */
            .table {
                transform: scale(1.0); /* Adjust the scale value as needed */
            }
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
                        <li class="breadcrumb-item"><span>District Wise Progress Report</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-5">
            <img src="../../img/Grievance%20Logo.png" style="height: 60px" title="Compassionate Appointment Facilitation & Monitoring System (CAFMS)">
        </div>
    </div>
    <div class="card card-border-primary radius-defalt">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h5 class="card-title">District Wise Progress Report /
जिलेवार प्रगति रिपोर्ट</h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div runat="server" id="show">
            </div>
            <fieldset id="fdSetSummaryReport" runat="server">
                <legend>District Wise Progress Status / जिलावार
प्रगति की स्थिति</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <%-- first time Data Start --%>
                <div class="col-md-12">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th>Sr.No.<br />
                                        सरल क्रमांक
                                    </th>
                                    <th>District
                                                <br />
                                        जिला</th>
                                    <th>Total Applications
                                                <br />
                                        कुल आवेदन</th>
                                    <th>Pending For Action
                                                <br />
                                        कार्रवाई हेतु लंबित</th>
                                    <th>Rejected Grievances<br />
                                        अस्वीकृत शिकायतें</th>
                                    <th>Disposed Grievances<br />
                                        निस्तारित शिकायतें</th>
                                    <th>Percent Pendency<br />
                                        प्रतिशत पेंडेंसी</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>1
                                    </td>
                                    <td>Barwani</td>
                                    <td>4</td>
                                    <td>
                                        <asp:Button runat="server" Text="2" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="PendingForActin_Click" ID="PendingForActin" />
                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="RejectedGrievances_Click" ID="RejectedGrievances" />
                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="DisposedGrievances_Click" ID="DisposedGrievances" />
                                    </td>
                                    <td>50%</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Bhopal</td>
                                    <td>4</td>
                                    <td>
                                        <asp:Button runat="server" Text="2" BorderStyle="None" Font-Bold="true" ForeColor="#00bcd4" OnClick="PendingForActinBhopal_Click" ID="PendingForActinBhopal" />
                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="RejectedGrievancesBhopal_Click" ID="RejectedGrievancesBhopal" />

                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="DisposedGrievancesBhopal_Click" ID="DisposedGrievancesBhopal" />

                                    </td>
                                    <td>50%</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Dindori</td>
                                    <td>0</td>
                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>
                                    </td>

                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>
                                    </td>
                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>

                                    </td>
                                    <td>0%</td>
                                </tr>
                                <tr>
                                    <td>4
                                    </td>
                                    <td>Alirajpur</td>
                                    <td>4</td>
                                    <td>
                                        <asp:Button runat="server" Text="2" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="PendingForActinAlirajpur_Click" ID="PendingForActinAlirajpur" />
                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="RejectedGrievancesAlirajpur_Click" ID="RejectedGrievancesAlirajpur" />

                                    </td>
                                    <td>
                                        <asp:Button runat="server" Text="1" BorderStyle="None" ForeColor="#00bcd4" Font-Bold="true" OnClick="DisposedGrievancesAlirajpur_Click" ID="DisposedGrievancesAlirajpur" />

                                    </td>
                                    <td>50%</td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Anuppur</td>
                                    <td>0</td>
                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>
                                    </td>
                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>
                                    </td>
                                    <td>
                                        <p style="color: #00bcd4; font-weight: bold">0</p>
                                    </td>
                                    <td>0%</td>
                                </tr>
                            </tbody>
                        </table>

                    </div>
                </div>
            </fieldset>
            <%-- first time Data End--%>

            <%--Pending Complaint Status Data start--%>
            <fieldset id="fdSetPendingForActin" runat="server" visible="false">
                <legend>District Wise Pending Complaint Status / जिला वार लंबित की  शिकायत स्थिति </legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                District<br />
                                जिला<span style="color: red">*</span>
                            </label>
                            <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDistrict">
                                <asp:ListItem Value="0">--Select-- </asp:ListItem>
                                <asp:ListItem Value="1">Agar Malwa ,आगर  मालवा </asp:ListItem>
                                <asp:ListItem Value="2">Alirajpur ,अलीराजपुर  </asp:ListItem>
                                <asp:ListItem Value="3">Anuppur ,अनूपपुर  </asp:ListItem>
                                <asp:ListItem Value="4">Ashoknagar ,अशोकनगर  </asp:ListItem>
                                <asp:ListItem Value="5">Balaghat ,बालाघाट  </asp:ListItem>
                                <asp:ListItem Value="6">Barwani ,बड़वानी  </asp:ListItem>
                                <asp:ListItem Value="7">Betul ,बैतूल  </asp:ListItem>
                                <asp:ListItem Value="8">Bhind ,भिण्ड  </asp:ListItem>
                                <asp:ListItem Value="9">Bhopal ,भोपाल  </asp:ListItem>
                                <asp:ListItem Value="10">Burhanpur ,बुरहानपुर  </asp:ListItem>
                                <asp:ListItem Value="11">Chhatarpur ,छतरपुर  </asp:ListItem>
                                <asp:ListItem Value="12">Chhindwara ,छिंदवाडा  </asp:ListItem>
                                <asp:ListItem Value="13">Damoh ,दमोह  </asp:ListItem>
                                <asp:ListItem Value="14">Datia ,दतिया  </asp:ListItem>
                                <asp:ListItem Value="15">Dewas ,देवास  </asp:ListItem>
                                <asp:ListItem Value="16">Dhar ,धार  </asp:ListItem>
                                <asp:ListItem Value="17">Dindori ,डिण्डौरी  </asp:ListItem>
                                <asp:ListItem Value="18">Guna ,गुना  </asp:ListItem>
                                <asp:ListItem Value="19">Gwalior ,ग्वालियर  </asp:ListItem>
                                <asp:ListItem Value="20">Harda ,हरदा  </asp:ListItem>
                                <asp:ListItem Value="21">Indore ,इन्दौर  </asp:ListItem>
                                <asp:ListItem Value="22">Jabalpur ,जबलपुर  </asp:ListItem>
                                <asp:ListItem Value="23">Jhabua ,झाबुआ  </asp:ListItem>
                                <asp:ListItem Value="24">Katni ,कटनी  </asp:ListItem>
                                <asp:ListItem Value="25">Khandwa ,खण्डवा  </asp:ListItem>
                                <asp:ListItem Value="26">Khargone ,खरगोन  </asp:ListItem>
                                <asp:ListItem Value="27">Mandla ,मण्डला  </asp:ListItem>
                                <asp:ListItem Value="28">Mandsaur ,मन्दसौर  </asp:ListItem>
                                <asp:ListItem Value="29">Morena ,मुरैना  </asp:ListItem>
                                <asp:ListItem Value="30">Narmadapuram ,नर्मदापुरम </asp:ListItem>
                                <asp:ListItem Value="31">Narsinghpur ,नरसिंहपुर  </asp:ListItem>
                                <asp:ListItem Value="32">Neemuch ,नीमच  </asp:ListItem>
                                <asp:ListItem Value="33">Niwari ,निवाड़ी </asp:ListItem>
                                <asp:ListItem Value="34">Panna ,पन्ना  </asp:ListItem>
                                <asp:ListItem Value="35">Raisen ,रायसेन  </asp:ListItem>
                                <asp:ListItem Value="36">Rajgarh ,राजगढ़  </asp:ListItem>
                                <asp:ListItem Value="37">Ratlam ,रतलाम  </asp:ListItem>
                                <asp:ListItem Value="38">Rewa ,रीवा  </asp:ListItem>
                                <asp:ListItem Value="39">Sagar ,सागर  </asp:ListItem>
                                <asp:ListItem Value="40">Satna ,सतना  </asp:ListItem>
                                <asp:ListItem Value="41">Sehore ,सीहोर  </asp:ListItem>
                                <asp:ListItem Value="42">Seoni ,सिवनी  </asp:ListItem>
                                <asp:ListItem Value="43">Shahdol ,शहडोल  </asp:ListItem>
                                <asp:ListItem Value="44">Shajapur ,शाजापुर  </asp:ListItem>
                                <asp:ListItem Value="45">Sheopur ,श्योपुर  </asp:ListItem>
                                <asp:ListItem Value="46">Shivpuri ,शिवपुरी  </asp:ListItem>
                                <asp:ListItem Value="47">Sidhi ,सीधी  </asp:ListItem>
                                <asp:ListItem Value="48">Singrauli ,सिंगरौली  </asp:ListItem>
                                <asp:ListItem Value="49">Tikamgarh ,टीकमगढ़  </asp:ListItem>
                                <asp:ListItem Value="50">Ujjain ,उज्जैन  </asp:ListItem>
                                <asp:ListItem Value="51">Umaria ,उमरिया  </asp:ListItem>
                                <asp:ListItem Value="52">Vidisha ,विदिशा </asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <asp:Button runat="server" type="button" class=" btn w-lg btn-success btn-border" Text="Search" OnClick="BtndistrictWiseData_Click" ID="BtndistrictWiseData" />
                            <a href="DistrictWiseProcessReport.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <%--here new code start--%>
            <fieldset runat="server" visible="false" id="ReportOfPendingComplaint">
                <legend>Pending Complaint Details / लंबित शिकायत विवरण</legend>
                <%--here new code start--%>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput13" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <%-- pending Complain Table data Start--%>
                <div class="col-md-12">
                    <div class="table-responsive" id="BeforeClickInPendingComplain" runat="server" visible="false">
                        <table class="table table-bordered text-center" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance" style="border-collapse: collapse;">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span>1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_hdnId" value="51282">
                                    </td>
                                    <td class="phone,tablet">51282
                                    </td>

                                    <td>
                                        <span>01/11/2022</span>
                                    </td>
                                    <td>
                                        <span>Ramadhar Bakalival</span>
                                    </td>
                                    <td>
                                        <span>Establishment Related</span>
                                    </td>
                                    <td>
                                        <span>Transfer related problems</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblStatus">DEO
                                        </span>

                                    </td>
                                    <td class="phone,tablet">
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="expand">
                                        <span>2</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl03$hdnId" value="46088">
                                    </td>
                                    <td class="phone,tablet">46088
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblShikayat">02/05/2022</span>
                                    </td>
                                    <td>
                                        <span>Ashish Mandloi</span>
                                    </td>
                                    <td>
                                        <span>Establishment Related</span>
                                    </td>
                                    <td>
                                        <span>Deputation</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl03_lblStatus">RSK
                                        </span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- pending Complain Table data End--%>
                <%-- Dropdown Base Data Start of anuppur--%>
                <div class="col-md-12 mt-4" id="onClicktblAnuppur" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span id="">1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="56626">
                                    </td>
                                    <td class="phone,tablet">56626
                                            
                                    </td>
                                    <td>
                                        <span id="">15/12/2022</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblName">Nand Kumar Rathour</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblGrievance_Type">Financial Related</span>
                                    </td>
                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblSubject">Pending arrears</span>
                                    </td>
                                    <td>BEO  District / Block All 
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End of anuppur--%>
                <%-- Dropdown Base Data Start of AlirajPur--%>
                <div class="col-md-12 mt-4" id="onClicktblAlirajPur" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span id="">1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="" value="59362">
                                    </td>
                                    <td class="phone,tablet">
                                        <span>59362</span>
                                    </td>
                                    <td>
                                        <span id="">22/02/2023</span>
                                    </td>
                                    <td>
                                        <span id="">Jameel Baghel</span>
                                    </td>
                                    <td>
                                        <span id="">Others</span>
                                    </td>
                                    <td>
                                        <span id="">Others</span>
                                    </td>
                                    <td>DPC
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End of AlirajPur--%>
                <%-- Dropdown Base Data Start of Agar Malwa--%>
                <div class="col-md-12 mt-4" id="onClicktblAgarMalwa" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span>1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="70159">
                                    </td>
                                    <td class="phone,tablet">
                                        <a target="_blank" href="ViewGrievanceDetails.aspx?ShikayatId=NzAxNTk=&amp;empId=MjM1Mzg3">
                                            <span>70159</span>&nbsp;
                                        </a>
                                    </td>
                                    <td>
                                        <span>04/12/2023</span>
                                    </td>
                                    <td>
                                        <span>Premnarayan Nagar</span>
                                    </td>
                                    <td>
                                        <span>Financial Related</span>
                                    </td>
                                    <td>
                                        <span>Other Claims</span>
                                    </td>
                                    <td>
                                        <span>RSK
                                        </span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="expand">
                                        <span id="">2</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl03$hdnId" id="" value="66591">
                                    </td>
                                    <td class="phone,tablet">66591</td>
                                    <td>
                                        <span>14/08/2023</span>
                                    </td>
                                    <td>
                                        <span>Anita Rathore</span>
                                    </td>
                                    <td>
                                        <span>Establishment Related</span>
                                    </td>
                                    <td>
                                        <span>Other Grievances</span>
                                    </td>
                                    <td>
                                        <span>BEO  District / Block All </span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End --%>
            </fieldset>
            <%--Pending Complaint Status Data End--%>
            <%--Rejected Status Data start--%>
            <fieldset id="fdSetRejectedGrievances" runat="server" visible="false">
                <legend>District Wise Rejected Grievances Status / जिला वार अस्वीकृत शिकायतों की स्थिति</legend>
                <div class="row">
                    <div class="col-md-3">
                        <label>
                            District
                            <br />
                            जिला
             <span style="color: red">*</span>
                        </label>
                        <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlRejectCase">
                            <asp:ListItem Value="0">--Select-- </asp:ListItem>
                            <asp:ListItem Value="1">Agar Malwa ,आगर  मालवा </asp:ListItem>
                            <asp:ListItem Value="2">Alirajpur ,अलीराजपुर  </asp:ListItem>
                            <asp:ListItem Value="3">Anuppur ,अनूपपुर  </asp:ListItem>
                            <asp:ListItem Value="4">Ashoknagar ,अशोकनगर  </asp:ListItem>
                            <asp:ListItem Value="5">Balaghat ,बालाघाट  </asp:ListItem>
                            <asp:ListItem Value="6">Barwani ,बड़वानी  </asp:ListItem>
                            <asp:ListItem Value="7">Betul ,बैतूल  </asp:ListItem>
                            <asp:ListItem Value="8">Bhind ,भिण्ड  </asp:ListItem>
                            <asp:ListItem Value="9">Bhopal ,भोपाल  </asp:ListItem>
                            <asp:ListItem Value="10">Burhanpur ,बुरहानपुर  </asp:ListItem>
                            <asp:ListItem Value="11">Chhatarpur ,छतरपुर  </asp:ListItem>
                            <asp:ListItem Value="12">Chhindwara ,छिंदवाडा  </asp:ListItem>
                            <asp:ListItem Value="13">Damoh ,दमोह  </asp:ListItem>
                            <asp:ListItem Value="14">Datia ,दतिया  </asp:ListItem>
                            <asp:ListItem Value="15">Dewas ,देवास  </asp:ListItem>
                            <asp:ListItem Value="16">Dhar ,धार  </asp:ListItem>
                            <asp:ListItem Value="17">Dindori ,डिण्डौरी  </asp:ListItem>
                            <asp:ListItem Value="18">Guna ,गुना  </asp:ListItem>
                            <asp:ListItem Value="19">Gwalior ,ग्वालियर  </asp:ListItem>
                            <asp:ListItem Value="20">Harda ,हरदा  </asp:ListItem>
                            <asp:ListItem Value="21">Indore ,इन्दौर  </asp:ListItem>
                            <asp:ListItem Value="22">Jabalpur ,जबलपुर  </asp:ListItem>
                            <asp:ListItem Value="23">Jhabua ,झाबुआ  </asp:ListItem>
                            <asp:ListItem Value="24">Katni ,कटनी  </asp:ListItem>
                            <asp:ListItem Value="25">Khandwa ,खण्डवा  </asp:ListItem>
                            <asp:ListItem Value="26">Khargone ,खरगोन  </asp:ListItem>
                            <asp:ListItem Value="27">Mandla ,मण्डला  </asp:ListItem>
                            <asp:ListItem Value="28">Mandsaur ,मन्दसौर  </asp:ListItem>
                            <asp:ListItem Value="29">Morena ,मुरैना  </asp:ListItem>
                            <asp:ListItem Value="30">Narmadapuram ,नर्मदापुरम </asp:ListItem>
                            <asp:ListItem Value="31">Narsinghpur ,नरसिंहपुर  </asp:ListItem>
                            <asp:ListItem Value="32">Neemuch ,नीमच  </asp:ListItem>
                            <asp:ListItem Value="33">Niwari ,निवाड़ी </asp:ListItem>
                            <asp:ListItem Value="34">Panna ,पन्ना  </asp:ListItem>
                            <asp:ListItem Value="35">Raisen ,रायसेन  </asp:ListItem>
                            <asp:ListItem Value="36">Rajgarh ,राजगढ़  </asp:ListItem>
                            <asp:ListItem Value="37">Ratlam ,रतलाम  </asp:ListItem>
                            <asp:ListItem Value="38">Rewa ,रीवा  </asp:ListItem>
                            <asp:ListItem Value="39">Sagar ,सागर  </asp:ListItem>
                            <asp:ListItem Value="40">Satna ,सतना  </asp:ListItem>
                            <asp:ListItem Value="41">Sehore ,सीहोर  </asp:ListItem>
                            <asp:ListItem Value="42">Seoni ,सिवनी  </asp:ListItem>
                            <asp:ListItem Value="43">Shahdol ,शहडोल  </asp:ListItem>
                            <asp:ListItem Value="44">Shajapur ,शाजापुर  </asp:ListItem>
                            <asp:ListItem Value="45">Sheopur ,श्योपुर  </asp:ListItem>
                            <asp:ListItem Value="46">Shivpuri ,शिवपुरी  </asp:ListItem>
                            <asp:ListItem Value="47">Sidhi ,सीधी  </asp:ListItem>
                            <asp:ListItem Value="48">Singrauli ,सिंगरौली  </asp:ListItem>
                            <asp:ListItem Value="49">Tikamgarh ,टीकमगढ़  </asp:ListItem>
                            <asp:ListItem Value="50">Ujjain ,उज्जैन  </asp:ListItem>
                            <asp:ListItem Value="51">Umaria ,उमरिया  </asp:ListItem>
                            <asp:ListItem Value="52">Vidisha ,विदिशा </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">
                            <asp:Button runat="server" CssClass="btn btn-outline-success w-lg btn-border" Text="Search" ID="BtnRejectData" OnClick="BtnRejectData_Click" />
                            <a runat="server" class="btn btn-outline-danger w-lg btn-border" href="DistrictWiseProcessReport.aspx">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="ReportOfRejectedDetails">
                <legend>Rejected Details / अस्वीकृत विवरण</legend>
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
                <div class="col-md-12">
                    <div class="table-responsive" id="BeforeClickInRejectComplain" runat="server" visible="false">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span>1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="21932">
                                    </td>

                                    <td class="phone,tablet">

                                        <a>
                                            <span>21932</span>&nbsp;
                                        </a>
                                    </td>

                                    <td>
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblShikayat">15/02/2021</span>
                                    </td>
                                    <td>
                                        <span>S.K Manikpuri</span>
                                    </td>
                                    <td>
                                        <span>Establishment Related</span>
                                    </td>
                                    <td>
                                        <span>Promotions</span>
                                    </td>
                                    <td>
                                        <span>शिकायत को कार्यालय द्वारा अमान्य (Reject) कर दिया है 
                     <br>
                                            <spam style="color: red;">-</spam>
                                            :कार्यालय आदि‍वासी   विकास  का प्रकरण है। अत: प्रकरण को निरस्‍त किया जाता हैैै।</span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>

                <%-- Dropdown Base Data Start of anuppur--%>
                <div class="col-md-12 mt-4" id="onClickRejectTblAgarMalwa" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdGrievance_ctl02_lblRowNumber">1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" id="" value="55052">
                                    </td>
                                    <td class="phone,tablet">55052
                                           
                                    </td>
                                    <td>
                                        <span id="">25/11/2022</span>
                                    </td>
                                    <td>
                                        <span id="">Kailashsingh KUSHWAH</span>
                                    </td>
                                    <td>
                                        <span id="">Financial Related</span>
                                    </td>
                                    <td>
                                        <span id="">Other Claims</span>
                                    </td>
                                    <td>
                                        <span id="">शिकायत को कार्यालय द्वारा अमान्य (Reject) कर दिया है 
                                                        <br>
                                            <spam style="color: red;">-</spam>
                                            :प्रकरण जनजातीय कार्य विभाग म.प्र. से संबंधित है अतः प्रकरण को अमान्य किया जाता है साथ ही संबंधित को दूरभाष द्वारा सूचित भी किया जा चूका है|</span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End of anuppur--%>
                <%-- Dropdown Base Data Start of AlirajPur--%>
                <div class="col-md-12 mt-4" id="onClickRejectTblAlirajPur" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span id="">1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="55052">
                                    </td>
                                    <td class="phone,tablet">55052
                                           
                                    </td>
                                    <td>
                                        <span id="">25/11/2022</span>
                                    </td>
                                    <td>
                                        <span id="">Kailashsingh KUSHWAH</span>
                                    </td>
                                    <td>
                                        <span id="">Financial Related</span>
                                    </td>
                                    <td>
                                        <span id="">Other Claims</span>
                                    </td>
                                    <td>
                                        <span id="">शिकायत को कार्यालय द्वारा अमान्य (Reject) कर दिया है 
                                                        <br>
                                            <spam style="color: red;">-</spam>
                                            :प्रकरण जनजातीय कार्य विभाग म.प्र. से संबंधित है अतः प्रकरण को अमान्य किया जाता है साथ ही संबंधित को दूरभाष द्वारा सूचित भी किया जा चूका है|</span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End of AlirajPur--%>
                <%-- Dropdown Base Data Start of Agar Malwa--%>
                <div class="col-md-12 mt-4" id="onClickRejectTblAnuppur" runat="server" visible="false">
                    <div class="table-responsive">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span id="">1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="21932">
                                    </td>
                                    <td class="phone,tablet">21932
                                            
                                    </td>
                                    <td>
                                        <span id="">15/02/2021</span>
                                    </td>
                                    <td>
                                        <span id="">S.K Manikpuri</span>
                                    </td>
                                    <td>
                                        <span id="">Establishment Related</span>
                                    </td>
                                    <td>
                                        <span id="">Promotions</span>
                                    </td>
                                    <td>
                                        <span id="">शिकायत को कार्यालय द्वारा अमान्य (Reject) कर दिया है 
                                                        <br>
                                            <spam style="color: red;">-</spam>
                                            :कार्यालय आदि‍वासी   विकास  का प्रकरण है। अत: प्रकरण को निरस्‍त किया जाता हैैै।</span>
                                    </td>
                                    <td>
                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    </div>
                </div>
                <%-- Dropdown Base Data End --%>
            </fieldset>
            <%--Rejected  Status Data End--%>
            <%--Disposed  Status Data start--%>
            <fieldset id="fdSetDisposedGrievances" runat="server" visible="false">
                <legend>District Wise Disposed Grievance Status / जिलावार निस्तारित शिकायत की स्थिति</legend>
                <div class="row ">
                    <div class="col-md-3">
                        <label>
                            District
                            <br />
                            जिला
             <span style="color: red">*</span>
                        </label>
                        <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDisposeCase">
                            <asp:ListItem Value="0">--Select-- </asp:ListItem>
                            <asp:ListItem Value="1">Agar Malwa ,आगर  मालवा </asp:ListItem>
                            <asp:ListItem Value="2">Alirajpur ,अलीराजपुर  </asp:ListItem>
                            <asp:ListItem Value="3">Anuppur ,अनूपपुर  </asp:ListItem>
                            <asp:ListItem Value="4">Ashoknagar ,अशोकनगर  </asp:ListItem>
                            <asp:ListItem Value="5">Balaghat ,बालाघाट  </asp:ListItem>
                            <asp:ListItem Value="6">Barwani ,बड़वानी  </asp:ListItem>
                            <asp:ListItem Value="7">Betul ,बैतूल  </asp:ListItem>
                            <asp:ListItem Value="8">Bhind ,भिण्ड  </asp:ListItem>
                            <asp:ListItem Value="9">Bhopal ,भोपाल  </asp:ListItem>
                            <asp:ListItem Value="10">Burhanpur ,बुरहानपुर  </asp:ListItem>
                            <asp:ListItem Value="11">Chhatarpur ,छतरपुर  </asp:ListItem>
                            <asp:ListItem Value="12">Chhindwara ,छिंदवाडा  </asp:ListItem>
                            <asp:ListItem Value="13">Damoh ,दमोह  </asp:ListItem>
                            <asp:ListItem Value="14">Datia ,दतिया  </asp:ListItem>
                            <asp:ListItem Value="15">Dewas ,देवास  </asp:ListItem>
                            <asp:ListItem Value="16">Dhar ,धार  </asp:ListItem>
                            <asp:ListItem Value="17">Dindori ,डिण्डौरी  </asp:ListItem>
                            <asp:ListItem Value="18">Guna ,गुना  </asp:ListItem>
                            <asp:ListItem Value="19">Gwalior ,ग्वालियर  </asp:ListItem>
                            <asp:ListItem Value="20">Harda ,हरदा  </asp:ListItem>
                            <asp:ListItem Value="21">Indore ,इन्दौर  </asp:ListItem>
                            <asp:ListItem Value="22">Jabalpur ,जबलपुर  </asp:ListItem>
                            <asp:ListItem Value="23">Jhabua ,झाबुआ  </asp:ListItem>
                            <asp:ListItem Value="24">Katni ,कटनी  </asp:ListItem>
                            <asp:ListItem Value="25">Khandwa ,खण्डवा  </asp:ListItem>
                            <asp:ListItem Value="26">Khargone ,खरगोन  </asp:ListItem>
                            <asp:ListItem Value="27">Mandla ,मण्डला  </asp:ListItem>
                            <asp:ListItem Value="28">Mandsaur ,मन्दसौर  </asp:ListItem>
                            <asp:ListItem Value="29">Morena ,मुरैना  </asp:ListItem>
                            <asp:ListItem Value="30">Narmadapuram ,नर्मदापुरम </asp:ListItem>
                            <asp:ListItem Value="31">Narsinghpur ,नरसिंहपुर  </asp:ListItem>
                            <asp:ListItem Value="32">Neemuch ,नीमच  </asp:ListItem>
                            <asp:ListItem Value="33">Niwari ,निवाड़ी </asp:ListItem>
                            <asp:ListItem Value="34">Panna ,पन्ना  </asp:ListItem>
                            <asp:ListItem Value="35">Raisen ,रायसेन  </asp:ListItem>
                            <asp:ListItem Value="36">Rajgarh ,राजगढ़  </asp:ListItem>
                            <asp:ListItem Value="37">Ratlam ,रतलाम  </asp:ListItem>
                            <asp:ListItem Value="38">Rewa ,रीवा  </asp:ListItem>
                            <asp:ListItem Value="39">Sagar ,सागर  </asp:ListItem>
                            <asp:ListItem Value="40">Satna ,सतना  </asp:ListItem>
                            <asp:ListItem Value="41">Sehore ,सीहोर  </asp:ListItem>
                            <asp:ListItem Value="42">Seoni ,सिवनी  </asp:ListItem>
                            <asp:ListItem Value="43">Shahdol ,शहडोल  </asp:ListItem>
                            <asp:ListItem Value="44">Shajapur ,शाजापुर  </asp:ListItem>
                            <asp:ListItem Value="45">Sheopur ,श्योपुर  </asp:ListItem>
                            <asp:ListItem Value="46">Shivpuri ,शिवपुरी  </asp:ListItem>
                            <asp:ListItem Value="47">Sidhi ,सीधी  </asp:ListItem>
                            <asp:ListItem Value="48">Singrauli ,सिंगरौली  </asp:ListItem>
                            <asp:ListItem Value="49">Tikamgarh ,टीकमगढ़  </asp:ListItem>
                            <asp:ListItem Value="50">Ujjain ,उज्जैन  </asp:ListItem>
                            <asp:ListItem Value="51">Umaria ,उमरिया  </asp:ListItem>
                            <asp:ListItem Value="52">Vidisha ,विदिशा </asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <asp:Button runat="server" CssClass="btn btn-outline-success w-lg btn-border" Text="Search" ID="BtnDisposeCase" OnClick="BtnDisposeCase_Click" />
                        <a runat="server" class="btn btn-outline-danger w-lg btn-border" href="DistrictWiseProcessReport.aspx">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset runat="server" visible="false" id="ReportOfDisposedDetails">
                <legend>Disposed Details / निस्तारित विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput37" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="col-md-12">
                    <div class="table-responsive" id="BeforeClickInDisposeCase" runat="server" visible="false">
                        <table class="table table-bordered text-center">
                            <thead class="text-center">
                                <tr>
                                    <th data-class="expand" scope="col">Sr.No.<br />
                                        सरल क्र.</th>
                                    <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                        शिकायत क्रमांक</th>
                                    <th data-hide="phone,tablet" scope="col">Date<br />
                                        दिनाँक</th>
                                    <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                        लोकसेवक का नाम</th>
                                    <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                        शिकायत का प्रकार </th>
                                    <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                        शिकायत का विषय </th>
                                    <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                        शिकायत  की स्थिति</th>
                                    <th data-class="phone,tablet" scope="col">View Complaint<br />
                                        शिकायत देखे<br />
                                    </th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="expand">
                                        <span>1</span>
                                        <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdGrievance$ctl02$hdnId" value="1586">
                                    </td>
                                    <td>1589
                                    </td>
                                    <td>
                                        <span>31/12/2020</span>
                                    </td>
                                    <td>
                                        <span>Abdula Kadir</span>
                                    </td>
                                    <td>
                                        <span>Establishment Related</span>
                                    </td>
                                    <td>
                                        <span>Other Grievances</span>
                                    </td>
                                    <td>
                                        <span>शिकायत पर कार्यवाही की का चुकी है 
                                            <br>
                                            <spam style="color: red;">-</spam>
                                            :म.प्र. स्‍कूल शिक्षा विभाग मंत्रालय, वल्‍लभ भवन-भोपाल के पत्र क्र. एफ 01-37/ 2016/20-1 दिनांक 22-10-2016 के तहत म.प्र. ऑन लाईन के माध्‍यम से दिनांक 08-09-2013 को आयोजित एरिया एज्‍युकेशन ऑफिसर की परीक्षा एतद् द्वारा निरस्‍त की गई थी।</span>
                                    </td>
                                    <td class="phone,tablet">

                                        <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i>
                                        </a>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <%-- Dropdown Base Data Start of AgarMalwa--%>
                    <div class="col-md-12 mt-4" id="onClickDisposeTblAgarMalwa" runat="server" visible="false">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="text-center">
                                    <tr>
                                        <th data-class="expand" scope="col">Sr.No.<br />
                                            सरल क्र.</th>
                                        <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                            शिकायत क्रमांक</th>
                                        <th data-hide="phone,tablet" scope="col">Date<br />
                                            दिनाँक</th>
                                        <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                            लोकसेवक का नाम</th>
                                        <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                            शिकायत का प्रकार </th>
                                        <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                            शिकायत का विषय </th>
                                        <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                            शिकायत  की स्थिति</th>
                                        <th data-class="phone,tablet" scope="col">View Complaint<br />
                                            शिकायत देखे<br />
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="expand">
                                            <span id="">1</span>
                                        </td>
                                        <td class="phone,tablet">1586
            
                                        </td>
                                        <td>
                                            <span id="">31/12/2020</span>
                                        </td>
                                        <td>
                                            <span id="">Abdula Kadir</span>
                                        </td>
                                        <td>
                                            <span id="">Establishment Related</span>
                                        </td>
                                        <td>
                                            <span id="">Other Grievances</span>
                                        </td>
                                        <td>
                                            <span id="">शिकायत पर कार्यवाही की का चुकी है 
                             <br>
                                                <spam style="color: red;">-</spam>
                                                :म.प्र. स्‍कूल शिक्षा विभाग मंत्रालय, वल्‍लभ भवन-भोपाल के पत्र क्र. एफ 01-37/ 2016/20-1 दिनांक 22-10-2016 के तहत म.प्र. ऑन लाईन के माध्‍यम से दिनांक 08-09-2013 को आयोजित एरिया एज्‍युकेशन ऑफिसर की परीक्षा एतद् द्वारा निरस्‍त की गई थी।</span>
                                        </td>
                                        <td>
                                            <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%-- Dropdown Base Data end of AgarMalwa--%>
                    <%-- Dropdown Base Data Start of AlirajPur--%>
                    <div class="col-md-12 mt-4" id="onClickDisposeTblAlirajPur" runat="server" visible="false">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>Complaint Number<br />
                                            शिकायत क्रमांक</th>
                                        <th>Date<br />
                                            दिनाँक</th>
                                        <th>Name of Public Servant<br />
                                            लोकसेवक का नाम</th>
                                        <th>Type of Complaint<br />
                                            शिकायत का प्रकार </th>
                                        <th>Subject of Complaint<br />
                                            शिकायत का विषय </th>
                                        <th>Complaint Status<br />
                                            शिकायत  की स्थिति</th>
                                        <th>View Complaint<br />
                                            शिकायत देखे<br />
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="expand">
                                            <span id="">1</span>

                                        </td>
                                        <td class="phone,tablet">53664
           
                                        </td>
                                        <td>
                                            <span id="">07/11/2022</span>
                                        </td>
                                        <td>
                                            <span id="">Nagendra Singh Bhadauria</span>
                                        </td>
                                        <td>
                                            <span id="">Establishment Related</span>
                                        </td>
                                        <td>
                                            <span id="">Transfer related problems</span>
                                        </td>
                                        <td>
                                            <span id="">शिकायत पर कार्यवाही की का चुकी है 
                             <br>
                                                <spam style="color: red;">-</spam>
                                                :TRANSFER ORDER CANCEL</span>
                                        </td>
                                        <td>
                                            <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%-- Dropdown Base Data End of AlirajPur--%>
                    <%-- Dropdown Base Data Start of anuppur--%>
                    <div class="col-md-12 mt-4" id="onClickDisposeTblAnuppur" runat="server" visible="false">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="text-center">
                                    <tr>
                                        <th data-class="expand" scope="col">Sr.No.<br />
                                            सरल क्र.</th>
                                        <th data-class="phone,tablet" scope="col">Complaint Number<br />
                                            शिकायत क्रमांक</th>
                                        <th data-hide="phone,tablet" scope="col">Date<br />
                                            दिनाँक</th>
                                        <th data-hide="phone,tablet" scope="col">Name of Public Servant<br />
                                            लोकसेवक का नाम</th>
                                        <th data-hide="phone,tablet" scope="col">Type of Complaint<br />
                                            शिकायत का प्रकार </th>
                                        <th data-hide="phone,tablet" scope="col">Subject of Complaint<br />
                                            शिकायत का विषय </th>
                                        <th data-hide="phone,tablet" scope="col">Complaint Status<br />
                                            शिकायत  की स्थिति</th>
                                        <th data-class="phone,tablet" scope="col">View Complaint<br />
                                            शिकायत देखे<br />
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="expand">
                                            <span id="">1</span>
                                        </td>
                                        <td class="phone,tablet">53653
                                        </td>
                                        <td>
                                            <span id="">07/11/2022</span>
                                        </td>
                                        <td>
                                            <span id="">Dhirendra Singh Tomar</span>
                                        </td>
                                        <td>
                                            <span id="">Establishment Related</span>
                                        </td>
                                        <td>
                                            <span id="">Promotions</span>
                                        </td>
                                        <td>
                                            <span id="">शिकायत पर कार्यवाही की का चुकी है 
                             <br>
                                                <spam style="color: red;">-</spam>
                                                :संबंधित द्वारा दूरभाष पर चर्चा के उपरांत ज्ञात हुआ कि संबंधित की शिकायत का निराकरण हो गया है। अत: प्रकरण को विलोपित किया जाता है।</span>
                                        </td>
                                        <td>
                                            <a href="#"><i class="fas fa-eye" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2"></i></a>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                    <%-- Dropdown Base Data End of anuppur--%>
                    <%-- Dropdown Base Data End --%>
                </div>
            </fieldset>
        </div>
    </div>
    <%--Disposed  Status Data End--%>
    <%-- Pop Up model View --%>
    <div class="modal bs-example-modal-lg2" id="myLargeModalLabel" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="myDIV">
                    <h4 class="modal-title" id="myLargeModalLabel1"></h4>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="col-md-12 text-center">
                            <h3 class="font-bold">जिला शिक्षा अधिकारी</h3>
                            <h4 class="font-bold">जिला : टीकमगढ़</h4>
                            <h4 class="font-bold">लोकसेवक का विवरण</h4>
                        </div>
                        <div class="row">
                            <div class="col-md-12 table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Complaint No.<br />
                                                शिकायत क्र.</th>
                                            <th>Complaint Date<br />
                                                शिकायत दिनाँक </th>
                                            <th>District<br />
                                                जिला  </th>
                                            <th>Department<br />
                                                विभाग </th>
                                            <th>Name of Public Servant<br />
                                                लोकसेवक का नाम </th>
                                            <th>Designation<br />
                                                पदनाम </th>
                                            <th>E-mail<br />
                                                ईमेल </th>
                                            <th>Mobile<br />
                                                मोबाइल</th>
                                            <th>Subject of Complaint<br />
                                                शिकायत का विषय</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td>1</td>
                                        <td>74060</td>
                                        <td>02/05/2024</td>
                                        <td>टीकमगढ़</td>
                                        <td>Education</td>
                                        <td>Nidhi Mishra [BO8511]</td>
                                        <td>Prathmik Shikshak</td>
                                        <td>Gaurishankartkg@Gmail.Com</td>
                                        <td>7974333143</td>
                                        <td>बकाया लंबित</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="row justify-content-center">
                            <div class="col-md-3 text-center">
                                <h5 class="font-bold">शिकायत का विवरण</h5>
                                <hr />
                            </div>
                        </div>
                        <div class="row mb-2">
                            <div class="col-md-12">
                                <label class="font-16 font-bold">विषय :-  संकुल प्रचार्य विवेक जैन द्वारा मेरी वर्ष 2023 की जनवरी फरवारी मार्च अप्रैल की सैलारी नहीं दी जा रही है।</label>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-outline-success w-lg" id="btnPrint" onclick="printModalContent('myLargeModalLabel')">Print</button>
                    <button type="button" class="btn btn-outline-danger w-lg" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function printModalContent(modalId) {
            var modal = document.getElementById(modalId);
            var hideElements = modal.querySelectorAll('.print-hide');
            hideElements.forEach(function (element) {
                element.style.display = 'none';
            });
            window.print();
            hideElements.forEach(function (element) {
                element.style.display = '';
            });
        }

    </script>

</asp:Content>


