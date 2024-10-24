﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="NocSendByDistrictCollectorJD.aspx.cs" Inherits="mis_HRMS_NocSendByDistrictCollectorJD" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        th {
            white-space: nowrap;
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
                            <a href="#EmployeeCompassionate" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('HRMS')">
                                <span>Compassionate Appointment
                                </span></a>
                        </li>
                        <li class="breadcrumb-item"><span>NOC Report was sent to the District Collector at the J.D. level</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="col-md-5" style="position: relative; bottom: 20px;">
        <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif; margin-bottom: -0.2rem;">
            <img src="../../img/Anukampa Logo.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
            </u>
        </p>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-12">
                    <h5 class="card-title">NOC Report was sent to the District Collector at the J.D. level
                     <br />
                        जे.डी. लेवल पर जिला कलेक्टर को एन.ओ.सी. रिपोर्ट भेजी गई </h5>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div id="FisrtTimedata">
                <fieldset>
                    <legend>NOC Sent to District Collector / एन.ओ.सी. जिला कलेक्टर को भेजी गई</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>District <br /> जिला <span style="color: red">*</span></label>
                                <asp:DropDownList runat="server" CssClass="form-select form-control" ID="ddlDistrict">
                                    <asp:ListItem Text="selected" Value="0">--Select--</asp:ListItem>
                                    <asp:ListItem Value="1">Bhopal</asp:ListItem>
                                    <asp:ListItem Value="2">Raisen</asp:ListItem>
                                    <asp:ListItem Value="3">Rajgarh</asp:ListItem>
                                    <asp:ListItem Value="4">Sehore</asp:ListItem>
                                    <asp:ListItem Value="5">Vidisha</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <hr />
                        <div class="row ">
                            <div class="col-md-12">
                                <button id="toggleButton4" type="button" class=" fw-bold btn w-lg btn-outline-success btn-border">Search</button>
                                <a href="NocSendByDistrictCollectorJD.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Details / विवरण</legend>
                    <div class="row justify-content-end">
                        <div class="col-md-3 text-end">
                            <div class="form-group">
                                <button class="btn btn-info btn-rounded ">Excel</button>
                                <button class="btn btn-info btn-rounded ">PDF</button>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table table-bordered text-center table-hover" id="GrdSchoolDetails" style="width: 100%; border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th scope="col">Deceased Employee Officer<br />
                                                दिवंगत कर्मचारी अधिकरी </th>
                                            <th scope="col">Designation<br />
                                                पद</th>
                                            <th scope="col">Date of Death<br />
                                                मृत्यु  दिनांक</th>
                                            <th scope="col">Applicant Name<br />
                                                आवेदक का नाम</th>
                                            <th scope="col">Gender<br />
                                                लिंग</th>
                                            <th scope="col">Class<br />
                                                वर्ग</th>
                                            <th scope="col">Applicant D.O.B.<br />
                                                आवेदक की जन्म तिथि </th>
                                            <th scope="col">Mobile No.<br />
                                                मोबाईल  नंबर</th>
                                            <th scope="col">Applicant's Relation with Deceased Teacher<br />
                                                आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                            <th scope="col">Applicant Marital Status<br />
                                                आवेदक की वैवाहिक स्थिति</th>
                                            <th scope="col">Selected Option of Post for Appointment<br />
                                                नियुक्ति हेतु पद का चयनित विकल्प</th>
                                            <th scope="col">Educational Qualification of the Applicant<br />
                                                आवेदक की शैक्षणिक योग्यता </th>
                                            <th scope="col">Status of Passing Primary Teacher Eligibility<br />
                                                Test for Primary Teacher<br />
                                                प्राथमिक शिक्षक हेतु प्राथमिक  शिक्षक पात्रता  परीछा उत्तीर्ण की स्थिति</th>
                                            <th scope="col">Action<br />
                                                कार्यवाही करे </th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>Puran Singh Kushawah</td>
                                            <td>Asstt Teacher(LDT)</td>
                                            <td>28/12/2021</td>
                                            <td>BRAJESH KUSHVAH</td>
                                            <td>Male</td>
                                            <td>S.C.</td>
                                            <td>10/08/1997</td>
                                            <td>70477701125</td>
                                            <td>Son</td>
                                            <td>अविवाहित  </td>
                                            <td>शैक्षणिक संवर्ग </td>
                                            <td>12 PCM B SC COMPUTER SCIENCE</td>
                                            <td>नहीं </td>
                                            <td>
                                                <button type="button" onclick="toggleRegistrationUpdate()" class="btn btn-success">Action</button></td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>Satendra Bahadur Singh</td>
                                            <td>Madhyami8k Shaishak</td>
                                            <td>15/04/2022</td>
                                            <td>SHAKSHAM SHINGH </td>
                                            <td>Male</td>
                                            <td>S.C.</td>
                                            <td>12/12/1996</td>
                                            <td>70477701125</td>
                                            <td>Son</td>
                                            <td>अविवाहित  </td>
                                            <td>लिपिकीय संवर्ग  </td>
                                            <td>GRADUATE</td>
                                            <td>नहीं </td>
                                            <td>
                                                <button type="button" onclick="toggleRegistrationUpdate()" class="btn btn-success">Action</button></td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>Achhe Lal patel </td>
                                            <td>Asstt Grade-2</td>
                                            <td>16/01/2023</td>
                                            <td>PRAMOD KUMAR PATEL</td>
                                            <td>Male</td>
                                            <td>S.C.</td>
                                            <td>02/10/2000</td>
                                            <td>70477701125</td>
                                            <td>Son</td>
                                            <td>अविवाहित  </td>
                                            <td>लिपिकीय संवर्ग  </td>
                                            <td>GRADUATE</td>
                                            <td>नहीं </td>
                                            <td>
                                                <button type="button" onclick="toggleRegistrationUpdate()" class="btn btn-success">Action</button>
                                            </td>
                                        </tr>
                                    </tbody>
                                    <tfoot>
                                    </tfoot>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
            </div>
            <div style="display: none" id="divRegisrationUpdate">
                <fieldset>
                    <legend>Details of Deceased Employee / दिवंगत कर्मचारी का विवरण </legend>
                    <div class="row align-items-end">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Employee Code<br />
                                    कर्मचारी कोड : <span style="color: Red;">*</span></label>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtU_Id" type="text" value="AK7328" maxlength="6" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtU_Id" disabled="disabled"
                                    class="form-control vd_Required m-0" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Name of Deceased Employee<br />
                                    दिवंगत कर्मचारी का नाम : <span style="color: Red;">*</span></label>

                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtName" type="text"
                                    value="Phul Singh Kushawah" maxlength="20" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtName"
                                    disabled="disabled" class="form-control vd_Required" onkeypress="return CharspaceOnly(event)" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Gender<br />
                                    लिंग : <span style="color: Red;">*</span></label>
                                <%--  <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">
                                            <asp:ListItem Selected="True" Value="1">Male </asp:ListItem>
                                            <asp:ListItem Value="2">Female </asp:ListItem>

                                        </asp:DropDownList>--%>

                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Male" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Caste<br />
                                    जाति : <span style="color: Red;">*</span></label>
                                <%--<asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">
                                            <asp:ListItem Value="0">- Select - </asp:ListItem>
                                            <asp:ListItem Value="1">SC </asp:ListItem>
                                            <asp:ListItem Value="2">ST </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="3">OBC </asp:ListItem>
                                            <asp:ListItem Value="4">General </asp:ListItem>
                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="SC" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Last Posting District<br />
                                    अंतिम पोस्टिंग जिला : <span style="color: Red;">*</span></label>


                                <%-- <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">
                                            <asp:ListItem Value="0">Select </asp:ListItem>
                                            <asp:ListItem Value="51">Agar Malwa </asp:ListItem>
                                            <asp:ListItem Value="49">Alirajpur </asp:ListItem>
                                            <asp:ListItem Value="47">Anuppur </asp:ListItem>
                                            <asp:ListItem Value="46">Ashoknagar </asp:ListItem>
                                            <asp:ListItem Value="45">Balaghat </asp:ListItem>
                                            <asp:ListItem Value="28">Barwani </asp:ListItem>
                                            <asp:ListItem Value="35">Betul </asp:ListItem>
                                            <asp:ListItem Value="3">Bhind </asp:ListItem>
                                            <asp:ListItem Value="32">Bhopal </asp:ListItem>
                                            <asp:ListItem Value="48">Burhanpur </asp:ListItem>
                                            <asp:ListItem Value="9">Chhatarpur </asp:ListItem>
                                            <asp:ListItem Value="43">Chhindwara </asp:ListItem>
                                            <asp:ListItem Value="12">Damoh </asp:ListItem>
                                            <asp:ListItem Value="5">Datia </asp:ListItem>
                                            <asp:ListItem Value="23">Dewas </asp:ListItem>
                                            <asp:ListItem Value="25">Dhar </asp:ListItem>
                                            <asp:ListItem Value="41">Dindori </asp:ListItem>
                                            <asp:ListItem Value="7">Guna </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Gwalior </asp:ListItem>
                                            <asp:ListItem Value="36">Harda </asp:ListItem>
                                            <asp:ListItem Value="26">Indore </asp:ListItem>
                                            <asp:ListItem Value="39">Jabalpur </asp:ListItem>
                                            <asp:ListItem Value="24">Jhabua </asp:ListItem>
                                            <asp:ListItem Value="38">Katni </asp:ListItem>
                                            <asp:ListItem Value="29">Khandwa </asp:ListItem>
                                            <asp:ListItem Value="27">Khargone </asp:ListItem>
                                            <asp:ListItem Value="42">Mandla </asp:ListItem>
                                            <asp:ListItem Value="19">Mandsaur </asp:ListItem>
                                            <asp:ListItem Value="2">Morena </asp:ListItem>
                                            <asp:ListItem Value="37">Narmadapuram </asp:ListItem>
                                            <asp:ListItem Value="40">Narsinghpur </asp:ListItem>
                                            <asp:ListItem Value="18">Neemuch </asp:ListItem>
                                            <asp:ListItem Value="52">Niwari </asp:ListItem>
                                            <asp:ListItem Value="10">Panna </asp:ListItem>
                                            <asp:ListItem Value="34">Raisen </asp:ListItem>
                                            <asp:ListItem Value="30">Rajgarh </asp:ListItem>
                                            <asp:ListItem Value="20">Ratlam </asp:ListItem>
                                            <asp:ListItem Value="14">Rewa </asp:ListItem>
                                            <asp:ListItem Value="11">Sagar </asp:ListItem>
                                            <asp:ListItem Value="13">Satna </asp:ListItem>
                                            <asp:ListItem Value="33">Sehore </asp:ListItem>
                                            <asp:ListItem Value="44">Seoni </asp:ListItem>
                                            <asp:ListItem Value="16">Shahdol </asp:ListItem>
                                            <asp:ListItem Value="22">Shajapur </asp:ListItem>
                                            <asp:ListItem Value="1">Sheopur </asp:ListItem>
                                            <asp:ListItem Value="6">Shivpuri </asp:ListItem>
                                            <asp:ListItem Value="17">Sidhi </asp:ListItem>
                                            <asp:ListItem Value="50">Singrauli </asp:ListItem>
                                            <asp:ListItem Value="8">Tikamgarh </asp:ListItem>
                                            <asp:ListItem Value="21">Ujjain </asp:ListItem>
                                            <asp:ListItem Value="15">Umaria </asp:ListItem>
                                            <asp:ListItem Value="31">Vidisha </asp:ListItem>

                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Vidisha" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />


                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Deceased Employee Cadre<br />
                                    दिवंगत कर्मचारी कैडर: <span style="color: Red;">*</span></label>


                                <%--  <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">
                                            <asp:ListItem Value="0">-Select- </asp:ListItem>
                                            <asp:ListItem Value="1">Regular Class- I  </asp:ListItem>
                                            <asp:ListItem Value="2">Regular Class- II  </asp:ListItem>
                                            <asp:ListItem Value="3">Regular Class- III  </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="4">Regular Class- IV  </asp:ListItem>
                                            <asp:ListItem Value="5">Adhyapak/Shiksha Karmi Cadre </asp:ListItem>
                                            <asp:ListItem Value="6">Contingency peon </asp:ListItem>
                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="Regular Class- III " maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Deceased Officer/Employee Designation<br />
                                    दिवंगत अधिकारी/कर्मचारी पदनाम : <span style="color: Red;">*</span></label>
                                <%-- <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">
                                            <asp:ListItem Value="36">Accountant </asp:ListItem>
                                            <asp:ListItem Value="103">Accounts Officer </asp:ListItem>
                                            <asp:ListItem Value="149">Accounts Officer (Class-I) </asp:ListItem>
                                            <asp:ListItem Value="150">Accounts Officer (Class-II) </asp:ListItem>
                                            <asp:ListItem Value="3">Additional Director </asp:ListItem>
                                            <asp:ListItem Value="104">Additional Mission Director </asp:ListItem>
                                            <asp:ListItem Value="24">Adhyapak </asp:ListItem>
                                            <asp:ListItem Value="112">ADMINSTRATOR </asp:ListItem>
                                            <asp:ListItem Value="571">ADPC (RMSA) </asp:ListItem>
                                            <asp:ListItem Value="151">Agri Asstt(Upper Grade) </asp:ListItem>
                                            <asp:ListItem Value="152">Agriculture Asstt (Adarsh HSS) </asp:ListItem>
                                            <asp:ListItem Value="153">Agriculture Asstt (Upper Grade) </asp:ListItem>
                                            <asp:ListItem Value="154">Anchalik Adhikari </asp:ListItem>
                                            <asp:ListItem Value="122">Anusandhan Officer Tribal </asp:ListItem>
                                            <asp:ListItem Value="125">Anusandhan Sahayak </asp:ListItem>
                                            <asp:ListItem Value="264">APC (IED) </asp:ListItem>
                                            <asp:ListItem Value="570">APC (RMSA) </asp:ListItem>
                                            <asp:ListItem Value="259">APC Academic </asp:ListItem>
                                            <asp:ListItem Value="257">APC E&amp;R </asp:ListItem>
                                            <asp:ListItem Value="63">APC Finance </asp:ListItem>
                                            <asp:ListItem Value="258">APC GENDER </asp:ListItem>
                                            <asp:ListItem Value="256">APC Mobilization </asp:ListItem>
                                            <asp:ListItem Value="254">Ardh Kushal Karigar(SSW) </asp:ListItem>
                                            <asp:ListItem Value="155">Area Organisor  </asp:ListItem>
                                            <asp:ListItem Value="156">Area Organisor (Culture) </asp:ListItem>
                                            <asp:ListItem Value="97">Artist </asp:ListItem>
                                            <asp:ListItem Value="79">AS Supervisor </asp:ListItem>
                                            <asp:ListItem Value="157">Ashram Supdt </asp:ListItem>
                                            <asp:ListItem Value="37">Assistant </asp:ListItem>
                                            <asp:ListItem Value="158">Assistant (Audio Visual) </asp:ListItem>
                                            <asp:ListItem Value="68">Assistant Engineer (Civil Works) </asp:ListItem>
                                            <asp:ListItem Value="159">Assistant Professor </asp:ListItem>
                                            <asp:ListItem Value="81">Assistant Professor </asp:ListItem>
                                            <asp:ListItem Value="82">Assistant Statistical Officer </asp:ListItem>
                                            <asp:ListItem Value="107">Asst.Manager </asp:ListItem>
                                            <asp:ListItem Value="160">Asstt Calculator </asp:ListItem>
                                            <asp:ListItem Value="161">Asstt Commissioner (Tribal Welf Cat-II) </asp:ListItem>
                                            <asp:ListItem Value="162">Asstt Commissioner( 1st Category) </asp:ListItem>
                                            <asp:ListItem Value="6">Asstt Director </asp:ListItem>
                                            <asp:ListItem Value="163">Asstt Director(Ministreal) </asp:ListItem>
                                            <asp:ListItem Value="164">Asstt Director(Plan) </asp:ListItem>
                                            <asp:ListItem Value="165">Asstt Director(Sports) </asp:ListItem>
                                            <asp:ListItem Value="166">Asstt Draftsman </asp:ListItem>
                                            <asp:ListItem Value="40">Asstt Grade-1 </asp:ListItem>
                                            <asp:ListItem Value="41">Asstt Grade-2 </asp:ListItem>
                                            <asp:ListItem Value="42">Asstt Grade-3 </asp:ListItem>
                                            <asp:ListItem Value="167">Asstt Libarariran </asp:ListItem>
                                            <asp:ListItem Value="168">Asstt Libarariran(Gurukul) </asp:ListItem>
                                            <asp:ListItem Value="169">Asstt PRO </asp:ListItem>
                                            <asp:ListItem Value="96">Asstt Professor PE </asp:ListItem>
                                            <asp:ListItem Value="170">Asstt Research Officer </asp:ListItem>
                                            <asp:ListItem Value="45">Asstt Supdt </asp:ListItem>
                                            <asp:ListItem Value="171">Asstt Supdt (Jiwaji Vedshala) </asp:ListItem>
                                            <asp:ListItem Value="100">Asstt Teacher (Science) </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="22">Asstt Teacher(LDT) </asp:ListItem>
                                            <asp:ListItem Value="121">Astt. Comm. Niyojan  (Tribal Welfare) </asp:ListItem>
                                            <asp:ListItem Value="115">Astt. Comm. Tribal </asp:ListItem>
                                            <asp:ListItem Value="124">Astt. Statical Officer Tribal </asp:ListItem>
                                            <asp:ListItem Value="141">Astt. Technician </asp:ListItem>
                                            <asp:ListItem Value="136">Astt.Add. Development Comm. Tribal(A.A.D.C.) </asp:ListItem>
                                            <asp:ListItem Value="113">B.E.O. </asp:ListItem>
                                            <asp:ListItem Value="66">BAC </asp:ListItem>
                                            <asp:ListItem Value="172">Balwadi Teacher </asp:ListItem>
                                            <asp:ListItem Value="69">BGC (Block Gender Coordinator </asp:ListItem>
                                            <asp:ListItem Value="137">Block Development Officer(BDO) </asp:ListItem>
                                            <asp:ListItem Value="267">Block MIS Coordinator </asp:ListItem>
                                            <asp:ListItem Value="268">Block MIS Coordinator </asp:ListItem>
                                            <asp:ListItem Value="271">Block MIS Coordinator </asp:ListItem>
                                            <asp:ListItem Value="51">Book Lifter </asp:ListItem>
                                            <asp:ListItem Value="65">BRC </asp:ListItem>
                                            <asp:ListItem Value="173">Calculator </asp:ListItem>
                                            <asp:ListItem Value="252">Calculator </asp:ListItem>
                                            <asp:ListItem Value="587">Career Counselor </asp:ListItem>
                                            <asp:ListItem Value="175">Career Master </asp:ListItem>
                                            <asp:ListItem Value="174">Carpentor </asp:ListItem>
                                            <asp:ListItem Value="176">Cashier </asp:ListItem>
                                            <asp:ListItem Value="146">CEO ZP </asp:ListItem>
                                            <asp:ListItem Value="177">Chief Calculator </asp:ListItem>
                                            <asp:ListItem Value="134">Choukidar </asp:ListItem>
                                            <asp:ListItem Value="138">Circle Organiser(Tribal) </asp:ListItem>
                                            <asp:ListItem Value="178">Circle Organisor (SC) </asp:ListItem>
                                            <asp:ListItem Value="179">Circle Organisor (Social Work) </asp:ListItem>
                                            <asp:ListItem Value="88">Cleaner </asp:ListItem>
                                            <asp:ListItem Value="43">Clerk-Part Time </asp:ListItem>
                                            <asp:ListItem Value="302">Cluster Academic Coordinator </asp:ListItem>
                                            <asp:ListItem Value="180">Coach -Sport Campus </asp:ListItem>
                                            <asp:ListItem Value="145">Collector </asp:ListItem>
                                            <asp:ListItem Value="1">Commissioner </asp:ListItem>
                                            <asp:ListItem Value="251">Computer </asp:ListItem>
                                            <asp:ListItem Value="181">Computer </asp:ListItem>
                                            <asp:ListItem Value="109">Consultant </asp:ListItem>
                                            <asp:ListItem Value="132">COOK </asp:ListItem>
                                            <asp:ListItem Value="101">Coordinator </asp:ListItem>
                                            <asp:ListItem Value="20">Craft Teacher </asp:ListItem>
                                            <asp:ListItem Value="52">Daftari </asp:ListItem>
                                            <asp:ListItem Value="76">Data Entry Operator </asp:ListItem>
                                            <asp:ListItem Value="266">DDO </asp:ListItem>
                                            <asp:ListItem Value="5">Deputy Director </asp:ListItem>
                                            <asp:ListItem Value="182">Deputy Director (Plan) </asp:ListItem>
                                            <asp:ListItem Value="183">Deputy Director(Accounts) </asp:ListItem>
                                            <asp:ListItem Value="184">Deputy Director(Library) </asp:ListItem>
                                            <asp:ListItem Value="185">Deputy Director(Ministreal) </asp:ListItem>
                                            <asp:ListItem Value="2">Director </asp:ListItem>
                                            <asp:ListItem Value="9">Director (ELTI) </asp:ListItem>
                                            <asp:ListItem Value="186">Director (TRI) </asp:ListItem>
                                            <asp:ListItem Value="10">Director(SISE) </asp:ListItem>
                                            <asp:ListItem Value="114">District Adult Education Officer </asp:ListItem>
                                            <asp:ListItem Value="102">District Education Officer(DEO) </asp:ListItem>
                                            <asp:ListItem Value="187">District Organisor (SC Welfare) </asp:ListItem>
                                            <asp:ListItem Value="128">District Organisor (Tribal Welfare) </asp:ListItem>
                                            <asp:ListItem Value="116">District Sport Inspector </asp:ListItem>
                                            <asp:ListItem Value="62">DPC </asp:ListItem>
                                            <asp:ListItem Value="188">DPI  </asp:ListItem>
                                            <asp:ListItem Value="189">DPI ( Admin Services) </asp:ListItem>
                                            <asp:ListItem Value="110">Draftsman </asp:ListItem>
                                            <asp:ListItem Value="190">Draftsman (Naksa Navees) </asp:ListItem>
                                            <asp:ListItem Value="48">Driver </asp:ListItem>
                                            <asp:ListItem Value="120">Dy. Comm. Tribal </asp:ListItem>
                                            <asp:ListItem Value="106">DY. MANAGER </asp:ListItem>
                                            <asp:ListItem Value="98">Editor </asp:ListItem>
                                            <asp:ListItem Value="191">Farm Asstt </asp:ListItem>
                                            <asp:ListItem Value="84">Farrash </asp:ListItem>
                                            <asp:ListItem Value="192">Field Officer (TRI) </asp:ListItem>
                                            <asp:ListItem Value="193">Film Operator </asp:ListItem>
                                            <asp:ListItem Value="194">Financial Advisor </asp:ListItem>
                                            <asp:ListItem Value="327">Gayan/Vadan Shikshak (Grade A) </asp:ListItem>
                                            <asp:ListItem Value="330">Gayan/Vadan Shikshak (Grade B) </asp:ListItem>
                                            <asp:ListItem Value="75">Guruji </asp:ListItem>
                                            <asp:ListItem Value="35">Head Clerk </asp:ListItem>
                                            <asp:ListItem Value="16">HM(MS) </asp:ListItem>
                                            <asp:ListItem Value="21">HM(PS) </asp:ListItem>
                                            <asp:ListItem Value="85">Hostel Servent </asp:ListItem>
                                            <asp:ListItem Value="130">Hostel Supdt (Post Metric) </asp:ListItem>
                                            <asp:ListItem Value="195">Hostel Supdt. (Gurukul) </asp:ListItem>
                                            <asp:ListItem Value="196">Inspector (Loan Facilitation) </asp:ListItem>
                                            <asp:ListItem Value="117">Investigator </asp:ListItem>
                                            <asp:ListItem Value="572">Jan Shiksha Kendra Prabhari  </asp:ListItem>
                                            <asp:ListItem Value="64">Jan Shikshak </asp:ListItem>
                                            <asp:ListItem Value="197">Joint Commissioner </asp:ListItem>
                                            <asp:ListItem Value="4">Joint Director </asp:ListItem>
                                            <asp:ListItem Value="39">Jr Auditor </asp:ListItem>
                                            <asp:ListItem Value="73">Jr. Lecturer </asp:ListItem>
                                            <asp:ListItem Value="129">Jr.Accounts Officer </asp:ListItem>
                                            <asp:ListItem Value="139">Junior Technician </asp:ListItem>
                                            <asp:ListItem Value="198">Kendra Ayojak </asp:ListItem>
                                            <asp:ListItem Value="326">Khelkood Shikshak (Grade A) </asp:ListItem>
                                            <asp:ListItem Value="329">Khelkoond Shikshak (Grade B) </asp:ListItem>
                                            <asp:ListItem Value="142">Lab Asistent </asp:ListItem>
                                            <asp:ListItem Value="50">Lab Attendant </asp:ListItem>
                                            <asp:ListItem Value="15">Lecturer </asp:ListItem>
                                            <asp:ListItem Value="90">Lecturer (College) </asp:ListItem>
                                            <asp:ListItem Value="199">Lecturer (DIET) </asp:ListItem>
                                            <asp:ListItem Value="200">Lecturer(All India Exam) </asp:ListItem>
                                            <asp:ListItem Value="201">Lecturer(Physical Edn) </asp:ListItem>
                                            <asp:ListItem Value="202">Lecturer(State Exam) </asp:ListItem>
                                            <asp:ListItem Value="203">Lecturer(Tribal Worker) </asp:ListItem>
                                            <asp:ListItem Value="34">Librarian  </asp:ListItem>
                                            <asp:ListItem Value="118">MACHINE OPERATOR </asp:ListItem>
                                            <asp:ListItem Value="583">Madhyamik Shikshak -IT </asp:ListItem>
                                            <asp:ListItem Value="581">Madhyamik Shikshak -Khel </asp:ListItem>
                                            <asp:ListItem Value="585">Madhyamik Shikshak -Music-GayanVadan </asp:ListItem>
                                            <asp:ListItem Value="324">Madhymik Shikshak </asp:ListItem>
                                            <asp:ListItem Value="89">Mali </asp:ListItem>
                                            <asp:ListItem Value="105">MANAGER </asp:ListItem>
                                            <asp:ListItem Value="204">Manger-Accountant </asp:ListItem>
                                            <asp:ListItem Value="99">Mechanic Asstt </asp:ListItem>
                                            <asp:ListItem Value="205">Medical Officer(Ayurve) </asp:ListItem>
                                            <asp:ListItem Value="135">Minial </asp:ListItem>
                                            <asp:ListItem Value="78">Mobile Resource Coordinator </asp:ListItem>
                                            <asp:ListItem Value="206">Museum Sanrakshak </asp:ListItem>
                                            <asp:ListItem Value="18">Music Teacher </asp:ListItem>
                                            <asp:ListItem Value="207">Music Teacher(Gurukul) </asp:ListItem>
                                            <asp:ListItem Value="208">Nirdeshak (Audio Visual) </asp:ListItem>
                                            <asp:ListItem Value="209">Nirdeshak (Kamgaar) </asp:ListItem>
                                            <asp:ListItem Value="278">Nirman Sahayak </asp:ListItem>
                                            <asp:ListItem Value="211">Niyojan Officer </asp:ListItem>
                                            <asp:ListItem Value="58">Not Available </asp:ListItem>
                                            <asp:ListItem Value="212">Observor </asp:ListItem>
                                            <asp:ListItem Value="253">Observor </asp:ListItem>
                                            <asp:ListItem Value="143">Officer On Special Duty(OSD) </asp:ListItem>
                                            <asp:ListItem Value="213">Operator (Audio Visual) </asp:ListItem>
                                            <asp:ListItem Value="214">Organiser (Audio Visual) </asp:ListItem>
                                            <asp:ListItem Value="87">Organisor (Sangthak) </asp:ListItem>
                                            <asp:ListItem Value="215">Overseer </asp:ListItem>
                                            <asp:ListItem Value="217">Peethasin Adhikari (Loan Court) </asp:ListItem>
                                            <asp:ListItem Value="92">Peon Regular Contingent </asp:ListItem>
                                            <asp:ListItem Value="54">Peon-Contractual </asp:ListItem>
                                            <asp:ListItem Value="55">Peon-Daily Wages </asp:ListItem>
                                            <asp:ListItem Value="56">Peon-Part Time </asp:ListItem>
                                            <asp:ListItem Value="53">Peon-Regular </asp:ListItem>
                                            <asp:ListItem Value="216">Personnel Assistant </asp:ListItem>
                                            <asp:ListItem Value="8">Planning Officer </asp:ListItem>
                                            <asp:ListItem Value="218">Prachaar Sahayak </asp:ListItem>
                                            <asp:ListItem Value="219">Prachar Ayojak </asp:ListItem>
                                            <asp:ListItem Value="220">Pragati Sahayak </asp:ListItem>
                                            <asp:ListItem Value="221">Prasavika </asp:ListItem>
                                            <asp:ListItem Value="325">Prathmik Shikshak </asp:ListItem>
                                            <asp:ListItem Value="589">Prathmik Shikshak -IT </asp:ListItem>
                                            <asp:ListItem Value="582">Prathmik Shikshak -Khel </asp:ListItem>
                                            <asp:ListItem Value="588">Prathmik Shikshak -Music- Gayan/Vadan </asp:ListItem>
                                            <asp:ListItem Value="584">Prathmik Shikshak -Music-Nrity(Dance) </asp:ListItem>
                                            <asp:ListItem Value="580">Prathmik Shikshak-vigyan </asp:ListItem>
                                            <asp:ListItem Value="328">Prayogshala  Shikshak  </asp:ListItem>
                                            <asp:ListItem Value="586">Pre Primary Teacher </asp:ListItem>
                                            <asp:ListItem Value="222">Principal (Class-I) </asp:ListItem>
                                            <asp:ListItem Value="12">Principal (DIET) </asp:ListItem>
                                            <asp:ListItem Value="223">Principal (Gurukul/Shiksha Parisar) </asp:ListItem>
                                            <asp:ListItem Value="224">Principal (ITI) </asp:ListItem>
                                            <asp:ListItem Value="11">Principal (PGBT) </asp:ListItem>
                                            <asp:ListItem Value="225">Principal (Tribal Worker Trg Centre) </asp:ListItem>
                                            <asp:ListItem Value="14">Principal HS </asp:ListItem>
                                            <asp:ListItem Value="13">Principal HSS </asp:ListItem>
                                            <asp:ListItem Value="303">Principal Sankul/ Cluster </asp:ListItem>
                                            <asp:ListItem Value="301">Principal Secratory </asp:ListItem>
                                            <asp:ListItem Value="226">Principal(Punaradhyan Training Kendra) </asp:ListItem>
                                            <asp:ListItem Value="93">PROFESSOR </asp:ListItem>
                                            <asp:ListItem Value="95">Professor PE </asp:ListItem>
                                            <asp:ListItem Value="147">Programme Inspector </asp:ListItem>
                                            <asp:ListItem Value="227">Programme Officer (MDM) </asp:ListItem>
                                            <asp:ListItem Value="74">Programmer (DIET) </asp:ListItem>
                                            <asp:ListItem Value="67">Programmer (SSA) </asp:ListItem>
                                            <asp:ListItem Value="228">Project Officer </asp:ListItem>
                                            <asp:ListItem Value="229">Project Officer (ITDP) </asp:ListItem>
                                            <asp:ListItem Value="230">Project Officer(ICDS) </asp:ListItem>
                                            <asp:ListItem Value="231">Project Officer(Mini ICDS) </asp:ListItem>
                                            <asp:ListItem Value="232">Project Officer(Special Tribal vikas ) </asp:ListItem>
                                            <asp:ListItem Value="32">PTI </asp:ListItem>
                                            <asp:ListItem Value="71">Reader </asp:ListItem>
                                            <asp:ListItem Value="127">Record Keepar </asp:ListItem>
                                            <asp:ListItem Value="7">Regional Librarian </asp:ListItem>
                                            <asp:ListItem Value="279">RMSA Vocational Instructor </asp:ListItem>
                                            <asp:ListItem Value="233">Rural Worker </asp:ListItem>
                                            <asp:ListItem Value="25">Sahayak Adhyapak </asp:ListItem>
                                            <asp:ListItem Value="295">Sahayak Adhyapak(Lab) </asp:ListItem>
                                            <asp:ListItem Value="296">Sahayak Adhyapak(Music) </asp:ListItem>
                                            <asp:ListItem Value="294">Sahayak Adhyapak(PTI) </asp:ListItem>
                                            <asp:ListItem Value="123">Sahayak Niyojan Adhikari Tribal </asp:ListItem>
                                            <asp:ListItem Value="272">Samvida Hostal Adhikshak </asp:ListItem>
                                            <asp:ListItem Value="275">Samvida Hostal Adhikshak </asp:ListItem>
                                            <asp:ListItem Value="276">Samvida Hostal Adhikshak </asp:ListItem>
                                            <asp:ListItem Value="210">Samvida Hostal Adhikshak </asp:ListItem>
                                            <asp:ListItem Value="29">Samvida Shikshak-1 </asp:ListItem>
                                            <asp:ListItem Value="30">Samvida Shikshak-2 </asp:ListItem>
                                            <asp:ListItem Value="31">Samvida Shikshak-3 </asp:ListItem>
                                            <asp:ListItem Value="144">School Mother </asp:ListItem>
                                            <asp:ListItem Value="234">Senior PA  </asp:ListItem>
                                            <asp:ListItem Value="140">Senior Technician </asp:ListItem>
                                            <asp:ListItem Value="26">Shiksha Karmi-1 </asp:ListItem>
                                            <asp:ListItem Value="27">Shiksha Karmi-2 </asp:ListItem>
                                            <asp:ListItem Value="28">Shiksha Karmi-3 </asp:ListItem>
                                            <asp:ListItem Value="235">Shilp Sahayak </asp:ListItem>
                                            <asp:ListItem Value="236">Social Worker </asp:ListItem>
                                            <asp:ListItem Value="38">Sr Auditor </asp:ListItem>
                                            <asp:ListItem Value="72">Sr. Lecturer </asp:ListItem>
                                            <asp:ListItem Value="237">Sr.Lecturer (DIET) </asp:ListItem>
                                            <asp:ListItem Value="298">SSS-3 (Lab) </asp:ListItem>
                                            <asp:ListItem Value="299">SSS-3 (Music) </asp:ListItem>
                                            <asp:ListItem Value="297">SSS-3 (PTI) </asp:ListItem>
                                            <asp:ListItem Value="238">Statistical Asstt </asp:ListItem>
                                            <asp:ListItem Value="250">Statistical Investigator </asp:ListItem>
                                            <asp:ListItem Value="86">Statistical Officer </asp:ListItem>
                                            <asp:ListItem Value="47">Steno Typist </asp:ListItem>
                                            <asp:ListItem Value="46">Stenographer </asp:ListItem>
                                            <asp:ListItem Value="239">Store Keeper </asp:ListItem>
                                            <asp:ListItem Value="70">Sub Engineer </asp:ListItem>
                                            <asp:ListItem Value="240">Supdt (Pre Matric) </asp:ListItem>
                                            <asp:ListItem Value="44">Superintendent </asp:ListItem>
                                            <asp:ListItem Value="49">Supervisior </asp:ListItem>
                                            <asp:ListItem Value="241">Supervisior (Audio Visual) </asp:ListItem>
                                            <asp:ListItem Value="242">Surveyer </asp:ListItem>
                                            <asp:ListItem Value="57">Sweeper </asp:ListItem>
                                            <asp:ListItem Value="19">Tabla Teacher </asp:ListItem>
                                            <asp:ListItem Value="17">Teacher (UDT) </asp:ListItem>
                                            <asp:ListItem Value="243">Teacher and Manager </asp:ListItem>
                                            <asp:ListItem Value="244">Teacher PPTI </asp:ListItem>
                                            <asp:ListItem Value="245">Teacher-Craft </asp:ListItem>
                                            <asp:ListItem Value="246">Tracer </asp:ListItem>
                                            <asp:ListItem Value="247">Training Officer(Stenography) </asp:ListItem>
                                            <asp:ListItem Value="148">Trainner(Prashikshak) </asp:ListItem>
                                            <asp:ListItem Value="323">Ucch Madhyamik Shikshak </asp:ListItem>
                                            <asp:ListItem Value="260">Up Sikshak </asp:ListItem>
                                            <asp:ListItem Value="23">Varistha Adhyapak </asp:ListItem>
                                            <asp:ListItem Value="94">Vice Principal </asp:ListItem>
                                            <asp:ListItem Value="248">Vice Principal (DIET) </asp:ListItem>
                                            <asp:ListItem Value="249">Vice Principal (HSS) </asp:ListItem>
                                            <asp:ListItem Value="77">Watchman </asp:ListItem>
                                            <asp:ListItem Value="133">WATERMAN </asp:ListItem>
                                            <asp:ListItem Value="131">Work Assistant </asp:ListItem>
                                            <asp:ListItem Value="83">Workshop Supdt. </asp:ListItem>
                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="Work Assistant" maxlength="50" disabled="disabled" class="form-control vd_Required " />


                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Last school/Office and Employee Address
                                            <br />
                                    अंतिम स्कूल/ कार्यालय और कर्मचारी का पता : <span style="color: Red;">*</span></label>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="NGPS VEERPUR BANDH ( 1 to 5)" maxlength="50" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtL_S_C_Address" disabled="disabled" class="form-control vd_Required " />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Cause of Death<br />
                                    मृत्यु का कारण :<span style="color: Red;">*</span></label>


                                <%-- <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">


                                            <asp:ListItem Value="0">- Select Death Type - </asp:ListItem>
                                            <asp:ListItem Value="4">कोविड-19 संक्रमण  </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="6">अन्य  </asp:ListItem>

                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtL_S_C_Address" type="text" value="कोविड-19 संक्रमण " maxlength="50" disabled="disabled" class="form-control vd_Required " />


                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date Of Death<br />
                                    मृत्यु दिनाँक :<span style="color: Red;">*</span></label>
                                <div class="input-group">
                                    <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="28/12/2021" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtD_O_Death" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />
                                </div>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Number of Family Members of Deceased Employee<br />
                                    दिवंगत कर्मचारी के परिवार के सदस्यों की संख्या:<span style="color: Red;">*</span></label>


                                <%--  <asp:DropDownList runat="server" CssClass="form-control vd_Required form-select">


                                            <asp:ListItem Value="0">Select </asp:ListItem>
                                            <asp:ListItem Value="1">1 </asp:ListItem>
                                            <asp:ListItem Value="2">2 </asp:ListItem>
                                            <asp:ListItem Value="3">3 </asp:ListItem>
                                            <asp:ListItem Value="4">4 </asp:ListItem>
                                            <asp:ListItem Selected="True" Value="5">5 </asp:ListItem>
                                            <asp:ListItem Value="6">6 </asp:ListItem>
                                            <asp:ListItem Value="7">7 </asp:ListItem>
                                            <asp:ListItem Value="8">8 </asp:ListItem>
                                            <asp:ListItem Value="9">9 </asp:ListItem>
                                            <asp:ListItem Value="10">10 </asp:ListItem>

                                        </asp:DropDownList>--%>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtD_O_Death" type="text" value="4" maxlength="10" disabled="disabled" class="form-control vd_Required dummy" onkeypress="return isNumberKey(event)" />

                            </div>

                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Department Name<br />
                                    विभाग का नाम : <span style="color: Red;">*</span></label>
                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtDepartment_Name" type="text" value="Education" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtDepartment_Name" disabled="disabled" class="form-control vd_Required" />
                            </div>
                        </div>

                        <div class="col-md-3">
                            <div class="form-group">
                                <label>
                                    Date of Receiving of Application<br />
                                    आवेदन प्राप्त तिथि : <span style="color: Red;">*</span></label>

                                <input name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$txtaaprecievedate" type="text" value="21/04/2023" maxlength="10" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtaaprecievedate" disabled="disabled" class="form-control vd_Required dummy" />

                            </div>
                        </div>

                    </div>
                </fieldset>
                <fieldset>
                    <legend>Information About All the Family Members of the Deceased Public Servant/Teacher
                    <br />
                        मृतक लोकसेवक/शिक्षक के परिवार के सभी सदस्यों की जानकारी </legend>
                    <div class="row">
                        <div class="col-md-12 ">
                            <div class="table-responsive">
                                <table class="footable table text-center table-striped table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.<br />
                                                सरल क्र.</th>
                                            <th data-class="phone,tablet" scope="col">Member Name<br />
                                                सदस्य का नाम</th>
                                            <th data-hide="phone,tablet" scope="col">Relation with Deceased<br />
                                                दिवंगत के साथ संबंध </th>
                                            <th data-hide="phone,tablet" scope="col">Business<br />
                                                व्यवसाय</th>
                                            <th data-hide="phone,tablet" scope="col">Date of Birth<br />
                                                जन्म दिनांक</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblRowNumber">1</span>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblmemname" style="color: black;">KHILONI KUSHWAH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblrelation" style="color: black;">Wife/ Husband</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl02_lblDOB" style="color: black;">01/01/1973</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblRowNumber">2</span>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblmemname" style="color: black;">RAHUL KUSHWAH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblrelation" style="color: black;">Son</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl03_lblDOB" style="color: black;">17/07/1995</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblRowNumber">3</span>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblmemname" style="color: black;">BRAJESH KUSHWAH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblrelation" style="color: black;">Son</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl04_lblDOB" style="color: black;">10/08/1997</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblRowNumber">4</span>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblmemname" style="color: black;">CHHAYA KUSHWAH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblrelation" style="color: black;">Daughter</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl05_lblDOB" style="color: black;">02/08/2002</span>
                                                </div>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>
                                                <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblRowNumber">5</span>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblmemname" style="color: black;">OTU KUSHWAH</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: left;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblrelation" style="color: black;">Son</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lbloccu" style="color: black;">कोई व्यवसाय नही</span>
                                                </div>
                                            </td>
                                            <td>
                                                <div style="text-align: center;">
                                                    <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdFamily_ctl06_lblDOB" style="color: black;">30/07/2003</span>
                                                </div>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Details of the Family Member who has Applied for Appointment
                    <br />
                        परिवार के सदस्य का विवरण जिन्होंने नियुक्ति के लिए आवेदन किया है</legend>
                    <div class="row">
                        <div class="col-md-12 table-responsive">
                            <table class="table text-center table-striped table-bordered" cellspacing="0" rules="all" border="1" style="border-collapse: collapse;">
                                <thead>
                                    <tr>
                                        <th data-class="expand" scope="col">Sr. No.<br />
                                            सरल क्र</th>
                                        <th data-class="phone,tablet" scope="col">Applicant Name<br />
                                            आवेदक का नाम</th>
                                        <th data-hide="phone,tablet" scope="col">Gender<br />
                                            लिंग </th>
                                        <th data-hide="phone,tablet" scope="col">Date of Birth<br />
                                            जन्म तिथि</th>
                                        <th data-hide="phone,tablet" scope="col">Mobile<br />
                                            मोबाईल </th>
                                        <th data-hide="phone,tablet" scope="col">Applicant's Relation with Deceased
                                            <br />
                                            Teacher<br />
                                            आवेदक का दिवंगत शिक्षक के साथ संबंध</th>
                                        <th data-hide="phone,tablet" scope="col">Marital Status<br />
                                            वैवाहिक स्थिति</th>
                                        <th data-hide="phone,tablet" scope="col">Educational Qualification<br />
                                            शैक्षिक योग्यता</th>
                                        <th data-hide="phone,tablet" scope="col">Cadre for Appointment<br />
                                            नियुक्ति हेतु संवर्ग</th>
                                        <th data-hide="phone,tablet" scope="col">Designation for Appointment<br />
                                            नियुक्ति हेतु पदनाम </th>
                                        <th data-hide="phone,tablet" scope="col">Status of Passing Primary Teacher Eligibility
                                            <br />
                                            Test for Primary Teacher<br />
                                            प्राथमिक शिक्षक हेतु प्राथमिक शिक्षक पात्रता परीक्षा उत्तीर्ण  की स्थिति</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblRowNumber">1</span>
                                            <input type="hidden" name="ctl00$ctl00$ContentPlaceHolder1$ContentPlaceHolder1$grdCAFMS$ctl02$hdnId" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_hdnId" value="4572" />
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplicantName">BRAJESH KUSHWAH</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblAoolicantGender">M</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblappdob">10/08/1997</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblMobileNo">7047701125</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblRelation_Detail">Son</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_LBLMarital_Status">अविवाहित</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_LBLMarital_Status_Qualification">12 PCM  B SC COMPUTER SCIENCE</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplied_Post">शैक्षणिक संवर्ग</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblApplied_Designation">प्रयोगशाला शिक्षक</span>
                                        </td>
                                        <td>
                                            <span id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_grdCAFMS_ctl02_lblIs_TET"></span>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="footable table  table-striped table-bordered" cellspacing="0" rules="all" border="1" id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Grd2" style="border-collapse: collapse;">
                                    <thead>
                                        <tr>
                                            <th data-class="expand" scope="col">Sr. No.
                                            <br />
                                                सरल क्र. </th>
                                            <th data-class="phone,tablet" scope="col">Document<br />
                                                दतावेज </th>
                                            <th data-hide="phone,tablet" scope="col">View Document<br />
                                                दतावेज देखे</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td>दिवंगत शासकीय सेवक का मृत्यु प्रमाण पत्र</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>2</td>
                                            <td>जन्मतिथि के प्रमाणीकरण हेतु हाई स्कूल की अंक सूची अथवा सक्षम अधिकारी द्वारा जारी किया गया  जन्म प्रमाण पत्र </td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td>स्थानीय / मूल निवासी होने का प्रमाण पत्र</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td>यदि आवेदक अनुसूचित जाति/जनजाति तथा अन्य पिछड़े वर्ग का हो तो प्रमाण पत्र.</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td>हायर सेकेण्डरी /स्नातक या अन्य परीक्षा उत्तीर्ण करने के प्रमाण पत्र.</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td>परिवार के सभी सदस्यों द्वारा आवेदक को अनुकंपा नियुक्ति का लाभ लेने की सहमति का शपथ पत्र </td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td>आवेदक का फोटो  अपलोड करे.</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td>राशन कार्ड / सेवा पुस्तिका अथवा अन्य प्रमाणित दस्तावेज जिसमे परिवार के सदस्यों की जानकारी हो</td>
                                            <td>
                                                <a class="btn btn-success">View</a>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>
                <fieldset>
                    <legend>Job Status / जॉब की स्थिति</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <label>
                                Enter Job Status
                                    <br />
                                जॉब की स्थिति दर्ज करें  <span style="color: Red;">*</span></label>
                            <select name="ctl00$ContentBody$ddlkaryvahi" id="ddlkaryvahi" class="form-control form-select" onchange="showHideRemarkView()">
                                <option value="1">--Select--</option>
                                <option value="1">Pending by collector</option>
                                <option value="2">Pending by DEO</option>
                                <option value="3">Got a job</option>
                            </select>
                        </div>
                        <div class="row align-items-end mt-4" id="divApattiHai" style="display: none">
                            <div class="col-md-3">
                                <label>
                                    Appointment Letter No.
                                                <br />
                                    नियुक्ति पत्र संख्या<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Appointment Order No.
                                                <br />
                                    नियुक्ति आदेश संख्या<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Date of Letter
                                                <br />
                                    पत्र की तारीख<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    The position Applicant has been Appointed<br />
                                    आवेदक को किस पद पर नियुक्त किया गया है<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Department Name
                                                <br />
                                    विभाग का नाम<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Place of Posting<br />
                                    पोस्टिंग की जगह<span style="color: Red;">*</span>
                                </label>
                                <asp:TextBox runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <label>
                                    Appointment Letter<br />
                                    नियुक्ति पत्र<span style="color: Red;">*</span>
                                </label>
                                <asp:FileUpload runat="server" CssClass="form-control" />
                            </div>
                            <p style="color: red; font-size: 1.0em">
                                Upload PDF Format Size 200 KB
                            </p>
                        </div>
                    </div>
                </fieldset>
                <hr />
                <div class="row ">
                    <div class="col-md-12">
                        <button type="button" class="Alert-Confirmation fw-bold btn w-lg btn-outline-success btn-border">Save</button>
                        <a href="NocSendByDistrictCollectorJD.aspx" class="fw-bold btn btn-outline-danger w-lg btn-border">Clear</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <fieldset>
                        <div class="row" style="font-family: Aparajita">
                            <div class="col-sm-2">
                                <img id="imgLogoP1" src="../../img/image-260nw-1902805156.jpg" style="width: 140px; height: auto; background: none" class="responsive" />
                            </div>
                            <div class="col-sm-8 text-center">
                                <h3><strong><b>Education portal 3.0</b></strong></h3>
                                <h4><strong><b>कार्यालय : जिला शिक्षा  अधिकारी Gwalior</b></strong></h4>
                                <h4><strong><b>नोट  शिट</b></strong></h4>
                                <h4><strong>
                                    <br />
                                    <br />

                                    <b style="position: absolute; left: -22%; top: 95%">प्रकरण क्र. 5252/AK7328/06/05/2024</b>
                                    <b style="position: absolute; right: -20%; top: 95%">दिनांक :06/05/2024</b>
                                </strong></h4>

                            </div>
                            <div class="col-sm-2">
                                <img id="imgLogo1" src="../../img/qr-code-logo-27ADB92152-seeklogo.com.png" style="width: 100px; height: auto; position: relative; left: 10px;" class="responsive" />
                            </div>
                        </div>
                        <hr style="height: 3px; border-width: 10px; color: black; background-color: black" />
                        <h4 class="fw-bold"><span class="text-danger">विषय :-  </span>श्री BRAJESH KUSHWHA की  अनुकम्पा  नियुक्ति  हेतु  आवेदन पत्र के  सम्बन्ध  में </h4>
                        <br />
                        <table class="table table-bordered">
                            <tbody>
                                <tr>
                                    <th colspan="4" class="text-center font-20">: : <u>दिवंगत अधिकारी/कर्मचारी का विवरण</u> : :</th>
                                </tr>
                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी कोड:</th>
                                    <td>AK7328</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी का नाम: </th>
                                    <td>Phul Singh Kushawah</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>लिंग   :</th>
                                    <td>Male </td>
                                    <th>अंतिम पोस्ट जिला का चयन करें:</th>
                                    <td>Gwalior</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>दिवंगत अधिकारी/कर्मचारी केडर: </th>
                                    <td>Regular Class IV</td>
                                    <th>दिवंगत अधिकारी/कर्मचारी पदनाम:</th>
                                    <td>Asstt Teacher(LDT)</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>मृत्यु का कारण :</th>
                                    <td>अन्य </td>
                                    <th>अंतिम स्कूल/कार्यालय  और कर्मचारी का पता : </th>
                                    <td>23040306405</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>जाति </th>
                                    <td>OBC</td>
                                    <th>मृत्यु दिनांक:</th>
                                    <td>28/12/2021</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>परिवार के जीवित सदस्यों की संख्या : </th>
                                    <td>5</td>
                                    <th>आवेदन प्राप्त तिथि  : </th>
                                    <td>21/04/2023</td>
                                </tr>
                                <tr>
                                    <th>विभाग  का नाम  :</th>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                </tr>
                                <tr>
                                    <th colspan="4" class="text-center font-20">: : <u>आवेदक का विवरण</u> : :</th>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक का नाम :</th>
                                    <td>BRAJESH KUSHWAH</td>
                                    <th>लिंग : </th>
                                    <td>Male</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>वैवाहिक स्तिथि   :</th>
                                    <td>Unmarried</td>
                                    <th>जन्म दिनांक: </th>
                                    <td>10/08/1997</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>प्राप्ति की तारीख :</th>
                                    <td>21/04/2023</td>
                                    <th>दिवंगत  के साथ संबंध: </th>
                                    <td>Son</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>आवेदक किस पद के लिए नियुक्ति चाहता हैं:</th>
                                    <td>शैक्षणिक संवर्ग </td>
                                    <th>पदनाम: </th>
                                    <td>प्रयोगशाला   शिक्षक</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>क्या शिक्षक पात्रता  परीक्षा उत्तीर्ण(TET) हैं :</th>
                                    <td>नहीं</td>
                                    <th>मोबइल  नंबर: </th>
                                    <td>7047701125</td>
                                </tr>
                                <tr class="mt-3">
                                    <th>पात्रता  परीक्षा का वर्ष :</th>
                                    <td></td>
                                    <th>व्यावसायिक योग्यता : </th>
                                    <td></td>
                                </tr>
                            </tbody>
                        </table>
                        <h4 class="text-center font-20 fw-bold">: : <u>परिवार का विवरण</u> : : </h4>
                        <table class="table table-bordered text-center">
                            <thead>
                                <tr style="text-align: center; padding: 4px" class="bg-success">
                                    <th>क्र.</th>
                                    <th>सदस्य का नाम</th>
                                    <th>दिवंगत के साथ संबंध </th>
                                    <th>व्यवसाय</th>
                                    <th>जन्म दिनांक</th>
                                </tr>
                            </thead>
                            <tr>
                                <td>1</td>
                                <td>KHILONI KUSHWAH </td>
                                <td>Wife/Husband</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>01/01/1973</td>
                            </tr>
                            <tr>
                                <td>2</td>
                                <td>RAHUL KUSHWAH</td>
                                <td>Son</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>17/07/1995</td>
                            </tr>
                            <tr>
                                <td>3</td>
                                <td>KUSHWAH</td>
                                <td>SoN</td>
                                <td>कोई व्यवसाय नहीं </td>
                                <td>10/08/1997</td>
                            </tr>
                            <tr>
                                <td>4</td>
                                <td>CHAYA KUSHWAH</td>
                                <td>Daughter</td>
                                <td>20/08/2002</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
                            <tr>
                                <td>5</td>
                                <td>OTU KUSHWAH</td>
                                <td>Son</td>
                                <td>30/07/2003</td>
                                <td>कोई व्यवसाय नहीं </td>
                            </tr>
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
    <%--my code--%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <script>
        function toggleRegistrationUpdate() {
            document.getElementById("divRegisrationUpdate").style.display = "block";
            document.getElementById("FisrtTimedata").style.display = "none";
        }
</script>
    <script type="text/javascript">
        function showHideRemarkView() {
            var ddl = document.getElementById('ddlkaryvahi');
            var remarkView = document.getElementById("RemarkView");

            if (ddl.value != "3" && ddl.value != "3") {
                remarkView.style.display = "initial";
                divApattiHai.style.display = "none";
            }
            else if (ddl.value == "3") {
                divApattiHai.style.display = "flex";
                remarkView.style.display = "none";
            }
            else {
                remarkView.style.display = "none";
                divApattiHai.style.display = "none";
            }
        }
    </script>
</asp:Content>

