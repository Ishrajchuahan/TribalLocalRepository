﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="EmpProfile.aspx.cs" Inherits="mis_HRMS_EmpProfile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        .top-heading i {
            display: flex;
            align-items: center;
            font-size: 10px;
            color: #fff;
        }

        .top-heading h3 {
            margin: 0;
            font-family: var(--vz-font-sans-serif) !important;
            font-size: 16px;
            color: #fff;
            padding: 0 11px;
            border-radius: 120px;
        }

        .top-heading {
            position: relative;
            display: flex;
            background-image: url(../assets/images/svg/CardHeader.svg);
            justify-content: center;
            border-radius: 120px;
            box-shadow: inset 0px 0px 12px 6px rgb(168 168 201 / 44%);
            padding: 8px 16px;
            margin: 2.0rem;
        }

        .nav-tabs-custom.card-header-tabs {
            margin-top: -0.6em;
            margin-left: 1rem;
        }

        .nav-tabs-custom .nav-item .nav-link {
            border: 1px solid transparent;
            font-weight: var(--vz-font-weight-medium);
            border-top-left-radius: 33px;
            border-top-right-radius: 29px;
        }

        .profile-setting-img {
            position: relative !important;
            height: 150px !important;
        }

        .profile-wid-bg::before {
            background-image: none;
        }

        .profile-wid-bg {
            background-image: url(../assets/images/svg/CardHeader.svg) !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">

    <div class="position-relative mx-n4 mt-n4">
        <div class="profile-wid-bg profile-setting-img text-center">
            <div class="row">
                <div class="col-md-12 d-flex justify-content-center">
                    <div class="top-heading">
                        <i class="fa fa-circle" aria-hidden="true"></i>
                        <h3>Employee Profile</h3>
                        <i class="fa fa-circle" aria-hidden="true"></i>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-4 col-lg-4">
            <div class="card mt-n5">
                <div class="card-body p-4">
                    <div class="text-center">
                        <div class="profile-user position-relative d-inline-block mx-auto  mb-4">
                            <img src="../assets/images/users/avatar-1.jpg" class="rounded-circle avatar-xl img-thumbnail user-profile-image material-shadow" alt="user-profile-image" />
                        </div>
                        <h5 class="fs-16 mb-1">Rajesh Rajput</h5>
                        <p class="text-muted mb-0"><b>Employee Code - EF-0225</b></p>
                        <p class="text-muted mb-0">Designation - Teacher</p>
                    </div>
                </div>
            </div>
            <div class="card">
                <div class="card-body">
                    <div class="d-flex align-items-center mb-4">
                        <div class="flex-grow-1">
                            <h5 class="card-title mb-0">Contact Details</h5>
                        </div>
                    </div>
                    <div class="mb-3 d-flex">
                        <div class="avatar-xs d-block flex-shrink-0 me-3">
                            <span class="avatar-title rounded-circle fs-16 bg-body text-body material-shadow">
                                <i class="fa-solid fa-phone-volume"></i>
                            </span>
                        </div>
                        <label class="fs-14 mt-1">+91 6261505485</label>
                    </div>
                    <div class="mb-3 d-flex">
                        <div class="avatar-xs d-block flex-shrink-0 me-3">
                            <span class="avatar-title rounded-circle fs-16 bg-body text-body material-shadow">
                                <i class="ri-mail-fill"></i>
                            </span>
                        </div>
                        <label class="fs-14 mt-1">ram07@gmail.com</label>
                    </div>
                    <div class="mb-3 d-flex">
                        <div class="avatar-xs d-block flex-shrink-0 me-3">
                            <span class="avatar-title rounded-circle fs-16 bg-body text-body material-shadow">
                                <i class="fa-solid fa-location-dot"></i>
                            </span>
                        </div>
                        <label class="fs-14 mt-1">
                            56B, Shanti Nagar Sector 12, Dwarka New Delhi, Delhi 110075 India</label>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-8 col-lg-8">
            <div class="card mt-lg-n5">
                <div class="card-header-">
                    <ul class="nav nav-tabs-custom rounded card-header-tabs border-bottom-0" role="tablist">
                        <li class="nav-item">
                            <a class="nav-link active" data-bs-toggle="tab" href="#personalDetails" role="tab">
                                <%--<i class="ri-information-line"></i>--%>Personal Details
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#changePassword" role="tab">
                                <%--<i class="far fa-user"></i>--%>Official Details
                            </a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" data-bs-toggle="tab" href="#experience" role="tab">
                                <%--<i class="far fa-envelope"></i>--%>Nominee Details
                            </a>
                        </li>
                    </ul>
                </div>
                <div class="card-body p-4">
                    <div class="tab-content">
                        <div class="tab-pane active" id="personalDetails" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Father's Name </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Vikram Rajput</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Gender </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Male</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Date of Birth </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: 12/06/2000</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Blood Group </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: B+ve</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Pan Card No. </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: BGTPK1234M</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Adhar Card No. </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: 1234 5678 9101</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-lg-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Marital Status </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Married</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="changePassword" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>OIS Name </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Innovatech Solutions Pvt. Ltd.</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Class </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: 1</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Type of Post </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: </label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Office Address </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>:Tower B Infinity Business Park Road, New Delhi, Delhi 110075 India</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane" id="experience" role="tabpanel">
                            <div class="row">
                                <div class="col-12">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Nominee Name </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Aditi Rajput</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Relationship with Nominee </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: Wife</label>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-6">
                                            <div class="row">
                                                <div class="col-6">
                                                    <label>Nominee Percentage </label>
                                                </div>
                                                <div class="col-6">
                                                    <label>: 50 %</label>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
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
</asp:Content>
