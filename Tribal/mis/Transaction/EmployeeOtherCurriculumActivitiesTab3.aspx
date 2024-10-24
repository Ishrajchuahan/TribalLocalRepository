﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeOtherCurriculumActivitiesTab3.aspx.cs" Inherits="mis_Transaction_EmployeeOtherCurriculumActivitiesTab3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #empDetail {
            display: none;
        }

        th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: left;
            color: white;
        }

        #btnsave {
            display: none;
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
                            <a href="#Curriculum" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Other Curriculum Activities</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Training Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-md-4">

                <img src="/img/Employee.png" style="height: 70px">
            </div>
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <%-- <div class="card-header">
</div>--%>
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-6">
                            <h4 class="card-title">Training Details / प्रशिक्षण का विवरण<br />
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

                    <%-- <h4 class="text-md-left bg-bisque text-brown p-2 rounded-pill mb-4"><i class="far fa-hand-point-right"></i>&emsp;कर्मचारी पंजीयन दिशानिर्देश:-</h4>--%>


                    <fieldset>
                        <legend>Training Details / प्रशिक्षण का विवरण
                        </legend>
                        <div class="row align-items-end">
                            <div class="col-md-6 col-lg-4 col-xl-3">
                                <div class="form-group">
                                    <label>
                                        Employee Uniq Id
                                        <br />
                                        कर्मचारी यूनिक आईडी<span style="color: red">*</span></label>
                                    <input name="txtTotalEnrolledCrrnPost" type="text" class="form-control" autocomplete="off" placeholder="Enter Unique code " />
                                </div>
                            </div>
                            <div class="col-md-12">
                                <hr />
                                <button id="Button1" type="button" class="btn btn-outline-success btn-border w-lg" onclick="myFunction()">View</button>
                                <%-- <a href="Trn_ApplyMutualTransfer.aspx" class="btn btn-info btn-rounded">Reset Details</a>--%>
                            </div>
                        </div>

                    </fieldset>
                    <div id="empDetail">
                        <fieldset>
                            <legend>Employee Personal Information / कर्मचारी की व्यक्तिगत जानकारी </legend>
                            <div class="row align-items-end">
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Employee Name<br />
                                            कर्मचारी का नाम<span style="color: red">*</span></label>
                                        <input name="txtEmpName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Employee Name" value="Aman Patidar" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Unique ID
                                            <br />
                                            यूनिक आई.डी<span style="color: red">*</span></label>
                                        <input name="txtUniqueID" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Unique ID" value="AR4890" />
                                    </div>
                                </div>
                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Designation
                                            <br />
                                            पदनाम <span style="color: red">*</span></label>
                                        <input name="txtDesignation" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Designation" value="Teacher (UDT)" />
                                    </div>
                                </div>

                                <div class="col-md-6 col-lg-4 col-xl-3">
                                    <div class="form-group">
                                        <label>
                                            Sankul Code/ Name
      <br />
                                            संकुल कोड / नाम<span style="color: red">*</span></label>
                                        <input name="txtSankulName" type="text" class="form-control" readonly autocomplete="off" placeholder="Enter Sankul Name" value="15151236526-GOV VINAYAK PUBLIC SCHOOL TARRAKHURD" />
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                        <fieldset>
                            <legend>प्रशिक्षण का विवरण (In-service, induction, CWSN, Computer, Dakshata, ABL, 90 Days IED) :-</legend>
                            <%--<div class="row form-group">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table text-center">
                                            <tbody>
                                                <tr>
                                                    <th>Sr. No.
                                                        <br />
                                                        सरल क्र.</th>
                                                    <th>Training Type
                                                        <br />
                                                        प्रशिक्षण प्रकार</th>
                                                    <th>Level of Training (State/Division/District/Development Block)
                                                        <br />
                                                        प्रशिक्षण का स्तर (राज्य/संभाग/जिला/विकासखंड)</th>
                                                    <th>Duration of Training (in days)
                                                        <br />
                                                        प्रशिक्षण की अवधि (दिनों में)</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>

                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>2</td>

                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>3</td>

                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <hr />
                                    <button id="Button2" type="button" class="btn btn-outline-success btn-border w-lg Alert-Confirmation" onclick="myFunction()">Save</button>
                                </div>
                            </div>--%>

                            <div class="row mt-4 align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Training Type<br />
                                            प्रशिक्षण प्रकार का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="TrainingType" class="form-control select2">
                                            <option value="">--Select--</option>
                                            <option value="राष्ट्रीय स्तर">राष्ट्रीय स्तर </option>
                                            <option value="राज्य स्तर">राज्य स्तर </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Level of Training<br />
                                            प्रशिक्षण के स्तर का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="LevelOfTraining" class="form-control select2">
                                            <option value="">--Select--</option>
                                            <option value="राज्य">राज्य</option>
                                            <option value="संभाग">संभाग</option>
                                            <option value="जिला">जिला</option>
                                            <option value="विकासखंड">विकासखंड</option>

                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select From Date<br />
                                            दिनांक से का चयन करें<span style="color: red">*</span>
                                        </label>
                                        <input type="date" id="From" class="form-control datepicker" value="-" placeholder="Enter From Date" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select To Date<br />
                                            दिनांक तक का चयन करें<span style="color: red">*</span>
                                        </label>
                                        <input type="date" id="ToDate" class="form-control datepicker" placeholder="Enter To Date" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Enter Duration of Training  /<br />
                                            प्रशिक्षण की अवधि दर्ज करें
                                            <span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="DurationOfTraining" class="form-control" placeholder="Enter Duration of Training (In Day's)" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <button type="button" onclick="AddCurriculm()" id="btnQualification" class="btn btn-outline-success w-lg btn-border"><b>Add</b></button>

                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered" id="tblExperience" style="display: none;">
                                            <tr>
                                                <th>Sr. No.<br />
                                                    सरल क्र.</th>
                                                <th>Training Type<br />
                                                    प्रशिक्षण प्रकार</th>
                                                <th>Level of Training
                                                    <br />
                                                    प्रशिक्षण का स्तर </th>
                                                <th>From Date<br />
                                                    दिनांक से</th>
                                                <th>To Date<br />
                                                    दिनांक तक</th>
                                                <th>Duration of Training
                                                    <br />
                                                    प्रशिक्षण की अवधि</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <hr />
                            <div class="col-md-2">
                                <button id="btnsave" type="button" class="btn btn-outline-success btn-border Alert-Confirmation w-lg" onclick="myFunction()">Save</button>
                            </div>
                        </fieldset>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        function myFunction() {
            document.getElementById("empDetail").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {

                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Save This Record?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'

                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Tour Apply Successfully!',
                                timer: 2000
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");

                            if (x.style.display === "none") {
                                x.style.display = "block";
                            }
                            else {
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
    </script>--%>

    <script>
        var entryCount = 0; // Track the number of entries
        var maxEntries = 4; // Maximum number of entries allowed

        //function AddCurriculm() {
        //    if (entryCount >= maxEntries) {
        //        alert("You can only add up to 4 entries.");
        //        return;
        //    }

        //    var trainingType = $('#TrainingType').val();
        //    var levelOfTraining = $('#LevelOfTraining').val();
        //    var From = $('#From').val();
        //    var ToDate = $('#ToDate').val();
        //    var durationOfTraining = $('#DurationOfTraining').val();

        //    //if (!trainingType || !levelOfTraining || !durationOfTraining) {
        //    //    alert("Please fill in all required fields.");
        //    //    return;
        //    //}

        //    entryCount++;

        //    var table = $('#tblExperience');
        //    table.show();

        //    var newRow = '<tr>' +
        //        '<td>' + entryCount + '</td>' +
        //        '<td>' + trainingType + '</td>' +
        //        '<td>' + levelOfTraining + '</td>' +
        //        '<td>' + From + '</td>' +
        //        '<td>' + ToDate + '</td>' +
        //        '<td>' + durationOfTraining + '</td>' +
        //        '</tr>';

        //    table.find('tbody').append(newRow);

        //    // Clear the input fields after adding
        //    $('#TrainingType').val('');
        //    $('#LevelOfTraining').val('');
        //    $('#From').val('');
        //    $('#ToDate').val('');
        //    $('#DurationOfTraining').val('');


        //    document.getElementById("Button2").style.display = "block";
        //}


        var entryCount = 0; // Track the number of entries
        var maxEntries = 4; // Maximum number of entries allowed

        function AddCurriculm() {
            if (entryCount >= maxEntries) {
                alert("You can only add up to 4 entries.");
                return;
            }

            var trainingType = $('#TrainingType').val();
            var levelOfTraining = $('#LevelOfTraining').val();
            var from = $('#From').val();
            var toDate = $('#ToDate').val();
            var durationOfTraining = $('#DurationOfTraining').val();

            // Validate required fields
            //if (!trainingType || !levelOfTraining || !from || !toDate || !durationOfTraining) {
            //    alert("Please fill in all required fields.");
            //    return;
            //}

            entryCount++;

            var table = $('#tblExperience');
            table.show();

            var newRow = '<tr>' +
                '<td>' + entryCount + '</td>' +
                '<td>' + trainingType + '</td>' +
                '<td>' + levelOfTraining + '</td>' +
                '<td>' + from + '</td>' +
                '<td>' + toDate + '</td>' +
                '<td>' + durationOfTraining + '</td>' +
                '</tr>';

            table.find('tbody').append(newRow);

            // Clear the input fields after adding
            $('#TrainingType').val('');
            $('#LevelOfTraining').val('');
            $('#From').val('');
            $('#ToDate').val('');
            $('#DurationOfTraining').val('');

            //document.getElementById("btnadd").style.display = "block";
        }


    </script>
</asp:Content>

