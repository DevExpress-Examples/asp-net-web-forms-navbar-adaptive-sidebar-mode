<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<%@ Register Assembly="DevExpress.Web.v16.2, Version=16.2.5.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html id="html" xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement Adaptive SideBar mode for Navigation Bar</title>
    <style type="text/css">
        .expandedPanel {
            width: 0px;
        }

        .expandButtonClass {
            width: 100%;
        }

        .collapsedMenu {
            width: 20px;
        }

        .expandedMenu {
            width: 50px;
        }

        .divcenter {
            height: 500px;
            width: 100%;
            line-height: 500px;
            text-align: center;
            border: 2px solid green;
        }

        .spancenter {
            font-size: 20px;
            display: inline-block;
            vertical-align: middle;
            line-height: normal;
        }
    </style>
    <script type="text/javascript">
        function MenuItemsExpanded(s, e) {
            menu.GetItemByName("item1").SetText("item1");
            menu.GetItemByName("item2").SetText("item2");
            container.classList.remove("collapsedMenu");
            container.classList.add("expandedMenu");
            html.style.paddingLeft = "89px";
        }
        function MenuItemsCollapsed(s, e) {
            menu.GetItemByName("item1").SetText("");
            menu.GetItemByName("item2").SetText("");
            container.classList.remove("expandedMenu");
            container.classList.add("collapsedMenu");
            html.style.paddingLeft = "59px";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPanel ID="Panel" ClientInstanceName="panel" runat="server" Collapsible="True" FixedPosition="WindowLeft">
                <ClientSideEvents Collapsed="MenuItemsCollapsed" Expanded="MenuItemsExpanded" />
                <Styles>
                    <Panel Border-BorderStyle="None">
                        <Paddings Padding="0px" />
                    </Panel>
                    <ExpandedPanel CssClass="expandedPanel">
                    </ExpandedPanel>
                    <ExpandButton CssClass="expandButtonClass">
                        <PressedStyle BackColor="Transparent">
                        </PressedStyle>
                        <SelectedStyle BackColor="Transparent">
                        </SelectedStyle>
                        <HoverStyle BackColor="Transparent">
                        </HoverStyle>
                    </ExpandButton>
                </Styles>
                <SettingsCollapsing>
                    <ExpandButton Visible="True" Position="Far" />
                </SettingsCollapsing>
                <PanelCollection>
                    <dx:PanelContent runat="server">
                    </dx:PanelContent>
                </PanelCollection>
                <ExpandBarTemplate>
                    <div id="container" class="collapsedMenu">
                        <dx:ASPxMenu ID="ASPxMenu2" ClientInstanceName="menu" runat="server" Width="100%" BackColor="Transparent" Orientation="Vertical">
                            <Items>
                                <dx:MenuItem Name="item1" Text=" ">
                                    <Image IconID="actions_addfile_32x32">
                                    </Image>
                                </dx:MenuItem>
                                <dx:MenuItem Name="item2" Text=" ">
                                    <Image IconID="actions_apply_32x32">
                                    </Image>
                                </dx:MenuItem>
                            </Items>
                            <ItemStyle BackColor="Transparent" Border-BorderWidth="0px" Width="0px"></ItemStyle>
                            <Border BorderStyle="None" />
                        </dx:ASPxMenu>
                    </div>
                </ExpandBarTemplate>
                <BorderRight BorderWidth="0px" />
            </dx:ASPxPanel>
            <div class="divcenter">
                <span class="spancenter"">Page Content</span>
            </div>
        </div>
    </form>
</body>
</html>
