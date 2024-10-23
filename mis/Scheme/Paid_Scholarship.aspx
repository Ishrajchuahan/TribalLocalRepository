﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Paid_Scholarship.aspx.cs" Inherits="mis_Scheme_Paid_Scholarship" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        body {
            margin: 0;
            padding: 0;
            /*font-family: 'Roboto Condensed', sans-serif;*/
        }

        /* Overlay Styles */
        .overlay {
            background: rgba(0,0,0,0.8);
            opacity: 0.8;
            filter: alpha(opacity=80);
            position: absolute;
            top: 0px;
            bottom: 0px;
            left: 0px;
            right: 0px;
            z-index: 100;
        }

        /* Popup */
        .popup {
            background: white;
            position: absolute;
            top: 0;
            left: 0;
            bottom: 0;
            right: 0;
            z-index: 101;
            width: 580px; /*Change your width here*/
            height: 250px; /*Change your height here*/
            margin: auto;

            @media(max-width:768px) {
                width:90%;
                margin:auto 5%;
            }
            /* Popup Inner */
            .popup-inner

        {
            position: relative;
            padding: 1em;
            input .s3-btn-close

        {
            position: absolute;
            top: -0.5em;
            right: -0.5em;
            background: black;
            border: solid 2px white;
            color: white;
            cursor: pointer;
            border-radius: 15px;
            outline: none;
        }

        // s3-btn-close
        }
        // popup-inner
        }

        // popup
        /*************
  S3 Button
*************/
        input.s3-btn {
            background: #f1f1f1;
            border: none;
            width: 200px;
            height: 50px;
            cursor: pointer;
            position: absolute;
            top: 0;
            right: 0;
            bottom: 0;
            left: 0;
            margin: auto;
        }

        .s3-center {
            text-align: center;
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
                zoom: 90%;
            }
            /* Hide unnecessary elements */
            body.modal-open {
                visibility: hidden;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

        <%-- <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Paid Scholarship List</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=Masters" title="click to go on">Masters</a></li>
                        <li class="breadcrumb-item"><a href="SSDDO_Scholarship.aspx" title="click to go on">Scholarship Dashboard</a></li>
                        <li class="breadcrumb-item active">Paid Scholarship List</li>
                    </ol>
                </div>
            </div>
        </div>--%>
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
                                <a href="#SchemeManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Scheme Management</span></a>
                            </li>
                            <li class="breadcrumb-item">SSDDO Scholarship</li>
                            <li class="breadcrumb-item">Paid Scholarship List</li>
                        </ol>
                    </div>
                </div>
            </div>
        </div>

        <div class="card card-border-primary">
            <div class="card-header">
                <div class="row align-items-end">
                    <div class="col-lg-8">
                        <h4 class="card-title">Paid Scholarship List / भुगतान की गई छात्रवृत्ति सूची
                        </h4>
                    </div>
                </div>
            </div>
            <div class="card-body">
                <span id="ContentBody_lblMsg"></span>
                <fieldset id="PaidScholarship" runat="server">
                    <legend>Paid Scholarship List / भुगतान की गई छात्रवृत्ति सूची</legend>
                    <div class="row">
                        <div class="col-md-3 form-group">
                            <label>
                                Enter DISE Code<br />
                                डाइस कोड दर्ज करें<span style="color: red">*</span></label>
                            <input type="text" max="12" class="form-control" autocomplete="off" placeholder="Enter DISE Code" />
                        </div>
                    </div>
                    <hr />
                    <div class="row">
                        <div class="col-md-12">

                            <asp:Button Text="Get List Of Students" type="button" runat="server" OnClick="GetListOfStudents_Click" ID="GetListOfStudents" class="btn btn-success btn-border btn w-lg"></asp:Button>
                            <a href="Paid_Scholarship.aspx" class="btn btn-outline-danger btn-border btn w-lg">Clear</a>
                        </div>
                    </div>
                </fieldset>
                <fieldset runat="server" id="Studenttraking" visible="false">
                    <legend>School Details / स्कूल का विवरण</legend>
                    <div class="student-profile py-12">
                        <div class="container">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">

                                        <div style="min-height: 12rem;" class="card-body">
                                            <div class="col-lg-12">
                                                <div class="card shadow-sm">
                                                    <div class="card-header bg-transparent border-0">
                                                        <h3 style="color: black;"><i class="far fa-clone pr-1"></i>Information</h3>
                                                    </div>
                                                    <div style="min-height: 0rem;" class="card-body pt-0">
                                                        <table class="table table-bordered">
                                                            <tr>
                                                                <th width="30%">School Name<br />
                                                                    स्कूल का नाम : </th>
                                                                <td width="2%">:</td>
                                                                <td>SAGAR PUBLIC SCHOOL [SPS]</td>
                                                                <th width="30%" class="text-gray-lighter">DISE Code<br />
                                                                    डाइस कोड</th>
                                                                <td width="2%">:</td>
                                                                <td>1234567</td>
                                                            </tr>
                                                            <tr>
                                                                <th width="30%">District<br />
                                                                    जिला  </th>
                                                                <td width="2%">:</td>
                                                                <td>Bhoapl</td>
                                                                <th width="30%">Block<br />
                                                                    ब्लॉक</th>
                                                                <td width="2%">:</td>
                                                                <td>Bairasia</td>
                                                            </tr>
                                                            <tr>
                                                                <th>Address<br />
                                                                    पता</th>
                                                                <td>:</td>
                                                                <td colspan="4">ग्राम / वार्ड -Birha Shym Khedi  जिला -Bhopal</td>
                                                            </tr>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="card shadow-sm">
                                        <div class="card-header bg-transparent border-0">
                                        </div>

                                        <h3 class="mb-0"><i class="far fa-clone pr-1"></i>Scholarship Details</h3>
                                        <hr>

                                        <%--     <div class="container">
                                <h2>Example 3 </h2>
                            </div>--%>
                                        <div id="exTab3" class="container">
                                            <ul class="nav nav-pills">
                                                <li class="active">

                                                    <asp:Button Text="Successful payments List" type="button" runat="server" OnClick="Button1_Click" ID="Button1" class="btn btn-outline-warning w-lg"></asp:Button>


                                                </li>
                                                <li>
                                                    <asp:Button Text="Failed payments List" type="button2" runat="server" OnClick="Button2_Click" ID="Button2" class="btn btn-success w-lg"></asp:Button>



                                                </li>
                                                <li>
                                                    <button type="button" class="btn btn-outline-danger w-lg" href="#3b" data-toggle="tab">Sanctioned Schemes List </button>

                                                </li>
                                            </ul>
                                          
                                            <div class="tab-content clearfix">
                                                <div class="tab-pane active" id="Successful" runat="server" visible="false">
                                                    <div class="card-body pt-0">

                                                        <table class="table table-bordered table-responsive mt-3">
                                                            <thead>
                                                                <tr>

                                                                    <th scope="col">#</th>
                                                                    <th scope="col">SamagraID<br />
                                                                        समग्र आईडी</th>
                                                                    <th scope="col">Name<br />
                                                                        नाम</th>
                                                                    <th scope="col">Fathers Name<br />
                                                                        पिता का नाम</th>
                                                                    <th scope="col">Class<br />
                                                                        कक्षा</th>
                                                                    <th scope="col">Scheme<br />
                                                                        योजना</th>
                                                                    <th scope="col">IFSC<br />
                                                                        आईएफएससी</th>
                                                                    <th scope="col">Ac.NO.<br />
                                                                        खाता नंबर</th>
                                                                    <th scope="col">Amount<br />
                                                                        राशि</th>
                                                                    <th scope="col">Payment Stetus<br />
                                                                        भुगतान की स्थिति</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>53455353</td>
                                                                    <td>Rahul</td>
                                                                    <td>Golu</td>
                                                                    <td>7th</td>
                                                                    <td>7.1</td>
                                                                    <td>MAHB0002</td>
                                                                    <td>64646664664564</td>
                                                                    <td>200</td>
                                                                    <td>Done</td>
                                                                </tr>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>53455353</td>
                                                                    <td>raghave</td>
                                                                    <td>Goluendra</td>
                                                                    <td>7th</td>
                                                                    <td>7.1</td>
                                                                    <td>MAHB0002</td>
                                                                    <td>64646664664564</td>
                                                                    <td>270</td>
                                                                    <td>Done</td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                                <div id="PaymentFailed" runat="server" visible="false">
                                                    <div class="table-responsive">
                                                        <table class="footable table mt-3 table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                                            <thead>
                                                                <tr>
                                                                    <th scope="col">#</th>
                                                                    <th scope="col">Class<br />
                                                                        कक्षा</th>
                                                                    <th scope="col">SamagraID</th>
                                                                    <th scope="col">Name<br />
                                                                        नाम</th>
                                                                    <th scope="col">Father Name<br />
                                                                        पिता का नाम</th>
                                                                    <th scope="col">IFSC<br />
                                                                        आईएफएससी</th>
                                                                    <th scope="col">Acount NO<br />
                                                                        खाता नंबर</th>
                                                                    <th scope="col">Action</th>
                                                                </tr>
                                                            </thead>
                                                            <tbody>
                                                                <tr>
                                                                    <td>1</td>
                                                                    <td>9</td>
                                                                    <td>75675555</td>
                                                                    <td>Rahul</td>
                                                                    <td>Abhijit</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <%--<td>
                                                                        <input type="button" class="s3-btn" name="Open" onclick="popupOpen();" value="Edit"></td>--%>
                                                                    <td>
                                                                        <button type="button" class="btn btn-outline-danger btn-rounded" data-toggle="modal" data-target="#myModal">Edit</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>756533367</td>
                                                                    <td>Roshan</td>
                                                                    <td>Pravin</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <%--<td>
                                                                        <input type="button" class="s3-btn" name="Open" onclick="popupOpen();" value="Edit"></td>--%>
                                                                    <td>
                                                                        <button type="button" class="btn btn-outline-danger btn-rounded" data-toggle="modal" data-target="#myModal">Edit</button></td>
                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>7567343437</td>
                                                                    <td>Rohini</td>
                                                                    <td>Pravin</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <%--<td>
                                                                        <input type="button" class="s3-btn" name="Open" onclick="popupOpen();" value="Edit"></td>--%>
                                                                    <td>
                                                                        <button type="button" class="btn btn-outline-danger btn-rounded" data-toggle="modal" data-target="#myModal">Edit</button></td>

                                                                </tr>
                                                                <tr>
                                                                    <td>2</td>
                                                                    <td>10</td>
                                                                    <td>75343467</td>
                                                                    <td>Pawan</td>
                                                                    <td>Ramarao</td>
                                                                    <td>HD000032</td>
                                                                    <td>6575757575768</td>
                                                                    <%--<td>--%>
                                                                    <%--<input type="button" class="s3-btn" name="Open" onclick="popupOpen();" value="Edit"></td>--%>
                                                                    <td>
                                                                        <button type="button" class="btn btn-outline-danger btn-rounded" data-toggle="modal" data-target="#myModal">Edit</button></td>
                                                                </tr>
                                                            </tbody>
                                                        </table>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <!-- Overlay -->
                    <%--<div class="overlay" id="overlay" style="display: none;"></div>--%>

                    <!-- Popup -->
                    <%--<div class="popup" id="popup" style="display: none;">
                        <div class="popup-inner">
                            <input type="button" name="Close" class="s3-btn-close" onclick="popupClose();" value="&times;">

                            <table class="table table-bordered">
                                <tr>
                                    <th width="30%">IFSC Code : </th>
                                    <td width="2%">:</td>
                                    <td>HD0000RT</td>
                                    <th width="30%" class="text-gray-lighter">Bank Name</th>
                                    <td width="2%">:</td>
                                    <td>
                                        <select style="width: 100px;">
                                            <option value='Bank of Baroda'>Bank of Baroda</option>
                                            <option value='H d f c bank'>H d f c bank</option>
                                            <option value='Punjab National Bank'>Punjab National Bank</option>
                                            <option value='Bank of Maharashtra'>Bank of Maharashtra</option>
                                        </select>
                                    </td>
                                </tr>
                                <tr>
                                    <th width="30%">Account NO </th>
                                    <td width="2%">:</td>
                                    <td>2255664466</td>
                                    <th width="30%">Account NO Retype</th>
                                    <td width="2%">:</td>
                                    <td>2255664466</td>
                                </tr>
                            </table>
                            <asp:Button Text="Save Bank Account Details" type="button" runat="server" ID="Button3" class="btn btn-success"></asp:Button>

                        </div>

                       
                    </div>--%>

                    <div class="modal" id="myModal">
                        <div class="modal-dialog">
                            <div class="modal-content">
                                <!-- Modal Header -->
                                <div class="modal-header" style="background-color: var(--vz-primary); color: white">
                                    <h4 class="modal-title text-white"></h4>
                                    <button type="button" class="close text-white" data-dismiss="modal">&times;</button>
                                </div>
                                <!-- Modal Body -->
                                <div class="modal-body">
                                    <table class="table table-bordered">
                                        <tr>
                                            <th width="30%">IFSC Code  </th>
                                            <td width="2%">:</td>
                                            <td>HD0000RT</td>
                                            <th width="30%" class="text-gray-lighter">Bank Name</th>
                                            <td width="2%">:</td>
                                            <td>
                                                <select style="width: 100px;">
                                                    <option value='Bank of Baroda'>Bank of Baroda</option>
                                                    <option value='H d f c bank'>H d f c bank</option>
                                                    <option value='Punjab National Bank'>Punjab National Bank</option>
                                                    <option value='Bank of Maharashtra'>Bank of Maharashtra</option>
                                                </select>
                                            </td>
                                        </tr>
                                        <tr>
                                            <th width="30%">Account NO </th>
                                            <td width="2%">:</td>
                                            <td>2255664466</td>
                                            <th width="30%">Account NO Retype</th>
                                            <td width="2%">:</td>
                                            <td>2255664466</td>
                                        </tr>
                                    </table>
                                    <asp:Button Text="Save Bank Account Details" type="button" runat="server" ID="Button3" class="btn btn-success"></asp:Button>
                                </div>
                                <!-- Modal Footer -->
                                <div class="modal-footer justify-content-center">
                                    <button type="button" class="btn btn-danger btn-rounded" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
        </div>

    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <%--<script>
        // Popup Open
        function popupOpen() {
            document.getElementById("popup").style.display = "block";
            document.getElementById("overlay").style.display = "block";
        }
        // Popup Close
        function popupClose() {
            document.getElementById("popup").style.display = "none";
            document.getElementById("overlay").style.display = "none";
        }
    </script>--%>
</asp:Content>

