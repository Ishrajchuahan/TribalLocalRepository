﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true"  CodeFile="FreeTextbookDistributionSchoolwise.aspx.cs" Inherits="mis_Scheme_FreeTextbookDistributionSchoolwise" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">
    <style>
        #Report {
            display: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">
    <div class="row page-titles mb-4">
        <div class="col-md-5 align-self-center">
            <h4 class="text-themecolor ">Free Textbook - School wise distribution information</h4>
        </div>
        <div class="col-md-7 align-self-center text-end">
            <div class="d-flex justify-content-end align-items-center">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="../Default.aspx" title="click to go on">Home</a></li>
                    <li class="breadcrumb-item"><a href="../Module.aspx?ID=SchemeManagement" title="click to go on">Scheme Management</a></li>
                    <li class="breadcrumb-item"><a href="../Menu.aspx?ID=SchemeManagement&SubID=LaptopScheme" title="click to go on">Textbook Vitran Scheme</a></li>
                    <li class="breadcrumb-item active"><a href="FreeTextbookDistributionJanShikshaKendrawise.aspx" title="click to go on">Free Textbook distribution- School wise</a></li>
                </ol>
            </div>
        </div>
        <div class="card mt-3 shadow">
            <div class="card-header card-border-info">
            </div>
            <div class="card-body">

                <div class="mt-3">
                    <fieldset>
                        <legend>Free Textbook - School wise distribution information </legend>

                        <div class="row ">
                             <div class="col-md-3">
                                <label class="font-bold">Academic Year<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">2024-25</option>
                                    <option value="14">2023-24</option>
                                    <option value="16">2022-23</option>
                                    <option value="18">2021-22</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">District<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="51">AGAR MALWA </option>
                                    <option value="49">ALIRAJPUR  </option>
                                    <option value="47">ANUPPUR  </option>
                                    <option value="46">ASHOKNAGAR </option>
                                    <option value="45">BALAGHAT  </option>
                                    <option value="28">BARWANI  </option>
                                    <option value="35">BETUL  </option>
                                    <option value="3">BHIND  </option>
                                    <option value="32">BHOPAL  </option>
                                    <option value="48">BURHANPUR  </option>
                                    <option value="9">CHHATARPUR  </option>
                                    <option value="43">CHHINDWARA  </option>
                                    <option value="12">DAMOH  </option>
                                    <option value="5">DATIA  </option>
                                    <option value="23">DEWAS  </option>
                                    <option value="25">DHAR  </option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">Book Type<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">Text book</option>
                                    <option value="14">Practical book</option>
                                    <option value="16">Work book</option>
                                    <option value="18">FLN</option>
                                </select>
                            </div>

                             <div class="col-md-3">
                                <label class="font-bold">Block<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="51">BHITARWAR </option>
                                    <option value="49">BAMORI  </option>                                   
                                    <option value="23">DABRA  </option>
                                    <option value="25">AMARPUR  </option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold"> Medium<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">Hindi</option>
                                    <option value="14">English</option>
                                    <option value="16">Urdu</option>
                                    <option value="18">Marathi</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold"> Class<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">1st</option>
                                    <option value="14">2nd</option>
                                    <option value="16">3rd</option>
                                    <option value="18">4th</option>
                                    <option value="19">5th</option>
                                    <option value="17">6th</option>
                                    <option value="13">7th</option>
                                    <option value="11">8th</option>
                                </select>
                            </div>

                            <div class="col-md-3">
                                <label class="font-bold">Subject<span style="color: red">*</span></label>
                                <select name="ctl00$ContentBody$ctl02" class="form-control select2">
                                    <option value="--Select--">--Select--</option>
                                    <option value="12">First Language - Hindi Special/Specialized other</option>
                                    <option value="14">Second Language - English / General other </option>
                                    <option value="16">Third Language - Sanskrit/Sanskrit other</option>
                                    <option value="18">Mathematic/ music</option>
                                    <option value="19">Environmental Studies / morphology</option>
                                    <option value="17">Social science</option>
                                    <option value="13">Additional Language / General Urdu/other</option>
                                   </select>
                            </div>

                            <div class="col-lg-12 mt-5">

                                <div class="col-lg-12">

                                    <div class="row justify-content-center">
                                        <div class="col-lg-3 text-center">
                                            <img src="../../img/captcha.png" width="150" />
                                        </div>
                                        <div class="col-lg-12"></div>
                                        <div class="col-lg-4 text-center">
                                            <label class="font-bold">Please enter the code shown above</label>
                                        </div>
                                        <div class="col-lg-12"></div>

                                        <div class="col-lg-1 ">
                                            <div class="form-group">
                                                <input type="text" class="form-control text-center" />
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                            <div class="col-md-3 text-center">
                                <div class="form-group">
                                    <button type="button" id="btnShowDetails" class="btn btn-success btn-rounded" onclick="Show();">Show </button>
                                </div>
                            </div>
                                </div>
                        </div>
                    </fieldset>
                    <div id="Report">

                        <fieldset>
                            <legend>Total Textbook distribute</legend>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="table-responsive">


                                        <table class="table text-center table-bordered table-hover text-center">
                                            <thead>
                                                <tr>
                                                    <th>S.No.</th>
                                                    <th>District</th>
                                                    <th>Block</th>
                                                    <th>School</th>
                                                    <th>Medium</th>
                                                    <th>Class</th>
                                                    <th>Subject</th>
                                                    <th>Textbook</th>
                                                    <th>Total target of books in dispatch order for school</th>
                                                    <th>Total Textbooks Ordered</th>
                                                    <th>Number of textbooks in the order supplied by BRC to the school</th>
                                                    <th>Number of textbooks received by School</th>
                                                    <th>% Performance achieved by schools</th>                                                   
                                                    <th>Number of textbooks distributed</th>
                                                    <th>% of textbooks distributed against ordered textbooks</th>

                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr>
                                                    <td>1</td>
                                                    <td>GWALIOR</td>
                                                    <td>Bhitarwar</td>
                                                    <td>GGMS ANTRI (1 to 8) 23040212104</td>
                                                    <td>Hindi</td>
                                                    <td>6th</td>
                                                    <td>First Language - Hindi Special/Specialized other</td>
                                                    <td>Bhasha Bharati-7</td>
                                                    <td>0</td>
                                                    <td>23</td>
                                                    <td>23</td>                                                    
                                                    <td>23</td>                                                    
                                                    <td>100.0</td>
                                                    <td>23</td>
                                                    <td>100.0</td>
                                                </tr>
                                                <tr>
                                                    <td>2</td>
                                                    <td>GWALIOR</td>
                                                    <td>DABRA</td>
                                                    <td>GMS GNADOLKHURD ( 6 to 8) 23040102702</td>
                                                    <td>Hindi</td>
                                                    <td>6th</td>
                                                    <td>First Language - Hindi Special/Specialized other</td>
                                                    <td>Bhasha Bharati-7</td>
                                                    <td>0</td>
                                                    <td>19</td>
                                                    <td>19</td>                                                    
                                                    <td>19</td>                                                    
                                                    <td>100.0</td>
                                                    <td>19</td>
                                                    <td>100.0</td>
                                                </tr>
                                                 <tr>
                                                    <td>3</td>
                                                    <td>GWALIOR</td>
                                                    <td>DABRA</td>
                                                    <td>GMS HARIJAN COLONEY ( 6 to 8) 23040101802</td>
                                                    <td>Hindi</td>
                                                    <td>7th</td>
                                                    <td>Second Language - English /General other</td>
                                                    <td>English Reader (General Series)-7</td>
                                                    <td>0</td>
                                                    <td>17</td>
                                                    <td>17</td>                                                    
                                                    <td>17</td>                                                    
                                                    <td>100.0</td>
                                                    <td>0</td>
                                                    <td>0.0</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </div>

            </div>
        </div>
    </div>
    <script>
        function Show() {
            var element = document.getElementById("Report");
            element.style.display = "block";
        }
    </script>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>



