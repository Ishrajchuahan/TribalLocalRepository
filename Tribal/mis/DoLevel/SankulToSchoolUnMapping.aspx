﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="SankulToSchoolUnMapping.aspx.cs" Inherits="mis_DoLevel_SankulToSchoolUnMapping" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        .alert-success {
            color: white !important;
            background-color: #069570 !important;
            border-color: #b3edde !important;
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
                        <li class="breadcrumb-item"><a href="#SchoolDirectory" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>School Directory</span></a></li>
                        <li class="breadcrumb-item"><a href="#OISVerification" data-bs-toggle="collapse" onclick="SidebarToggle('SchoolDirectory')" role="button" aria-expanded="false"><span>OIS Verification</span></a></li>
                        <li class="breadcrumb-item">Sankul To School UnMapping</li>
                    </ol>
                </div>
            </div>
        </div>
    </div>
    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row align-items-end">
                <div class="col-lg-12">
                    <h4 class="card-title">Sankul-School UnMapping / संकुल-स्कूल अनमैपिंग
                    </h4>
                </div>
            </div>
        </div>
            <div class="card-body">
                <asp:Label runat="server" ID="lblMsg"></asp:Label>

                <fieldset>
                    <legend>Sankul-School UnMapping / संकुल-स्कूल अनमैपिंग</legend>
                    <div class="row align-items-end">
                       <div class="col-md-12 mt-3">
                            <div class="form-group">
                                <span class="bg-megnalight">Division : 
                                   <b class="font-bold">Bhopal</b> संभाग : भोपाल</span>&nbsp&nbsp&nbsp&nbsp
                       
                           <span class="bg-megnalight">District : 
                              <b class="font-bold">Bhopal  </b>जिला : भोपाल
                           </span>
                            </div>
                        </div>
                        <div class="col-md-3">
                            <div class="form-group">
                                <label >Enter School UDISE Code <br /> स्कूल यूडीआईएसई कोड दर्ज करें<span style="color: red"> *</span></label>
                                <asp:DropDownList runat="server" CssClass="form-control select2">
                                    <asp:ListItem> Enter Sankul UDISE Code</asp:ListItem>
                                    <asp:ListItem>14548455-AKBARPUR GOVT. HS</asp:ListItem>
                                    <asp:ListItem>14632121-BERASIA (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>24587465-DHAMARRA GOVT. HS</asp:ListItem>
                                    <asp:ListItem>15445463-EENT KHEDI GOVT. HSS</asp:ListItem>
                                    <asp:ListItem>24876546-BAIRAGARH (BOYS) GOVT.HSS</asp:ListItem>
                                    <asp:ListItem>24876588-BERAISA (GIRLS) SN HSS</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                         <div class="col-md-3 mb-4">
                            <asp:Button runat="server" ID="Button1" OnClick="Button1_Click" Text="Search" CssClass="btn btn-success w-lg btn-border" />
                        </div>

                         </div>
                   
                      <%--  <hr />
                        <div class="col-md-12">
                            <asp:Button runat="server" ID="btnsearch" CssClass="btn btn-success w-lg btn-border" Text="Search" OnClick="Button1_Click" />
                        </div>--%>
                       
                   

                    <%--<div class="row" id="divsave" runat="server" >
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table class="table">
                                    <tbody>
                                        <tr>

                                            <th>Sr. No.</th>

                                            <th>Block</th>
                                            <th>UDISE Code</th>
                                            <th>School Name</th>
                                            <th>School Board</th>
                                            <th>Management</th>
                                            <th>Category</th>
                                            <th>School Category Detail</th>
                                            <th>Action</th>
                                        </tr>
                                        <tr>
                                            <td>1</td>
                                            <td>Huzur</td>
                                            <td class="txt-link">
                                                <asp:HyperLink ID="LinkButton3" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
      23445656546

                                                </asp:HyperLink>
                                            </td>
                                            <td>Delhi Public School</td>
                                            <td>State Board</td>
                                            <td>DOE</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>
                                                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg" OnClientClick="return false;"><i class="fas fa-eye"></i></asp:LinkButton></td>
                                            <div id="Editmodal" class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                                <div class="modal-dialog modal-xxl" style="width: 100%;">
                                                    <div class="modal-content">
                                                        <div class="modal-header">
                                                            <h4 class="modal-title" id="myLargeModalLabel2">School Details</h4>
                                                            <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                        </div>
                                                        <div class="modal-body">
                                                            <fieldset>
                                                                <legend>School Basic Information</legend>

                                                                <div class="row">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox ID="TextBox3" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23445656546	"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="Kamla nehru school" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="कमला नेहरु स्कूल" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                                                <asp:ListItem>2-Indore</asp:ListItem>
                                                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">District<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Bhopal</asp:ListItem>
                                                                                <asp:ListItem>2-Raisen</asp:ListItem>
                                                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Block<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                                                <asp:ListItem>Berasia</asp:ListItem>
                                                                                <asp:ListItem>Phanda</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Location<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                                                <asp:ListItem Selected="True">2-Urban</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Huzur</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Parliamentary<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Bhopal</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Habitation </label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Berasia</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Board<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                                                <asp:ListItem Selected="True">2-State Board</asp:ListItem>
                                                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                                                <asp:ListItem>4-International</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Type<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server" Enabled="false">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                                                <asp:ListItem Selected="True">3-Co-Ed</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>School Category<span style="color: red;"> *</span></label>
                                                                            <select class="form-control select2" disabled>
                                                                                <option value=" -Select-">-Select-</option>
                                                                                <option value="1-Primary">1-Pre-Primary</option>
                                                                                <option value="1-Primary">2-Primary</option>
                                                                                <option selected value="2-Upper Primary">3-Upper Primary</option>
                                                                                <option value="3-Higher Secondary">4-Secondary</option>
                                                                                <option value="3-Higher Secondary">5-Higher Secondary</option>
                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label>School Category Details<span style="color: red;"> *</span></label>
                                                                            <select class="form-control select2" disabled>
                                                                                <option value=" -Select-">-Select-</option>
                                                                                <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                                                                <option selected value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
                                                                                <option value="3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)">3-Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</option>
                                                                                <option value="4-Upper Primary only with grades 6 to 8 (UPR)">4-Upper Primary only with grades 6 to 8 (UPR)</option>
                                                                                <option value="5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)">5-Higher Secondary with grades 6 to 12 (UPR-SEC-HSEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">6-Secondary with grades 1 to 10 (PRY-UPR-SEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">7-Secondary with grades 6 to 10 (UPR-SEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">8-Secondary only with grades 9 & 10 (SEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">9-Higher Secondary  with grades 9 & 12 (SEC-HSEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">10-HR.Sec /Jr/Collageonly with grades 11 & 12 (HSEC)</option>
                                                                                <option value="6-Secondary with grades 1 to 10 (PRY-UPR-SEC)">11-Pre-Primary Only (PRE)</option>

                                                                            </select>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Management Group<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">A-State Govt</asp:ListItem>
                                                                                <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                                                <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                                                <asp:ListItem>D-Central Govt</asp:ListItem>
                                                                                <asp:ListItem>E-Other</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Management<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">1-Department of Education (DOE)</asp:ListItem>
                                                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">In-Charge Type<span style="color: red;"> *</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="t">1-Head Master / Principal </asp:ListItem>
                                                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">IN-Charge Unique Id<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="68571" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">IN-Charge Name<span style="color: red;"> *</span></label>
                                                                            <asp:TextBox runat="server" placeholder="Mr.Ramcharan" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">IN-Charge Mobile Number <span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" placeholder="9895989654" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                                                         
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="t">2015</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>

                                                                                <asp:ListItem Selected="true">2-Sikh</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" runat="server" Enabled="false">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">19-English</asp:ListItem>
                                                                                <asp:ListItem>04-Hindi</asp:ListItem>
                                                                                <asp:ListItem>18-Urdu</asp:ListItem>
                                                                                <asp:ListItem>10-Marathi</asp:ListItem>
                                                                                <asp:ListItem>99-Other</asp:ListItem>
                                                                            </asp:DropDownList>

                                                                        </div>
                                                                    </div>



                                                                </div>

                                                            </fieldset>
                                                            <fieldset>
                                                                <legend>School Address Information</legend>


                                                                <div class="row">
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Address (Line 1)<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Address (Line 2)</label>
                                                                            <asp:TextBox runat="server" Placeholder="H No. 12 New rajeev nagar" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="462010" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="0755 1251 1258" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>

                                                                <div class="row">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                                                            <asp:TextBox runat="server" Placeholder="KNS@gmal.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Website</label>
                                                                            <asp:TextBox runat="server" Placeholder="KNSSchool.com" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Morning</asp:ListItem>
                                                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                                                <asp:ListItem>Both</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Yes</asp:ListItem>
                                                                                <asp:ListItem>No</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>



                                                                </div>

                                                                <div class="row">

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>CM Rise</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Model</asp:ListItem>
                                                                                <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                                                <asp:ListItem>District Excellence</asp:ListItem>
                                                                                <asp:ListItem>Block Excellence</asp:ListItem>
                                                                                <asp:ListItem>PM Shri </asp:ListItem>
                                                                                <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                                                <asp:ListItem>Urdu</asp:ListItem>
                                                                                <asp:ListItem>Marathi</asp:ListItem>
                                                                                <asp:ListItem>Sanskrit</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem Selected="True">Functional</asp:ListItem>
                                                                                <asp:ListItem>Closed</asp:ListItem>
                                                                                <asp:ListItem>Merged</asp:ListItem>
                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-3">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">hostel Attach<span style="color: red;">*</span></label>
                                                                            <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                                <asp:ListItem Selected="True">No</asp:ListItem>

                                                                            </asp:DropDownList>
                                                                        </div>
                                                                    </div>


                                                                </div>
                                                            </fieldset>
                                                            <fieldset>
                                                                <legend>School Bank Information</legend>

                                                                <div class="row">
                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox7" placeholder="Bank Of Baroda" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                    <div class="col-md-4">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox8" Placeholder="051121542585" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>
                                                                    <div class="col-md-4 ">
                                                                        <div class="form-group">
                                                                            <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                                                            <asp:TextBox ID="TextBox9" Placeholder="BARB0ASHOKA" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                                                        </div>
                                                                    </div>

                                                                </div>
                                                            </fieldset>
                                                        </div>
                                                        <div class="modal-footer">
                                                            <div class="row">

                                                                <div>

                                                                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                                                                </div>
                                                            </div>



                                                        </div>
                                                    </div>
                                                    <!-- /.modal-content -->
                                                </div>
                                                <!-- /.modal-dialog -->
                                            </div>
                                            <!-- /.modal -->
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>


                        <div class="col-md-1">
                            <label class="font-weight-bold">IsActive<i style="color: red;">*</i></label>
                            <br />
                            <asp:CheckBox Checked="true" runat="server" />
                        </div>
                        <div class="col-md-3 mt-4">
                            <div class="form-group">

                                <asp:Button  id="btnsave" OnClick="btnsave_Click" Text="Save" CssClass="btn btn-success Alert-Confirmrun btn-rounded" runat="server" />
                                <a href="SankulToschoolMapping.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>
                    </div>--%>
                </fieldset>

                <fieldset id="grid" runat="server">
                    <legend>Sankul to School UnMapping Details / संकुल से स्कूल अनमैपिंग विवरण</legend>
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
                                <table class="table table-bordered">
                                    <tbody>
                                        <tr>
                                            <th rowspan="2"><br /><br />Sr.No.<br />क्रमांक</th>
                                            <th rowspan="2"><br /><br />Action<br />कार्यवाही</th>

                                            <th colspan="5">School<br />स्कूल</th>
                                            <th colspan="5">Sankul<br />संकुल</th>

                                        </tr>
                                        <tr>

                                            <th>UDISE Code<br />UDISE कोड</th>
                                            <th>School Name<br />स्कूल के नाम</th>
                                            <th>Category<br />वर्ग</th>
                                            <th>School Category Detail<br />स्कूल श्रेणी विवरण</th>
                                            <th>School Board<br />स्कूल बोर्ड</th>
                                            <th>UDISE Code<br />UDISE कोड</th>
                                            <th>School Name<br />स्कूल के नाम</th>
                                            <th>Category<br />वर्ग</th>
                                            <th>School Category Detail<br />स्कूल श्रेणी विवरण</th>
                                            <th>School Board<br />स्कूल बोर्ड</th>
                                            <%--                                            <th>Action</th>--%>
                                        </tr>
                                        <tr>
                                            <td>1</td>

                                             <td>
     <input type="checkbox" />
 </td>
                                            <td class="txt-link">
                                                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                23450300631</asp:HyperLink></td>
                                            <td>Crist Academy School</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>State Board</td>
                                            <%--<td><a class="Alert-Delete"><i class="fa fa-trash"></i></a></td>--%>
                                            <td class="txt-link">
                                                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
23445656546</asp:HyperLink>
                                            </td>
                                            <td>Sarasvati Vidhya Mandir</td>
                                            <td>Primary</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>
                                            <td>CBSE</td>
                                           
                                        </tr>

                                        <%--              <tr>
                                            <td>2</td>
                                            <td>
                                                <input type="checkbox" />
                                            </td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink4" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                <b>2345030065</b></asp:HyperLink>
                                            </td>
                                            <td>Bal Bharti School</td>
                                            <td>Higher Secondary</td>
                                            <td>State Board</td>
                                            <td>Higher Secondary with grades 1 to 12 (PRY-UPR-SEC-HSEC)</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink5" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                <b>23450300649</b></asp:HyperLink>
                                            </td>
                                            <td>Delhi Public School</td>
                                            <td>Primary</td>
                                            <td>State Board</td>
                                            <td>Primary only with grades 1 to 5 (PRY)</td>

                                            <td>
                                                <a class="Alert-Delete"><i class="fa fa-trash"></i></a>
                                            </td>

                                        </tr>

                                        <tr>
                                            <td>3</td>
                                            <td>
                                                <input type="checkbox" />
                                            </td>

                                            <td>
                                                <asp:HyperLink ID="HyperLink7" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                <b>23450300649</b></asp:HyperLink>
                                            </td>
                                            <td>Geetanjali Public School</td>
                                            <td>Upper Primary</td>
                                            <td>ICSE</td>
                                            <td>Upper Primary with grades 1 to 8 (PRY-UPR)</td>
                                            <td>
                                                <asp:HyperLink ID="HyperLink8" runat="server" CssClass="btn view-but" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg"><i></i>
                                <b>23450300649</b></asp:HyperLink>
                                            </td>
                                            <td>Modern Convent School</td>
                                            <td>Upper Primary</td>
                                            <td>ICSE</td>
                                            <td>Upper Primary with grades 1 to 8 (PRY-UPR)</td>

                                            <td>
                                                <a class="Alert-Delete"><i class="fa fa-trash"></i></a>
                                            </td>

                                        </tr>--%>

                                        <!-- sample modal content -->
                                        <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                                            <div class="modal-dialog modal-xl">
                                                <div class="modal-content">
                                                    <div class="modal-header" id="myDIV">
                                                        <h4 class="modal-title" id="myLargeModalLabel1">School UnMapping / स्कूल अनमैपिंग</h4>
                                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                                                    </div>
                                                    <div class="modal-body">

                                                        <div class="row">
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Select Order Document Type<br />ऑर्डर दस्तावेज़ प्रकार का चयन करें</label>
                                                                    <select class="form-control">
                                                                        <option value="volvo">--Select--</option>
                                                                        <option value="volvo">Order Letter</option>
                                                                        <option value="volvo">Letter </option>
                                                                        <option value="volvo">Request Order Letter </option>
                                                                        <option value="volvo">Amendement Letter </option>
                                                                    </select>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Order No. <br />ऑर्डर संख्या</label>
                                                                    <asp:TextBox ID="TextBox4" placeholder="Enter Order No." runat="server" CssClass=" form-control"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Order Date<br />आर्डर की दिनांक</label>
                                                                    <input type="date" class="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Upload Order Copy<br />ऑर्डर कॉपी अपलोड करें</label>
                                                                    <asp:FileUpload runat="server" CssClass="form-control" />
                                                                </div>
                                                            </div>
                                                            <div class="col-md-3">
                                                                <div class="form-group">
                                                                    <label>Effective Date<br />प्रभावी दिनांक</label>
                                                                    <input type="date" class="form-control"/>
                                                                </div>
                                                            </div>


                                                            <div class="col-md-6">
                                                                <div class="form-group">

                                                                    <label>Remark / टिप्पणी</label>
                                                                    <textarea class="form-control" placeholder="Enter Remark" maxlength="100"></textarea>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="row m-l-5 mt-4">
                                                            <div class="col-md-12">
                                                                <label class="form-check m-b-0">
                                                                    <input type="checkbox" class="form-check-input">

                                                                    <span class="form-check-label"><b>जिला कार्यालय द्वारा आई डी क्रमांक:- E00015 से सत्यापन उपरांत आज दिनांक 22/11/2023 को मुख्य कार्यालय अनुमोदन हेतु भेजा जा रहा है|</b></span>
                                                                    <%--<asp:CheckBox ID="chkSatyapan" runat="server" CssClass="form-check-label" />--%>
                                                                </label>
                                                            </div>
                                                        </div>


                                                    </div>
                                                    <div class="modal-footer justify-content-center">

                                                        <button type="button" class="btn btn-success w-lg btn-border Alert-Mapping" data-bs-dismiss="modal">Save</button>
                                                        <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                                                    </div>
                                                </div>
                                                <!-- /.modal-content -->
                                            </div>
                                            <!-- /.modal-dialog -->
                                        </div>
                                        <!-- /.modal -->

                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </fieldset>

                <div class="row justify-content-center" runat="server" id="divbtn">
                    <div class="col-md-4 text-center">
                        <button type="button" data-bs-toggle="modal" data-bs-target=".bs-example-modal-lg2" class="btn btn-success w-lg btn-border Alert-UnMerge">Request For UnMapping</button>
                    </div>
                    <%--    <div class="col-md-2">

                                <button type="button" class="btn btn-danger btn-block btn-rounded Alert-Reject">Reject</button>

                            </div>--%>
                </div>



                <!--for UDISE CODE CLICK Add the Modal -->
                <!-- sample modal content -->
                <div class="modal bs-example-modal-lg" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
                    <div class="modal-dialog modal-xxl" style="width: 100%;">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h4 class="modal-title" id="myLargeModalLabel">School Details / स्कूल विवरण</h4>
                                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                            </div>
                            <div class="modal-body">
                                <fieldset>
                                    <legend>School Basic Information / स्कूल की जानकारी</legend>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School UDISE Code<br />स्कूल यू.डी.आई.एस.ई कोड<span style="color: red;"> *</span></label>
                                                <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="Enter UDISE Code"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Division <br /> संभाग का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Bhopal</asp:ListItem>
                                                    <asp:ListItem>2-Indore</asp:ListItem>
                                                    <asp:ListItem>3-Ujjain</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select District <br />  जिला का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Bhopal</asp:ListItem>
                                                    <asp:ListItem>2-Raisen</asp:ListItem>
                                                    <asp:ListItem>3-Sehore</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Block <br />  ब्लॉक का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Huzur</asp:ListItem>
                                                    <asp:ListItem>Berasia</asp:ListItem>
                                                    <asp:ListItem>Phanda</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Location <br /> स्थान का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Rural</asp:ListItem>
                                                    <asp:ListItem>2-Urban</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Assembly <br /> सभा का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Govindpura</asp:ListItem>
                                                    <asp:ListItem>Huzur</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Parliamentary<br />संसदीय का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Bhopal</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Habitation <br />आवास का चयन करें</label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Berasia</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                    </div>

                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Board Type<br />बोर्ड प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-CBSE</asp:ListItem>
                                                    <asp:ListItem>2-State Board</asp:ListItem>
                                                    <asp:ListItem>3-ICSE </asp:ListItem>
                                                    <asp:ListItem>4-International</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Type<br />स्कूल प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Boy</asp:ListItem>
                                                    <asp:ListItem>2-Girls</asp:ListItem>
                                                    <asp:ListItem>3-Co-Ed</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Category<br />स्कूल श्रेणी का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Primary</asp:ListItem>
                                                    <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                    <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                    <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Lowest Class<br />निम्नतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                                <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                <asp:dropdownlist cssclass="form-control" enabled="False" xmlns:asp="#unknown" runat="server">
                                                    <asp:listitem>-Select-</asp:listitem>
                                                    <asp:listitem>Nursary</asp:listitem>
                                                    <asp:listitem>LKG</asp:listitem>
                                                    <asp:listitem>UKG</asp:listitem>
                                                    <asp:listitem>1st</asp:listitem>
                                                    <asp:listitem>2nd</asp:listitem>
                                                    <asp:listitem>3rd</asp:listitem>
                                                    <asp:listitem>4th</asp:listitem>
                                                    <asp:listitem>5th</asp:listitem>
                                                    <asp:listitem>6th</asp:listitem>
                                                    <asp:listitem>7th</asp:listitem>
                                                    <asp:listitem>8th</asp:listitem>
                                                    <asp:listitem>9th</asp:listitem>
                                                    <asp:listitem>10th</asp:listitem>
                                                    <asp:listitem>11th</asp:listitem>
                                                    <asp:listitem>12th</asp:listitem>
                                                </asp:dropdownlist>
                                            </div>
                                        </div>

                                    </div>
                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Highest Class<br />उच्चतम वर्ग का चयन करें<span style="color: red;">*</span></label>
                                                <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>

                                                <asp:DropDownList CssClass="form-control" runat="server">

                                                    <asp:ListItem Selected="True">12th</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Management Group<br />प्रबंधन समूह का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>A-State Govt</asp:ListItem>
                                                    <asp:ListItem>B-Govt Aided</asp:ListItem>
                                                    <asp:ListItem>C-Private UnAided </asp:ListItem>
                                                    <asp:ListItem>D-Central Govt</asp:ListItem>
                                                    <asp:ListItem>E-Other</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Management<br />स्कूल प्रबंधन का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                    <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                    <asp:ListItem>3-Local Body </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select In-Charge Type<br />प्रभारी प्रकार का चयन करें<span style="color: red;"> *</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                    <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                    <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Unique Id<br />प्रभारी यूनिक आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="Enter IN-Charge Unique ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Name<br />प्रभारी का नाम<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" placeholder="Enter IN-Charge Name" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">IN-Charge Mobile Number <br />प्रभारी मोबाइल नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" placeholder="Enter IN-Charge Mobile Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Year of Establishment<br />स्थापना का वर्ष चुनें<span style="color: red;">*</span></label>
                                                <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control" ReadOnly="true"></asp:TextBox>--%>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>2015</asp:ListItem>
                                                    <asp:ListItem>2016</asp:ListItem>
                                                    <asp:ListItem>2017</asp:ListItem>
                                                    <asp:ListItem>2018</asp:ListItem>
                                                    <asp:ListItem>2019</asp:ListItem>
                                                    <asp:ListItem>2020</asp:ListItem>
                                                    <asp:ListItem>2021</asp:ListItem>
                                                    <asp:ListItem>2022</asp:ListItem>
                                                    <asp:ListItem>2023</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Minority Community <br />अल्पसंख्यक समुदाय का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>1-Muslim</asp:ListItem>
                                                    <asp:ListItem>2-Sikh</asp:ListItem>
                                                    <asp:ListItem>3-Jain</asp:ListItem>
                                                    <asp:ListItem>4-Christian</asp:ListItem>
                                                    <asp:ListItem>5-Parsi</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Medium<br />स्कूल माध्यम का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>19-English</asp:ListItem>
                                                    <asp:ListItem>04-Hindi</asp:ListItem>
                                                    <asp:ListItem>18-Urdu</asp:ListItem>
                                                    <asp:ListItem>10-Marathi</asp:ListItem>
                                                    <asp:ListItem>99-Other</asp:ListItem>
                                                </asp:DropDownList>

                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Name (In English)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">स्कूल का नाम (हिंदी में)<span style="color: red;"> *</span></label>
                                                <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>School Address Information / स्कूल की जानकारी</legend>


                                    <div class="row align-items-end">
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 1)<br />स्कूल का पता(1)<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Address (Line 2)<br />स्कूल का पता(2)</label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Pin Code<br />पिन कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Landline Number<br />लैंडलाइन नंबर<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Email ID<br />ईमेल आई.डी<span style="color: red;">*</span></label>
                                                <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Website<br />स्कूल की वेबसाइट</label>
                                                <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">School Shift <br />स्कूल शिफ्ट का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Morning</asp:ListItem>
                                                    <asp:ListItem>Afternoon</asp:ListItem>
                                                    <asp:ListItem>Both</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Is School Residential<br />क्या विद्यालय आवासीय है का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem Selected="True">No</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>



                                    </div>

                                    <div class="row align-items-end">

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Special School<br />विशेष विद्यालय का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>CM Rise</asp:ListItem>
                                                    <asp:ListItem>Model</asp:ListItem>
                                                    <asp:ListItem>CM Rise / Model (Both)</asp:ListItem>
                                                    <asp:ListItem>District Excellence</asp:ListItem>
                                                    <asp:ListItem>Block Excellence</asp:ListItem>
                                                    <asp:ListItem>PM Shri </asp:ListItem>
                                                    <asp:ListItem>EFA (Education for all)</asp:ListItem>
                                                    <asp:ListItem>Urdu</asp:ListItem>
                                                    <asp:ListItem>Marathi</asp:ListItem>
                                                    <asp:ListItem>Sanskrit</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>
                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select School Status<br />स्कूल की स्थिति का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Functional</asp:ListItem>
                                                    <asp:ListItem>Closed</asp:ListItem>
                                                    <asp:ListItem>Merged</asp:ListItem>
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="col-md-3">
                                            <div class="form-group">
                                                <label class="font-bold">Select Hostel Attach<br />हॉस्टल अटैच का चयन करें<span style="color: red;">*</span></label>
                                                <asp:DropDownList CssClass="form-control" ReadOnly="true" runat="server">
                                                    <asp:ListItem>-Select-</asp:ListItem>
                                                    <asp:ListItem>Yes</asp:ListItem>
                                                    <asp:ListItem>No</asp:ListItem>

                                                </asp:DropDownList>
                                            </div>
                                        </div>


                                    </div>
                                </fieldset>
                                <fieldset>
                                    <legend>School Bank Information / स्कूल बैंक सूचना</legend>

                                    <div class="row align-items-end">
                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Name<br />स्कूल बैंक खाते का नाम<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="col-md-4">
                                            <div class="form-group">
                                                <label class="font-bold">School Bank Account Number<br />स्कूल बैंक खाता संख्या<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox1" Placeholder="Enter Account Number" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="col-md-4 ">
                                            <div class="form-group">
                                                <label class="font-bold">IFSC Code<br />आईएफएससी कोड<span style="color: red;">*</span></label>
                                                <asp:TextBox ID="TextBox5" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>

                                    </div>
                                </fieldset>


                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-outline-danger w-lg btn-border" data-bs-dismiss="modal">Close</button>
                            </div>
                        </div>

                        <!-- /.modal-content -->
                    </div>

                    <!-- /.modal-dialog -->

                </div>
                <!-- /.modal -->





                <!--Description-->
                <%--    <fieldset id="dcp">
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Division name </strong>from dropdown. Data populated from <strong>Division master </strong>. </li>
                                    </ul>
                                </li>

                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>District name </strong>from dropdown. Data populated from <strong>District master </strong>as cascade from <strong>Division Name.</strong> </li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>Block name </strong>from dropdown. Data populated from <strong>Block master </strong>as cascade <strong>Division and District name.</strong> </li>
                                    </ul>
                                </li>

                                <li><strong>Sankul Name / UDISE Code</strong>
                                    <ul>
                                        <li>User will able to Select Sankul name from dropdown. Data populated from Sankul master as cascade from <strong>Division, District and Block Master.</strong></li>
                                    </ul>
                                </li>




                                <li><strong>Search</strong>
                                    <ul>
                                        <li>After click on Search button <strong>School Name / UDISE Code, Effective Date, ISActive,Save and Clear button </strong>will be visible and Search and it clear button hide. </li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
                                    </ul>
                                </li>


                                <li><strong>School Name / UDISE Code</strong>
                                    <ul>
                                        <li>School UDISE code will be auto populated data based on selected <strong>Division, District and Block name </strong>.</li>
                                        <li>The UDISE code for schools must be implemented as a multiselect dropdown.</li>
                                    </ul>
                                </li>

                                <li><strong>Effective Date </strong>
                                    <ul>
                                        <li>User will be able to select Effective Date, the field should be in a calendar format.</li>
                                    </ul>
                                </li>

                                <li><strong>Is Active (Checkbox)</strong>
                                    <ul>
                                        <li>If <strong>Is Active (Checkbox)</strong> is checked then need to show in every dependent <strong>Report / Dropdown Field / In Calculations</strong>.</li>
                                        <li><strong>Is Active checkbox</strong> is always be <strong>Checked/Active</strong>.</li>
                                        <li>The user must have the right to check or uncheck the Is Active Checkbox. </li>
                                    </ul>

                                </li>
                                <li><strong>Next </strong>
                                    <ul>
                                        <li>User should be able to click on next button.</li>
                                        <li>On next button click form field should be validated.</li>
                                        <li>After all fields Validate the Confirmation popup should be open with Message Format ("Are you sure?" "Do you want to save this record?").</li>
                                        <li>If click on Yes – Data will be saved and message will appear on the screen – Message ("Success!" "Record Saved Successfully!").</li>
                                        <li>If click on NO the data will not be saved and will return to the same page.</li>
                                        <li>After <strong>Save</strong> details Data will be visible in gridview.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
                                        <li>User should be able to click on Clear button. </li>
                                        <li>Click on the clear button to clear all field page data and reload the same page. </li>
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

                                <li><strong>UDISE Code (Gridview)</strong>
                                    <ul>
                                        <li>User will able to see school all information in pop-up by clicking on UDISE Code <strong>Hyperlink</strong> in gridview.</li>
                                        <li>On clicking the UDISE Code <strong>Hyperlink</strong>, complete information of the related school will appear in the pop up.</li>
                                    </ul>
                                </li>

                                <li><strong>Request Mapping</strong>
                                    <ul>

                                        <li>When the user clicks the Request Mapping button to send a request to the Head Office, a pop-up will open.</li>
                                        <li>After uploading the request related details like <strong>Date, Order Number, Relevant Documents and clicking on the Verification Check box,</strong> the request can be sent to the head office by clicking on the confirm button.</li>
                                    </ul>
                                </li>

                                <li><strong>Action (Delete)</strong>
                                    <ul>
                                        <li>If User Wants To Delete Any Data - Then User Can Clicking The Delete Icon</li>
                                        <li>A Pop Up Message Will Be Shown - Popup Message - Do You Want To Delete The Data?</li>
                                        <li>On Doing YES,</li>
                                        <li>The Data Will Be Deleted And The Popup Message Will Be Shown</li>
                                        <li>Popup Message - Data Deleted Successfully.</li>
                                        <li>On Doing No,</li>
                                        <li>The data will not be deleted.</li>

                                    </ul>
                                </li>
                            </ul>
                        </div>
                    </div>
                </fieldset>--%>
                <!-- End Description -->
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
    <%--<script>
        $(document).ready(function () {
            $('#<%= txtPurchase.ClientID %>').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
        });
    </script>--%>
    <script>
        function FbotonOn() {
            debugger
            alert("Are you sure you want to Send Request To Head Office");
            const element = document.getElementById("myDIV");
            element.className = "modal-header alert-success"
            document.getElementById('myLargeModalLabel1').innerHTML = "School Close Successfully";
            document.getElementById('data1').innerHTML = "UnMerged";


        }
    </script>




    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Confirmrun').click(function () {
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
                        }

                        var x = document.getElementById("grid");
                        if (x.style.visibility === "hidden") {
                            x.style.visibility = "visible";
                        } else {
                            x.style.visibility = "visible";
                        }

                        var y = document.getElementById("dcp");
                        if (y.style.visibility === "hidden") {
                            y.style.visibility = "visible";
                        } else {
                            y.style.visibility = "visible";
                        }

                        var j = document.getElementById("divbtn");
                        if (j.style.visibility === "hidden") {
                            j.style.visibility = "visible";
                        } else {
                            j.style.visibility = "visible";
                        }
                    })
                });

                $('.Alert-Mapping').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Unmap School?",
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
                                text: 'School Unmap Request Send Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
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

    <script>
        !function ($) {
            "use strict";
            var SweetAlert = function () { };
            //examples
            SweetAlert.prototype.init = function () {
                $('.Alert-Delete').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Delete Details?",
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
                                text: 'Details Deleted Successfully!',
                                timer: 2000
                                // animation: false,
                                // customClass: {
                                //     popup: 'animated tada'
                                // }
                            }
                            )
                        }
                    })
                });
                $('.Alert-Edit').click(function () {
                    Swal.fire({
                        title: 'Are you sure?',
                        text: "Do you want to Edit Details?",
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
                        //if (result.value) {
                        //    Swal.fire({
                        //        type: 'success',
                        //        title: 'Success!',
                        //        text: 'Salary Generated Successfully!',
                        //        timer: 2000
                        //        // animation: false,
                        //        // customClass: {
                        //        //     popup: 'animated tada'
                        //        // }
                        //    }
                        //    )
                        //}
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

