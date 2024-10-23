﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="MutualTransferPrintApplication.aspx.cs" Inherits="mis_HRMS_MutualTransferPrintApplication" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" Runat="Server">
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" Runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Print Application Of Mutual Transfer/ पारस्परिक स्थानांतरण प्रिंट एप्लीकेशन 
            </h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Transfer" title="click to go on">Transfer</a></li>
                     <li class="breadcrumb-item active"><a href="Trn_MutualTransferApplication.aspx">Mutual Transfer Application</a></li>
                    <li class="breadcrumb-item active">Print Application Of Mutual Transfer</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
            <nav class="navbar navbar-expand-lg topbar">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-dark font-16 text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false"><strong><b>Mutual Transfer Application</b></strong></a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_MutualTransferApply.aspx">Mutual Transfer Apply</a></li>
                                    <li><a class="dropdown-item" href="MutualTransferDraftApplication.aspx">Print Draft Application or Update Application</a></li>
                                    <li><a class="dropdown-item" href="MutualTransLockApplication.aspx">Lock Application</a></li>
                                <%--    <li><a class="dropdown-item" href="MutualTransferPrintApplication.aspx">Print Application</a></li>--%>
                                </ul>
                            </li> 
                           <%-- <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutalTransferSelfVerification.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Self Verification</b></strong></a>
                            </li>--%>
                             <li class="nav-item">
                                 <a class="nav-link text-dark font-16 text-white" href="MutualTransferApplicationStatus.aspx" role="button"  aria-expanded="false"><strong><b>Mutual Transfer Application Status</b></strong></a>
                            </li>
                        </ul>
                       
                    </div>
                </div>
            </nav>     
            <br />
            <br />
            <fieldset>
                <legend>Print Application Of Mutual Transfer                  
                </legend>
                <table class="table table-bordered text-center ">
                    <tbody>
                        <tr>
                            <th>Sr No.</th>
                            <th>Application Number</th>
                            <th>Employ Name</th>
                            <th>Unique Id </th>
                            <th>Final Print Application </th>
                           
                        </tr>
                        <tr>
                            <td>1</td>

                            <td>1234567</td>

                            <td>Rounak Nath</td>

                            <td>AR4781</td>

                            <td>
                                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop"><i class="fa fa-print" aria-hidden="true"></i></button>
                            </td>
                           
                        </tr>

                    </tbody>
                </table>
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
                                        <h4><strong><b>पारस्परिक स्थानांतरण के लिए आवेदन सह-घोषणा पत्र </b></strong></h4>

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
                                            <td>1258963478-Model<br /> High Secondary School</td>
                                            <th>स्कूल कोड </th>
                                            <td>1258963478-Model<br /> High Secondary School</td>
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
                                             <td class="font-16"><br /><br /><br />हस्ताक्षर</td>
                                               <td class="float-end font-16 text-center"><br /><br /><br />हस्ताक्षर</td>
                                              
                                            </tr>
                                        <tr>
                                            <td class="font-16">Anshu Chaturved</td>                                         
                                               <td class="text-end font-16 ">KapilSingh</td>
                                             
                                            
                                      </tr>
                                        <tr>
                                            <td style="color:#0026ff; font-size:15px;" >नोट :- यह स्वयं की लॉगिन आईडी से कंप्यूटर जेनरेटेड एप्लीकेशन है, हस्ताक्षर की आवश्यकता नहीं है।</td>
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
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" Runat="Server">
</asp:Content>

