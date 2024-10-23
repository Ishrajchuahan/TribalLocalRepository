﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="PromotionWithTransfer.aspx.cs" Inherits="mis_Transaction_PromotionWithTransfer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        /* #EmployeeDetails1 {
            display: none;
        }*/

        #EmployeeDetails2 {
            display: none;
        }

        #showsavebtn {
            display: none;
        }

        #note {
            color: red;
        }

        th {
            white-space: nowrap;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">

<%--        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">Promotion With Transfer Order Reports<br />
                    स्थानांतरण आदेश रिपोर्ट के साथ पदोन्नति</h4>
            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=Promotion" title="click to go on">Promotion</a></li>
                        <li class="breadcrumb-item active">Promotion With Transfer Order Reports</li>
                    </ol>
                </div>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">--%>

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
                        <a href="#Promotion" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                            <span>Promotion</span></a>
                    </li>
                    <li class="breadcrumb-item"><span>Promotion With Transfer Order Reports</span></li>
                </ol>
            </div>
        </div>
    </div>
</div>


<%--  <div class="row page-titles mb-4">--%>

<div class="card card-border-primary">
    <div class="card-header">
        <div class="row">
            <div class="col-lg-12">
                <h5 class="card-title">Promotion With Transfer Order Reports /
     स्थानांतरण आदेश रिपोर्ट के साथ पदोन्नति
                </h5>
            </div>
        </div>
    </div>
  <%--  <div class="card-body">
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
                          <a href="#Promotion" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                              <span>Promotion</span></a>
                      </li>
                      <li class="breadcrumb-item"><span>Promotion Hold Orders</span></li>
                  </ol>
              </div>
          </div>
      </div>
  </div>--%>


  <%--  <div class="row page-titles mb-4">--%>

<%--  <div class="card card-border-primary">
      <div class="card-header">
          <div class="row">
              <div class="col-lg-12">
                  <h5 class="card-title">Promotion Hold Orders/
              पदोन्नति होल्ड आदेश
                  </h5>
              </div>
          </div>
      </div>--%>
      <div class="card-body">
                <div>
                    <fieldset>
                        <legend>Promotion With Transfer Order / स्थानांतरण आदेश के साथ पदोन्नति</legend>
                        <div class="row">
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>From Date <br /> दिनांक से <span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div>
                            <div class="col-md-3">
                                <div class="form-group">
                                    <label>To Date <br /> दिनांक तक <span style="color: red">*</span></label>
                                    <input name="ename" type="date" class="form-control" autocomplete="off" />
                                </div>
                            </div></div>
                               <hr />
   <div class="row align-items-end">
       <div class="col-md-12">
           <div class="form-group">
               <%--   <input type="button" value="Search" class=" btn w-lg btn-success btn-border" id="searchButton" onclick="checkDropdown(); return false;" />--%>

                 <asp:Button runat="server" class="btn w-lg btn-success btn-border" OnClick="btnSearch_Click" Text="Search" ID="btnSearch" />
                                
             <%--  <button type="button" class=" btn w-lg btn-success btn-border" onclick="Hideshow()" validationgroup="a">Search</button>--%>
               <a href="PromotionWithTransfer.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
           </div>
       </div>






                            <%--<div class="col-md-3 mt-4">
                                <div class="form-group">
                                    <%--<button type="button" class="btn btn-success btn-rounded" onclick="checkDropdown()">Search</button>--%>
                                  <%--  <asp:Button runat="server" class="btn btn-success btn-rounded" OnClick="btnSearch_Click" Text="Search" ID="btnSearch" />
                                    <a href="Promotion.aspx" class=" btn btn-danger btn-rounded">Clear</a>
                                </div>
                            </div>--%>
                        </div>
                    </fieldset>
                </div>

                <div id="EmployeeDetails1" runat="server" visible="false">
                    <fieldset>
                        <legend>Employee Details / कर्मचारी का विवरण</legend>

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
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">

                                    <table class="table table-bordered text-center">
                                        <thead>
                                            <tr>
                                                <th>Sr.No.<br />
                                                    सरल क्र.</th>
                                                <%--<th>Action</th>--%>
                                                <th>Employee ID-Name<br />
                                                    कर्मचारी आईडी-नाम</th>
                                                <th>Old Payment Authority<br />
                                                    पुराना भुगतान प्राधिकरण</th>
                                                <th>Old School<br />
                                                    पुराना स्कूल</th>
                                                <th>New Payment Authority<br />
                                                    नया भुगतान प्राधिकरण</th>
                                                <th>New School<br />
                                                    नया स्कूल</th>
                                                <th>Previous Designation<br />
                                                    पूर्व पदनाम</th>
                                                <th>New Designation<br />
                                                    नया पदनाम</th>
                                                <th>Transfer order No.<br />
                                                    स्थानांतरण आदेश संख्या</th>
                                                <th>Transfer order Issued By Employee<br />
                                                    कर्मचारी द्वारा जारी स्थानांतरण आदेश</th>
                                                <th>Relieving order No.<br />
                                                    कार्यमुक्ति आदेश क्रमांक</th>
                                                <th>Date of Relieving<br />
                                                    कार्यमुक्ति की तिथि</th>
                                                <th>Request Date<br />
                                                    अनुरोध की तिथि</th>
                                                <th>Status<br />
                                                    स्थिति</th>

                                            </tr>
                                        </thead>
                                        <tr>
                                            <th>1</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AV2681-Ashok Kumar</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>GOVT HS Mayo (2307554826)</td>
                                            <td>BADNAGAR, PRINCIPAL GOVT. SCHOOL, NAGDA (1362003016)</td>
                                            <td>BGPS JALOD, SANJAR (2307154106)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5212</td>
                                            <td>JD Gwalior</td>
                                            <td>377</td>
                                            <td>7/12/2023</td>
                                            <td>7/11/2023</td>
                                            <td>Approve</td>
                                        </tr>
                                        <tr>
                                            <th>2</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AJ9973-Giriraj Kishir</td>
                                            <td>BADNAGAR, PRINCIPAL GOVT. SCHOOL, NAGDA (1362003016)</td>
                                            <td>GOVT HS Mayo (2307554826)</td>
                                            <td>HSS MADHUSUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>GOVT HS UKAVAD (2307091906)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5222</td>
                                            <td>JD Gwalior</td>
                                            <td>547</td>
                                            <td>25/05/2024</td>
                                            <td>25/04/2024</td>
                                            <td>Approve</td>
                                        </tr>
                                        <tr>
                                            <th>3</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AI5496-Rodu Ram</td>
                                            <td>HS RADHAGORI RAGHOGARH (1362003016)</td>
                                            <td>RPVV School (2307091906)</td>
                                            <td>HSS SUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>Doon School Dehradun (2370544785)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5512</td>
                                            <td>JD Gwalior</td>
                                            <td>857</td>
                                            <td>14/05/2024</td>
                                            <td>12/04/2024</td>
                                            <td>Hold</td>
                                        </tr>
                                        <tr>
                                            <th>4</th>
                                            <%--<td>
                                                <input id="checkbox1" onclick="showhidesavebtn()" type="checkbox" /></td>--%>
                                            <td>AJ5562-Chanchal Kumar</td>
                                            <td>HSS SUDANGARH RAGHOGARH (1362003016)</td>
                                            <td>Doon School Dehradun (2370544785)</td>
                                            <td>HS RADHAGORI RAGHOGARH (1362003016)</td>
                                            <td>RPVV School (2307091906)</td>
                                            <td>Prathmik Shikshak</td>
                                            <td>Madhyamik Shikshak</td>
                                            <td>5278</td>
                                            <td>JD Gwalior</td>
                                            <td>884</td>
                                            <td>18/04/2024</td>
                                            <td>18/03/2024</td>
                                            <td>Hold</td>
                                        </tr>

                                    </table>
                                </div>
                            </div>
                            <%--<div class="col-md-12">
                                <div>
                                    <p id="note"><b>Approve The Application After Clicking On The Checkbox/चेक बॉक्स पर क्लिक करने के उपरांत आवेदन का अनुमोदन करें |</b></p>
                                </div>
                                <br />
                            </div>--%>
                            <div class="col-md-12" id="showsavebtn">
                                <div class="row">
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order No. / आदेश नंबर<span style="color: red">*</span></label>

                                            <input name="ename" disabled="disabled" placeholder="58965" type="text" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Order Date / आदेश दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Effective Date / प्रभावी दिनांक<span style="color: red">*</span></label>
                                            <input name="ename" type="date" class="form-control" autocomplete="off" />
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="form-group">
                                            <label>Document / दस्तावेज़<span style="color: red">*</span></label>
                                            <input name="ename" type="file" class="form-control" autocomplete="off" placeholder="Enter Basic Salary" />
                                        </div>
                                    </div>
                                    <div class="col-md-2 mt-2">
                                        <div class="form-group">
                                            <button type="button" class="Alert-Save btn btn-success btn-rounded w-100 btn-block">Save</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </fieldset>
                </div>
                <div id="EmployeeDetails2">
                    <fieldset>
                        <legend>Order Details</legend>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <th>Sr.No.</th>
                                            <th>Order No.</th>
                                            <th>Order Date</th>
                                            <th>Effective Date</th>
                                            <th>Generate Letter</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>58965</td>
                                            <td>04/04/2023</td>
                                            <td>05/02/2023</td>
                                            <td>
                                                <button onclick="openPDF()" type="button" class=" btn "><i class="fa fa-download dnldIcon"></i></button>
                                            </td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                        </div>
                        
                    </fieldset>
                    
                </div>
                <fieldset>

                    <legend>Description / विवरण</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Division Name </strong>from the dropdown and the data will be populated from the <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>District Name </strong>from the dropdown and the data will be populated from the <strong>District Master</strong> and data cascade from <strong>Division Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Type</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Type </strong>from the dropdown and the data will be populated from the <strong>Designation Type Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Designation Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Designation Name </strong>from the dropdown and the data will be populated from the <strong>Designation Name Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Employee Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Employee Name </strong>from the dropdown and the data will be populated from the <strong>Employee Master</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Search </strong>
                                    <ul>
                                        <li>User should be able to click on Search button.</li>
                                        <li>After clicking on Search button the School details will show on the screen according to the selected field.</li>
                                    </ul>
                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button.</li>
                                        <li>After clicking on Clear button all the dropdown should be Clear or reload the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Excel</strong>
                                    <ul>
                                        <li>Excel button should be visible and user should be able to click.</li>
                                        <li>After clicking on Excel button grid view data export in Excel.</li>
                                    </ul>
                                </li>
                                <li><strong>PDF</strong>
                                    <ul>
                                        <li>PDF button should be visible and user should be able to click.</li>
                                        <li>After clicking on PDF button grid view data export in PDF.</li>
                                    </ul>
                                </li>
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>
                                    </ul>
                                </li>
                                <li><strong>Action</strong>
                                    <ul>
                                        <li>To approve the application, after clicking on the checkbox, the user can fill Order details like <strong>Order number(Order number is auto generated), Order Date, and Document</strong>.</li>
                                    </ul>
                                </li>
                                <li><strong>Save</strong>
                                    <ul>
                                        <li>User Can Click Save Button.</li>
                                        <li>On save button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!")</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                    </ul>
                                </li>
                                <li><strong>Generate Letter</strong>
                                    <ul>
                                        <li>User should be able to click on Document Icon.</li>
                                        <li>After clicking on the Document Icon a <strong>Promotion Letter</strong> will open in another tab.</li>
                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>
            </div>
      </div></div>
           
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        function HideShow() {

            var x = document.getElementById("EmployeeDetails1");
            if (x.style.display === "none") {
                x.style.display = "block";
            } else {
                x.style.display = "block";
            }
        }
    </script>--%>
    <script>
        function openPDF() {
            // Replace 'your-pdf-file.pdf' with the actual path to your PDF file
            var pdfUrl = '../Document/Promotion-1.pdf';
            // Open the PDF in a new window or tab
            window.open(pdfUrl, '_blank');
        }
    </script>

    <script>
        function showhidesavebtn() {
            var checkbox1 = document.getElementById("checkbox1");
            var checkbox2 = document.getElementById("checkbox2");
            var showsavebtn = document.getElementById("showsavebtn");
            if (checkbox1.checked || checkbox2.checked) {
                showsavebtn.style.display = "block"
            }
            else if (checkbox2.checked === false && checkbox1.checked === false) {
                showsavebtn.style.display = "none"
            }
            else {
                showsavebtn.style.display = "block"
            }
        }
    </script>
    <script>

</script>
    <script>
        debugger;
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message
                $('.Alert-Save').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to save this record ?",
                        type: 'warning',
                        showCancelButton: true,
                        confirmButtonColor: '#3085D6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'Yes'
                        // animation: false,
                        // customClass: {
                        //     popup: 'animated tada'
                        // }
                    }).then((result) => {
                        if (result.value) {
                            Swal.fire({
                                type: 'success',
                                title: 'Success!',
                                text: 'Record Saved Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                            var x = document.getElementById("EmployeeDetails2");
                            if (x.style.display === "none") {
                                x.style.display = "block";
                            } else {
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
    </script>
</asp:Content>

