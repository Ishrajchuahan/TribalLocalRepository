﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="IncrementCancel.aspx.cs" Inherits="mis_Transaction_GenerateIncrementCancel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #showdetails {
            display: none;
        }

        #note {
            color: red;
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
                            <a href="#Payroll" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Payroll</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Increment" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Payroll')">
                                <span>Increment</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>Increment Cancel Orders</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">Increment Cancel Orders / वेतन वृद्धि आदेश रद्द करें
                    </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Generate Increment Cancel / वेतन वृद्धि रद्द करें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Type<br />
                                कार्यालय प्रकार का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">BEO</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Office Name<br />
                                कार्यालय का नाम चुनें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="--Select--">GOVT. HSS NAGANDEORI</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <!-- Search button triggers search and toggles divs -->
                            <button type="button" onclick="Hideshow()" class="btn btn-success w-lg btn-border ">Search</button>
                            <!-- Clear button (link) -->
                            <a href="IncrementCancel.aspx" class="btn w-lg btn-outline-danger btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <div id="showdetails">
                <fieldset>
                    <legend>Details / विवरण</legend>
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
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center">
                                    <thead class="nowrap">
                                        <tr>
                                            <th>CheckBox<br />
                                                <input type="checkbox" style="font-size: small;" id="checkAll" onclick="toggleAll(this)">
                                            </th>
                                            <th>Sr.No.<br />
                                                सरल क्र.</th>
                                            <th>Employee Name<br />
                                                कर्मचारी का नाम</th>
                                            <th>Office Name<br />
                                                कार्यालय का नाम</th>
                                            <th>Order No.<br />
                                                आदेश संख्या</th>
                                            <th>Order Date<br />
                                                आर्डर की तारीख</th>
                                            <th>Existing Level<br />
                                                मौजूदा स्तर</th>
                                            <th>Existing Basic Salary<br />
                                                मौजूदा मूल वेतन</th>
                                            <th>New Level<br />
                                                नया स्तर</th>
                                            <th>New Basic Salary<br />
                                                नया मूल वेतन</th>
                                            <th>Effective Date<br />
                                                प्रभावी तिथि</th>
                                        </tr>
                                    </thead>
                                    <tr>
                                        <td scope="col">
                                            <input type="checkbox" /></td>
                                        <td>1</td>
                                        <td>Ashok Kumar</td>
                                        <td>Head Office</td>
                                        <td>Dpi/Set/1/2023/880</td>
                                        <td>18/07/2023</td>
                                        <td>Level-7</td>
                                        <td>58200.00</td>
                                        <td>Level-9</td>
                                        <td>59900.00</td>
                                        <td>01/07/2023</td>
                                    </tr>
                                    <tr>
                                        <td scope="col">
                                            <input type="checkbox" /></td>
                                        <td>2</td>
                                        <td>Shiv Saharan</td>
                                        <td>Bhopal</td>
                                        <td>Dpi/Set/1/2023/8599</td>
                                        <td>01/07/2023</td>
                                        <td>Level-9</td>
                                        <td>58200.00</td>
                                        <td>Level-9</td>
                                        <td>59900.00</td>
                                        <td>05/06/2023</td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                        <div class="col-md-12">
                            <div class="form-group">
                                <p id="note"><b>Cancel The Application After Clicking On The Checkbox / चेक बॉक्स पर क्लिक करने के उपरांत आवेदन को निरस्त  करें|</b></p>
                            </div>
                        </div>
                        <hr />
                        <div class="col-md-12">
                            <div class="form-group">
                                <a class="btn btn-outline-success w-lg btn-rounded"  data-bs-toggle="modal" data-bs-target="#ModalConfirm">Cancel Increment</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>
    <div class="modal  fade" id="ModalConfirm" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg">
            <div class="modal-content">
                <div class="modal-header" style="background-color: var(--vz-primary);">
                    <h3 class="modal-title fw-bold text-white mb-3">Cancel Increment</h3>
                    <button type="button" class="btn-close text-light" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <legend>Cancel Increment</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <label>
                                    Remark / टिप्पणी<span style="color: red">*</span></label>
                                <asp:TextBox runat="server" AutoComplete="off" TextMode="MultiLine" CssClass="form-control" onchange="myFunction()"></asp:TextBox>
                            </div>
                        </div>
                    </fieldset>
                    <hr />
                    <div class="row">
                        <div class="modal-footer">
                            <div class="col-md-12">
                                <div class="form-group">
                                    <button type="button" class="Alert-Save btn w-lg btn-success btn-border">
                                        Cancel Increment
                                    </button>
                                    <a href="/mis/Transaction/IncrementCancel.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                                </div>
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
        function Hideshow() {

            var x = document.getElementById("showdetails");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>
    <script>
        function toggleAll(source) {
            var checkboxes = document.querySelectorAll('table input[type="checkbox"]');
            for (var i = 0; i < checkboxes.length; i++) {
                if (checkboxes[i] != source)
                    checkboxes[i].checked = source.checked;
            }
        }
    </script>
</asp:Content>

