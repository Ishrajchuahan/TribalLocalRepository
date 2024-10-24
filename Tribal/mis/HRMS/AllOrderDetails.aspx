﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AllOrderDetails.aspx.cs" Inherits="mis_HRMS_AllOrderDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #details {
            display: none
        }

        th {
            white-space: nowrap;
        }

        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
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
                            <a href="#DashboardDisplay" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Dashboard Display Circulars-Orders</span></a>
                        </li>
                        <li class="breadcrumb-item">All Order Details</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -1rem;">
                <img src="../../img/Circular%20Order.png" style="height: 90px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-9">
                    <h4 class="card-title">All Order Details /
                सभी आदेश</h4>
                </div>
            </div>
        </div>
        <div class="card-body">

            <fieldset>
                <legend>All Order / सभी आदेश
                </legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Circular Issued By <br />
                                परिपत्र का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="All">All</option>
                                <option value="Government">Government</option>
                                <option value="Directorate of Public Instruction">Directorate of Public Instruction</option>
                                <option value="Commissioner Tribal Development">Commissioner Tribal Development</option>
                                <option value="Rajya Shiksha Kendra">Rajya Shiksha Kendra</option>
                                <option value="District Education Officer">District Education Officer</option>
                                <option value="Others">Others</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>
                                Select Category <br />
                                श्रेणी का चयन करें<span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--" disabled selected>--Select--</option>

                                <option value="Academic">Academic</option>
                                <option value="Academic Calendar">Academic Calendar</option>
                                <option value="Accounts">Accounts</option>
                                <option value="Administration">Administration</option>
                                <option value="Adult Education">Adult Education</option>
                                <option value="Budget">Budget</option>
                                <option value="Building">Building</option>
                                <option value="CE">CE</option>
                                <option value="Chhatisgarh Cell">Chhatisgarh Cell</option>
                                <option value="Civil Works">Civil Works</option>
                                <option value="Coordination">Coordination</option>
                                <option value="Curriculam">Curriculam</option>
                                <option value="Cycle">Cycle</option>
                                <option value="Dakshata/Monthly Tests">Dakshata/Monthly Tests</option>
                                <option value="Education Portal">Education Portal</option>
                                <option value="EDUSAT">EDUSAT</option>
                                <option value="ELTI">ELTI</option>
                                <option value="EMRS">EMRS</option>
                                <option value="Enrollment and Retention (E&R)">Enrollment and Retention (E&R)</option>
                                <option value="Establishment">Establishment</option>
                                <option value="Evaluation">Evaluation</option>
                                <option value="Finance1">Finance1</option>
                                <option value="Free Coaching">Free Coaching</option>
                                <option value="Gender unit">Gender unit</option>
                                <option value="Gradation List">Gradation List</option>
                                <option value="Grant">Grant</option>
                                <option value="Grievances / परिवेदना">Grievances / परिवेदना</option>
                                <option value="Guest Faculty">Guest Faculty</option>
                                <option value="Headstart">Headstart</option>
                                <option value="HOSTEL / KHBV">HOSTEL / KHBV</option>
                                <option value="ICT@SCOOL">ICT@SCOOL</option>
                                <option value="IEC">IEC</option>
                                <option value="IED / CWSN">IED / CWSN</option>
                                <option value="INSPIRE AWARDS">INSPIRE AWARDS</option>
                                <option value="IT/E-Gov">IT/E-Gov</option>
                                <option value="Laptop Scheme">Laptop Scheme</option>
                                <option value="Legal cell">Legal cell</option>
                                <option value="Library">Library</option>
                                <option value="Media">Media</option>
                                <option value="Mid-Day Meal">Mid-Day Meal</option>
                                <option value="Minority cell">Minority cell</option>
                                <option value="MIS">MIS</option>
                                <option value="Model Schools/Kanya Shiksha Parisar">Model Schools/Kanya Shiksha Parisar</option>
                                <option value="Monitoring">Monitoring</option>
                                <option value="m-Shiksha Mitra">m-Shiksha Mitra</option>
                                <option value="NTSE-NMMS">NTSE-NMMS</option>
                                <option value="Others">Others</option>
                                <option value="Partnership">Partnership</option>
                                <option value="Physical Education">Physical Education</option>
                                <option value="Planning">Planning</option>
                                <option value="Rationalization of teachers">Rationalization of teachers</option>
                                <option value="Research">Research</option>
                                <option value="RMSA">RMSA</option>
                                <option value="RTE">RTE</option>
                                <option value="RTI">RTI</option>
                                <option value="Samvida Shala Shikshak Recruitment-2012">Samvida Shala Shikshak Recruitment-2012</option>
                                <option value="Samvillian">Samvillian</option>
                                <option value="Sanskrit Cell">Sanskrit Cell</option>
                                <option value="SCERT">SCERT</option>
                                <option value="Scholarships">Scholarships</option>
                                <option value="School Inspections">School Inspections</option>
                                <option value="School of Excellence">School of Excellence</option>
                                <option value="Shiksha Karmi">Shiksha Karmi</option>
                                <option value="Shikshak Samman, Teacher Awards">Shikshak Samman, Teacher Awards</option>
                                <option value="Statistics">Statistics</option>
                                <option value="Stores">Stores</option>
                                <option value="Teacher Education">Teacher Education</option>
                                <option value="Teacher Training">Teacher Training</option>
                                <option value="Text Book">Text Book</option>
                                <option value="Training">Training</option>
                                <option value="Transfer">Transfer</option>
                                <option value="Typing Board">Typing Board</option>
                                <option value="Unit-Wise of Syllabus">Unit-Wise of Syllabus</option>
                                <option value="Vidhansabha">Vidhansabha</option>
                                <option value="Vigilence">Vigilence</option>
                                <option value="VIRTUAL Class">VIRTUAL Class</option>
                                <option value="Vocation Training Centers">Vocation Training Centers</option>
                                <option value="Vocational Education">Vocational Education</option>

                            </select>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="row">
                    <div class="col-md-12">
                            <button type="button" class="btn btn-success btn w-lg btn-border" onclick="myFunctionshow()">Search</button>
                            <a href="AllOrderDetails.aspx" class="btn btn-outline-danger btn w-lg btn-border">Clear</a>
                        </div>
                </div>

            </fieldset>
            <div id="details">
                <fieldset>
                    <legend>All Information Details / सभी जानकारी का विवरण
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
                                <table class="table text-center table-bordered">
                                    <thead>
                                        <tr>
                                            <th>Sr.No.             
                                                    <br />
                                                सरल क्र.</th>
                                            <th>Order No.          
                                                    <br />
                                                आदेश क्र.</th>
                                            <th>Order Issue Date   
                                                    <br />
                                                आदेश जारी करने की तिथि  </th>
                                            <th>Order Expiry Date 
                                                    <br />
                                                ऑर्डर की समाप्ति तिथि   </th>
                                            <th>Order Subject      
                                                    <br />
                                                आदेश विषय    </th>
                                            <th>Upload By         
                                                    <br />
                                                द्वारा अपलोड करें       </th>
                                            <th>View Attachment   
                                                    <br />
                                                संलग्न देखें    </th>

                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>

                                        <tr id="news1" hidden>
                                            <td>4</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>
                                        <tr id="news2" hidden>
                                            <td>5</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>
                                        <tr id="news3" hidden>
                                            <td>6</td>
                                            <td>2569</td>
                                            <td>09-03-2022</td>
                                            <td>20-05-2022</td>
                                            <td>Message From Chief Secretary</td>
                                            <td>DEO Agar Malwa</td>
                                            <td><a href="#"><i class="fa fa-eye" aria-hidden="true"></i></a></td>
                                        </tr>

                                    </tbody>
                                </table>

                            </div>
                        </div>
                    </div>
                    <div class="text-center">
                        <button type="button" id="view" class="btn btn-success btn-border" onclick="myFunction()">View More</button>
                    </div>
                </fieldset>
            </div>
        </div>
    </div>

    <script>
        function myFunctionshow() {
            document.getElementById("details").style.display = "block";

        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function myFunction() {
            let element1 = document.getElementById("news1");
            let element2 = document.getElementById("news2");
            let element3 = document.getElementById("news3");
            let button = document.getElementById("toggleButton");
            let view = document.getElementById("view");

            let hidden1 = element1.getAttribute("hidden") !== null;
            let hidden2 = element2.getAttribute("hidden") !== null;
            let hidden3 = element3.getAttribute("hidden") !== null;

            if (hidden1 && hidden2 && hidden3) {
                element1.removeAttribute("hidden");
                element2.removeAttribute("hidden");
                element3.removeAttribute("hidden");
                view.innerText = "View Less...";
            }
            else {
                element1.setAttribute("hidden", "hidden");
                element2.setAttribute("hidden", "hidden");
                element3.setAttribute("hidden", "hidden");
                view.innerText = "View More...";
            }
        }
    </script>

</asp:Content>

