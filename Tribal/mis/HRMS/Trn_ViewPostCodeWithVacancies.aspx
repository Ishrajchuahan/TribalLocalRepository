﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_ViewPostCodeWithVacancies.aspx.cs" Inherits="mis_HRMS_Trn_ViewPostCodeWithVacancies" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

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
                            <a href="#VoluntaryTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Voluntary Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">View Post Code With Vacancies</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row mb-1">
        <div class="col-md-4 ">

            <img src="../../img/OTTMS.png" style="height: 70px" itle="Compassionate Appointment Facilitation &amp; Monitoring System (CAFMS)">
            <p></p>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-8">
                    <h4 class="card-title">View Post Code With Vacancies / रिक्तियों के साथ पोस्ट कोड देखें
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>View Post Code With Vacancies / रिक्तियों के साथ पोस्ट कोड देखें
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select District Name
                                <br />
                                ज़िला का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
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
                                Select Block Name
                                <br />
                                ब्लॉक का चयन करें<span style="color: red">*</span></label>
                            <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Huzur</option>
                                <option value="Raisen">Fanda</option>
                                <option value="Govindapura">Govindpura</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="divtxtpanelname">
                        <div class="form-group">
                            <label>
                                Select School Category 
                                <br />
                                स्कूल का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="SSS-1">Primary (Class 1 to 5)</option>
                                <option value="SSS-2">Primary with Middle  (Class 1 to 8)</option>
                                <option value="SSS-3">Primary to Higher Secondary (Class 1 to 12)</option>
                                <option value="PR-HSS">PMiddle (Class 6 to 8)</option>
                                <option value="PR-HS">Middle to Higher Secondary  (Class 6 to 12)</option>
                                <option value="HM-MS">Primary to High Schools  (Class 1 to 10)</option>
                                <option value="HM-PS">Higher Secondary (Class 9 to 12)</option>
                                <option>Middle to High Schools  (Class 6 to 10)</option>
                                <option>High Schools (Class 9 to 10)</option>
                                <option>Hr. Sec. /Jr. College only with grades 11 & 12 (HSEC)</option>
                                <option>Pre-Primary Only (PRE)</option>

                            </select>
                        </div>
                    </div>


                    <div class="col-md-3" id="divtxtpdanelname">
                        <div class="form-group">
                            <label>
                                Select Panal Name
                                <br />
                                पैनल का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="">--Select--</option>
                                <option value="1SSS-1 Hindi">SSS-1 Hindi</option>
                                <option value="SSS-1 English">SSS-1 English</option>
                                <option value="SSS-1 Sanskrit">SSS-1 Sanskrit</option>
                                <option value="SSS-1 Urdu">SSS-1 Urdu</option>
                                <option value="SSS-1 Physics">SSS-1 Physics</option>
                                <option value="SSS-1 Chemistry">SSS-1 Chemistry</option>
                                <option value="SSS-1 Maths">SSS-1 Maths</option>
                                <option value="SSS-1 Biology">SSS-1 Biology</option>
                                <option value="SSS-1 History">SSS-1 History</option>
                                <option value="SSS-1 Geography">SSS-1 Geography</option>
                                <option value="SSS-1 Sociology">SSS-1 Sociology</option>
                                <option value="SSS-1 Commerce">SSS-1 Commerce</option>
                                <option value="SSS-1 Agriculture">SSS-1 Agriculture</option>
                                <option value="SSS-2 Hindi">SSS-2 Hindi</option>
                                <option value="SSS-2 English">SSS-2 English</option>
                                <option value="SSS-2 Sanskrit">SSS-2 Sanskrit</option>
                                <option value="SSS-2 Urdu">SSS-2 Urdu</option>
                                <option value="SSS-2 Maths">SSS-2 Maths</option>
                                <option value="SSS-2 Science">SSS-2 Science</option>
                                <option value="SSS-2 Social Science">SSS-2 Social Science</option>
                                <option value="SSS-3 Lab">SSS-3 Lab</option>
                                <option value="SSS-3">SSS-3</option>
                                <option value="SSS-1 Political Science">SSS-1 Political Science</option>
                                <option value="SSS-1 Economics">SSS-1 Economics</option>
                                <option value="SSS-1 Home Science">SSS-1 Home Science</option>
                                <option value="SSS-1 Fine Arts">SSS-1 Fine Arts</option>
                                <option value="SSS-1 Psychology">SSS-1 Psychology</option>
                                <option value="SSS-3 Physical Education">SSS-3 Physical Education</option>
                                <option value="SSS-3 Music">SSS-3 Music</option>
                                <option value="SSS-1 Career Counselling">SSS-1 Career Counselling</option>
                                <option value="31SSS-2 Fine Art">SSS-2 Fine Art</option>
                                <option value="32SSS-2 Music (Vocal/Instrument)">SSS-2 Music (Vocal/Instrument)</option>
                                <option value="33SSS-2 IT">SSS-2 IT</option>
                                <option value="34SSS-2 Library Science">SSS-2 Library Science</option>
                                <option value="35SSS-2 Physical Education">SSS-2 Physical Education</option>
                                <option value="36SSS-3 Vocal">SSS-3 Vocal</option>
                                <option value="37SSS-3 Dance">SSS-3 Dance</option>
                                <option value="38SSS-3 Instrument">SSS-3 Instrument</option>
                                <option value="39SSS-3 Library Science">SSS-3 Library Science</option>
                                <option value="40SSS-3 Pre Primary">SSS-3 Pre Primary</option>
                                <option value="41SSS-3 IT">SSS-3 IT</option>
                                <option value="42Asstt Grade-1">Asstt Grade-1</option>
                            </select>
                        </div>
                    </div>

                </div>
                <hr />
                <div class="row">

                    <div class="col-md-12">
                        <div class="form-group">
                            <button type="button" class="btn w-lg btn-success btn-border" onclick="myFunction()">Search</button>
                            <a href="Trn_ViewPostCodeWithVacancies.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>

            <fieldset id="vacaniesDetail" style="display: none;">
                <legend>Vacancies Detail / 
                   रिक्तियों का विवरण
                </legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-2">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table text-center table-bordered ">


                                <tr class="text-center card-header">
                                    <th>Sr.No 
                                        <br />
                                        सरल क्र.</th>
                                    <th>District
                                        <br />
                                        ज़िला</th>
                                    <th>Block
                                        <br />
                                        ब्लॉक</th>
                                    <th>School 
                                        <br />
                                        स्कूल</th>

                                    <th>Panal
                                        <br />
                                        पैनल</th>
                                    <th>Post Code 
                                        <br />
                                        पोस्ट कोड</th>
                                    <th style="width: 10%">Sanctioned Posts<br />
                                        अनुमोदित पोस्ट</th>
                                    <th>Working 
                                        <br />
                                        काम कर रहा</th>
                                    <th>Reserved
                                        <br />
                                        आरक्षित</th>
                                    <th>Vacancies 
                                        <br />
                                        रिक्तियां</th>
                                    <th>Transferred Employees 
                                        <br />
                                        स्थानांतरित कर्मचारी</th>
                                    <th>New Joining 
                                        <br />
                                        नई ज्वाइनिंग</th>
                                    <th>New Postings 
                                        <br />
                                        नई पोस्टिंग्स</th>

                                </tr>

                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>Bhopal</td>
                                        <td>Govindpura</td>
                                        <td>23356120607-GOVT HSS Govindpura (Class 1 to 5)</td>
                                        <td>SSS-1 Maths</td>
                                        <td>4079398</td>
                                        <td>0</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>1</td>

                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>Bhopal</td>
                                        <td>Huzur</td>
                                        <td>233201566306-GOVT HSS Huzur (Class 5 to 10)</td>
                                        <td>SSS-3 Music</td>
                                        <td>3079398</td>
                                        <td>1</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>1</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>0</td>

                                    </tr>
                                    <tr>
                                        <td>3</td>
                                        <td>Bhopal</td>
                                        <td>Fanda</td>
                                        <td>23320222510-GOVT HSS Fanda (Class 9 to 12)</td>
                                        <td>SSS-1 Sanskrit</td>
                                        <td>4089398</td>
                                        <td>2</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>
                                        <td>2</td>
                                        <td>0</td>
                                        <td>0</td>

                                    </tr>

                                </tbody>

                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>

        </div>
    </div>




    <script>
        function myFunction() {

            document.getElementById("vacaniesDetail").style.display = "block";
        }
    </script>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

