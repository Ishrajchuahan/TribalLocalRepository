﻿<%@ Page Title="" Language="C#" MasterPageFile="~/mis/MainMaster.master" AutoEventWireup="true" CodeFile="School-wiseSurplusTeachers.aspx.cs" Inherits="mis_Report_School_wiseSurplusTeachers" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        .head {
            justify-content: space-around;
            margin: 10px;
            margin-bottom: 800px;
            font-weight: 400;
            font-size: 20px;
            color: white;
        }

            .head:hover {
                color: red;
                text-decoration: underline;
            }

        .nav {
            background-color: #005b5c;
            padding: 10px;
        }

        title {
            background-color: brown;
        }
    </style>

</asp:Content>




<asp:Content ID="Content2" ContentPlaceHolderID="ContentBody" runat="Server">




    <header class="bg-Secondary">
        <h2 class="fw-normal"><a href="#">Surplus Teachers Management System</a></h2>
    </header>
    <div class="mb-3">
        <div class="row nav">
            <div class="col-md-12 justify-content-around">
                <a class="head" href="Trn_GenerateTransferOrder.aspx">Home</a>
                <a class="head">Zero Teachers </a>
                <a class="head">Single Teachers</a>
                <a class="head">Surplus Status</a>

            </div>
        </div>
    </div>
    <center>
        <h3 class="alert alert-success">School-wise Surplus Teachers
        </h3>
    </center>











    <div>
        <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tblS1" style="width: 100%; border-collapse: collapse;">
            <thead>
                <tr>
                    <th scope="col">DISECode</th>
                    <th scope="col">School</th>
                    <th scope="col">Sanctioned Posts</th>
                    <th scope="col">Working</th>
                    <th scope="col">Surplus Teachers</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="#23510817802">23510817802  </a></td>
                    <td>GPS SANAWADI KA MAJRA</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510817101">23510817101  </a></td>
                    <td>GMS GHANIKHEDI</td>
                    <td>3</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510806003">23510806003  </a></td>
                    <td>GMS GUNDIKALA (1 to 8)</td>
                    <td>5</td>
                    <td>3</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510807601">23510807601  </a></td>
                    <td>PS RAIPURIYA</td>
                    <td>2</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510810302">23510810302  </a></td>
                    <td>GMS PIPALYA KUMAR</td>
                    <td>3</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510814201">23510814201  </a></td>
                    <td>P.S. KOLUKHEDI</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510804309">23510804309  </a></td>
                    <td>GHSS EXCELL. AGAR</td>
                    <td>31</td>
                    <td>10</td>
                    <td>11</td>
                </tr>
                <tr>
                    <td><a href="#23510800901">23510800901  </a></td>
                    <td>P.S. PACHORA</td>
                    <td>3</td>
                    <td>4</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510802002">23510802002  </a></td>
                    <td>GMS PACHETI(1 to 8)</td>
                    <td>6</td>
                    <td>7</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td><a href="#23510804501">23510804501  </a></td>
                    <td>P.S. DHOTI</td>
                    <td>2</td>
                    <td>4</td>
                    <td>2</td>
                </tr>
                <tr>
                    <td><a href="#23510817301">23510817301  </a></td>
                    <td>GMS MAHUDIYA (1 to 8)</td>
                    <td>5</td>
                    <td>6</td>
                    <td>3</td>
                </tr>
                <tr>
                    <td><a href="#23510809101">23510809101  </a></td>
                    <td>PS SEMLI</td>
                    <td>3</td>
                    <td>3</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510812601">23510812601  </a></td>
                    <td>P.S. NEVARI</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510813103">23510813103  </a></td>
                    <td>PS BANJARA DERA GHURASIA</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#232208ODS01">232208ODS01  </a></td>
                    <td>DEO AGAR MALWA</td>
                    <td>0</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510802708">23510802708  </a></td>
                    <td>P.S. JHANDA WALI PATHAR</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510807602">23510807602  </a></td>
                    <td>GMS RAIPURIYA</td>
                    <td>3</td>
                    <td>0</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510808904">23510808904  </a></td>
                    <td>GMS CHANDAN GAON</td>
                    <td>5</td>
                    <td>1</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510809401">23510809401  </a></td>
                    <td>P.S. DUDH PURA</td>
                    <td>2</td>
                    <td>3</td>
                    <td>1</td>
                </tr>
            </tbody>
            <tfoot>
            </tfoot>
        </table>
    </div>







    <div>
        <table class="table table-bordered table-hover bg-white" cellspacing="0" rules="all" border="1" id="tblS2" style="width: 100%; display:none; border-collapse: collapse;">
            <thead>
                <tr>
                    <th scope="col">DISECode</th>
                    <th scope="col">School</th>
                    <th scope="col">Sanctioned Posts</th>
                    <th scope="col">Working</th>
                    <th scope="col">Surplus Teachers</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td><a href="#23510100703">23510100703  </a></td>
                    <td>GMS AMBA BAROD (1 to 8)</td>
                    <td>10</td>
                    <td>6</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510103102">23510103102  </a></td>
                    <td>GPS JAYSINGHPURA</td>
                    <td>4</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105302">23510105302  </a></td>
                    <td>GMS  BARGADI (1 to 8)</td>
                    <td>5</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510109903">23510109903  </a></td>
                    <td>GPS DURGPURA KA KHEDA KHANDAVAS</td>
                    <td>2</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510113201">23510113201  </a></td>
                    <td>GPS DEHARIYA NANA</td>
                    <td>2</td>
                    <td>2</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510101402">23510101402  </a></td>
                    <td>GMS EKLERA</td>
                    <td>3</td>
                    <td>0</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510100101">23510100101  </a></td>
                    <td>GPS KANGIKHEDA</td>
                    <td>2</td>
                    <td>3</td>
                    <td>1</td>
                </tr>
                <tr>
                    <td><a href="#23510103002">23510103002  </a></td>
                    <td>M.S. BHADWASA (Class 1 to 8)</td>
                    <td>8</td>
                    <td>5</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105304">23510105304  </a></td>
                    <td>GPS BANOTHI KALA BARGADI</td>
                    <td>2</td>
                    <td>2</td>
                    <td>0</td>
                </tr>
                <tr>
                    <td><a href="#23510105402">23510105402  </a></td>
                    <td>GMS AMBADEV</td>
                    <td>3</td>
                    <td>1</td>
                    <td>0</td>
                </tr>
            </tbody>
        </table>
    </div>




</asp:Content>






<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">

    <script>
        function showtbl(tblId) {
            var tables = document.getElementsByTagName('table');
            for (var i = 0; i < tables.length; i++) {
                tables[i].style.display = "none";
            }

            document.getElementById(tblId).style.display = "table";
        }
    </script>

</asp:Content>
