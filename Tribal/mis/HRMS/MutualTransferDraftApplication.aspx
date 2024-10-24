﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutualTransferDraftApplication.aspx.cs" Inherits="mis_HRMS_MutualTransferDraftApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        table-bordered th, .table-bordered td {
            border: 1px solid #808080d2;
        }

        th {
            white-space: nowrap;
        }
    </style>
    <style>
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

                body.modal-open .modal .modal-header,
                body.modal-open .modal .modal-body {
                    visibility: visible;
                }

            .modal-footer {
                display: none;
            }

            .modal-header {
                display: none;
            }
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
                            <a href="#EmployeeMutualTransfer" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Employee Mutual Transfer</span></a>
                        </li>
                        <li class="breadcrumb-item">Print Draft Application or Update Application</li>
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
                    <h4 class="card-title">Print Draft Application or Update Application Of Mutual Transfer
                        <br />
                        ड्राफ्ट आवेदन प्रिंट करें या पारस्परिक स्थानान्तरण का आवेदन अपडेट करें
                    </h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Print Draft Application or Update Application Of  Mutual Transfer
                    <br />
                    ड्राफ्ट आवेदन प्रिंट करें या पारस्परिक स्थानान्तरण का आवेदन अपडेट करें                   
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
                <div class="table-responsive">
                    <table class="table table-bordere text-center">

                        <tr>
                            <th>Sr. No.
                                <br />
                                सरल क्र. </th>
                            <th>Application Number 
                                    <br />
                                आवेदन संख्या</th>
                            <th>Employ Name
                                <br />
                                कर्मचारी का नाम </th>
                            <th>Unique Id
                                <br />
                                यूनिक आईडी </th>
                            <th>Print Draft Application
                                <br />
                                ड्राफ्ट आवेदन प्रिंट करें</th>
                            <th>Update Application
                                <br />
                                एप्लिकेशन अपडेट करें</th>
                        </tr>
                        <tr>
                            <td>1</td>

                            <td>1234567</td>

                            <td>Rounak Nath</td>

                            <td>AR4781</td>

                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                            </td>
                            <td><a class="Alert-Edit"><i class="fa fa-edit"></i></a></td>
                        </tr>

                    </table>
                </div>
                <p style="color: red" class="font-16"><b>नोट :- पारस्परिक स्थानान्तरण हेतु ड्राफ्ट आवेदन का प्रिंट लेकर स्वतः हस्ताक्षर करें ।</b></p>
            </fieldset>
            <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                <div class="modal-dialog modal-xl">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3 class="modal-title w-100 text-center">पारस्परिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र</h3>
                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                        </div>
                        <div class="modal-body">
                            <fieldset>
                                <div class="row">
                                    <div class="col-sm-2">
                                        <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                                    </div>
                                    <div class="col-sm-8 text-center">
                                        <h4><strong><b>स्कूल शिक्षा विभाग
                            <br />
                                            मध्य प्रदेश शासन</b></strong></h4>
                                        <h4><strong><b>पारस्परिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र (DRAFT - Not Locked)</b></strong></h4>

                                    </div>
                                    <div class="col-sm-2">
                                        <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                                    </div>
                                </div>
                                <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                                <table class="table">
                                    <tbody>
                                        <tr>
                                            <th>वेरिफिकेशन कोड:</th>
                                            <td>757972</td>
                                            <th>दिनाँक:</th>
                                            <td>09 /10 /2022</td>
                                        </tr>
                                        <tr>
                                            <th colspan="4" class="text-center font-20">: : <u>ई-सेवा पुस्तिका अनुसार व्यक्तिगत जानकारी</u> : :</th>
                                        </tr>
                                        <tr>
                                            <th>आवेदन क्रमांक:</th>
                                            <td>132240</td>
                                            <th>आवेदन दिनाँक :</th>
                                            <td>09 /10 /2022</td>
                                        </tr>
                                        <tr>
                                            <th>कर्मचारी का नाम</th>
                                            <td>Arjun Talwar</td>
                                            <th>यूनिक आई.डी</th>
                                            <td>AR4781</td>
                                        </tr>
                                        <tr>
                                            <th>पदनाम </th>
                                            <td>Teacher (UDT)</td>
                                            <th>ज़िला</th>
                                            <td>Bhopal</td>
                                        </tr>
                                        <tr>
                                            <th>ब्लॉक</th>
                                            <td>Govindapura</td>
                                            <th>क्षेत्र</th>
                                            <td>Urban</td>
                                        </tr>
                                        <tr>
                                            <th>संकुल कोड </th>
                                            <td>15151235256-PVT VINAYAK<br />
                                                PUBLIC SCHOOL TARRAKHURD</td>
                                            <th>स्कूल कोड </th>
                                            <td>15151235256-PVT VINAYAK<br />
                                                PUBLIC SCHOOL TARRAKHURD</td>
                                        </tr>
                                        <tr>
                                        </tr>
                                        <tr>
                                            <th>विषय </th>
                                            <td>Mathematics</td>
                                            <th>जन्मतिथि</th>
                                            <td>17/07/1992</td>
                                        </tr>
                                        <tr>
                                            <th>आयु (वर्तमान की स्थिति में)</th>
                                            <td>32 years</td>
                                            <th>शैक्षणिक योग्यता</th>
                                            <td>B Tech</td>
                                        </tr>
                                        <tr>
                                            <th>पैनल समूह</th>
                                            <td>SSS-1 Mathematics</td>
                                            <th>वर्तमान संस्था में पदस्थ दिनांक</th>
                                            <td>15/04/2002</td>
                                        </tr>
                                        <tr>
                                            <th>कुल अवधि वर्षों में</th>
                                            <td colspan="3">4</td>
                                        </tr>
                                        <tr>
                                            <th colspan="4" class="text-center font-20">: : <u>जिसके साथ पारस्परिक स्थान्तरण चाहा गया है उसकी व्यक्तिगत जानकारी</u> : :</th>
                                        </tr>
                                        <tr>
                                            <th>आवेदन क्रमांक:</th>
                                            <td>132240</td>
                                            <th>आवेदन दिनाँक :</th>
                                            <td>09 /10 /2022</td>
                                        </tr>
                                        <tr>
                                            <th>कर्मचारी का नाम</th>
                                            <td>kapil vishwakarma</td>
                                            <th>यूनिक आई.डी</th>
                                            <td>MN6598</td>
                                        </tr>
                                        <tr>
                                            <th>पदनाम </th>
                                            <td>Teacher (UDT)</td>
                                            <th>ज़िला</th>
                                            <td>Sagar</td>
                                        </tr>
                                        <tr>
                                            <th>ब्लॉक</th>
                                            <td>Banda</td>
                                            <th>क्षेत्र</th>
                                            <td>Urban</td>
                                        </tr>
                                        <tr>
                                            <th>संकुल कोड </th>
                                            <td>1258963478-Model<br />
                                                High Secondary School</td>
                                            <th>स्कूल कोड </th>
                                            <td>1258963478-Model<br />
                                                High Secondary School</td>
                                        </tr>
                                        <tr>
                                            <th>विषय </th>
                                            <td>Mathematics</td>
                                            <th>जन्मतिथि</th>
                                            <td>27/06/1990</td>
                                        </tr>
                                        <tr>
                                            <th>आयु (वर्तमान की स्थिति में)</th>
                                            <td>32 years</td>
                                            <th>शैक्षणिक योग्यता</th>
                                            <td>B Tech</td>
                                        </tr>
                                        <tr>
                                            <th>पैनल समूह<</th>
                                            <td>SSS-1 Mathematics</td>
                                            <th>वर्तमान संस्था में पदस्थ दिनांक</th>
                                            <td>15/04/2002</td>
                                        </tr>
                                        <tr>
                                            <th>कुल अवधि वर्षों में</th>
                                            <td colspan="3">4</td>
                                        </tr>
                                    </tbody>
                                </table>
                                <table style="width: 100%;">
                                    <tbody>
                                        <tr>
                                            <th class="text-center font-20">: : <u>घोषणा</u> : :</th>
                                        </tr>
                                        <tr>
                                            <td class="font-18">में प्रमाणित करता करती हूँ कि उपरोक्त जानकारी मेरे ज्ञान व विश्वास से एवं दस्तावेजों के अनुसार सत्य है. किसी भी प्रकार की असत्य एवं त्रुटिपूर्ण जानकारी पर मेरा आवेदन स्थानांतरण रद्द कर दिया जावेगा। और मेरे विरुध्द अनुशासनात्मक कार्यवाही के लिए सक्षम अधिकारी स्वतंत्र होंगे।
                                            </td>
                                        </tr>
                                        <tr>
                                            <td class="font-16">
                                                <br />
                                                <br />
                                                <br />
                                                हस्ताक्षर</td>
                                            <td class="float-end font-16 text-center">
                                                <br />
                                                <br />
                                                <br />
                                                हस्ताक्षर</td>

                                        </tr>
                                        <tr>
                                            <td class="font-16">Anshu Chaturved</td>
                                            <td class="text-end font-16 ">KapilSingh</td>


                                        </tr>
                                    </tbody>
                                </table>

                            </fieldset>
                        </div>
                        <div class="modal-footer justify-content-center">
                            <button type="button" class="btn btn-primary" onclick="window.print()">Print</button>
                            <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

