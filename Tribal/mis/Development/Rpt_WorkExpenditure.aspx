﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_WorkExpenditure.aspx.cs" Inherits="mis_Development_Rpt_WorkExpenditure" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>

        .table th,td{
             background-color:white !important;
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
                            <a href="#Development" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Civil Construction</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#DevelopmentReport" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('Development')" aria-expanded="false"><span>Civil Construction Report</span></a>
                        </li>
                        <li class="breadcrumb-item">Work Expenditure Report</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-xxl-12 col-md-12">
                    <div class="marqueecontainerinfo">
                        <div class="headertext btn btn-primary rounded-pill">
                            Work Expenditure Report / कार्य व्यय रिपोर्ट
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                                .
                            </marquee>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Work Expenditure Report / कार्य व्यय रिपोर्ट</legend>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Year<br />
                            वर्ष का चयन करें<span style="color: red">*</span>
                        </label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>2024</option>
                            <option>2023</option>
                            <option>2022</option>
                            <option>2021</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Office Type<br />
                            कार्यालय के प्रकार का चयन करें</label>
                        <select class="form-control select2">
                            <option value="0">All</option>
                            <option value="3">School</option>
                            <option value="3">Sankul</option>
                            <option value="3">BEO</option>
                            <option value="3">DEO</option>
                            <option value="3">JD</option>
                            <option value="3">HO</option>

                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Office Name<br />
                            कार्यालय के नाम का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option value="3">GOVT HSS MAHARANA PRATAP</option>
                            <option value="3">GOVT HSS BOYS, KOTRA SULTANABAD</option>
                            <option value="3">GOVT HSS EX, SUBHASH,SHIVAJI</option>
                            <option value="3">GOVT HSS KHAJURI KALAN</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Project Group<br />
                            प्रोजेक्ट समूह का चयन करें</label>
                        <select class="form-control select2">
                            <option value="0">Select</option>
                            <option value="3">स्कूल निर्माण	</option>
                            <option value="3">सी.सी रोड कार्य</option>
                            <option value="3">पेयजल व्यवस्था</option>

                        </select>
                    </div>
                </div>

                <div class="row align-items-end">
                    <div class="col-md-3">
                        <label>
                            Select Work Category
                            <br />
                            कार्य श्रेणी का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>विद्यालय का रख-रखाव कार्य</option>
                            <option>पेयजल व्यवस्था</option>
                            <option>स्कूल मार्ग निर्माण</option>
                        </select>
                    </div>

                    <div class="col-md-3">
                        <label>
                            Select Installment No
         <br />
                            किस्त संख्या का चयन करें</label>
                        <select class="form-control select2">
                            <option>Select</option>
                            <option>First Installment</option>
                            <option>Second Installment</option>
                            <option>Third Installment</option>
                            <option>Fourth Installment</option>
                        </select>
                    </div>
                </div>

                <hr />
                <div class="row">
                    <div class="col-md-12">
                        <button type="button" class="btn btn-outline-success btn-border w-lg" onclick="document.getElementById('table1').style.display = 'block'">Search</button>
                        <a href="Rpt_WorkExpenditure.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>

            <fieldset id="table1" style="display: none;">
                <legend>Details / विवरण</legend>
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

                <div class="row form-group">
                    <div class="col-md-12">
                        <div class="table-responsive">
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
        <br />
                                            क्रमांक</th>
                                        <th>Project Year<br />
                                            परियोजना वर्ष
                                        </th>
                                        <th>Print<br />प्रिंट</th>
                                        <th>Office Name<br />
                                            कार्यालय का नाम </th>
                                        <th>Installment Order Number<br />
                                            किस्त आदेश संख्या</th>
                                        <th>Sanction Number
                                            <br />
                                            स्वीकृति क्रमांक
                                        </th>
                                        <th>Sanction Date<br />
                                            स्वीकृति दिनांक
                                        </th>
                                        <th>Project Group<br />
                                            परियोजना समूह</th>
                                        <th>Project Category<br />
                                            परियोजना श्रेणी </th>
                                        <th>Subwork<br />
                                            उपकार्य</th>
                                        <th>Image 1</th>
                                        <th>Image 2</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>1</td>
                                        <td>2023</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-print" data-bs-toggle="modal" data-bs-target="#staticBackdrop"></i></span></td>
                                        <td>GOVT HSS MAHARANA PRATAP</td>
                                        <td>INS1234</td>
                                        <td>98235</td>
                                        <td>30/11/2023</td>
                                        <td>स्कूल निर्माण</td>
                                        <td>सी.सी.रोड निर्माण</td>
                                        <td>सी.सी.रोड निर्माण</td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></span></td>
                                        <td class="nowrap"><span class="btn btn-outline-primary"><i class="fa fa-eye" onclick="openPDF()"></i></span></td>
                                    </tr>

                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>

    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h3 class="modal-title w-100 text-center"></h3>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset id="printField">
                        <div class="row text-center">
                            <%--<div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>--%>


                            <div class="col-sm-12 text-center">
                                <br />
                                <h3><strong><b>Directorate of Public Instructions</b></strong></h3>
                                <h4><strong><b>मध्य प्रदेश शासन</b></strong></h4>
                                <h4><strong><b>जिला:- भोपल</b></strong></h4>
                            </div>
                            <%--  <div class="col-sm-2">
                                <img id="imglogo1" src="../../img/qr-code-logo-27adb92152-seeklogo.com.png" style="width: 100px; height: auto" class="responsive" />
                            </div>--%>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <div class="row">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="">
                                        <div class="">
                                            <div class="row">
                                                <div class="col text-start">
                                                    <span class="fw-bold">वार्षिक प्रतिवेदन अवधि वर्ष :-</span>

                                                    <span class="fw-bold">2023-2024</span>
                                                </div>

                                                <div class="col text-end">
                                                    <span class="fw-bold">आवेदन दिनाँक:-</span>
                                                    <span class="fw-bold">09-03-2024</span>
                                                </div>
                                                <div class="col-md-12 mb-5">
                                                    <h4 class="text-center mt-3 font-bold"><u>: : Work Expenditure  : :</u></h4>
                                                    <h6 class="text-center mt-2 font-bold"><u>: : कार्य व्यय की जानकारी : :</u></h6>
                                                </div>
                                                <table class="table table-bordered modal-table table-st fs-5 ms-3 me-2">
                                                    <tr class="text-center">

                                                        <th>OIS Code<br />
                                                            OIS कोड</th>
                                                        <td class="text-center ">Delhi Public School_44561</td>
                                                        <th>Project Code<br />
                                                            परियोजना क्रमांक</th>
                                                        <td class="text-center ">P00019</td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th>Project Date<br />
                                                            परियोजना दिनांक</th>
                                                        <td class="text-center ">22/05/2023</td>

                                                        <th>Work Category<br />
                                                            कार्य की श्रेणी</th>
                                                        <td class="text-center ">स्कूल निर्माण</td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th>Milestone<br />
                                                            माइल स्टोन</th>
                                                        <td>Foundation</td>
                                                        <th>Installment<br />
                                                            किस्त</th>
                                                        <td>1st Installment</td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th>Work Subcategory<br />
                                                            कार्य उपश्रेणी</th>
                                                        <td class="text-center ">स्कूल मार्ग निर्माण	</td>
                                                        <th>Estimated Budget Cost(In Rs)<br />
                                                            अनुमानित बजट</th>
                                                        <td class="text-center ">60000</td>
                                                    </tr>
                                                    <tr class="text-center">
                                                        <th>1st Installment Utilization Amount<br />
                                                            पहली किस्त उपयोग राशि</th>
                                                        <td>5000</td>
                                                        <th>Remaining Amount<br />
                                                            बाकी अमाउंट</th>
                                                        <td>55000</td>

                                                    </tr>
                                                    <%--   <tr>
                               <th>Work Subcategory<br />
कार्य उपश्रेणी</th>
                               <td class="text-center ">इमारत मरम्मत</td>  
                               <th>Estimated Budget Cost(In Rs)<br />
अनुमानित बजट</th>
                               <td class="text-center ">60000</td>
                               
                           </tr>
                           <tr ><th>Approved Cost(Approx. In Rs)<br />
स्वीकृत राशि</th><td class="text-center ">60000</td><th>Total Expense Amount<br />
कुल व्यय राशि</th><td class="text-center ">60000</td></tr>--%>
                                                </table>
                                            </div>



                                            <div class="row ms-0 me-0">
                                                <div class="col-12">

                                                    <h4 class="text-center font-bold">: : <u>Self Verified/
स्वयं सत्यापित</u> : :</h4>
                                                </div>

                                                <div class="col-12">
                                                    <p class="font-15 text-justify text-danger">
                                                        Certified That I Have Personally Verified That The Work For Which The Grant-In-Aid Was Sanctioned Has Been Duly Completed And That I Have Made The Following Checks To See That The Money Is Actually Utilized For The Purpose For Which It Was Approved.<br />
                                                        प्रमाणित किया जाता है कि मेरे द्वारा स्वयं सत्यापित किया गया हैं की  जिस कार्य के लिए अनुदान सहायता स्वीकृत की गई थी, उसे विधिवत पूरा किया गया है, और मैंने यह देखने के लिए निम्नलिखित जांच की है कि पैसा वास्तव में उसी उद्देश्य के लिए उपयोग किया गया था जिसके लिए इसे मंजूरी दी गई थी।

                                                    </p>
                                                </div>
                                                <div class="col-md-7"></div>

                                                <div class="col-md-5 justify-content-end">
                                                    <div class="text-end d-flex flex-column gap-3 justify-content-end">
                                                        <h6><b>अधिकारी एवं पदेन प्रबन्ध संचालक........................</b></h6>
                                                        <h6><b>स्कूल शिक्षा विभाग..........................................</b></h6>
                                                        <h6><b>Bhopal- ( BPL ) (म.प्र.)
......................................</b></h6>
                                                        <%-- <h6><b>पद........................................................</b></h6>--%>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <br />

                        <br />
                        <br />
                        <br />


                    </fieldset>
                </div>
                <div class="modal-footer justify-content-center">
                    <button type="button" class="btn btn-primary" onclick="printModalContent('staticBackdrop')">Print</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>

                </div>
            </div>
        </div>


    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../../img/CasteCertificate1.jpg';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>

    <script>
        function printModalContent(modalId) {
            var modalContent = document.querySelector('#' + modalId + ' .modal-body').cloneNode(true);
            document.body.innerHTML = modalContent.innerHTML
            window.print();
            window.location.href = "Rpt_WorkExpenditure.aspx";
        }
        document.addEventListener('keydown', function (event) {
            if (event.ctrlKey && event.key === 'p') {
                // Prevent default behavior of Ctrl+P (opening print dialog)
                event.preventDefault();
                // Print the content of the active modal
                var activeModal = document.querySelector('.modal.show');
                if (activeModal) {
                    var modalId = activeModal.getAttribute('id');
                    printModalContent(modalId);
                }
            }
        });

    </script>
</asp:Content>

