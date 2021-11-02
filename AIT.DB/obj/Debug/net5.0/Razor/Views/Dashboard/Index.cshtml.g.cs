#pragma checksum "D:\MiniProject\AIT.DB\Views\Dashboard\Index.cshtml" "{ff1816ec-aa5e-4d10-87f7-6f4963833460}" "81a65f4f78fa815b5610829a1d5ee9802557945e"
// <auto-generated/>
#pragma warning disable 1591
[assembly: global::Microsoft.AspNetCore.Razor.Hosting.RazorCompiledItemAttribute(typeof(AspNetCore.Views_Dashboard_Index), @"mvc.1.0.view", @"/Views/Dashboard/Index.cshtml")]
namespace AspNetCore
{
    #line hidden
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Threading.Tasks;
    using Microsoft.AspNetCore.Mvc;
    using Microsoft.AspNetCore.Mvc.Rendering;
    using Microsoft.AspNetCore.Mvc.ViewFeatures;
#nullable restore
#line 1 "D:\MiniProject\AIT.DB\Views\_ViewImports.cshtml"
using AIT.DB;

#line default
#line hidden
#nullable disable
#nullable restore
#line 2 "D:\MiniProject\AIT.DB\Views\_ViewImports.cshtml"
using AIT.DB.Models;

#line default
#line hidden
#nullable disable
#nullable restore
#line 3 "D:\MiniProject\AIT.DB\Views\_ViewImports.cshtml"
using AIT.DB.Models.Accounts;

#line default
#line hidden
#nullable disable
#nullable restore
#line 4 "D:\MiniProject\AIT.DB\Views\_ViewImports.cshtml"
using Microsoft.AspNetCore.Identity;

#line default
#line hidden
#nullable disable
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"81a65f4f78fa815b5610829a1d5ee9802557945e", @"/Views/Dashboard/Index.cshtml")]
    [global::Microsoft.AspNetCore.Razor.Hosting.RazorSourceChecksumAttribute(@"SHA1", @"c9fabb9322b862f5ecc1763b3cd2ee0b1408b406", @"/Views/_ViewImports.cshtml")]
    public class Views_Dashboard_Index : global::Microsoft.AspNetCore.Mvc.Razor.RazorPage<dynamic>
    {
        #pragma warning disable 1998
        public async override global::System.Threading.Tasks.Task ExecuteAsync()
        {
#nullable restore
#line 1 "D:\MiniProject\AIT.DB\Views\Dashboard\Index.cshtml"
   
    ViewData["Title"] = "DashBoard";

#line default
#line hidden
#nullable disable
            WriteLiteral(@"<div class=""pagetitle"">
    <h1>Dashboard</h1>
    <nav>
        <ol class=""breadcrumb"">
            <li class=""breadcrumb-item""><a href=""/"">Home</a></li>
            <li class=""breadcrumb-item active"">Dashboard</li>
        </ol>
    </nav>
</div>
<div class=""col-12"">
    <div class=""card"">
        <div class=""card-body"">
            <h5 class=""card-title"">Reports <span>/Today</span></h5>

            <!-- Line Chart -->
            <div id=""reportsChart""></div>

            <script>
                document.addEventListener(""DOMContentLoaded"", () => {
                    new ApexCharts(document.querySelector(""#reportsChart""), {
                        series: [{
                            name: 'Sales',
                            data: [31, 40, 28, 51, 42, 82, 56],
                        }, {
                            name: 'Revenue',
                            data: [11, 32, 45, 32, 34, 52, 41]
                        }, {
                            name: 'Customers',
   ");
            WriteLiteral(@"                         data: [15, 11, 32, 18, 9, 24, 11]
                        }],
                        chart: {
                            height: 350,
                            type: 'area',
                            toolbar: {
                                show: false
                            },
                        },
                        markers: {
                            size: 4
                        },
                        colors: ['#4154f1', '#2eca6a', '#ff771d'],
                        fill: {
                            type: ""gradient"",
                            gradient: {
                                shadeIntensity: 1,
                                opacityFrom: 0.3,
                                opacityTo: 0.4,
                                stops: [0, 90, 100]
                            }
                        },
                        dataLabels: {
                            enabled: false
                        },
      ");
            WriteLiteral(@"                  stroke: {
                            curve: 'smooth',
                            width: 2
                        },
                        xaxis: {
                            type: 'datetime',
                            categories: [""2018-09-19T00:00:00.000Z"", ""2018-09-19T01:30:00.000Z"", ""2018-09-19T02:30:00.000Z"", ""2018-09-19T03:30:00.000Z"", ""2018-09-19T04:30:00.000Z"", ""2018-09-19T05:30:00.000Z"", ""2018-09-19T06:30:00.000Z""]
                        },
                        tooltip: {
                            x: {
                                format: 'dd/MM/yy HH:mm'
                            },
                        }
                    }).render();
                });
            </script>
            <!-- End Line Chart -->

        </div>
    </div>
</div>
<footer id=""footer"" class=""footer"">

    <div class=""credits text-center"">
        <img style=""background-image: url(https://www.mitani.co.jp/img/common/dots_blue.png), url(https://www.mitani.c");
            WriteLiteral(@"o.jp/img/aureole/footer_bg.jpg); "" src=""https://www.mitani.co.jp/application/files/6015/8986/1844/aureole_group.svg"" alt=""AUREOLE GROUP"">

    </div>
    <div style=""font-size:0.9rem;letter-spacing:.04em;margin-top:20px;text-align:center"">©Copyright All Rights Reserved</div>
</footer><!-- End Footer -->");
        }
        #pragma warning restore 1998
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.ViewFeatures.IModelExpressionProvider ModelExpressionProvider { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IUrlHelper Url { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.IViewComponentHelper Component { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IJsonHelper Json { get; private set; }
        [global::Microsoft.AspNetCore.Mvc.Razor.Internal.RazorInjectAttribute]
        public global::Microsoft.AspNetCore.Mvc.Rendering.IHtmlHelper<dynamic> Html { get; private set; }
    }
}
#pragma warning restore 1591
