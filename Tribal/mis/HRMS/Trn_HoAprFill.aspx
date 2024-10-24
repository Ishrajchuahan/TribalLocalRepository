<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Trn_HoAprFill.aspx.cs" Inherits="mis_HRMS_Trn_HoAprFill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <link href="https://schooledutest.tserver.co.in/dist/css/bootstrap-datepicker.min.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles" style="margin-bottom: -30px">
        <div class="col-md-5 align-self-center">
            <p style="font-style: oblique; color: green; font-weight: bolder; font-size: xx-large; font-family: Helvetica, Arial, sans-serif;">
                <img src="../../img/PropertyReturnNew.png" style="height: 70px" itle="Compassionate Appointment Facilitation & Monitoring System (CAFMS)"><u><br />
                </u>
            </p>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=HRMS" title="click to go on">HRMS</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=HRMS&SubID=APRMS" title="click to go on">APRMS</a></li>
                    <li class="breadcrumb-item active">Head Office APRMS</li>
                </ol>
            </div>
        </div>
    </div>
    <div class="card mt-3 shadow">
        <p style="font-weight: bold; background-color: #F0FFF0; padding: 20px; border-radius: 10px;" class="font-16">
            <b>मध्यप्रदेश शासकीय सेवक (आचरण) नियम, 1959 के नियम 18 (3) के अधीन प्रथम श्रेणी, द्वितीय श्रेणी तथा तृतीय श्रेणी सेवा के प्रत्येक सदस्य से यह अपेक्षित है कि यह सेवा में पहली नियुक्ति के समय और उसके बाद प्रत्येक बारह महीने की अवधि के पश्चात् यह घोषणा-पत्र भर कर प्रस्तुत करें और उसमें वह उनके स्वामित्व को तथा उसके  द्वारा अर्जित अथवा उसे विरासत में मिली या उसके अपने नाम पर उसके परिवार के किसी सदस्य के नाम पर या किसी अन्य व्यक्ति के नाम पर पट्टे या बंधक पर उसके द्वारा धारित समस्त अचल संपति का ब्यौरा दे |   </b>
        </p>
        <div class="card-header card-border-info">
        </div>
        <div class="card-body">
          <nav class="navbar mt-0 navbar-expand-lg topbar ">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#"></a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                            <li>
                                <a class="nav-link  text-white " href="HOAPRNotes.aspx" role="button">
                                    <b class="font-16 font-bold "><i class="fa fa-home "></i>
                                    </b>
                                </a>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Fill APR</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_HoAprFill.aspx">Fill APR Form</a></li>
                                    <li><a class="dropdown-item" href="PrintAPRForm.aspx">Print APR Form</a></li>
                                    <li><a class="dropdown-item" href="UploadAPRForm.aspx">Upload APR Form</a></li>
                                </ul>
                            </li>  
                             <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle text-white" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    <b class="font-16 font-bold"><i class="far fa-hand-point-right"></i>Reports</b>
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="Trn_HoAprDistWiseReport.aspx">APR District Wise Reports</a></li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>
            <br />
            <fieldset>
                <legend>Annual Property Returns Form/वार्षिक संपत्ति रिटर्न फॉर्म</legend>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="fw-bold text-dark">
                                Unique Id /<br />
                                यूनिक आई.डी.
                            </label>
                            <asp:TextBox runat="server" ID="txtUniqueId" CssClass="form-control" placeholder="Unique Id" AutoComplete="off"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-md-2 ">
                        <div class="form-group text-center">
                            <button type="button" class="btn btn-success btn-rounded" onclick="document.getElementById('FS_EmpInfo').style.display = 'block';document.getElementById('FS_FillApr').style.display = 'block'">Search</button>
                        </div>
                    </div>
                </div>
            </fieldset>
             <fieldset id="FS_EmpInfo" style="display: none;">
                <legend>Fill Annual Property Details/वार्षिक संपत्ति विवरण भरें</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Select Financial Year/वित्तीय वर्ष चुनें<span style="color: red">*</span></label>
                            <input maxlength="4" autocomplete="off" class="form-control datepickerYear" placeholder="2024-25" type="text" data-val="true" value="2024-25" />
                        </div>
                    </div>
                    <div class="col-md-3" id="DivEmp">
                        <div class="form-group">
                            <label>Employee Name/कर्मचारी का नाम<span style="color: red">*</span></label>
                            <input class="form-control fw-bold" id="txtemplname" autocomplete="off" required data-msg="Rajesh Agrawal" type="text" name="txtemplname" value="Rajesh Agrawal" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Designation/पद<span style="color: red">*</span></label>
                            <input class="form-control fw-bold" id="txtempldesigntn" autocomplete="off" required data-msg="प्राथमिक अध्यापक(PRT)" type="text" name="txtempldesigntn" value="प्राथमिक अध्यापक(PRT)" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Employee Code/कर्मचारी कोड<span style="color: red">*</span></label>
                            <input class="form-control fw-bold" id="txtempluniquecode" autocomplete="off" required data-msg="AB4545" type="text" name="txtempluniquecode" value="AB4545" />
                        </div>
                    </div>

                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Current Salary/वर्तमान वेतन <span style="color: red">*</span></label>
                            <input class="form-control fw-bold" id="txtcursalary" autocomplete="off" required data-msg="25000" type="text" name="txtcursalary" value="25000" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label>Increment Date/वेतन वृद्धि तिथि<span style="color: red">*</span></label>
                            <input name="ename" id="dob" type="date" class="form-control" autocomplete="off" />
                        </div>
                    </div>
                    <div>
                        <div class="col-md-6 align-self-center" style="color: red">
                            <label class="fs-4"><b>Note: सर्वप्रथम वित्तीय वर्ष का चयन करें</b></label>
                        </div>
                    </div>
                </div>
                <%--<div class="row justify-content-center">
                    <div class="col-md-4 text-center">

                        <asp:Button runat="server" ID="btnsave" type="button" class="btn btn-success btn-rounded" Text="Save & Next" OnClick="btnsave_Click" />
                        <a href="AnnualPropertyDetailsForm.aspx" id="ContentBody_clearfirst" class="btn btn-danger btn-rounded">Clear</a>
                    </div>
                </div>--%>
            </fieldset>

            <fieldset id="FS_FillApr" style="display: none;">
                <legend>Property Details / संपत्ति ब्यौरा</legend>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Division/संभाग का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Narmadapuram">Narmadapuram(नर्मदापुरम)</option>
                                <option value="Indore">Indore(इंदौर)</option>
                                <option value="Jabalpur">Jabalpur(जबलपुर)</option>
                                <option value="Rewa">Rewa(रीवा)</option>
                                <option value="Sagar">Sagar(सागर)</option>
                                <option value="Shahdol">Shahdol(शाहडोल)</option>
                                <option value="Ujjain">Ujjain(उज्जैन)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">District/जिले का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bhopal">Bhopal(भोपाल)</option>
                                <option value="Raisen">Raisen(रायसेन)</option>
                                <option value="Rajgarh">Rajgarh(राजगढ़)</option>
                                <option value="Sehore">Sehore(सीहोर)</option>
                                <option value="Vidisha">Vidisha(विदिशा)</option>
                                <option value="Ashoknagar">Ashoknagar(अशोकनगर)</option>
                                <option value="Shivpuri">Shivpuri(शिवपुरी)</option>
                                <option value="Datia">Datia(दतिया)</option>
                                <option value="Guna">Guna(गुना)</option>
                                <option value="Gwalior">Gwalior(ग्वालियर)</option>
                                <option value="Harda">Harda(हरदा)</option>
                                <option value="Hoshangabad">Hoshangabad(होशंगाबाद)</option>
                                <option value="Betul">Betul(बेतुल)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Block/विकासखंड का नाम <span style="color: red">*</span></label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Agar">Agar(आगर)</option>
                                <option value="Barod">Barod(बड़ौद)</option>
                                <option value="Nalkheda">Nalkheda(नलखेड़ा)</option>
                                <option value="Susner">Susner(सुसनेर)</option>
                                <option value="Alirajpur">Alirajpur(आलीराजपुर)</option>
                                <option value="Bhabra">Bhabra(भाबरा)</option>
                                <option value="Katthiwara">Katthiwara(कट्ठीवाड़ा)</option>
                                <option value="Sondwa">Sondwa(सोंडवा)</option>
                                <option value="Udaygarh">Udaygarh(उदयगढ़)</option>
                                <option value="Jobat">Jobat(जोबट)</option>
                                <option value="Anuppur">Anuppur(अनुपपुर)</option>
                                <option value="Jaithari">Jaithari(जैतहरी)</option>
                                <option value="Kotma">Kotma(कोतमा)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Gram Panchayat/ग्राम पंचायत का नाम </label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="Bagiyatola ">Bagiyatola(बगियाटोला) </option>
                                <option value="Barod">Barod(बड़ौद)</option>
                                <option value="Belgaon">Belgaon(बेलगांव) </option>
                                <option value="Beliya">Beliya Chhot(बेलिया छोट) </option>
                                <option value="Benibahra">Benibahra(बेनीबहरा) </option>
                            </select>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Gram/ग्राम का नाम</label>
                            <select class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="DONGRATOLA ">DONGRATOLA(डोंगराटोला) </option>
                                <option value="Barod">BARGAWAN(बरगवां) </option>
                                <option value="Nalkheda">Belgaon(बेलगांव) </option>
                                <option value="Susner">NAGARA BAND(नागरा बैंड) </option>
                                <option value="Alirajpur">NIMHA(निम्हा) </option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="divpd">
                        <div class="form-group">
                            <label class="font-bold">Property Detail/ संपत्ति विवरण <span style="color: red">*</span></label>
                            <select id="ddlproprty" class="form-control" onchange="ProprtyArea()">
                                <option value="0">--select--</option>
                                <option value="1">Residential Property(आवासीय संपत्ति)</option>
                                <option value="2">Commercial Property(व्यावसायिक संपत्ति)</option>
                                <option value="3">Land/Plot(भूमि/प्लॉट)</option>
                                <option value="4">Agricultural Land(कृषि भूमि)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="divarea">
                        <div class="form-group">
                            <label class="font-bold">Total Area Sq.Ft/कुल क्षेत्रफल वर्ग फुट <span style="color: red">*</span></label>
                            <input name="totlareasqft" type="text" class="form-control" autocomplete="off" placeholder="Total Area Square Feet" />

                        </div>
                    </div>
                    <div class="col-md-3" id="divarea2">
                        <div class="form-group">
                            <label class="font-bold">Total Area Hectare/कुल क्षेत्रफल हेक्टेयर <span style="color: red">*</span></label>
                            <input name="totlareaHectare" type="text" class="form-control" autocomplete="off" placeholder="Total Area Hectare" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Current Value/वर्तमान मूल्य <span style="color: red">*</span></label>
                            <input name="Current Value" type="text" class="form-control" autocomplete="off" placeholder="Current Value" />
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Property Owner/संपत्ति मालिक <span style="color: red">*</span></label>
                            <select id="ddlpropertyowner" onchange="HidedivOwner();" class="form-control">
                                <option value="0">--select--</option>
                                <option value="1">Self(स्वयं)</option>
                                <option value="2">Wife(पत्नी के नाम)</option>
                                <option value="3">Son(पुत्र के नाम)</option>
                                <option value="4">Daughter(पुत्री के नाम)</option>
                                <option value="5">Other(अन्य)</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-3" id="divOwner">
                        <div class="form-group">
                            <label class="font-bold">Owner Name/संपत्ति मालिक का नाम <span style="color: red">*</span></label>
                            <asp:TextBox runat="server" ID="ownername" class="form-control" autocomplete="off" placeholder="संपत्ति मालिक का नाम"></asp:TextBox>
                        </div>
                    </div>
                </div>


                <fieldset>
                    <legend>Seller Detail/ विक्रेता विवरण</legend>
                    <div class="row">
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Property Source/संपत्ति स्रोत <span style="color: red">*</span></label>
                                <select class="form-control select2">
                                    <option value="Select">--Select--</option>
                                    <option value="0">संपत्ति रसीद</option>
                                    <option value="1">संपत्ति पट्टा </option>
                                    <option value="2">बंधक विरासत</option>
                                    <option value="3">उपहार</option>
                                    <option value="4">अन्य</option>
                                </select>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Purchase Date/खरीद की तारीख<span style="color: red">*</span></label>
                                <input name="Purchase Date" type="date" class="form-control" autocomplete="off" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Seller  Mobile No/विक्रेता का मोबाइल नंबर<span style="color: red">*</span></label>
                                <input name="SellerMblNo" type="text" class="form-control" autocomplete="off" placeholder="विक्रेता का मोबाइल नंबर दर्ज करे" />
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label class="font-bold">Seller  Address/विक्रेता का पता<span style="color: red">*</span></label>
                                <input name="SellerAddress" type="text" class="form-control" autocomplete="off" placeholder="विक्रेता का पता दर्ज करे" />
                            </div>
                        </div>
                    </div>
                </fieldset>
                <div class="row align-items-end">
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Property Annual Income<br />संपत्ति से वार्षिक आय </label>
                            <input name="संपत्ति से वार्षिक आय" type="text" class="form-control" autocomplete="off" placeholder="संपत्ति से वार्षिक आय दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <label class="font-bold">Accusation<br />अभियुक्ति </label>
                            <input name="अभियुक्ति" type="text" class="form-control" autocomplete="off" placeholder="अभियुक्ति दर्ज करे" />
                        </div>
                    </div>
                </div>
                <div class="row justify-content-center">
                    <div class="col-md-4 text-center">
                        <button id="btnsubmit" type="button" class="Alert-Confirmation btn btn-success btn-rounded">Submit</button>
                        <a href="PrintAPRForm.aspx" id="ContentBody_clearfirst" class=" btn btn-danger btn-rounded">Clear</a>
                    </div>
                </div>

            </fieldset>
        <%--    <fieldset id="FS_Details" style="display: none">
                <legend>APR Details</legend>
                <div class="row justify-content-end">
                    <div class="col-md-4 text-end">
                        <div class="form-group">
                            <button class="btn btn-info btn-rounded w-55">Excel</button>
                            <button class="btn btn-info btn-rounded w-55">PDF</button>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <div class="form-group">
                            <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="table-responsive">

                            <table class="table  table-hover table-bordered">
                                <thead>
                                    <tr>

                                        <th>S. No.</th>
                                        <th>Employee / कर्मचारी</th>
                                        <th>Distric / जिला</th>
                                        <th>Sankul / संकुल</th>
                                        <th>Office / Institute / School<br />
                                            कार्यालय / संस्था/ स्कूल</th>
                                        <th>Dipartment / विभाग</th>
                                        <th>Designation / पद</th>
                                        <th>Financial Year / वित्तीय वर्ष</th>
                                        <th>Detail / विवरण</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>AB1234-Manish Meena</td>
                                    <td>Bhopal</td>
                                    <td>23354912798 -Bal Bharti School</td>
                                    <td>23354912798 -Bal Bharti School</td>
                                    <td>School</td>
                                    <td>Assistant Teacher</td>
                                    <td>2024-25</td>
                                    <td>
                                        <button type="button" class="btn btn-primary" id="btnShow"><i class="fa fa-eye" aria-hidden="true"></i></button>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>--%>
        </div>
    </div>


</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
   <script>

       function HidedivOwner() {
           var ddlpropertyowner = document.getElementById('ddlpropertyowner');
           var selectedValue = ddlpropertyowner.value;
           var DivEmp = document.getElementById('DivEmp');
           var divOwner = document.getElementById('divOwner');
           /*console.log(selectedValue);*/

           if (selectedValue == "1") {
               DivEmp.style.display = 'block';
               //divOwner.style.display = 'none';
               document.getElementById('<%=ownername.ClientID%>').value = document.getElementById('txtemplname').value
            } else if (selectedValue == "2" || selectedValue == "3" || selectedValue == "4" || selectedValue == "5") {
                DivEmp.style.display = 'none';
                divOwner.style.display = 'block';
                document.getElementById('<%=ownername.ClientID%>').value = '';
            } else {
                DivEmp.style.display = 'none';
                divOwner.style.display = 'none';
                document.getElementById('<%=ownername.ClientID%>').value = '';
            }
        }

        function ProprtyArea() {
            var ddlproprty = document.getElementById('ddlproprty');
            var selectedValue = ddlproprty.value;
            var divarea = document.getElementById('divarea');
            var divarea2 = document.getElementById('divarea2');
            console.log(selectedValue);

            if (selectedValue == "1" || selectedValue == "2" || selectedValue == "3") {
                divarea.style.display = 'block';
                divarea2.style.display = 'none';

            } else if (selectedValue == "4") {
                divarea.style.display = 'none';
                divarea2.style.display = 'block';
            } else {
                divarea.style.display = 'none';
                divarea2.style.display = 'none';
            }
        }

   </script>



    <script src="https://schooledutest.tserver.co.in/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js"></script>
    <script>
        $('.datepickerYear').datepicker({
            format: "yyyy",
            minViewMode: 2,
            autoclose: true,
            orientation: 'bottom'
        }).on('hide', function (e) {
            var inputYear = e.target.value.trim();
            if (/^\d+$/.test(inputYear)) {
                var selectedYear = parseInt(inputYear);
                var nextYear = selectedYear + 1;
                var financialYear = selectedYear + '-' + (nextYear % 100); // Example: 2023-24 for financial year 2023-2024
                $(".datepickerYear").val(financialYear);
            }
            else if (inputYear === '') { // If input is empty
                setDefaultFinancialYear();
            }
            else {
                alert("Please enter a valid year.");
            }
        });

        // Function to set default value to current financial year
        function setDefaultFinancialYear() {
            var currentDate = new Date();
            var currentYear = currentDate.getFullYear();
            var nextYear = currentYear + 1;
            var financialYear = currentYear + '-' + (nextYear % 100);
            $(".datepickerYear").val(financialYear);
        }

        // Set default value to current financial year on page load
        $(document).ready(function () {
            setDefaultFinancialYear();
        });</script>

    <script>
        $('.select2').select2()
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                //Basic
                //Success Message

                $('.Alert-Confirmation').click(function () {
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
                                timer: 4000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });

    </script>
</asp:Content>

