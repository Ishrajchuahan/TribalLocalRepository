<%@ Page Title="" Language="C#" MasterPageFile="~/Tribal/mis/MainMaster.master" AutoEventWireup="true" CodeFile="AboutDetails.aspx.cs" Inherits="Tribal_mis_Masters_AboutDetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentHeader" runat="Server">

    <style>
        p {
            margin: 0 0 0 40.5pt;
            text-indent: -27pt;
            line-height: 26px;
            font-family: Mangal, serif;
            font-size: 13pt;
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
                            <a href="#MasterPages" data-bs-toggle="collapse" role="button" aria-expanded="false"><span>Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item">
                            <a href="#OfficeMaster" data-bs-toggle="collapse" role="button" onclick="SidebarToggle('MasterPages')"><span>Office Master Data</span></a>
                        </li>
                        <li class="breadcrumb-item"><span>About Office Master</span></li>
                    </ol>
                </div>
            </div>
        </div>
    </div>

    <div class="card card-border-primary">
        <div class="card-header">
            <div class="row">
                <div class="col-lg-6">
                    <h4 class="card-title">
                        <b>About Office Master</b></h4>
                </div>
            </div>
        </div>
        <div class="card-body">
            <br />
           <%-- <span style="font-size: 20.6667px; margin-left:10px; color: deeppink; font-family: Mangal, serif;">ऑफिस मास्टर्स के बारे में विवरण</span>--%>

            <span style="line-height: 115%"><font color="deeppink"><span style="font-size: 18.6667px; margin-left:10px;"><b>ऑफिस मास्टर्स के बारे में विवरण</b></span></font><br></span>
            <br />
            <p>
                1.  <b>Office Type Master</b> :  इस पेज के माध्यम से  ऑफिस का टाइप स्कूल, इंस्टिट्यूट या ऑफिस है सर्वप्रथम उसको सेलेक्ट किया जाता है उसके उपरांत  ऑफिस का लेवल सलेक्ट करें स्टेट,  डिविजन, डिस्टिक, ब्लॉक, डीडीयू,  जेएसके और स्कूल सिलेक्ट करने के उपरांत ऑफिस का नाम इंग्लिश और हिंदी में  प्रविष्टि कर उसका कोर्ट प्रविष्टि कर सेव किया जाता है जिससे आपका नया ऑफिस मास्टर में दिखने लग जाएगा, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </p>
            <br />

            <p>
                2.  <b>School Management Group Master</b> - इस पेज के माध्यम से स्कूल प्रबंधन को Registered किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />

            <p>
                3.    <b>Management Group Details Master</b> - इस पृष्ठ के माध्यम से प्रबंधन समूह विवरण को Registered  किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 

            </p>
            <br />
            <p>
                4.     <b>School Board Master</b> – इस पेज के माध्यम से स्कूल के बोर्ड का Registration किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />
            <p>
                5.     <b>School Category Master</b> - इस पेज के माध्यम से स्कूल की श्रेणी का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />
            <p>
                6.     <b>School Category Details Master</b> – इस पेज के माध्यम से स्कूल की श्रेणी के विवरण का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />
            <p>
                7.     <b>School Incharge Type Master</b> - इस पेज के माध्यम से स्कूल के प्रभारी के प्रकार का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं| 
            </p>
            <br />

            <p>
                8.     <b>School Medium Master</b>- इस पेज के माध्यम से स्कूल के माध्यम  का रजिस्ट्रेशन किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं| 
            </p>
            <br />
            <p>
                9.     <b>Special School Master</b> - इस पेज के माध्यम से विशेष स्कूल को  Registered  किया जाता है, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />
            <p>
                10.  <b>Office Registration Master </b>- इस पेज के माध्यम से ऑफिस को  Registered  किया जाता हैं | यदि किसी कारणवश त्रुटी हो जात हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
            </p>
            <br />
            <p>
                11.  <b>School Class Name Master</b>- इस पेज के माध्यम से स्कूल के क्लास के नाम को Registered किया जाता है | यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं| 
            </p>
            <br />

            <p>
                12.  <b>Subject Master</b>- इस पेज के माध्यम से सब्जेक्ट को  Registered  किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
                <br />

                <p>
                    13.  <b>Class to subject Master</b>- इस पेज के माध्यम से सम्बंधित क्लास में पढ़ाये जाने वाले विषय की मैपिंग की जाती हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं | 
                </p>
            <br />

            <p>
                14.  <b>Directory Master</b>- इस पेज के माध्यम से स्कूल में उपयोग होने वाले फ़ोन नंबर्स का रजिस्ट्रेशन किया जाता हैं, यदि किसी कारणवश त्रुटी हो जाती हैं तो Registration Edit or Isactive भी किया जा सकता हैं |
            </p>
             <p>Testing Office</p>
            <br />
        </div>
    </div>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentFooter" runat="Server">
</asp:Content>

