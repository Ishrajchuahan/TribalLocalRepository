﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Tribal/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_SchoolBoard.aspx.cs" Inherits="Tribal_mis_Masters_Office_Masters_Mst_SchoolBoard" %>

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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>School Board Master Data
                        </span></li>
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
                           स्कूल बोर्ड मास्टर डेटा विवरण
                        </div>
                        <div>
                            <marquee style="width: 100%;"
                                onmouseover="this.stop();" onmouseout="this.start();"
                                direction="left" behavior="scroll" scrollamount="7" class="Marqueetext fw-bold">
                                इस पेज के माध्यम  से स्कूल के बोर्ड का Registration किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
                            </marquee>
                        </div>

                    </div>
                </div>
                <div class="col-lg-12  text-end">
                    <button type="button" id="btn1" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" onclick="div()"><i class="bx bx-plus label-icon align-middle me-2"></i>Add New School Board</button>

                    <button type="button" id="btn2" class="btn btn-primary btn-label waves-effect waves-light rounded-pill" style="display: none;" onclick="div1()"><i class="ri-arrow-go-back-line label-icon align-middle fs-16 me-2"></i>Back To List </button>

                </div>
            </div>
        </div>
        <div class="card-body">
            <span id="ContentBody_lblMsg"></span>
            <fieldset id="hide" style="display: none;">
                <legend>Add New School Board / नया स्कूल बोर्ड बनाएँ</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Board Name (In English)<br />
                                बोर्ड का नाम दर्ज करे(अंग्रेज़ी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" autocomplete="off" placeholder="Enter Board Name " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Board Name (In Hindi)<br />
                                बोर्ड का नाम दर्ज करे(हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl01" type="text" class="form-control" autocomplete="off" placeholder="बोर्ड का नाम दर्ज करे  " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Board Code
                                <br />
                                बोर्ड कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl02" type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input checked="checked" class="form-check-input" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
                            <label class="form-check-label">
                                Status
								<small>(Active/InActive)</small><br>
                                स्थिति (सक्रिय/निष्क्रिय)
                            </label>
                        </div>
                    </div>
                    <div class="col-md-12">
                        <hr />
                        <div class="form-group">
                            <button type="button" class="Alert-Confirmation btn btn-success btn-border">Save</button>
                            <a href="Mst_Loc_NagarPalika.aspx" class="btn btn-outline-danger w-lg btn-border">Clear</a>
                        </div>
                    </div>
                </div>
            </fieldset>
            <fieldset id="show1">
                <legend>School Board Details / स्कूल बोर्ड विवरण</legend>
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
                            <table class="table table-bordered text-center">
                                <thead class="nowrap">
                                    <tr>
                                        <th>Sr.No.
                                            <br />
                                            सरल क्र.</th>
                                        <th>Board Name (In English)<br />
                                            बोर्ड का नाम (अंग्रेज़ी में)</th>
                                        <th>Board Name (In Hindi)<br />
                                            बोर्ड का नाम (हिंदी में)</th>
                                        <th>Board Code<br />
                                            बोर्ड कोड संख्या</th>
                                        <th>Status(Active/InActive)
                                            <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                                            <br />
                                            कार्यवाहीं
                                            <br />
                                        </th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>CBSE</td>
                                    <td>सी.बी.एस.ई.</td>
                                    <td>01</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>State Board</td>
                                    <td>राज्य बोर्ड</td>
                                    <td>02</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>ICSE</td>
                                    <td>आई.सी.एस.ई.</td>
                                    <td>03</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>International Board</td>
                                    <td>अंतर्राष्ट्रीय बोर्ड</td>
                                    <td>04</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Others Board</td>
                                    <td>अन्य बोर्ड</td>
                                    <td>05</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Both CBSE & State Board</td>
                                    <td>सीबीएसई और राज्य बोर्ड दोनों</td>
                                    <td>06</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>7</td>
                                    <td>Madarsha Board</td>
                                    <td>मदरसा बोर्ड</td>
                                    <td>07</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span><a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </fieldset>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function div() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'block') ? 'none' : 'block';
            document.getElementById("show1").style.display = (document.getElementById("show1").style.display == 'none') ? 'block' : 'none';
            document.getElementById("btn2").style.display = (document.getElementById("btn2").style.display == 'block') ? 'none' : 'inline-block';
            document.getElementById("btn1").style.display = (document.getElementById("btn1").style.display == 'none') ? 'block' : 'none';
        }
    </script>
    <script>
        function div1() {
            document.getElementById("hide").style.display = (document.getElementById("hide").style.display == 'none') ? 'block' : 'none';
            document.getElementById("show1").style.display = (document.getElementById("show1").style.display == 'block') ? 'none' : 'block';
            document.getElementById("btn2").style.display = (document.getElementById("btn2").style.display == 'none') ? 'block' : 'none';
            document.getElementById("btn1").style.display = (document.getElementById("btn1").style.display == 'block') ? 'none' : 'inline-block';
        }
    </script>
</asp:Content>

