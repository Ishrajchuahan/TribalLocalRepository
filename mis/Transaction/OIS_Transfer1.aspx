﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="OIS_Transfer1.aspx.cs" Inherits="mis_Transaction_OIS_Transfer1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        .close {
            color: #aaa;
            float: right;
            font-size: 28px;
            font-weight: bold;
        }

            .close:hover,
            .close:focus {
                color: black;
                text-decoration: none;
                cursor: pointer;
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
                            <a href="#AutoTransferSys" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Automatic Transfer System</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>OIS Generate Transfer</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">OIS Generate Transfer / ओ.आई.एस. जनरेट ट्रांसफर </h4>
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
                                        <li>

                                            <a class="nav-link  text-white " href="OIS_Transfer1Notes.aspx" role="button"><b class="font-16 font-bold"><i class="fa fa-home"></i></b></a>
                                        </li>
                                        <li>

                                            <a class="nav-link  text-white " href="OIS_Transfer1.aspx" role="button"><b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>OIS Generate Transfer
                                            </b></a>
                                        </li>
                                    </ul>

                                </div>
                            </div>
                        </nav>
                        <br />--%>
                    <fieldset>
                        <legend>Generate OIS Transfer / ओ.आई.एस. ट्रांसफर जनरेट करें</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Designation Type
                                        <br />
                                        पदनाम का प्रकार <span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Indore">Ministry (मंत्रालय)</option>
                                        <option value="Gwalior">Executive (कार्यकारी)</option>
                                        <option value="Jabalpur">Teacher (अध्यापक)</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Designation
                                        <br />
                                        पदनाम<span style="color: red">*</span></label>
                                    <select class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Additional Director">Additional Director</option>
                                        <option value="Joint Director">Joint Director</option>
                                        <option value="Deputy Director">Deputy Director</option>
                                        <option value="Asstt Director">Asstt Director</option>
                                        <option value="Regional Librarian">Regional Librarian</option>
                                        <option value="Planning Officer">Planning Officer</option>
                                        <option value="Director (ELTI)">Director (ELTI)</option>
                                        <option value="Director(SISE)">Director(SISE)</option>
                                        <option value="Principal (PGBT)">Principal (PGBT)</option>
                                        <option value="Principal (DIET)">Principal (DIET)</option>
                                        <option value="Principal HSS">Principal HSS</option>
                                        <option value="Principal HS">Principal HS</option>
                                        <option value="Lecturer">Lecturer</option>
                                        <option value="HM(MS)">HM(MS)</option>
                                        <option value="Teacher (UDT)">Teacher (UDT)</option>
                                        <option value="Music Teacher">Music Teacher</option>
                                        <option value="Tabla Teacher">Tabla Teacher</option>
                                        <option value="Craft Teacher">Craft Teacher</option>
                                        <option value="HM(PS)">HM(PS)</option>
                                        <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                        <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                        <option value="Adhyapak">Adhyapak</option>
                                        <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                    </select>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        District Name
                                        <br />
                                        जिले का नाम<span style="color: red">*</span></label>
                                    <select name="ddlDistrict" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
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
                                        Block Name
                                        <br />
                                        विकासखण्ड का नाम<span style="color: red">*</span></label>
                                    <select id="ddlBlock" class="form-control select2">
                                        <option value="--Select--">--Select--</option>
                                        <option value="Agar">Agar</option>
                                        <option value="Barod">Barod</option>
                                        <option value="Nalkheda">Nalkheda</option>
                                        <option value="Susner">Susner</option>
                                        <option value="Alirajpur">Alirajpur</option>
                                        <option value="Bhabra">Bhabra</option>
                                        <option value="Katthiwara">Katthiwara</option>
                                        <option value="Sondwa">Sondwa</option>
                                        <option value="Udaygarh">Udaygarh</option>
                                        <option value="Jobat">Jobat</option>
                                        <option value="Anuppur">Anuppur</option>
                                        <option value="Jaithari">Jaithari</option>
                                        <option value="Kotma">Kotma</option>
                                    </select>
                                </div>
                            </div>

                        </div>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group ">
                                <button type="button" onclick="btnSearch()" class="btn btn-outline-success btn-border w-lg">Search</button>
                                <a href="OIS_Transfer1.aspx" class=" btn btn-outline-danger btn-border w-lg">Clear</a>
                            </div>
                        </div>
                    </fieldset>

                    <div id="divDetails" style="display: none;">
                        <fieldset id="divCurrentOfficeLocation" style="display: none;">
                            <legend>Current Office Location</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Employee ID-Name
                                            <br />
                                            कर्मचारी का आई.डी. - नाम</label>
                                        <input name="ename" type="text" value="20562-Rohan" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            OIS-Udise Code
                                            <br />
                                            ओ.आइ.एस. कोड</label>
                                        <input name="ename" type="text" value="7850041" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code
                                            <br />
                                            संकुल कोड</label>
                                        <input name="ename" type="text" value="689200" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Type of Post
                                            <br />
                                            पद प्रकार</label>
                                        <input name="ename" type="text" value="Regular" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Class
                                            <br />
                                            श्रेणी</label>
                                        <input name="ename" type="text" value="Class IV" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                            <br />
                                            पदनाम</label>
                                        <input name="ename" type="text" value="Regular" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Department
                                            <br />
                                            विभाग</label>
                                        <input name="ename" type="text" value="Administration" disabled="disabled" class="form-control" autocomplete="off" placeholder="" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset id="DivOfficeLocation" style="display: none;">
                            <legend>New Office Location</legend>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label class="font-bold">
                                            District Name
                                            <br />
                                            जिले का नाम<span style="color: red">*</span></label>
                                        <select name="ddlDistrict2" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
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
                                        <label class="font-bold">
                                            Block Name
                                            <br />
                                            विकासखण्ड का नाम<span style="color: red">*</span></label>
                                        <select id="ddlBlock2" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Agar">Agar</option>
                                            <option value="Barod">Barod</option>
                                            <option value="Nalkheda">Nalkheda</option>
                                            <option value="Susner">Susner</option>
                                            <option value="Alirajpur">Alirajpur</option>
                                            <option value="Bhabra">Bhabra</option>
                                            <option value="Katthiwara">Katthiwara</option>
                                            <option value="Sondwa">Sondwa</option>
                                            <option value="Udaygarh">Udaygarh</option>
                                            <option value="Jobat">Jobat</option>
                                            <option value="Anuppur">Anuppur</option>
                                            <option value="Jaithari">Jaithari</option>
                                            <option value="Kotma">Kotma</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            OIS-Udise Code
                                            <br />
                                            ओ.आइ.एस. यू-डाईस कोड</label>
                                        <select id="ddlOISCode" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="7850041">7850041</option>
                                            <option value="7952441">7952441</option>
                                            <option value="9657132">9657132</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code
                                            <br />
                                            संकुल कोड</label>
                                        <select id="ddlSankulCode" class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="6741578">6741578</option>
                                            <option value="1487641">1487641</option>
                                            <option value="2014800">2014800</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Type of Post
                                            <br />
                                            पद प्रकार<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Yes">Regular</option>
                                            <option value="Yes">Permanent</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Designation Name
                                            <br />
                                            पदनाम<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="--Select--">--Select--</option>
                                            <option value="Additional Director">Additional Director</option>
                                            <option value="Joint Director">Joint Director</option>
                                            <option value="Deputy Director">Deputy Director</option>
                                            <option value="Asstt Director">Asstt Director</option>
                                            <option value="Regional Librarian">Regional Librarian</option>
                                            <option value="Planning Officer">Planning Officer</option>
                                            <option value="Director (ELTI)">Director (ELTI)</option>
                                            <option value="Director(SISE)">Director(SISE)</option>
                                            <option value="Principal (PGBT)">Principal (PGBT)</option>
                                            <option value="Principal (DIET)">Principal (DIET)</option>
                                            <option value="Principal HSS">Principal HSS</option>
                                            <option value="Principal HS">Principal HS</option>
                                            <option value="Lecturer">Lecturer</option>
                                            <option value="HM(MS)">HM(MS)</option>
                                            <option value="Teacher (UDT)">Teacher (UDT)</option>
                                            <option value="Music Teacher">Music Teacher</option>
                                            <option value="Tabla Teacher">Tabla Teacher</option>
                                            <option value="Craft Teacher">Craft Teacher</option>
                                            <option value="HM(PS)">HM(PS)</option>
                                            <option value="Asstt Teacher(LDT)">Asstt Teacher(LDT)</option>
                                            <option value="Varistha Adhyapak">Varistha Adhyapak</option>
                                            <option value="Adhyapak">Adhyapak</option>
                                            <option value="Sahayak Adhyapak">Sahayak Adhyapak</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Department
                                            <br />
                                            विभाग<span style="color: red">*</span></label>
                                        <select class="form-control select2">
                                            <option value="----">--Select--</option>
                                            <option value="----">DPI</option>
                                            <option value="----">Department of Education</option>
                                            <option value="----">Tribal Welfare Department</option>
                                            <option value="----">Local Body</option>
                                            <option value="----">Other State Govt Managed</option>
                                            <option value="----">Other Department</option>
                                        </select>
                                    </div>
                                </div>
                            </div>


                            <div class="col-md-12 text-center">
                                <div class="form-group">
                                    <input type="button" class="btn btn-outline-success btn-border w-lg" value="Add" onclick="btnAdd();" />
                                    <input type="button" class="btn btn-outline-danger btn-border w-lg" value="Clear" />
                                </div>
                            </div>

                        </fieldset>
                        <fieldset id="divEnteredDetails" style="display: none;">
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
                                    <div class="form-group">
                                        <div class="table-responsive">
                                            <table class="table table-bordered text-center">
                                                <tr class="card-header">
                                                    <th>Sr.No.<br />
                                                        सरल क्र.</th>
                                                    <th>Action<br />
                                                    </th>
                                                    <th>Employee ID-Name
                                                <br />
                                                        कर्मचारी का आई.डी. - नाम</th>
                                                    <th>Current OIS-Udise Code
                                                <br />
                                                        वर्तमान ओ.आइ.एस. कोड</th>
                                                    <th>Current Sankul Code
                                                <br />
                                                        वर्तमान संकुल कोड</th>
                                                    <th>New OIS-Udise Code
                                                <br />
                                                        नया ओ.आइ.एस. कोड</th>
                                                    <th>New Sankul Code
                                                <br />
                                                        नया संकुल कोड</th>
                                                    <%--<th>Delete</th>--%>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer" onclick="checkClick();" /></td>
                                                    <td>23010800102 - HS & MS BALAWANI</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton1" OnClick="LBUpadateInfo_Click">23010800102-HS & MS BALAWANI</asp:LinkButton>
                                                    </td>
                                                    <td>4012003014 - VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton8" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN</asp:LinkButton>
                                                    </td>
                                                    <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                                    <%--<td><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>--%>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer2" onclick="checkClick2();" /></td>
                                                    <td>23010800103 - P.S. BAGCHA NAVEEN</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton2" OnClick="LBUpadateInfo_Click">23010800103-P.S. BAGCHA NAVEEN</asp:LinkButton>
                                                    </td>
                                                    <td>4012003014	- VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton9" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN</asp:LinkButton>
                                                    </td>
                                                    <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                                    <%--<td><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>--%>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer3" onclick="checkClick3();" /></td>
                                                    <td>23010800201 -	PS DANTETI</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton3" OnClick="LBUpadateInfo_Click">23010800201-PS DANTETI</asp:LinkButton>
                                                    </td>
                                                    <td>4012003014	- VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                    </td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton10" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN</asp:LinkButton>
                                                    </td>
                                                    <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                                    <%--<td><a class='Alert-Delete' onclick='DeleteConfirmation()'><i class='fa fa-trash'></i></a></td>--%>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer4" onclick="checkClick4();" /></td>
                                                    <td>23010800301-PS BHURENDI</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton4" OnClick="LBUpadateInfo_Click">23010800301-PS BHURENDI
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                    </td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton11" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer5" onclick="checkClick5();" /></td>
                                                    <td>23010800302 - NMS BHURENDI</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton5" OnClick="LBUpadateInfo_Click">23010800302-NMS BHURENDI
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003014	- VIJAYPUR, PRINCIPAL H S S TARRAKALAN</td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton12" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4002506015-Assistant Commissioner Tribal Development  Sheopur</td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer6" onclick="checkClick6();" /></td>
                                                    <td>23010800303-SATELLITE SCHOOL DHORDEAH
                                                    </td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton6" OnClick="LBUpadateInfo_Click">23010800303-SATELLITE SCHOOL DHORDEAH
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003010	VIJAYPUR, PRINCIPAL Boys H S S VIJAYPUR
                                                    </td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton13" OnClick="LBUpadateInfo_Click">4012003010-VIJAYPUR, PRINCIPAL Boys H S S VIJAYPUR
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003013 -	SAHSRAM, Principal H S S SAHSRAM</td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>
                                                        <input type="checkbox" id="chckTransfer7" onclick="checkClick7();" /></td>
                                                    <td>23010800401 - PS KHERODA KHURD
                                                    </td>
                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton7" OnClick="LBUpadateInfo_Click">23010800401-PS KHERODA KHURD
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                    </td>

                                                    <td class="txt-link">
                                                        <asp:LinkButton runat="server" ID="LinkButton14" OnClick="LBUpadateInfo_Click">4012003014-VIJAYPUR, PRINCIPAL H S S TARRAKALAN
                                                        </asp:LinkButton>
                                                    </td>
                                                    <td>4002506015-Assistant Commissioner Tribal Development  Sheopur</td>
                                                </tr>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset id="divTransfer" style="display: none;">
                            <legend>Final Details / अंतिम विवरण</legend>
                            <div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Order No.
                                                <br />
                                                आदेश नंबर<span style="color: red">*</span></label>
                                            <input name="ename" type="text" class="form-control" autocomplete="off" placeholder="Enter Order No." value="546545" readonly="" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Order Date
                                                <br />
                                                आदेश दिनांक <span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Effective Date
                                                <br />
                                                प्रभावी दिनांक <span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Relieving Date
                                                <br />
                                                रिलीविंग दिनांक <span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" placeholder="Enter Relieving Date" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Upload Documents
                                                <br />
                                                दस्तावेज़ अपलोड करें<span style="color: red">*</span></label>
                                            <input name="ename" type="file" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Remark
                                                <br />
                                                टिप्पणी</label>
                                            <input type="text" class="form-control" placeholder="Enter Remark" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 mt-4">
                                        <div class="form-group">
                                            <input type="button" class="Alert-Save btn btn-outline-success btn-border w-lg" value="Transfer/Relieving" />
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset id="divOrderDetails" style="display: none;">
                            <legend>Details / विवरण</legend>
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table text-center table-bordered">
                                        <tr class="card-header">
                                            <th>Sr.No.
                                                <br />
                                                सरल क्र.</th>
                                            <th>Order No.
                                                <br />
                                                आदेश संख्या</th>
                                            <th>Order Date
                                                <br />
                                                आदेश दिनांक</th>
                                            <th>Effective Date
                                                <br />
                                                प्रभावी दिनांक</th>
                                            <th>Relieving Date
                                                <br />
                                                कार्यमुक्ति दिनांक</th>
                                            <th>Generate Order
                                                <br />
                                                आदेश जनरेट करें</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>546545</td>
                                            <td>05/02/2024</td>
                                            <td>07/02/2024</td>
                                            <td>06/02/2024</td>
                                            <td>
                                                <button onclick="openPDF1()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>

                        </fieldset>

                    </div>
                </div>
            </div>
            <!-- Editable  modal content -->
            <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-xxl" style="width: 100%;">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h4 class="modal-title" id="myLargeModalLabel2">School Details</h4>
                            <button type="button" class="btn-close" onclick="CloseModal()" aria-hidden="true"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <legend>School Basic Information</legend>

                                <div class="row align-items-end">

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School UDISE Code
                                        <br />
                                                स्कूल का डाइस कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox1" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Name
                                        <br />
                                                स्कूल का नाम (In English)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Name
                                        <br />
                                                स्कूल का नाम (हिंदी में)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Division
                                        <br />
                                                संभाग<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                District
                                                <br />
                                                जिला<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Block
                                                <br />
                                                विकासखण्ड<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                <asp:ListItem>Berasia</asp:ListItem>
                                                <asp:ListItem>Phanda</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Location
                                                <br />
                                                स्थान<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Assembly
                                                <br />
                                                विधानसभा<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Parliamentary
                                                <br />
                                                विधानसभा<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Habitation
                                                <br />
                                                निवास</label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Board
                                                <br />
                                                स्कूल बोर्ड<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                <asp:ListItem Selected="True">2-State Board</asp:ListItem>
                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                <asp:ListItem>4-International</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>

                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Type
                                                <br />
                                                स्कूल का प्रकार<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Category
                                        <br />
                                                स्कूल श्रेणी<span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value=" -Select-">-Select-</option>
                                                <option value="1-Primary">1-Pre-Primary</option>
                                                <option value="1-Primary">2-Primary</option>
                                                <option value="2-Upper Primary">3-Upper Primary</option>
                                                <option value="3-Higher Secondary">4-Secondary</option>
                                                <option value="3-Higher Secondary">5-Higher Secondary</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Category Details
                                        <br />
                                                स्कूल श्रेणी विवरण<span style="color: red;">*</span></label>
                                            <select class="form-control select2">
                                                <option value=" -Select-">-Select-</option>
                                                <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                                <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                                <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                                <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Management Group
                                        <br />
                                                प्रबंधन समूह<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">A-State Govt</asp:ListItem>
                                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                                <asp:ListItem>E-Other</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Management
                                        <br />
                                                स्कूल प्रबंधन<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Type
                                        <br />
                                                प्रभारी प्रकार<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">1-Head Master / Principal </asp:ListItem>
                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Unique Id
                                        <br />
                                                प्रभारी यूनिक आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Name<br />
                                                प्रभारी का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                In-Charge Mobile Number<br />
                                                प्रभारी का मोबाइल नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Year of Establishment
                                        <br />
                                                स्थापना वर्ष<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">2015</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Minority Community
                                        <br />
                                                अल्पसंख्यक समुदाय<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="true">2-Sikh</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Medium
                                        <br />
                                                स्कूल माध्यम<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>19-English</asp:ListItem>
                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                <asp:ListItem>99-Other</asp:ListItem>
                                            </asp:DropDownList>

                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Address Information</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Address
                                        <br />
                                                स्कूल का पता (Line 1)<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Address
                                        <br />
                                                स्कूल का पता (Line 2)</label>
                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Pin Code
                                        <br />
                                                पिन कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Landline Number
                                        <br />
                                                लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Email ID<br />
                                                ईमेल आईडी<span style="color: red;">*</span></label>
                                            <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Website<br />
                                                स्कूल की वेबसाइट</label>
                                            <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Shift<br />
                                                स्कूल शिफ्ट<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Morning</asp:ListItem>
                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                <asp:ListItem>Both</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Is School Residential<br />
                                                क्या विद्यालय आवासीय है<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                <asp:ListItem>No</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                                <div class="row align-items-end">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Special School
                                                <br />
                                                विशेष विद्यालय<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                <asp:ListItem Selected="True">Model</asp:ListItem>
                                                <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                <asp:ListItem>District Excellence</asp:ListItem>
                                                <asp:ListItem>Block Excellence</asp:ListItem>
                                                <asp:ListItem>PM Shri </asp:ListItem>
                                                <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                <asp:ListItem>Urdu</asp:ListItem>
                                                <asp:ListItem>Marathi</asp:ListItem>
                                                <asp:ListItem>Sanskrit</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                School Status
                                                <br />
                                                विद्यालय की स्थिति<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem Selected="True">Functional</asp:ListItem>
                                                <asp:ListItem>Closed</asp:ListItem>
                                                <asp:ListItem>Merged</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>
                                                Hostel Attach
                                                <br />
                                                हॉस्टल अटैच<span style="color: red;">*</span></label>
                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                <asp:ListItem>-Select-</asp:ListItem>
                                                <asp:ListItem>Yes</asp:ListItem>
                                                <asp:ListItem Selected="True">No</asp:ListItem>

                                            </asp:DropDownList>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                            <fieldset>
                                <legend>School Bank Information</legend>
                                <div class="row align-items-end">
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                School Bank Account Name<br />
                                                स्कूल के बैंक खाते का नाम<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox5" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4">
                                        <div class="form-group">
                                            <label>
                                                School Bank Account Number<br />
                                                स्कूल के बैंक की खाता संख्या<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox7" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="col-md-4 ">
                                        <div class="form-group">
                                            <label>
                                                IFSC Code<br />
                                                आईएफएससी कोड<span style="color: red;">*</span></label>
                                            <asp:TextBox ID="TextBox8" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>
                                </div>
                            </fieldset>
                        </div>
                        <div class="modal-footer">
                            <div class="row">
                                <div>
                                    <button type="button" class="btn btn-outline-danger waves-effect text-start " onclick="CloseModal()">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>
    <!-- /.modal -->
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function btnSearch() {
            debugger;
            var divDetails = document.getElementById("divDetails");
            var divEnteredDetails = document.getElementById("divEnteredDetails");
            var DivOfficeLocation = document.getElementById("DivOfficeLocation");
            var divCurrentOfficeLocation = document.getElementById("divCurrentOfficeLocation");
            divEnteredDetails.style.display = "block";
            divDetails.style.display = "block";
            DivOfficeLocation.style.display = "none";
            divCurrentOfficeLocation.style.display = "none";
        }

        function btnAdd() {
            var divEnteredDetails = document.getElementById("divEnteredDetails");
            divEnteredDetails.style.display = "block";
        }

        function checkClick() {
            var checkboxes = document.querySelectorAll('input[type="checkbox"]');
            var divTransfer = document.getElementById('divTransfer');
            var anyChecked = Array.from(checkboxes).some(checkbox => checkbox.checked);

            divTransfer.style.display = anyChecked ? 'block' : 'none';
        }

        document.addEventListener('DOMContentLoaded', function () {
            var checkboxes = document.querySelectorAll('input[type="checkbox"]');
            checkboxes.forEach(checkbox => checkbox.addEventListener('change', checkClick));
        });

        function openPDF1() {
            var pdfUrl = '../Document/Promotion-1.pdf';
            window.open(pdfUrl, '_blank');
        }

        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want Transfer/Releive ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Transferred/Releived Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("divOrderDetails");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
                                x.style.display = "block";
                            }
                        }
                    })
                });
            },
                //init
                $.SweetAlert = new SweetAlert, $.SweetAlert.Constructor = SweetAlert
        }(window.jQuery),
            //initializing
            function ($) {
                "use strict";
                $.SweetAlert.init()
            }(window.jQuery);

    </script>
    <script>
        function openModal() {
            document.getElementById('Editmodal').style.display = 'block';
        }
        function CloseModal() {
            document.getElementById('Editmodal').style.display = 'none';
        }
    </script>
</asp:Content>

