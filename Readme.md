<!-- default badges list -->
![](https://img.shields.io/endpoint?url=https://codecentral.devexpress.com/api/v1/VersionRange/128564500/20.1.4%2B)
[![](https://img.shields.io/badge/Open_in_DevExpress_Support_Center-FF7200?style=flat-square&logo=DevExpress&logoColor=white)](https://supportcenter.devexpress.com/ticket/details/T499904)
[![](https://img.shields.io/badge/📖_How_to_use_DevExpress_Examples-e9f6fc?style=flat-square)](https://docs.devexpress.com/GeneralInformation/403183)
[![](https://img.shields.io/badge/💬_Leave_Feedback-feecdd?style=flat-square)](#does-this-example-address-your-development-requirementsobjectives)
<!-- default badges end -->
# Navigation Bar for ASP.NET Web Forms - How to implement the adaptive side bar functionality

This example demonstrates how to use the [ASPxPanel](https://docs.devexpress.com/AspNet/14778/components/site-navigation-and-layout/panel) control to create an adaptive accordion layout with a collapse button.

## Overview

Add a collapsible panel to the page, set its [FixedPosition](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCollapsiblePanel.FixedPosition) property to `WindowLeft`, and specify the [SettingsAdaptivity](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCollapsiblePanel.SettingsAdaptivity) property to make the panel adaptive.

```aspx
<dx:ASPxPanel ID="LeftPanel" runat="server" FixedPosition="WindowLeft" Collapsible="true">
    <SettingsAdaptivity CollapseAtWindowInnerWidth="2000" />
</dx:ASPxPanel>
```

Specify the panel's [ExpandBarTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCollapsiblePanel.ExpandBarTemplate) property, add a menu control to the template, and use CSS classes to specify the menu's style settings. The menu is visible when the panel is collapsed.

```css
.expandBar {
    width: 50px;
}
.collapsedMenu {
    position: relative;
    left: -50px;
    top: 20px;
}
```
```aspx
<Styles>
    <ExpandBar CssClass="expandBar" />
</Styles>
<ExpandBarTemplate>
    <div id="container" class="collapsedMenu">
        <dx:ASPxMenu ID="ASPxMenu2" ClientInstanceName="menu" runat="server" Width="100%" BackColor="Transparent" Orientation="Vertical">
            <!-- ... -->
            <ItemStyle BackColor="Transparent" Border-BorderWidth="0px" Width="0px"></ItemStyle>
            <Border BorderStyle="None" />
        </dx:ASPxMenu>
    </div>
</ExpandBarTemplate>
```

Specify the panel's [ExpandPanelTemplate](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxCollapsiblePanel.ExpandedPanelTemplate) property and add the [ASPxNavBar](https://docs.devexpress.com/AspNet/DevExpress.Web.ASPxNavBar) control to the template. When the panel is expanded, the navigation bar is shown and the menu is hidden.

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
        <!-- ... -->
        <Paddings Padding="0px" />
    </dx:ASPxNavBar>
</ExpandedPanelTemplate>
```

## Files to Review

* [Default.aspx](./CS/WebApplication1/Default.aspx) (VB: [Default.aspx](./VB/WebApplication1/DefaultForm.aspx))
* [Default.aspx.cs](./CS/WebApplication1/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/WebApplication1/DefaultForm.aspx.vb))
<!-- feedback -->
## Does this example address your development requirements/objectives?

[<img src="https://www.devexpress.com/support/examples/i/yes-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-navbar-adaptive-sidebar-mode&~~~was_helpful=yes) [<img src="https://www.devexpress.com/support/examples/i/no-button.svg"/>](https://www.devexpress.com/support/examples/survey.xml?utm_source=github&utm_campaign=asp-net-web-forms-navbar-adaptive-sidebar-mode&~~~was_helpful=no)

(you will be redirected to DevExpress.com to submit your response)
<!-- feedback end -->
