<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to implement Adaptive SideBar mode for Navigation Bar
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t499904/)**
<!-- run online end -->


ASPxNavBar doesn't support adaptivity out-of-the-box, but you can use the [ASPxPanel](https://docs.devexpress.com/AspNet/14778/components/site-navigation-and-layout/panel) control to create an adaptive accordion layout with a collapse button ("hamburger menu").<br><br>1. Place a collapsible panel into your page, set its [FixedPosition](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCollapsiblePanel.FixedPosition) property to the Left and make the panel adaptive:

```aspx
<dx:ASPxPanel ID="LeftPanel" runat="server" FixedPosition="WindowLeft" Collapsible="true">
    <SettingsAdaptivity CollapseAtWindowInnerWidth="2000" />
</dx:ASPxPanel>
```
<br><br>2. Put the ASPxMenu control into to the **ExpandBarTemplate** and allow the ASPxMenu'width to occupy 100% of the panel. Adjust the menu's location and the panel's expand button using CSS. The menu will be shown when the panel is collapsed:
```css
.expandBar {
    width: 50px;
}
.collapsedMenu {
    position: relative;
    left: -50px;
    top: 20px;
}```

```aspx
<Styles>
    <ExpandBar CssClass="expandBar" />
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
```
<br><br>3. Put the ASPxNavBar control into the **ExpandedPanelTemplate**. The navbar will be shown when the panel is expanded. Manage the menu visibility using CSS:
```css
.expandBarExpanded {
    width: 40px;
}
.expandBarExpanded .collapsedMenu {
        visibility: hidden;
    }
```
```aspx
<Styles>
    <ExpandBar CssClass="expandBar" />
    <ExpandedExpandBar CssClass="expandBarExpanded"></ExpandedExpandBar>
</Styles>
```
```aspx
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
```
