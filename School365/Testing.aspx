<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Testing.aspx.cs" Inherits="School365.Testing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="css/foundation.min.css" rel="stylesheet" />
    <script src="js/foundation.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <nav class="top-bar docs-bar hide-for-small" data-topbar="">
            <ul class="title-area">
                <li class="name">
                    <h1>
                        <a href="http://foundation.zurb.com/">
                            <img class="zurb-logo" src="./Kitchen sink _ Foundation Docs_files/zurb-logo.svg">
                            <span>Foundation</span>
                        </a>
                    </h1>
                </li>
            </ul>

            <section class="top-bar-section">
                <ul class="right">
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/learn/features.html" class="">Learn</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="http://foundation.zurb.com/learn/features.html">Learn</a></li>
                            <li><a href="Admin/Departments/AddDepartments.aspx">About Foundation</a></li>
                            <li><a href="http://foundation.zurb.com/learn/tutorials.html">Tutorials</a></li>
                            <li><a href="http://foundation.zurb.com/learn/classes.html">Classes</a></li>
                            <li><a href="http://foundation.zurb.com/learn/case-studies.html">Case Studies</a></li>
                            <li><a href="http://foundation.zurb.com/learn/brands.html">Brands</a></li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/develop/getting-started.html" class="">Develop</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="http://foundation.zurb.com/develop/getting-started.html">Develop</a></li>
                            <li class="title">Frameworks</li>
                            <li><a class="" href="http://foundation.zurb.com/sites.html">Foundation for Sites</a></li>
                            <li><a class="" href="http://foundation.zurb.com/apps.html">Foundation for Apps</a></li>
                            <li><a class="spaced-list-item" href="http://foundation.zurb.com/emails.html">Foundation for Emails</a></li>
                            <li class="spaced-divider">
                                <hr>
                            </li>
                            <li><a href="http://foundation.zurb.com/templates.html">HTML Templates</a></li>
                            <li><a href="http://foundation.zurb.com/sites/resources.html">Resources</a></li>
                            <li><a href="http://foundation.zurb.com/develop/building-blocks.html">Building Blocks</a></li>
                            <li><a href="http://foundation.zurb.com/develop/contribute.html">Contribute</a></li>

                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="http://foundation.zurb.com/upload.html" class="">Upload</a>
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/support/support.html" class="">Support</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="http://foundation.zurb.com/support/support.html">Support</a></li>
                            <li><a href="http://foundation.zurb.com/support/support.html">Support Channels</a></li>
                            <li><a href="http://foundation.zurb.com/support/premium-support.html">Premium Channels</a></li>
                            <li><a href="http://foundation.zurb.com/forum">Foundation Forum</a></li>
                            <li><a href="http://foundation.zurb.com/support/faq.html">FAQs</a></li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-dropdown not-click">
                        <a href="http://foundation.zurb.com/sites/docs/v/5.5.3/">Docs</a>
                        <ul class="dropdown">
                            <li class="title back js-generated">
                                <h5><a href="javascript:void(0)">Back</a></h5>
                            </li>
                            <li class="parent-link hide-for-medium-up"><a class="parent-link js-generated" href="http://foundation.zurb.com/sites/docs/v/5.5.3/">Docs</a></li>
                            <li><a href="http://foundation.zurb.com/sites/docs/v/5.5.3/">F5 Sites Docs</a></li>
                            <li><a href="http://foundation.zurb.com/sites/docs">F6 Sites Docs</a></li>
                            <li><a href="http://zurb.com/ink/docs.php">Emails Docs</a></li>
                            <li><a href="http://foundation.zurb.com/apps/docs">Apps Docs</a></li>
                        </ul>
                    </li>
                    <li class="divider"></li>
                    <li class="has-form">
                        <a href="http://foundation.zurb.com/sites/getting-started.html" class="small button">Getting Started</a>
                    </li>
                </ul>
            </section>
        </nav>
        <asp:GridView ID="GridView1" runat="server" DataSourceID="EntityDataSource1">
        </asp:GridView>
        <asp:EntityDataSource ID="EntityDataSource1" runat="server">
        </asp:EntityDataSource>
    </form>
</body>
</html>
