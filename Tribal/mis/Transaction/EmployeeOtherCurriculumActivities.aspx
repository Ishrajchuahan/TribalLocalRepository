﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmployeeOtherCurriculumActivities.aspx.cs" Inherits="mis_Transaction_EmployeeOtherCurriculumActivities" %>

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

        #Button2 {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
        <div class="row">
        <div class="col-md-4">

            <img src="/img/Employee.png" style="height: 70px">
        </div>
    </div>
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
                        <li class="breadcrumb-item"><span>National Or State Level Training</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4">

            <img src="/img/Employee.png" style="height: 70px">
        </div>
    </div>
    <div class="content-wrapper">
        <div class="container-fluid">
            <div class="card card-border-primary">
                <%-- <div class="card-header">
        </div>--%>
                <div class="card-header">
                    <div class="row">
                        <div class="col-lg-12">
                            <h4 class="card-title">National Or State Level Training / राष्ट्रीय या राज्य स्तरीय प्रशिक्षण
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
                    <fieldset>
                        <legend>National or State Level Training / राष्ट्रीय या राज्य स्तरीय प्रशिक्षण
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
                                <button id="Button1" type="button" class="btn btn-outline-success w-lg btn-border" onclick="myFunction()">View</button>
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
                            <legend>क्या आप राष्ट्रीय या राज्य स्तरीय प्रशिक्षण या राज्य स्तरीय समूह में शामिल हैं 
                       /
                       
                                Are You Involved in National or State Level Training or State Level Group</legend>
                            <div class="row mt-4 align-items-end">
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Level Type<br />
                                            स्तर प्रकार का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select id="Panel" class="form-control select2">
                                            <option value="">--Select--</option>
                                            <option value="राष्ट्रीय स्तर">राष्ट्रीय स्तर </option>
                                            <option value="राज्य स्तर">राज्य स्तर </option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select Source Group Area<br />
                                            स्त्रोत समूह क्षेत्र का चयन करे<span style="color: red">*</span>
                                        </label>
                                        <select class="form-control select2" id="SourceGroupArea">
                                            <option value="">--Select--</option>
                                            <option value="पुस्तक लेखन">पुस्तक लेखन</option>
                                            <option value="रिसर्च">रिसर्च</option>
                                            <option value="मूल्यांकन- ब्लूप्रिंट/प्रश्नपत्र निर्माण">मूल्यांकन- ब्लूप्रिंट/प्रश्नपत्र निर्माण</option>
                                            <option value="आईईडी">आईईडी</option>
                                            <option value="कंप्यूटर आधारित शिक्षण">कंप्यूटर आधारित शिक्षण</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>
                                            Select From Date<br />
                                            दिनांक से का चयन करें<span style="color: red">*</span>
                                        </label>
                                        <input type="date" id="WorkedYear" class="form-control datepicker" value="-" placeholder="Enter From Date" />
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
                                            Working Day /<br />
                                            कार्य दिवस
                                            <span style="color: red">*</span>
                                        </label>
                                        <input type="text" id="WorkingDays" class="form-control" placeholder="" />
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
                                                <th>Level Type<br />
                                                    स्तर प्रकार</th>
                                                <th>Source Group Area<br />
                                                    स्त्रोत समूह क्षेत्र</th>
                                                <th>From Date<br />
                                                    दिनांक से</th>
                                                <th>To Date<br />
                                                    दिनांक तक</th>
                                                <th>Working Day<br />
                                                    कार्य दिवस</th>
                                            </tr>
                                        </table>
                                    </div>
                                </div>
                            </div>

                            <hr />
                            <div class="col-md-2">

                                <button id="Button2" type="button" class="btn btn-outline-success btn-border Alert-Confirmation w-lg" onclick="myFunction()">Save</button>
                            </div>
                            <%--  <div class="row">
                                <div class="col-md-12 text-center">
                                    <button type="button" class="Alert-Save3 btn btn-outline-success btn-border  w-lg">Save & Next</button>
                                    <a data-bs-toggle="tab" href="#Experience" onclick="document.getElementsByTagName('form').reset" role="tab" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                </div>
                            </div>--%>
                            <%--<div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive ">
                                        <table class="table text-center">
                                            <tbody>
                                                <tr>
                                                    <th>Sr. No.
                                                        <br />
                                                        सरल क्र.</th>
                                                    <th>Source Group Area
                                                        <br />
                                                        स्त्रोत समूह क्षेत्र</th>
                                                    <th>National Level Working Day
                                                        <br />
                                                        राष्ट्रीय स्तर पर कार्य दिवस</th>
                                                    <th>State Level Working Day
                                                        <br />
                                                        राज्य स्तर पर कार्य दिवस</th>
                                                </tr>
                                                <tr>
                                                    <td>1</td>
                                                    <td>पुस्तक लेखन</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>रिसर्च</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>

                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>मूल्यांकन- ब्लूप्रिंट/प्रश्नपत्र निर्माण</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>4</td>
                                                    <td>आईईडी</td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                    <td>
                                                        <input type="text" class="form-control" autocomplete="off" />

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>कंप्यूटर आधारित शिक्षण</td>
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
                                </div>
                                <div class="col-md-2">

                                    <button id="Button2" type="button" class="btn btn-outline-success btn-border Alert-Confirmation w-lg" onclick="myFunction()">Save</button>
                                </div>


                            </div>--%>
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

        function AddCurriculm() {
            var tableAdd = document.getElementById("tblQualification");
            tableAdd.style.display = "table";
            if ((tableAdd.rows.length - 1) == 4) {
                alert('Maximum four entries allowed !!');
            }
            else {
                tableAdd.style.display = "table";
                var rows = tableAdd.rows.length;
                var r = tableAdd.insertRow(rows);
                var Education = document.getElementById("Education");
                var Board = document.getElementById("Board");
                var AcademicYear = document.getElementById("AcademicYear");
                var Subject = document.getElementById("Subject");
                var Passing = document.getElementById("PassingYear");
                var rollnumber = document.getElementById("rollnumber");
                var total = document.getElementById("ddlPercentage");
                var fileInputs = document.getElementById("fileInput");
                var c1 = r.insertCell(0);
                c1.innerHTML = tableAdd.rows.length - 1;
                var c2 = r.insertCell(1);
                c2.innerHTML = Education.value;
                var c3 = r.insertCell(2);
                c3.innerHTML = Board.value;
                var c4 = r.insertCell(3);
                c4.innerHTML = AcademicYear.value;
                var c5 = r.insertCell(4);

                c5.innerHTML = Subject.value;
                var c6 = r.insertCell(5);
                c6.innerHTML = Passing.value;
                var c7 = r.insertCell(6);
                c7.innerHTML = rollnumber.value;
                var c8 = r.insertCell(7);
                c8.innerHTML = total.value;
                var c9 = r.insertCell(8);
                c9.style = "text-align:center";
                c9.innerHTML = '<a role="button" class=" btn btn-outline-secondary btn-border btnShow" data-bs-toggle="modal" data-bs-target="#pdfModal"><i class="fas fa-eye"></a>';
            }
        };
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%-- <script>
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
        var entryCount = 0;

        function AddCurriculm() {
            // Maximum number of entries
            var maxEntries = 5;
            if (entryCount >= maxEntries) {
                Swal.fire("Warning", "You can only add up to 5 entries.", "warning");
                return;
            }

            // Get form values
            var levelType = $('#Panel').val();
            var sourceGroupArea = $('#SourceGroupArea').val();
            var fromDate = $('#WorkedYear').val();
            var toDate = $('#ToDate').val();
            var workingDays = $('#WorkingDays').val();



            // Increment the entry count
            entryCount++;

            // Display the table if it's hidden
            $('#tblExperience').show();

            // Add entry to the table
            var newRow = `
            <tr>
                <td>${entryCount}</td>
                <td>${levelType}</td>
                <td>${sourceGroupArea}</td>
                <td>${fromDate}</td>
                <td>${toDate}</td>
                <td>${workingDays}</td>
            </tr>
        `;
            $('#tblExperience').append(newRow);

            // Clear form inputs
            $('#Panel').val('');
            $('#SourceGroupArea').val('');
            $('#WorkedYear').val('');
            $('#ToDate').val('');
            $('#WorkingDays').val('');

            document.getElementById("Button2").style.display = "block";

        }
    </script>




</asp:Content>

