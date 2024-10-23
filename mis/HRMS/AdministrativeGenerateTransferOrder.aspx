﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AdministrativeGenerateTransferOrder.aspx.cs" Inherits="mis_HRMS_AdministrativeGenerateTransferOrder" %>

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
                width: 210%;
                height: auto;
                overflow: visible !important;
                zoom: 120%;
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
        }
    </style>

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
                            <a href="#AdministrativeLevelTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Administrative Level Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Generate Transfer Order</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div><div class="col-md-4 align-self-center" style="position: relative; bottom: 35px;">
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
                            <h4 class="card-title">Generate Transfer Order / स्थानांतरण आदेश जनरेट करें<br />
                            </h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                  <%--  <nav class="navbar navbar-expand-lg topbar ">
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

                                            <li><a class="dropdown-item" href="Trn_AdministrativeTransferApply.aspx">Transfer</a></li>
                                            <li><a class="dropdown-item" href="AdministrativeTransferDraftLetter.aspx">Print Draft Transfer Or Update Application</a></li>
                                            <li><a class="dropdown-item" href="AdministrativeGenerateTransferOrder.aspx">Generate Transfer Order</a></li>
                                            <li><a class="dropdown-item" href="AdministrativePrintTransferOrder.aspx">Print Transfer Order</a></li>
                                        </ul>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link text-white " href="Trn_AdministrativePostCodeWithVacancies.aspx" role="button"><b class="font-16 font-bold">View Post Code With Vacancies</b></a>
                                    </li>
                                    <li class="nav-item dropdown ">
                                        <a class="nav-link dropdown-toggle text-white " href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><b class="font-16 font-bold">Report</b></a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_DistWiseCounting.aspx">District Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="../Transaction/Rpt_BlockWiseCounting.aspx">Block Wise Counting</a></li>
                                            <li><a class="dropdown-item" href="Rpt_AdministrativeTransferReport.aspx">Transfer Report</a></li>
                                        </ul>

                                    </li>
                                </ul>

                            </div>
                        </div>
                    </nav>
                    <br />
                    <br />--%>
                    <fieldset>
                        <legend>Generate Transfer Order / स्थानांतरण आदेश जनरेट करें</legend>
                        <div class="row align-items-end">

                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Designation Type <br />
                                        पदनाम<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="----">--Select--</option>
                                        <option value="----">All</option>
                                        <option value="----">Clerical</option>
                                        <option value="----">Executive</option>
                                        <option value="----">Ministry</option>
                                        <option value="----">Teaching</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">

                                    <label>
                                        District <br />
                                        ज़िला<span style="color: red">*</span></label>
                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="----">All</option>
                                        <option value="Bhopal">Bhopal</option>
                                        <option value="Raisen">Raisen</option>
                                        <option value="Rajgarh">Rajgarh</option>
                                        <option value="Sehore">Sehore</option>
                                        <option value="Vidisha">Vidisha</option>
                                        <option value="Ashoknagar">Ashoknagar</option>
                                        <option value="Shivpuri">Shivpuri</option>
                                        <option value="Datia">Datia</option>
                                        <option value="Guna">Guna</option>
                                        <option value="Gwalior">Gwalior</option>
                                        <option value="Harda">Harda</option>
                                        <option value="Hoshangabad">Hoshangabad</option>
                                        <option value="Betul">Betul</option>
                                        <option value="Morena">Morena</option>
                                        <option value="Sheopur">Sheopur</option>
                                        <option value="Bhind">Bhind</option>
                                        <option value="Barwani">Barwani</option>
                                        <option value="Burhanpur">Burhanpur</option>
                                        <option value="Dhar">Dhar</option>
                                        <option value="Indore">Indore</option>
                                        <option value="Jhabua">Jhabua</option>
                                        <option value="Khandwa">Khandwa</option>
                                        <option value="Khargone">Khargone</option>
                                        <option value="Alirajpur">Alirajpur</option>
                                        <option value="Balaghat">Balaghat</option>
                                        <option value="Chhindwara">Chhindwara</option>
                                        <option value="Jabalpur">Jabalpur</option>
                                        <option value="Katni">Katni</option>
                                        <option value="Mandla">Mandla</option>
                                        <option value="Narsinghpur">Narsinghpur</option>
                                        <option value="Seoni">Seoni</option>
                                        <option value="Rewa">Rewa</option>
                                        <option value="Satna">Satna</option>
                                        <option value="Sidhi">Sidhi</option>
                                        <option value="Singroli">Singroli</option>
                                        <option value="Chhatarpur">Chhatarpur</option>
                                        <option value="Damoh">Damoh</option>
                                        <option value="Panna">Panna</option>
                                        <option value="Sagar">Sagar</option>
                                        <option value="Tikamgarh">Tikamgarh</option>
                                        <option value="Shahdol">Shahdol</option>
                                        <option value="Umaria">Umaria</option>
                                        <option value="Dindori">Dindori</option>
                                        <option value="Anuppur">Anuppur</option>
                                        <option value="Dewas">Dewas</option>
                                        <option value="Mandsaur">Mandsaur</option>
                                        <option value="Neemuch">Neemuch</option>
                                        <option value="Ratlam">Ratlam</option>
                                        <option value="Shajapur">Shajapur</option>
                                        <option value="Ujjain">Ujjain</option>

                                    </select>
                                </div>
                            </div>

                            <div class="col-md-3">
                                <div class="form-group">

                                    <label>
                                        Block <br />
                                        ब्लॉक</label>
                                    <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="----">All</option>
                                        <option value="Bhopal">Huzur</option>
                                        <option value="Raisen">Fanda</option>
                                        <option value="Govindapura">Govindpura</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">

                                    <label>
                                        Employee Unique ID<br />
                                        कर्मचारी यूनिक आईडी
                                    </label>
                                    <input type="text" class="form-control" placeholder="Enter Employee Unique ID" />
                                </div>
                            </div>
                            <hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">Search</button>
                                    <a class="btn btn-outline-danger btn-border w-lg" href="AdministrativeGenerateTransferOrder.aspx">Clear</a>
                                </div>
                            </div>
                        </div>

                    </fieldset>

                    <fieldset id="vacaniesDetail" style="display: none;">
                        <legend>Transfer Order Detail / स्थानांतरण आदेश विवरण</legend>
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
                                    <table class="table table-hover">
                                        <tr>
                                            <th>Sr.No. <br />
                                                सरल क्र. </th>
                                            <th>Get DSC <br />
                                                DSC प्राप्त करें</th>
                                            <th>Order No. <br />
                                                ऑर्डर संख्या </th>
                                            <th>Employee Name <br />
                                                कर्मचारी का नाम </th>
                                            <th>Unique Id <br />
                                                यूनीक आई डी </th>
                                            <th>Current DDO/Shankul <br />
                                                वर्तमान डीडीओ/शंकुल</th>
                                            <th>New DDO/Shankul <br />
                                                नया डीडीओ/शंकुल</th>
                                        </tr>
                                        <tr id="row1">
                                            <td>1</td>
                                            <td class="text-center">
                                                <input type="checkbox" id="chk1" class="form-check" onchange="toggleDivVisibility()" /></td>
                                            <td>2024/20-01/140530</td>
                                            <td>Arjun Talwar</td>
                                            <td>BT9430</td>
                                            <td>1214548455-Sarasvati Gyan Mandir</td>
                                            <td>1014632121-Gyan Ganga Vidhya Mandir</td>

                                            <tr id="row2">
                                                <td>2</td>
                                                <td class="text-center">
                                                    <input type="checkbox" id="chk2" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                <td>2024/20-01/140530</td>
                                                <td>Kapil Sharma</td>
                                                <td>BT9430</td>
                                                <td>1014632121-Gyan Ganga Vidhya Mandir</td>
                                                <td>1214548455-Sarasvati Gyan Mandir</td>
                                            </tr>

                                            <tr id="row3">
                                                <td>3</td>
                                                <td class="text-center">
                                                    <input type="checkbox" class="form-check" id="chk3" onchange="toggleDivVisibility()" /></td>
                                                <td>2024/20-01/140530</td>
                                                <td>Rohan Kumar</td>
                                                <td>AO5690</td>
                                                <td>1236547895-Gov.Hs School</td>
                                                <td>1258963478-Model High Secondary School</td>
                                            </tr>
                                            <tr id="row4">
                                                <td>4</td>
                                                <td class="text-center">
                                                    <input type="checkbox" id="chk4" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                <td>2024/20-01/140530</td>
                                                <td>Ravi Singh</td>
                                                <td>MT5695</td>
                                                <td>1258963478-Model High Secondary School</td>
                                                <td>1236547895-Gov.Hs School</td>
                                            </tr>
                                            <tr id="row5">
                                                <td>5</td>
                                                <td class="text-center">
                                                    <input type="checkbox" id="chk5" class="form-check" onchange="toggleDivVisibility()" /></td>
                                                <td>2024/20-01/140530</td>
                                                <td>Amar Rajpoot</td>
                                                <td>GT7589</td>
                                                <td>1224876546-Bal Bharti Higher Secondary School</td>
                                                <td>1315476598-Sarasvati Vidhya Mandir</td>
                                            </tr>
                                    </table>
                                    <p style="color: blue" class="font-16">नोट :- जनरेट आर्डर करने हेतु चेक बॉक्स पर क्लिक कर गेट DSC करें |</p>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <div id="generateorder" style="display: none; text-align: center">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-toggle="modal" data-bs-target="#exampleModal">GET DSC</button>
                    </div>


                    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h1 class="modal-title fs-5" id="exampleModalLabel">OTP Verification / OTP सत्यापन</h1>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">


                                    <fieldset>
                                        <legend>OTP Details</legend>
                                        <div class="row">
                                            <div class="col-md-12">
                                                <div class="form-group">
                                                    <label>OTP (One Time Password)</label>
                                                    <input type="text" class="form-control" />
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>

                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-outline-success btn-border w-lg" data-bs-dismiss="modal" ononchange="toggleDivVisibility1()">Submit</button>
                                    <button type="button" class="btn btn-outline-danger btn-border w-lg" data-bs-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>









                    <!-- Modal -->

                    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                        <div class="modal-dialog modal-xl">
                            <div class="modal-content">
                                <div class="modal-header">

                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                <div class="modal-body">
                                    <fieldset>
                                        <div class="row mt-2">
                                            <div class="col-sm-2">
                                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 100px; height: auto; background: none" class="responsive" />
                                            </div>
                                            <div class="col-sm-8 text-center">
                                                <h3><strong><b>लोक शिक्षण संचालनालय मध्य प्रदेश</b></strong></h3>
                                                <h4><strong><b>गौतम नगर, भोपाल - 462021</b></strong></h4>

                                            </div>
                                            <div class="col-sm-2">
                                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                            </div>
                                        </div>
                                        <hr />
                                        <div>
                                            <div class="row">
                                                <div class="col-md-12">
                                                    <div>

                                                        <div>
                                                            <table class="table">
                                                                <tr>
                                                                    <th>क्र./स्थानांतरण</th>
                                                                    <td>2024/20-01/140621</td>
                                                                    <th>दिनाँक:-</th>
                                                                    <td>09-03-2024</td>
                                                                </tr>
                                                            </table>
                                                            <h4 class="text-center mt-4 mb-4 font-bold"><u>:: आदेश ::</u></h4>

                                                            <p class="text-center">राज्य शासन एतद द्वारा सक्षम स्वीकृति उपरांत निस्रांकित लोक सेवक को उनके नाम के सम्मुख तालिका के कॉलम क्र. 7एवं 8 में अंकित संस्था एवं जिले में समान मामर्थ्य एवं वेतनमान में स्थानांतरित कर पदस्थ किया जाता है।</p>

                                                        </div>

                                                        <div class="row">

                                                            <div class="col-md-12">
                                                                <div class="">
                                                                    <table class="table">

                                                                        <tr>
                                                                            <th>सरल क्र.</th>

                                                                            <th>नाम एवं पद</th>
                                                                            <th>विषय </th>
                                                                            <th>कार्यरत संस्था एवं डाइम कोड</th>
                                                                            <th>कार्यरत जिला</th>
                                                                            <th>नवीन संस्था एवं डाइस कोड</th>
                                                                            <th>नवीन पदस्थापना का जिला</th>
                                                                        </tr>
                                                                        <tr>
                                                                            <td>1</td>
                                                                            <td>Arjun Talwar<br />
                                                                                Prathmik Shikshak</td>

                                                                            <td>Hindi</td>
                                                                            <td>(2327100059) B.HSS BISTAN</td>
                                                                            <td>Bhopal</td>
                                                                            <td>(2327100059) B.HSS Bhopal</td>
                                                                            <td>Ratlam</td>
                                                                        </tr>
                                                                    </table>

                                                                </div>

                                                            </div>
                                                            <div>
                                                                <h3>उत्तः स्थानांतरण निग्न शर्तों के अधीन रहेगा :- </h3>

                                                                <p class="font-16 font-bold">
                                                                    01. संबंधित लोक सेवक का स्थानांतरण आदेश जारी होने पर उसकी ई-सेवा पुस्तिका/सेवा पुस्तिका से स्थानांतरण आदेश में उल्लेखित जानकारी का मिलान करने के उपरांत सही पाए जाने पर ही कार्य मुक्त किया जाए, इसका सम्पूर्ण उत्तरदायित्व संबंधित संकुल प्राचार्य का होगा ।<br />
                                                                    02. संबंधित लोक मेवक पदस्थी संस्था से बगैर सूचना के लंबी अवधि से अनुपस्थित होने की स्थिति में स्थानांतरण स्वतः ही निरस्त माना जायेगा |<br />
                                                                    03. स्थानांतरित लोक मेवक, संकुल केंद्र में उपस्थिति देने के उपरांत स्थानान्तरित संस्था में कार्यभार ग्रहण करेगा तथा इसकी निखित सूचना संकुल केंद्र के माध्यम से विकासखंड शिक्षा अधिकारी को देना सुनिश्चित करेगा |<br />
                                                                    04. स्थानांतरित लोक सेवक अपना समस्त कार्यभार सौंपने के उपरांत ही कार्यमुक्त होंगे |<br />
                                                                    05. यदि संबंधित लोक सेवक अध्यापक संवर्ग का है तथा स्कूल शिक्षा विभाग के अंतर्गत नवीन संवर्ग में नियुक्ति नहीं हुई है ऐसी स्थिति में यह आदेश स्वतः ही निरस्त माना जायेगा |<br />
                                                                    06. संबंधित लोक मेवक जनजातीय कार्य विभाग द्वारा संचालित शाला में कार्यरत है तो उनका स्थानांतरण स्कूल शिक्षा विभाग में मान्य नहीं होगा तथा यह आदेश स्वतः ही निरस्त माना जायेगा ।<br />
                                                                    07. स्थानांतरित लोक सेवक को नियमानुसार कार्यभार ग्रहण अवधि एवं भत्तों की पात्रता होगी |<br />
                                                                    08. कार्यमुक्त होने के पश्चात एवं नवीन पदस्थापना पर कार्यभार ग्रहण करने के मध्य की अवधि में किसी भी प्रकार का अवकाश प्रशासकीय विभाग के माध्यम से सामान्य प्रशासन विभाग का अभिमत प्राप्त करने के पश्चात ही स्वीकृत किया जा सकेगा ।<br />

                                                                </p>


                                                                <table style="width: 100%;">

                                                                    <tr>


                                                                        <td class="text-end font-16 ">(अनुभा श्रीवास्तव)<br />
                                                                            <span class="text-center ">आयुक्त<br />
                                                                            </span>

                                                                            लोक शिक्षण, मध्यप्रदेश
                                                                        </td>
                                                                    </tr>
                                                                </table>
                                                            </div>
                                                        </div>

                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                    </fieldset>
                                    <div class="modal-footer text-center">
                                        <%--             <button type="button" class=" Alert-Save btn btn-success btn-rounded Alert-Save " onclick="myFunction()">Approve</button>--%>
                                        <button type="button" class="btn btn-success" onclick="window.print()">Print & Approve</button>
                                        <button type="button" class="btn btn-warning" data-bs-dismiss="modal">Close</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>
    <script>
        function toggleDivVisibility() {
            var chk1 = document.getElementById("chk1");
            var chk2 = document.getElementById("chk2");
            var chk3 = document.getElementById("chk3");
            var chk4 = document.getElementById("chk4");
            var chk5 = document.getElementById("chk5");
            var div1 = document.getElementById("generateorder");
            // Checking the state of each checkbox and displaying/hiding div1 accordingly
            if (chk1.checked || chk2.checked || chk3.checked || chk4.checked || chk5.checked) {
                div1.style.display = "block";
            } else {
                div1.style.display = "none";
            }
        }
    </script>
    <script>
        function toggleDivVisibility1() {
            var div1 = document.getElementById("row1");
            var div2 = document.getElementById("row2");
            var div3 = document.getElementById("row3");
            var div4 = document.getElementById("row4");
            var div5 = document.getElementById("row5");
            var chk1 = document.getElementById("chk1");
            var chk2 = document.getElementById("chk2");
            var chk3 = document.getElementById("chk3");
            var chk4 = document.getElementById("chk4");
            var chk4 = document.getElementById("chk5");
            // Checking the state of each checkbox and displaying/hiding div1 accordingly
            if (chk1.checked || chk2.checked || chk3.checked || chk4.checked || chk5.checked) {
                div1.style.display = "none";
            }
            else {
                div1.style.display = "none";
            }
        }
    </script>

</asp:Content>

