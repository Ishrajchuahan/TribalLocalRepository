﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" %>

<script runat="server">

</script>

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
                        <li class="breadcrumb-item"><a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">Civil Construction Master Data
                        </a></li>
                        <li class="breadcrumb-item">Work Subcategory Master</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से नए कार्य उपश्रेणी को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">Work Subcategory Master / कार्य उपश्रेणी मास्टर</h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add Work Subcategory / कार्य उपश्रेणी जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Select Work Category Name
             <br />
                                कार्य की श्रेणी का चयन करें<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">विद्यालय का रख-रखाव कार्य	</option>
                                <option value="B">पेयजल व्यवस्था</option>
                                <option value="C">स्कूल मार्ग निर्माण</option>
                                <option value="D">सी.सी.रोड निर्माण</option>

                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Enter Work Subcategory Name(In English)
                                <br />
                                कार्य की उपश्रेणी का नाम अंग्रेजी में दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Work Subcategory" onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                                Enter Work Subcategory Name(In Hindi)
                                <br />
                                कार्य की उपश्रेणी का नाम हिंदी में दर्ज करें<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="कार्य की उपश्रेणी दर्ज करें" onkeypress="return hindiOnly();" />
                        </div>
                    </div>

                         <div class="col-md-6 col-lg-4 col-xl-4">
                        <div class="form-group">
                            <label>
                               Select Unit 
                                <br />
                                इकाई का चयन करें
                               <span style="color: red">*</span></label>
                            <select id="unit" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">Number	</option>
                                <option value="B">Square Meter</option>
                                <option value="C">Meter</option>
                                <option value="D">Kilo Meter</option>

                            </select>
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
                        <button type="button" class="Alert-Confirmation btn btn-outline-success btn-border  w-lg">Save</button>
                        <a href="Mst_WorkSubcategory.aspx" class="btn btn-outline-danger btn-border w-lg">Clear</a>
                    </div>
                </div>
            </fieldset>
            <fieldset>
                <legend>Work Subcategory Details / कार्य उपश्रेणी विवरण</legend>
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
                                <tr>
                                    <th>Sr.No.
                                        <br />
                                        सरल क्र</th>
                                    <th>Work Category 
                                        <br />
                                        कार्य की श्रेणी
                                    </th>
                                    <th>Work Subcategory(In English)<br />
                                        कार्य की उपश्रेणी(अंग्रेजी में)</th>
                                    <th>Work Subcategory(In Hindi)<br />
                                        कार्य की उपश्रेणी(हिन्दी में)</th>
                                    <th>Unit<br />
                                        इकाई</th>
                                    <th>Status(Active/InActive)
       <br />
                                        स्थिति (सक्रिय/निष्क्रिय)</th>
                                    <th>Action<br />
                                        कार्यवाहीं</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>विद्यालय का रख-रखाव कार्य</td>
                                    <td>Building Repair</td>
                                    <td>इमारत मरम्मत</td>
                                    <td>Number</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>Hand Pump Mining</td>
                                    <td>हेंडपंप खनन</td>
                                    <td>Number</td>
                                    <td>InActive</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>पेयजल व्यवस्था</td>
                                    <td>Water Tank Construction</td>
                                    <td>पानी की टंकी निर्माण</td>
                                    <td>Number</td>
                                    <td>InActive</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>स्कूल मार्ग निर्माण</td>
                                    <td>CC Road Construction</td>
                                    <td>सी.सी.रोड निर्माण</td>
                                        <td> Kilo Meter</td>
                                    <td>InActive</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
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

