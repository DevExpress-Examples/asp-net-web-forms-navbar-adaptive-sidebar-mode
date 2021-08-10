<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication1.Default" %>

<%@ Register Assembly="DevExpress.Web.v20.1, Version=20.1.13.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" Namespace="DevExpress.Web" TagPrefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>How to implement Adaptive SideBar mode for Navigation Bar</title>
    <style type="text/css">
        .expandBar {
            width: 50px;
        }

        .expandBarExpanded {
            width: 40px;
        }

            .expandBarExpanded .collapsedMenu {
                visibility: hidden;
            }

        .collapsedMenu {
            position: relative;
            left: -50px;
            top: 20px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxPanel ID="LeftPanel" runat="server" FixedPosition="WindowLeft" Collapsible="true">
                <SettingsAdaptivity CollapseAtWindowInnerWidth="2000" />
                <Styles>
                    <ExpandBar CssClass="expandBar" />
                    <ExpandedExpandBar CssClass="expandBarExpanded"></ExpandedExpandBar>
                </Styles>
                <ExpandBarTemplate>
                    <div id="container" class="collapsedMenu">
                        <dx:ASPxMenu ID="ASPxMenu2" ClientInstanceName="menu" runat="server" Width="100%" BackColor="Transparent" Orientation="Vertical">
                            <Items>
                                <dx:MenuItem Name="item1" Text=" " DropDownMode="false">
                                    <Image IconID="actions_addfile_32x32">
                                    </Image>
                                </dx:MenuItem>
                                <dx:MenuItem Name="item2" Text=" ">
                                    <Image IconID="actions_apply_32x32">
                                    </Image>
                                </dx:MenuItem>
                                <dx:MenuItem Name="item3" Text=" ">
                                    <Image IconID="actions_about_32x32devav">
                                    </Image>
                                </dx:MenuItem>
                                <dx:MenuItem Name="item4" Text=" ">
                                    <Image IconID="actions_driving_32x32devav">
                                    </Image>
                                </dx:MenuItem>
                                <dx:MenuItem Name="item5" Text=" ">
                                    <Image IconID="actions_export_32x32devav">
                                    </Image>
                                </dx:MenuItem>
                            </Items>
                            <ItemStyle BackColor="Transparent" Border-BorderWidth="0px" Width="0px"></ItemStyle>
                            <Border BorderStyle="None" />
                        </dx:ASPxMenu>
                    </div>
                </ExpandBarTemplate>
                <ExpandedPanelTemplate>
                    <dx:ASPxNavBar ID="nbMain" runat="server">
                        <Groups>
                            <dx:NavBarGroup Text="Parent 1" HeaderImage-IconID="actions_addfile_16x16">
                                <Items>
                                    <dx:NavBarItem Text="Child 1" NavigateUrl="javascript:void(4)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 2" NavigateUrl="javascript:void(5)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 3" NavigateUrl="javascript:void(6)"></dx:NavBarItem>
                                </Items>
                            </dx:NavBarGroup>
                            <dx:NavBarGroup Text="Parent 2" HeaderImage-IconID="actions_apply_16x16">
                                <Items>
                                    <dx:NavBarItem Text="Child 1" NavigateUrl="javascript:void(4)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 2" NavigateUrl="javascript:void(5)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 3" NavigateUrl="javascript:void(6)"></dx:NavBarItem>
                                </Items>
                            </dx:NavBarGroup>
                            <dx:NavBarGroup Text="Parent 3" HeaderImage-IconID="actions_about_16x16devav">
                                <Items>
                                    <dx:NavBarItem Text="Child 1" NavigateUrl="javascript:void(4)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 2" NavigateUrl="javascript:void(5)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 3" NavigateUrl="javascript:void(6)"></dx:NavBarItem>
                                </Items>
                            </dx:NavBarGroup>
                            <dx:NavBarGroup Text="Parent 4" HeaderImage-IconID="actions_driving_16x16devav">
                                <Items>
                                    <dx:NavBarItem Text="Child 1" NavigateUrl="javascript:void(4)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 2" NavigateUrl="javascript:void(5)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 3" NavigateUrl="javascript:void(6)"></dx:NavBarItem>
                                </Items>
                            </dx:NavBarGroup>
                            <dx:NavBarGroup Text="Parent 5" HeaderImage-IconID="actions_export_16x16devav">
                                <Items>
                                    <dx:NavBarItem Text="Child 1" NavigateUrl="javascript:void(4)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 2" NavigateUrl="javascript:void(5)"></dx:NavBarItem>
                                    <dx:NavBarItem Text="Child 3" NavigateUrl="javascript:void(6)"></dx:NavBarItem>
                                </Items>
                            </dx:NavBarGroup>

                        </Groups>
                        <Paddings Padding="0px" />
                    </dx:ASPxNavBar>
                </ExpandedPanelTemplate>
            </dx:ASPxPanel>
        </div>
    </form>
</body>
</html>
