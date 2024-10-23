﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_Off_SchoolInchargeType.aspx.cs" Inherits="mis_Masters_Mst_SchoolInchargeType" %>

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
                        <li class="breadcrumb-item"><span>School Incharge Type Master Data</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से स्कूल के प्रभारी के प्रकार का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं 
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">School Incharge Type Master
                        <br />
                        स्कूल प्रभारी का प्रकार मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <fieldset>
                <legend>Add School Incharge Type Master / स्कूल प्रभारी का प्रकार जोड़ें</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter School Incharge Type Name(In English)<br />
                                स्कूल प्रभारी का प्रकार नाम दर्ज करे(अंग्रेज़ी में)<span style="color: red">*</span></label>
                            <input type="text" class="form-control" autocomplete="off" placeholder="Enter School Incharge Type " />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>Enter School Incharge Type Name(In Hindi)<br />
                                स्कूल प्रभारी का प्रकार नाम दर्ज करे(हिंदी में)<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl04" type="text" class="form-control" autocomplete="off" placeholder="स्कूल प्रभारी का प्रकार  दर्ज करे" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter Incharge Code No.
                                <br />
                                प्रभारी कोड संख्या दर्ज करे<span style="color: red">*</span></label>
                            <input type="text" class="form-control" placeholder="Enter Code No." onkeypress="return lettersOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <input class="form-check-input" checked="checked" type="checkbox" data-val="true" data-val-required="The IsActive field is required." id="IsActive" name="IsActive" value="true">
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
            <fieldset>
                <legend>School Incharge Type Master Details / स्कूल प्रभारी का प्रकार मास्टर विवरण</legend>
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
                                        <th>Sr.No.<br />
                                            सरल क्र.</th>
                                        <th>School Incharge Type Name (In English)<br />
                                            स्कूल प्रभारी का प्रकार नाम(अंग्रेज़ी में)</th>
                                        <th>School Incharge Type Name (In Hindi)<br />
                                            स्कूल प्रभारी का प्रकार नाम(हिंदी में)</th>
                                        <th>Incharge Code No.
                                        <br />
                                            प्रभारी कोड संख्या</th>
                                        <th>Status(Active/InActive)
                                        <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action
                                        <br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>Head Master/Principal</td>
                                    <td>प्रधानाचार्य</td>
                                    <td>01</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Asst. Head Master/ Vice Principal</td>
                                    <td>सहा. प्रधानाचार्य / उप प्रधानाचार्य</td>
                                    <td>02</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>

                                    <tr>
                                        <td>3</td>
                                        <td>Acting Head Teacher</td>
                                        <td>अभिनय मुख्य शिक्षक</td>
                                        <td>03</td>
                                        <td>Active</td>
                                        <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                    </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Incharge From Other School</td>
                                    <td>अन्य विद्यालय प्रभारी</td>
                                    <td>04</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>Incharge From Block/Ditric</td>
                                    <td>ब्लॉक/जिला प्रभारी</td>
                                    <td>05</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>6</td>
                                    <td>Others</td>
                                    <td>अन्य</td>
                                    <td>06</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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
</asp:Content>

