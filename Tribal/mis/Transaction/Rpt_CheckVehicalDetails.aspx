﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_CheckVehicalDetails.aspx.cs" Inherits="mis_Transaction_Rpt_CheckVehicalDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
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
                            <a href="#TransPortManagement" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Transport Management</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#Gatekeeper" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('TransPortManagement')">
                                <span>Gatekeeper Transport System</span></a>
                        <li class="breadcrumb-item"><span>Check Vehical Details</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary ">
        <div class="card-header">
            <div class="row">
                <div class="col-xl-9 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Check Vehical Details
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                Empty
                            </marquee>
                        </div>

                    </div>
                </div>

            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Check Vehical Details / वाहन विवरण</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select From Date<span style="color: red">*</span><br />
                            प्रारंभिक दिनांक का चयन करें
                        </label>
                        <input type="date" name="name" class="form-control" />
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select To Date<span style="color: red">*</span>
                            <br />
                            अंतिम दिनांक का चयन करें
                        </label>
                        <input type="date" name="name" class="form-control" />
                    </div>
                    <div class="col-md-3">
                        <label>
                            Select Type
                            <br />
                            प्रकार का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>All</option>
                            <option>In Vehicle</option>
                            <option>Out Vehicle</option>
                        </select>
                    </div>
                    <div class="col-md-3">
                        <label>
                            Select Vehicle No<span style="color: red">*</span>
                            <br />
                            वाहन नंबर का चयन करें
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>MP04AB1123</option>
                            <option>MP04AB7723</option>
                        </select>
                    </div>
                </div>
                <hr />
                <div class="row align-items-end">
                    <div class="col-md-12">
                        <button id="searchButton" type="button" class="btn btn-outline-success w-lg btn-border" onclick="document.getElementById('tbldetail').style.display='block'">Search</button>

                        <a href="Rpt_CheckVehicalDetails.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                    
<%--                    <div>
                        <p style="font-size: 15px; color: red;margin-left: 15px;"><span style="font-weight: 700;">Note:-</span>Only Vehicle No. Show In School Transport</p>
                    </div>--%>
                </div>
            </fieldset>

            <fieldset id="tbldetail" style="display: none">
                <legend>Details / विवरण</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <button class="btn btn-info btn-rounded w-55">Excel</button>
                        <button class="btn btn-info btn-rounded w-55">PDF</button>
                    </div>

                    <div class="col-md-2">
                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search..." />
                    </div>
                </div>
                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead>
                                    <tr>
                                        <th>Sr.No.<br />
                                            क्रमांक
                                        </th>
                                        <th>Vehical No.<br />
                                            वाहन नंबर
                                        </th>
                                        <th>Driver Name<br />
                                            चालक का नाम</th>
                                        <th>Mobile No.<br />
                                            मोबाइल नंबर</th>
                                        <th>Challan Number In<br />
                                            आगमन चालान नंबर </th>
                                        <th>In Time<br />
                                            आगमन का समय</th>
                                        <th>Challan Number Out<br />
                                            प्रस्थान  चालान नंबर</th>
                                        <th>Out Time<br />
                                            प्रस्थान का समय</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>MP04AB1123</td>
                                        <td>Rohan Saksena</td>
                                        <td>6567234567</td>
                                        <td>CH71240002</td>
                                        <td>9:00 AM</td>
                                        <td>CH71240002</td>
                                        <td>6:06 PM</td>
                                    </tr>
                                    <tr>
                                        <td>2</td>
                                        <td>MP04AB7723</td>
                                        <td>Shyam Arora</td>
                                        <td>7876546798</td>
                                        <td>CH71240010</td>
                                        <td>9:15 AM</td>
                                        <td>CH71240010</td>
                                        <td>6:17 PM</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

