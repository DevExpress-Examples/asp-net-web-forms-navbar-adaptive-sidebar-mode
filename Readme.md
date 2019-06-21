<!-- default file list -->
*Files to look at*:

* [Default.aspx](./CS/Default.aspx) (VB: [Default.aspx](./VB/Default.aspx))
* [Default.aspx.cs](./CS/Default.aspx.cs) (VB: [Default.aspx.vb](./VB/Default.aspx.vb))
<!-- default file list end -->
# How to implement Adaptive SideBar mode for Navigation Bar
<!-- run online -->
**[[Run Online]](https://codecentral.devexpress.com/t499904/)**
<!-- run online end -->


ASPxNavBar doesn't provide this feature at the moment. Bu you can use ASPxPanel and ASPxMenu to create an adaptive accordion layout with a collapse button ("hamburger menu"). The main steps to implement such a workaround are:<br><br>1. Place ASPxMenu to the ExpandBarTemplate, allow the ASPxMenu Width to occupy 100% of a container. Wrap ASPxMenu to the div container, this will allow changing ASPxMenu width when the panel is expanded/collapsed. <br>


```aspx
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
```


<br><br>2. Handle ASPxClientPanel.Collapsed and ASPxClientPanel.Expanded events, to remove/add text for menu items. With the current workaround, it is necessary to assign the div container width and the html style paddingLeft attribute in such a way so that the longest menu item text width is taken into account. Otherwise, items' text can exceed ASPxPanel boundaries.<br>


```js
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

```




```css
.collapsedMenu {
    width: 20px;
}
.expandedMenu {
    width: 50px;
}

```


<br id="tinymce" class="mce-content-body ">3. Change the ASPxMenu ItemStyle to prevent menu items to get out ASPxPanel borders:<br>


```aspx
<ItemStyle BackColor="Transparent" Border-BorderWidth="0px" Width="0px"></ItemStyle>
```


<br>4. Implement a custom css class for ASPxPanel ExpandedPanel to prevent this panel from appearing: <br>


```aspx
<ExpandedPanel CssClass="expandedPanel">
</ExpandedPanel>
```




```css
.expandedPanel {
    width: 0px;
}
```



<br/>


