﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_EmpAprFill.aspx.cs" Inherits="mis_HRMS_Trn_EmpAprFill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
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
                            <a href="#EmpAPRMS" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee APRMS</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Employee APRMS Fill</span></li>
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
                        <div class="col-lg-12">
                            <h4 class="card-title">Employee Annual Property Returns Management System / कर्मचारी वार्षिक संपत्ति रिटर्न प्रबंधन प्रणाली</h4>
                        </div>
                    </div>
                </div>
                <div class="card-body">
                    <%--<nav class="navbar navbar-expand-lg topbar ">
                        <div class="container-fluid ms-0">
                            <a class="navbar-brand" href="#"></a>
                            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                                <span class="navbar-toggler-icon"></span>
                            </button>
                            <div class="collapse navbar-collapse " id="navbarSupportedContent">
                                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                    <li>
                                        <a class="nav-link  text-white " href="EmpAprNotes.aspx" role="button">
                                            <b class="font-16 font-bold "><i class="fa fa-home "></i>
                                            </b>

                                        </a>

                                    </li>
                                    <li>
                                        <a class="nav-link text-white" href="Trn_EmpAprFill.aspx" role="button">
                                            <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>
                                                Fill APR
                                            </b>
                                        </a>
                                    </li>
                                    <li class="dropdown">
                                        <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                            <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>APR Report</b>
                                        </a>
                                        <ul class="dropdown-menu">
                                            <li><a class="dropdown-item" href="#">APR Reports</a></li>

                                        </ul>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                    <br />--%>
                    <fieldset>
                        <legend>PERSONAL INFORMATION / व्यक्तिगत जानकारी</legend>

                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                        <label>
                                        Unique Id-Name <br />
                                        यूनिक आई.डी. - नाम
                                    </label>

                                    <asp:TextBox runat="server" ID="txtUniqueId" CssClass="form-control" placeholder="Unique Id" AutoComplete="off" ReadOnly="true">AB1234-Manish Meena</asp:TextBox>

                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                        <label>
                                        District Name 
                                <br />
                                        जिला का नाम
                                    </label>
                                    <input name="txtDistrict" type="text" class="form-control" readonly="" autocomplete="off" value="Bhopal" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                        <label>
                                        Sankul Name
                                <br />
                                        संकुल का नाम
                                    </label>
                                    <input type="text" class="form-control" readonly="" autocomplete="off" value="23354912798 -Bal Bharti School" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                        <label>
                                        Designation Name 
                                <br />
                                        पदनाम
                                    </label>
                                    <input type="text" class="form-control" readonly="" autocomplete="off" value="Assistant Teacher" />
                                </div>
                            </div>
                        </div>


                    </fieldset>
                    <fieldset>
                        <legend>Fill APR Form / APR फार्म भरे</legend>
                        <div class="row align-items-end">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>
                                        Year of APR 
                                <br />
                                        अचल संपत्ति के विवरण का वर्ष<span style="color: red">*</span></label>
                                    <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                                  
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="form-group">
                                        <label>
                                        Uplode APR form 
                                <br />
                                        अचल संपत्ति के विवरण का फार्म अपलोड करे <span style="color: red">*</span>
                                    </label>
                                    <input type="file" class="form-control" accept=".pdf" onchange="checkFileSize('FuAprForm', 200, 'MsgErr')" id="FuAprForm" />
                                    <div style="color: red; font-size: 12px; margin: 0px; padding: 0px; display: inline" id="MsgErr">
                                     
                                    </div>
                                </div>
                            </div><hr />
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="button" value="Save" onclick="document.getElementById('FS_Details').style.display = 'block';" class="Alert-Confirmation btn btn-outline-success btn-border w-lg" />

                                    <a href="Trn_EmpAprFill.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                                 
                                </div>
                            </div>
                        </div>
                    </fieldset>
                    <fieldset id="FS_Details" style="display: none">
                        <legend>APR Details / APR विवरण</legend>

                        <div class="row justify-content-end">
                            <div class="col-md-4 text-end">
                                <div class="form-group">
                                    <button class="btn btn-info btn-rounded w-55">Excel</button>
                                    <button class="btn btn-info btn-rounded w-55">PDF</button>
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>Sr. No. 
                                            <br />
                                                    सरल क्र.</th>
                                                <th>District
                                            <br />
                                                    जिला</th>
                                                <th>Employee 
                                            <br />
                                                    कर्मचारी</th>
                                                <th>Sankul 
                                            <br />
                                                    संकुल</th>
                                                <th>Designation 
                                            <br />
                                                    पद</th>
                                                <th>Financial Year 
                                            <br />
                                                    वित्तीय वर्ष</th>
                                                <th>Detail 
                                            <br />
                                                    विवरण</th>
                                            </tr>
                                        </thead>
                                        <tr>
                                            <td>1</td>
                                            <td>Bhopal</td>
                                            <td>AB1234-Manish Meena</td>
                                            <td>23354912798 -Bal Bharti School</td>
                                            <td>Assistant Teacher</td>
                                            <td>2024-25</td>
                                            <td>
                                                <button type="button" class="btn btn-primary" id="btnShow"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </fieldset>

                </div>

                <div class="modal fade" id="pdfModal" tabindex="-1" role="dialog" aria-labelledby="pdfModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xxl" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h3 class="modal-title font-bold">Selected APR Form </h3>
                                <button type="button" class="close" data-bs-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>APR Details</legend>
                                    <embed id="pdfViewer" type="application/pdf" width="100" height="600" />
                                </fieldset>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">


    <script>
        document.getElementById('btnShow').addEventListener('click', function () {
            const file = document.getElementById('FuAprForm').files[0];
            if (file && file.type === 'application/pdf') {
                // Display selected PDF in modal
                const reader = new FileReader();
                reader.onload = function (e) {
                    document.getElementById('pdfViewer').src = e.target.result;
                    $('#pdfModal').modal('show');
                }
                reader.readAsDataURL(file);
            } else {
                document.getElementById('FuAprForm').focus();
                alert('Please select a PDF file.');
            }
        });


        function checkFileSize(inputId, maxSizeInKB, errorMessageId) {
            const fileInput = document.getElementById(inputId);
            const fileSizeMessage = document.getElementById(errorMessageId);
            const maxSizeInBytes = maxSizeInKB * 1024;

            const file = fileInput.files[0];
            if (file && file.size > maxSizeInBytes) {
                fileSizeMessage.innerHTML = 'File size exceeds the maximum limit (' + maxSizeInKB + ' KB). Please select a smaller file.';
                // Optionally, you could clear the file input here to prevent submitting the oversized file
                fileInput.value = '';
            } else {
                fileSizeMessage.innerHTML = ' <br /><br /> <br /> ';
            }
        }


    </script>
    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });</script>




</asp:Content>

