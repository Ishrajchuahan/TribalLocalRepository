﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="Rpt_SchoolRegistration.aspx.cs" Inherits="mis_Registration_Rpt_SchoolRegistration" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div id="dv_Masters_LocationMasters" runat="server">
        <div class="row page-titles mb-4">
            <div class="col-md-5 align-self-center">
                <h4 class="text-themecolor ">School Detail Report</h4>

            </div>
            <div class="col-md-7 align-self-center text-end">
                <div class="d-flex justify-content-end align-items-center">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                        <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchoolDirectory" title="click to go on">School Directory</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=Reports" title="click to go on">Reports</a></li>
                        <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchoolDirectory&SubID=SchoolReports" title="click to go on">School Reports</a></li>
                        <li class="breadcrumb-item active">School Detail Report</li>
                    </ol>
                </div>
            </div>
        </div>

        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <fieldset>
                    <legend>School Details</legend>

                    <div class="row form-group">
                        <%-- <div class="col-md-2">
                            <label class="font-bold">Registration Type<span style="color: red">*</span></label>
                            <span class="fa-pull-right">
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ValidationGroup="a"
                                    ErrorMessage="Select Institute Registration" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Institute Registration !'></i>"
                                    ControlToValidate="ddlInstituteReg" Display="Dynamic" runat="server">
                                </asp:RequiredFieldValidator>
                            </span>
                            <asp:DropDownList runat="server" CssClass="form-control select2" ID="ddlInstituteReg">
                                <asp:ListItem Value="0">-Select-</asp:ListItem>
                                <asp:ListItem>School</asp:ListItem>
                                <asp:ListItem>Institute Registration</asp:ListItem>
                            </asp:DropDownList>
                        </div>--%>
                        <div class="col-md-2">
                            <label class="font-bold">Division Name <span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Narmadapuram</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <label class="font-bold">District Name<span style="color: red">*</span></label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Bhopal</asp:ListItem>
                                <asp:ListItem>Raisen</asp:ListItem>
                                <asp:ListItem>Rajgarh</asp:ListItem>
                                <asp:ListItem>Sehore</asp:ListItem>
                                <asp:ListItem>Vidisha</asp:ListItem>
                                <asp:ListItem>Ashoknagar</asp:ListItem>
                                <asp:ListItem>Shivpuri</asp:ListItem>
                                <asp:ListItem>Datia</asp:ListItem>
                                <asp:ListItem>Guna</asp:ListItem>
                                <asp:ListItem>Gwalior</asp:ListItem>
                                <asp:ListItem>Harda</asp:ListItem>
                                <asp:ListItem>Hoshangabad</asp:ListItem>
                                <asp:ListItem>Betul</asp:ListItem>
                                <asp:ListItem>Morena</asp:ListItem>
                                <asp:ListItem>Sheopur</asp:ListItem>
                                <asp:ListItem>Bhind</asp:ListItem>
                                <asp:ListItem>Barwani</asp:ListItem>
                                <asp:ListItem>Burhanpur</asp:ListItem>
                                <asp:ListItem>Dhar</asp:ListItem>
                                <asp:ListItem>Indore</asp:ListItem>
                                <asp:ListItem>Jhabua</asp:ListItem>
                                <asp:ListItem>Khandwa</asp:ListItem>
                                <asp:ListItem>Khargone</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Balaghat</asp:ListItem>
                                <asp:ListItem>Chhindwara</asp:ListItem>
                                <asp:ListItem>Jabalpur</asp:ListItem>
                                <asp:ListItem>Katni</asp:ListItem>
                                <asp:ListItem>Mandla</asp:ListItem>
                                <asp:ListItem>Narsinghpur</asp:ListItem>
                                <asp:ListItem>Seoni</asp:ListItem>
                                <asp:ListItem>Rewa</asp:ListItem>
                                <asp:ListItem>Satna</asp:ListItem>
                                <asp:ListItem>Sidhi</asp:ListItem>
                                <asp:ListItem>Singroli</asp:ListItem>
                                <asp:ListItem>Chhatarpur</asp:ListItem>
                                <asp:ListItem>Damoh</asp:ListItem>
                                <asp:ListItem>Panna</asp:ListItem>
                                <asp:ListItem>Sagar</asp:ListItem>
                                <asp:ListItem>Tikamgarh</asp:ListItem>
                                <asp:ListItem>Shahdol</asp:ListItem>
                                <asp:ListItem>Umaria</asp:ListItem>
                                <asp:ListItem>Dindori</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Dewas</asp:ListItem>
                                <asp:ListItem>Mandsaur</asp:ListItem>
                                <asp:ListItem>Neemuch</asp:ListItem>
                                <asp:ListItem>Ratlam</asp:ListItem>
                                <asp:ListItem>Shajapur</asp:ListItem>
                                <asp:ListItem>Ujjain</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <label class="font-bold">Block Name</label>
                            <asp:DropDownList runat="server" CssClass="form-control select2">
                                <asp:ListItem>--Select--</asp:ListItem>
                                <asp:ListItem>Agar</asp:ListItem>
                                <asp:ListItem>Barod</asp:ListItem>
                                <asp:ListItem>Nalkheda</asp:ListItem>
                                <asp:ListItem>Susner</asp:ListItem>
                                <asp:ListItem>Alirajpur</asp:ListItem>
                                <asp:ListItem>Bhabra</asp:ListItem>
                                <asp:ListItem>Katthiwara</asp:ListItem>
                                <asp:ListItem>Sondwa</asp:ListItem>
                                <asp:ListItem>Udaygarh</asp:ListItem>
                                <asp:ListItem>Jobat</asp:ListItem>
                                <asp:ListItem>Anuppur</asp:ListItem>
                                <asp:ListItem>Jaithari</asp:ListItem>
                                <asp:ListItem>Kotma</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">School Name</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ValidationGroup="a"
                                        ErrorMessage="Select School Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Name !'></i>"
                                        ControlToValidate="ddlSchool" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchool">
                                    <asp:ListItem Value="0">All</asp:ListItem>
                                    <asp:ListItem>121-Sarasvati Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>101-Gyan Ganga Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>012-Reema Gyan Mandir</asp:ListItem>
                                    <asp:ListItem>131-Sarasvati Vidhya Mandir</asp:ListItem>
                                    <asp:ListItem>122-Bal Bharti Higher Secondary School</asp:ListItem>
                                    <asp:ListItem>321-NIPANIYA JAAT GOVT. HS</asp:ListItem>
                                    <asp:ListItem>123-GOVT PS BAL VIHAR</asp:ListItem>
                                    <asp:ListItem>136-GOVT MS VICTORIYA</asp:ListItem>
                                    <asp:ListItem>252-GOVT MS, SHISHU JEHANGIRABAD</asp:ListItem>
                                    <asp:ListItem>152-GOVT PS RAVIDAS COLONEY</asp:ListItem>
                                    <asp:ListItem>125-GOVT MS GIRLS GINNORI</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Management Group</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ValidationGroup="a"
                                        ErrorMessage="Select Management Name" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Name !'></i>"
                                        ControlToValidate="ddlManagementGrp" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlManagementGrp">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>A-State Govt</asp:ListItem>
                                    <asp:ListItem>B-Govt Aided</asp:ListItem>
                                    <asp:ListItem>C-Private UnAided </asp:ListItem>
                                    <asp:ListItem>D-Central Govt</asp:ListItem>
                                    <asp:ListItem>E-Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">Management Details</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" ValidationGroup="a"
                                        ErrorMessage="Select Management Details" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select Management Details !'></i>"
                                        ControlToValidate="ddlSchoolManagement" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolManagement">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                    <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                    <asp:ListItem>3-Local Body </asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">School Category</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" ValidationGroup="a"
                                        ErrorMessage="Select School Category" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Category !'></i>"
                                        ControlToValidate="ddlSchoolCat" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolCat">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>1-Primary</asp:ListItem>
                                    <asp:ListItem>2-Upper Primary</asp:ListItem>
                                    <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                    <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="col-md-2">
                            <div class="form-group">
                                <label>School Category Details</label>
                                <select class="form-control select2">
                                    <option value=" -Select-">-Select-</option>
                                    <option value="1-Primary only with grades 1 to 5 (PRY)">1-Primary only with grades 1 to 5 (PRY)</option>
                                    <option value="2-Upper Primary with grades 1 to 8 (PRY-UPR) ">2-Upper Primary with grades 1 to 8 (PRY-UPR) </option>
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
                        <div class="col-md-2">
                            <div class="form-group">
                                <label class="font-bold">School Code</label>
                                <span class="fa-pull-right">
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" ValidationGroup="a"
                                        ErrorMessage="Select School Code" InitialValue="0" ForeColor="Red" Text="<i class='fa fa-exclamation-circle' title='Select School Code !'></i>"
                                        ControlToValidate="ddlSchoolDiseCode" Display="Dynamic" runat="server">
                                    </asp:RequiredFieldValidator>
                                </span>
                                <asp:DropDownList CssClass="form-control select2" runat="server" ID="ddlSchoolDiseCode">
                                    <asp:ListItem Value="0"> -Select-</asp:ListItem>
                                    <asp:ListItem>23450404101</asp:ListItem>
                                    <asp:ListItem>23320300062</asp:ListItem>
                                    <asp:ListItem>23271000593</asp:ListItem>
                                    <asp:ListItem>23450900404</asp:ListItem>
                                    <asp:ListItem>23450300635</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>




                        <div class="col-md-4 mt-4">
                            <div class="form-group">
                                <asp:Button ID="btnSubmit" CssClass="btn btn-success btn-rounded" runat="server" Text="Search" OnClick="btnSubmit_Click" />


                                <a href="Rpt_SchoolRegistration.aspx" class="btn btn-danger btn-rounded">Clear</a>
                            </div>
                        </div>

                    </div>



                </fieldset>
                <div class="row form-group" id="dv_rpt" runat="server">

                    <div class="col-md-12">

                        <fieldset>
                            <legend>School  Details</legend>

                            <div class="row justify-content-end">
                                <div class="col-md-1 ">
                                    <div class="form-group">

                                        <asp:Button ID="Button2" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="Excel" />
                                    </div>
                                </div>
                                <div class="col-md-1">
                                    <div class="form-group">
                                        <asp:Button ID="Button3" CssClass="btn btn-info btn-rounded w-100" runat="server" Text="PDF" />
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <input type="text" id="searchInput" oninput="searchFunction()" class="form-control" placeholder="Search...">
                                    </div>
                                </div>

                            </div>

                            <table class="table table-responsive">
                                <tr>
                                    <th>Sr. No</th>
                                    <th>Division</th>
                                    <th>District</th>
                                    <th>Block</th>
                                    <th>School Code</th>
                                    <th>School Name</th>
                                    <th>Management Group</th>
                                    <th>Management Details</th>
                                    <th>Category</th>
                                    <th>Sankul(DDO)</th>
                                    <th>Incharge Name</th>
                                    <th>Functional</th>
                                    <th>Action</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Chambal</td>
                                    <td>SHEOPUR</td>
                                    <td>VIJAYPUR</td>
                                    <td>23010804504</td>
                                    <td>GOVT. HSS SHYAMPUR</td>
                                    <td>State Government</td>
                                    <td>Department of Education</td>
                                    <td>Higher Secodary</td>
                                    <td>GOVT. HSS SHYAMPUR</td>
                                    <td>Mr.Rammohan Yadav</td>
                                    <td>Yes/No</td>
                                    <td>
                                        <%--  <button class="btn view-but" onclick="openModal()">
                                     <i class="fas fa-eye"></i>View
                                 </button>--%>


                                        <asp:LinkButton ID="lnkOpenModal" runat="server" CssClass="view-but btn btn-success" OnClientClick="return false;"><i class="fas fa-eye"></i><br />View</asp:LinkButton>

                                    </td>
                                </tr>
                            </table>

                        </fieldset>
                    </div>
                </div>


                <%-- <fieldset>
                    <legend>Description</legend>
                    <div class="row">
                        <div class="col-md-12">
                            <ul class="main-ul">

                                <li><strong>Registration Type </strong>
                                    <ul>
                                        <li>User will be able to Select <strong>Registration Type </strong>from dropdown. Data populated from <strong>School Registration.</strong></li>
                                        <li>Registration Type field is mandatory.</li>
                                    </ul>
                                </li>
                                <li><strong>Division Name</strong>
                                    <ul>
                                        <li>User will be able to select the <strong>Division Name</strong> from dropdown and the data will be populated from <strong>Division master </strong>and cascade from <strong>State name.</strong> </li>
                                        <li>Division field is mandatory.</li>
                                    </ul>
                                </li>

                                <li><strong>District Name</strong>
                                    <ul>
                                        <li>User will be able to select <strong>District Name </strong>from dropdown and data will be populated from <strong>District master </strong>and data cascade from <strong>Division Master.</strong> </li>
                                        <li>District field is mandatory.</li>
                                    </ul>
                                </li>
                                <li><strong>Block Name</strong>
                                    <ul>
                                        <li>User should be able to select the <strong>Block Name</strong> from the dropdown and the data will be populated from the <strong>Block Master</strong> and data cascade from <strong>Division Master </strong>and<strong> District Master.</strong></li>
                                        <li>Block field is mandatory.</li>
                                    </ul>
                                </li>


                                <li><strong>School Name</strong>
                                    <ul>
                                        <li>User will be able to select the <strong>School name </strong>with UDISE code and the data populated to <strong>School registration</strong></li>
                                        <li>School Name field is mandatory.</li>

                                    </ul>
                                </li>

                                <li><strong>Management Group</strong>
                                    <ul>
                                        <li>User will be able to select the<strong> Management Group </strong>and the data populated to <strong>Management Group master</strong></li>
                                        <li>Management Group field is mandatory.</li>

                                    </ul>
                                </li>
                                <li><strong>Management Group Details  </strong>
                                    <ul>
                                        <li>User will be able to select the <strong>Management Group Detail</strong> and the data populated to <strong>Management Group detail</strong> and cascading from <strong>management group master</strong>.</li>
                                        <li>Management Group Details field is mandatory.</li>
                                    </ul>
                                </li>

                                <li><strong>School Category </strong>
                                    <ul>
                                        <li>User will be able to select the <strong>School category</strong> and the data populated to <strong>School category master.</strong></li>
                                        <li>School Category field is mandatory.</li>
                                    </ul>
                                </li>

                                <li><strong>UDISE Code </strong>
                                    <ul>
                                        <li>School UDISE code will be auto populated data based on selected <strong>Division, District and Block name</strong></li>
                                        <li>UDISE Code field is mandatory.</li>
                                    </ul>
                                </li>


                                <li><strong>Search </strong>
                                    <ul>
                                        <li>After click on Search button data will be visible in grid view.</li>
                                    </ul>

                                </li>
                                <li><strong>Clear</strong>
                                    <ul>
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
                                <li><strong>Searchbox</strong>
                                    <ul>
                                        <li>Users can search for any text value, and only the relevant text related to the search will be <strong>displayed</strong> . </li>

                                    </ul>
                                </li>

                            </ul>
                        </div>
                    </div>
                </fieldset>--%>


                <!-- Add the Modal -->
                <div id="myModal" class="modal fade bd-example-modal-xl" tabindex="-1" role="dialog" aria-labelledby="myExtraLargeModalLabel" aria-hidden="true">
                    <div class="modal-dialog modal-xl">
                        <div class="modal-content">
                            <div class="card">
                                <div class="card-header">
                                    School Information
     <asp:Label ID="Label1" runat="server" Text="" Visible="true"></asp:Label>

                                </div>
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-12">

                                            <div class="row">

                                                <div class="col-md-6">
                                                </div>
                                                <div class="col-md-6" style="margin-left: 502px">
                                                    <button id="lnkcloseModal" runat="server" type="button" class="btn btn-success" onclick="FbotonOn()">Santion Post</button>
                                                    <button id="InkCloseModal2" runat="server" type="button" class="btn btn-success" onclick="FbotonOn2()">Available Staff</button>

                                                </div>

                                            </div>
                                        </div>
                                        <div class="col-md-12">
                                            <fieldset>

                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School UDISE Code<span style="color: red;"> *</span></label>
                                                            <asp:TextBox ID="ir" runat="server" CssClass="form-control" ReadOnly="true" placeholder="23010804504"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Division<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                                <asp:ListItem Selected="True">2-Chambal</asp:ListItem>
                                                                <asp:ListItem>3-Ujjain</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">District<span style="color: red;"> *</span></label>
                                                            <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Bhopal</asp:ListItem>
                                                                <asp:ListItem Selected="True">2-SHEOPUR</asp:ListItem>
                                                                <asp:ListItem>3-Sehore</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Block</label>
                                                            <asp:DropDownList CssClass="form-control" Enabled="false" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Huzur</asp:ListItem>
                                                                <asp:ListItem Selected="True">VIJAYPUR</asp:ListItem>
                                                                <asp:ListItem>Phanda</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>

                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Location<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Rural</asp:ListItem>
                                                                <asp:ListItem>2-Urban</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Assembly <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Govindpura</asp:ListItem>
                                                                <asp:ListItem>Huzur</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Parliamentary</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Bhopal</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Habitation </label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Berasia</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Board Type</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-CBSE</asp:ListItem>
                                                                <asp:ListItem>2-State Board</asp:ListItem>
                                                                <asp:ListItem>3-ICSE </asp:ListItem>
                                                                <asp:ListItem>4-International</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Type</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Boy</asp:ListItem>
                                                                <asp:ListItem>2-Girls</asp:ListItem>
                                                                <asp:ListItem>3-Co-Ed</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Category</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Primary</asp:ListItem>
                                                                <asp:ListItem>2-Upper Primary</asp:ListItem>
                                                                <asp:ListItem>3-Higher Secondary</asp:ListItem>
                                                                <asp:ListItem>4-Upper Primary School</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Lowest Class<span style="color: red;">*</span></label>
                                                            <%--<asp:TextBox ID="txtclass" runat="server" placeholder="Enter Lowest Class" CssClass="form-control"></asp:TextBox>--%>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Nursary</asp:ListItem>
                                                                <asp:ListItem>LKG</asp:ListItem>
                                                                <asp:ListItem>UKG</asp:ListItem>
                                                                <asp:ListItem>1st</asp:ListItem>
                                                                <asp:ListItem>2nd</asp:ListItem>
                                                                <asp:ListItem>3rd</asp:ListItem>
                                                                <asp:ListItem>4th</asp:ListItem>
                                                                <asp:ListItem>5th</asp:ListItem>
                                                                <asp:ListItem>6th</asp:ListItem>
                                                                <asp:ListItem>7th</asp:ListItem>
                                                                <asp:ListItem>8th</asp:ListItem>
                                                                <asp:ListItem>9th</asp:ListItem>
                                                                <asp:ListItem>10th</asp:ListItem>
                                                                <asp:ListItem>11th</asp:ListItem>
                                                                <asp:ListItem>12th</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Highest Class<span style="color: red;">*</span></label>
                                                            <%-- <asp:TextBox ID="TextBox1" runat="server" placeholder="Enter Highest Class" CssClass="form-control"></asp:TextBox>--%>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>Nursary</asp:ListItem>
                                                                <asp:ListItem>LKG</asp:ListItem>
                                                                <asp:ListItem>UKG</asp:ListItem>
                                                                <asp:ListItem>1st</asp:ListItem>
                                                                <asp:ListItem>2nd</asp:ListItem>
                                                                <asp:ListItem>3rd</asp:ListItem>
                                                                <asp:ListItem>4th</asp:ListItem>
                                                                <asp:ListItem>5th</asp:ListItem>
                                                                <asp:ListItem>6th</asp:ListItem>
                                                                <asp:ListItem>7th</asp:ListItem>
                                                                <asp:ListItem>8th</asp:ListItem>
                                                                <asp:ListItem>9th</asp:ListItem>
                                                                <asp:ListItem>10th</asp:ListItem>
                                                                <asp:ListItem>11th</asp:ListItem>
                                                                <asp:ListItem>12th</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Management Group</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
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
                                                            <label class="font-bold">School Management</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>1-Department of Education (DOE)</asp:ListItem>
                                                                <asp:ListItem>2-Tribal walfare department(TWD)</asp:ListItem>
                                                                <asp:ListItem>3-Local Body </asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Type</label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
                                                                <asp:ListItem>1-Head Master / Principal </asp:ListItem>
                                                                <asp:ListItem>2-Asst. head Master  / VP</asp:ListItem>
                                                                <asp:ListItem>3-Acting Head Teacher </asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Unique Id<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Unique ID" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Name</label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Name" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">In Charge Mobile Number <span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" placeholder="Enter In Charge Mobile Number" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Year of Establishment<span style="color: red;">*</span></label>
                                                            <%-- <asp:TextBox runat="server" placeholder="Enter Year of Establishment" CssClass="form-control"></asp:TextBox>--%>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
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
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Minority Community <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
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
                                                            <label class="font-bold">School Medium<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
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
                                                            <label class="font-bold">School Name<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Name (In English)" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">स्कूल का नाम</label>
                                                            <asp:TextBox runat="server" Placeholder="स्कूल का नाम दर्ज करे|" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>

                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Address(Line 1)<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 1)" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Address(Line 2)</label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Address (Line 2)" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">


                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Pin Code<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Pin Code" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Landline Number<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Landline Number" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Email ID<span style="color: red;">*</span></label>
                                                            <asp:TextBox runat="server" Placeholder="Enter Email ID" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Website</label>
                                                            <asp:TextBox runat="server" Placeholder="Enter School Website" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">

                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Shift <span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Morning</asp:ListItem>
                                                                <asp:ListItem>Afternoon</asp:ListItem>
                                                                <asp:ListItem>Both</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Is School Residential<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                <asp:ListItem Selected="True">No</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Special School<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem> -Select-</asp:ListItem>
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
                                                            <label class="font-bold">School Status<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Functional</asp:ListItem>
                                                                <asp:ListItem>Closed</asp:ListItem>
                                                                <asp:ListItem>Merged</asp:ListItem>
                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="row">



                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">Hostel Facility<span style="color: red;">*</span></label>
                                                            <asp:DropDownList CssClass="form-control" runat="server">
                                                                <asp:ListItem>-Select-</asp:ListItem>
                                                                <asp:ListItem>Yes</asp:ListItem>
                                                                <asp:ListItem>No</asp:ListItem>

                                                            </asp:DropDownList>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                            <fieldset>
                                                <legend>School Bank Information</legend>
                                                <div class="row">
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Bank Account Name<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox2" placeholder="Enter Bank Name" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3">
                                                        <div class="form-group">
                                                            <label class="font-bold">School Bank Account Number<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox3" Placeholder="Enter Account Number" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                    <div class="col-md-3 mt-4">
                                                        <div class="form-group">
                                                            <label class="font-bold">IFSC Code<span style="color: red;">*</span></label>
                                                            <asp:TextBox ID="TextBox4" Placeholder="Enter IFSC Code" runat="server" CssClass="form-control"></asp:TextBox>
                                                        </div>
                                                    </div>
                                                </div>
                                            </fieldset>
                                        </div>
                                    </div>
                                    <div class="row form-group">
                                        <div class="col-md-12">
                                            <div class="row fa-pull-right">
                                                <div class="col-md-2">
                                                    <asp:Button runat="server" ID="btnclose" CssClass="btn btn-dark" Text="Close" />
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>


            </div>
        </div>
    </div>



</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%= lnkOpenModal.ClientID %>').click(function () {
                $('#myModal').modal('show');
            });
        });
    </script>

    <script>
        function FbotonOn() {


            $(document).ready(function () {
                $('#<%= lnkcloseModal.ClientID %>').click(function () {
                    $('#myModal').modal('hide');
                });
            });

            $(document).ready(function () {
                $('#<%= lnkcloseModal.ClientID %>').click(function () {
                    $('#myLargeModalLabel').modal('show');
                });
            });

            //alert("Are you sure you want to Merge school");
            //const element = document.getElementById("myDIV");
            //element.className = "modal-header alert-success"
            //document.getElementById('myLargeModalLabel1').innerHTML = "School Merged Successfully";
            //document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>



    <%--Santioned popup--%>
    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="myLargeModalLabel" aria-labelledby="myLargeModalLabel" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="Checkdiv">
                    <%--  <h4 class="modal-title" id="checkconfrm">Confirmation</h4>--%>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-responsive-lg">
                                <tr>
                                    <th colspan="3">Santioned Post</th>
                                </tr>
                                <tr>
                                    <th style="width: 2%">Sr.No.</th>
                                    <th>Post Name</th>
                                    <th>No. Of Santioned Post</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Samvidha Sikshak-1</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Samvidha Sikshak-2</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Samvidha Sikshak-3</td>
                                    <td>5</td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td></td>
                                    <td>Total</td>
                                    <td>14</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">

                    <%--<button type="button" class="btn btn-success" onclick="FbotonOn()">Conform</button>--%>
                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>

    <%--Working popup--%>
    <div class="modal bs-example-modal-lg2" tabindex="-1" role="dialog" id="myLargeModalLabel2" aria-labelledby="myLargeModalLabel2" aria-hidden="true" style="display: none;">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header" id="Checkdiv2">
                    <%--  <h4 class="modal-title" id="checkconfrm">Confirmation</h4>--%>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-hidden="true"></button>
                </div>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-12">
                            <table class="table table-bordered table-responsive-lg">

                                <tr>
                                    <th colspan="3">Available Staff</th>
                                </tr>
                                <tr>
                                    <th style="width: 2%">Sr.No.</th>
                                    <th>Post Name</th>
                                    <th>No. of Available Staff</th>
                                </tr>
                                <tr>
                                    <td>1</td>
                                    <td>Samvidha Sikshak-1</td>
                                    <td>4</td>
                                </tr>
                                <tr>
                                    <td>2</td>
                                    <td>Samvidha Sikshak-2</td>
                                    <td>5</td>
                                </tr>
                                <tr>
                                    <td>3</td>
                                    <td>Samvidha Sikshak-3</td>
                                    <td>5</td>
                                </tr>
                                <tr style="font-weight: bold">
                                    <td></td>
                                    <td>Total</td>
                                    <td>14</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">

                    <%--<button type="button" class="btn btn-success" onclick="FbotonOn()">Conform</button>--%>
                    <button type="button" class="btn btn-danger waves-effect text-start text-white" data-bs-dismiss="modal">Close</button>
                </div>
            </div>
            <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
    </div>



    <script>
        function FbotonOn2() {


            $(document).ready(function () {
                $('#<%= InkCloseModal2.ClientID %>').click(function () {
                    $('#myModal').modal('hide');
                });
            });

            $(document).ready(function () {
                $('#<%= InkCloseModal2.ClientID %>').click(function () {
                    $('#myLargeModalLabel2').modal('show');
                });
            });

            //alert("Are you sure you want to Merge school");
            //const element = document.getElementById("myDIV");
            //element.className = "modal-header alert-success"
            //document.getElementById('myLargeModalLabel1').innerHTML = "School Merged Successfully";
            //document.getElementById('data1').innerHTML = "UnMerged";

        }
    </script>
</asp:Content>

