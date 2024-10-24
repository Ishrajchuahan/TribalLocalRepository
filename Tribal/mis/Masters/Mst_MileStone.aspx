﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Mst_MileStone.aspx.cs" Inherits="mis_Masters_Mst_MileStone" %>

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
                            <a href="#developmentMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')">
                                <span>Development Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">MileStone Master Data</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="marqueecontainer">
        <div class="headertext">Details About Page / पेज के बारे में विवरण</div>
        <div>
            <marquee style="width: 100%;" onmouseover="this.stop();" onmouseout="this.start();" direction="left" behavior="scroll" scrollamount="7" class="Marqueetext">
                इस पेज के माध्यम से माइल स्टोन को  Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </marquee>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">MileStone Master / माइल स्टोन मास्टर</h4>
                </div>
            </div>
        </div>

        <div class="card-body">
            <asp:Label runat="server" ID="lblMsg"></asp:Label>
            <fieldset>
                <legend>Add MileStone / माइल स्टोन जोड़े</legend>
                <div class="row align-items-end">
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Work Category 
             <br />
                                कार्य की श्रेणी का चयन करे<span style="color: red">*</span></label>
                            <select id="work-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">School Repair/Construction</option>
                                <option value="B">Drinking Water System</option>
                                <option value="c">School Road Construction</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select Work Subcategory
                                <br />
                                कार्य की उपश्रेणी का चयन करे<span style="color: red">*</span></label>
                            <select id="Subwork-category" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">Building Repair</option>
                                <option value="B">Hand Pump Mining</option>
                                <option value="C">Water Tank construction</option>
                                <option value="D">CC Road Construction</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Select MileStone Type
                                <br />
                                माइल स्टोन प्रकार का चयन करे<span style="color: red">*</span></label>
                            <select id="Project" class="form-control select2">
                                <option value="--Select--">--Select--</option>
                                <option value="A">Technical </option>
                                <option value="B">Financial</option>
                            </select>
                        </div>
                    </div>
                    <div class="col-md-6 col-lg-4 col-xl-3">
                        <div class="form-group">
                            <label>
                                Enter MileStone Name<br />
                                माइल स्टोन नाम दर्ज करे<span style="color: red">*</span></label>
                            <input name="ctl00$ContentBody$ctl00" type="text" class="form-control" placeholder="Enter Miled Stone Name " onkeypress="return hindiOnly();" />
                        </div>
                    </div>
                    <div class="col-md-3">
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
                <legend>MileStone Details / माइल स्टोन विवरण</legend>
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
                                        <th>Sr. No.
                                            <br />
                                            सरल क्र.</th>
                                        <th>Work Category
                                            <br />
                                            कार्य की श्रेणी</th>
                                        <th>Work Subcategory
                                            <br />
                                            कार्य की उपश्रेणी</th>
                                        <th>MileStone Type<br />
                                            माइल स्टोन प्रकार</th>
                                        <th>MileStone Name
                                            <br />
                                            माइल स्टोन नाम</th>
                                        <th>Status(Active/InActive)
       <br />
                                            स्थिति (सक्रिय/निष्क्रिय)</th>
                                        <th>Action<br />
                                            कार्यवाहीं</th>
                                    </tr>
                                </thead>
                                <tr>
                                    <td>1</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>Technical</td>
                                    <td>Final level completion</td>
                                    <td>Active</td>
                                    <td class="nowrap"><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Drinking Water System</td>
                                    <td>Hand Pump Mining</td>
                                    <td>Technical</td>
                                    <td>Mid level completion</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>School Repair/Construction</td>
                                    <td>Building Repair</td>
                                    <td>Technical</td>
                                    <td>Mid level completion</td>
                                    <td>InActive</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>4</td>
                                    <td>Drinking Water System</td>
                                    <td>Water Tank construction</td>
                                    <td>Technical</td>
                                    <td>Foundation</td>
                                    <td>Active</td>
                                    <td><span class="Alert-Edit btn btn-outline-primary"><i class="fa fa-pen"></i></span> <a class="Alert-Delete btn btn-outline-danger"><i class="fa fa-trash"></i></a></td>
                                </tr>
                                <tr>
                                    <td>5</td>
                                    <td>School Road Construction</td>
                                    <td>CC Road Construction</td>
                                    <td>Technical</td>
                                    <td>Plinth	</td>
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

