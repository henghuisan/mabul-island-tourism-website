<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HotelBooking.aspx.cs" Inherits="MabulIsland.HotelBooking" MaintainScrollPositionOnPostback="true"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="style.css" rel="stylesheet" />
    <title>Hotel Booking</title>

</head>
<body>
    <form id="form1" runat="server">
        <%--header--%>
        <div class="header">
            <h1><em>Explore Mabul Island</em></h1> 
            <a class="menuBtn" href="default.aspx">Homepage</a>
        </div>

        <%--banner--%>
        <div>
            <img src="Images/Banner/banner7.JPG" /><br /><br />
        </div>

        <%--Container 1 : Check-in & Check-out Date--%>
        <div class="cont">
            <table>
                <tr>
                    <td style="width:3%" />
                    <td style="text-align:left;">
                        <%--textbox and imagebutton used for check-in date--%>
                        <label>
                            Check-in Date : 
                            <asp:TextBox ID="txtCheckInDate" runat="server" Font-Size="Medium" Height="20" ReadOnly="true" Width="230px"  />
                            <asp:ImageButton ID="ibtnCheckInDate" runat="server" ImageUrl="~/Images/calendar.png" OnClick="ibtnCheckInDate_Click" />
                        </label>
                    </td>
                    <td style="width:3%" />
                    <td style="text-align:left">
                        <%--textbox and imagebutton used for check-out date--%>
                        <label style="text-align:center;">
                            Check-out Date : 
                            <asp:TextBox ID="txtCheckOutDate" runat="server" Font-Size="Medium" Height="20" ReadOnly="true" Width="230px" />
                            <asp:ImageButton ID="ibtnCheckOutDate" runat="server" ImageUrl="~/Images/calendar.png" OnClick="ibtnCheckOutDate_Click"/>
                        </label>
                    </td>
                </tr>                                   
                <tr >
                    <td style="width:3%" />
                    <td style="float:right">
                        <%--check-in calendar control--%>
                        <asp:Calendar ID="CheckInDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" 
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="160px" Width="200px" 
                            Visible="false" OnSelectionChanged="CheckInDate_SelectionChanged" ondayrender="DateRangeCheckIn">
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC"/>
                        </asp:Calendar>   
                    </td>
                    <td style="width:3%" />
                    <td style="float:right">
                        <%--check-out calendar control--%>
                        <asp:Calendar ID="CheckOutDate" runat="server" BackColor="White" BorderColor="#999999" CellPadding="4" 
                            DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" Height="160px" Width="200px" 
                            Visible="false" OnSelectionChanged="CheckOutDate_SelectionChanged1" ondayrender="DateRangeCheckOut" >
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <TitleStyle BackColor="#999999" BorderColor="Black" Font-Bold="True" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        </asp:Calendar>                       
                    </td>
                </tr>
            </table>
        </div>

        <%--go button of Container 1, user clicks it for the information in Container 2--%>
        <div class="buttons">
            <asp:Button ID="btnGo" runat="server" Text=" Go " BackColor="DarkGray" ForeColor="White" Font-Bold="true" Font-Size="Medium" OnClick="btnGo_Click"/>
        </div>
        <br /><br /><br />

        <%--ScriptManger and Timer are used for adRotator--%> 
        <asp:ScriptManager ID="ScriptManager1" runat="server" />
        <asp:Timer ID="Timer1" runat="server" Interval="2000" />
        <%--Container 2 : Hotel Options--%>
        <asp:Panel ID="pCont1" runat="server" Visible="false">
            <div class="cont c1">
                <table>
                    <tr>
                        <td>
                            <%--dropdownlist of hotels--%> 
                            <div class="dropdownlist">
                            <asp:DropDownList ID="ddlHotel" runat="server" AutoPostBack="True" Visible="false" OnSelectedIndexChanged="ddlHotel_SelectedIndexChanged">
                                <asp:ListItem>Sipadan-Mabul Resort</asp:ListItem>
                                <asp:ListItem>Mabul Water Bungalows</asp:ListItem>
                                <asp:ListItem>Scuba Junkie Mabul Beach Resort</asp:ListItem>
                            </asp:DropDownList>
                            </div>
                        </td>
                    </tr>
                    <tr>
                        <td>
                        <%--Option 1 / Hotel 1--%>
                        <asp:Panel ID="pHotel1" runat="server" BackColor="White" Visible="false">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <%--adRotator for displaying the Hotel1's images--%>
                                        <asp:UpdatePanel ID="up1" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:AdRotator ID="adRHotel1" runat="server" AdvertisementFile="~/Hotel1.xml" Target="_blank" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td style="width:20px"></td>
                                    <td colspan="3" style="text-align:left">
                                        <h4>Sipadan-Mabul Resort</h4>
                                        <ul>
                                            <li>Rating : 4.0 with 226 reviews</li>
                                            <li>Property amenities : free internet, free breakfast buffet, diving, spa, pool, airport transportation</li>
                                            <li>Room features : Air conditioning, private balcony, safe</li>
                                            <li>Room types : ocean view, suites, non-smoking rooms</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <%--the below radioButton list of room type will be displayed once the user select for this hotel 1--%>
                                        <asp:Label ID="lblH1" runat="server" Text="Room Type" Font-Bold="true" Visible="false" />
                                        <asp:RadioButtonList ID="rblHotel1" runat="server" Visible="false" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblHotel1_SelectedIndexChanged">
                                            <asp:ListItem>Ocean View</asp:ListItem>
                                            <asp:ListItem>Suites</asp:ListItem>
                                            <asp:ListItem>No-smoking Room</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <br />
                                        <%--this label is used to display the cost of the room type of hotel 1--%>
                                        <asp:Label ID="lblroomH1" runat="server" Text="" Font-Bold="true" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>

                        <%--Option 2--%>
                        <asp:Panel ID="pHotel2" runat="server" BackColor="White" Visible="false">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <%--adRotator for displaying the Hotel2's images--%>
                                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:AdRotator ID="adRHotel2" runat="server" AdvertisementFile="~/Hotel2.xml" Target="_blank" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td style="width:20px"></td>
                                    <td colspan="3" style="text-align:left">
                                        <h4>Mabul Water Bungalows</h4>
                                        <ul>
                                            <li>Rating : 4.5 with 190 reviews</li>
                                            <li>Property amenities : free high speed internet(WIFI), free breakfast buffet, diving, spa, airport transportation, laundry service</li>
                                            <li>Room features : Air conditioning, private balcony, minibar, flatscreen TV</li>
                                            <li>Room types : ocean view, non-smoking rooms</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <%--the below radioButton list of room type will be displayed once the user select for this hotel 2--%>
                                        <asp:Label ID="lblH2" runat="server" Text="Room Type" Font-Bold="true" Visible="false" />
                                        <asp:RadioButtonList ID="rblHotel2" runat="server" Visible="false" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblHotel2_SelectedIndexChanged">
                                            <asp:ListItem>Ocean View</asp:ListItem>
                                            <asp:ListItem>No-smoking Room</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <br />
                                        <%--this label is used to display the cost of the room type of hotel 2--%>
                                        <asp:Label ID="lblroomH2" runat="server" Text="" font-bold="true"/>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>

                        <%--Option 3--%>
                        <asp:Panel ID="pHotel3" runat="server" BackColor="White" Visible="false">
                            <table>
                                <tr>
                                    <td rowspan="2">
                                        <%--adRotator for displaying the Hotel3's images--%>
                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                                            <Triggers>
                                                <asp:AsyncPostBackTrigger ControlID="Timer1" EventName="Tick"/>
                                            </Triggers>
                                            <ContentTemplate>
                                                <asp:AdRotator ID="adRHotel3" runat="server" AdvertisementFile="~/Hotel3.xml" Target="_blank" />
                                            </ContentTemplate>
                                        </asp:UpdatePanel>
                                    </td>
                                    <td style="width:20px"></td>
                                    <td colspan="3" style="text-align:left">
                                        <h4>Scuba Junkie Mabul Beach Resort</h4>
                                        <ul>
                                            <li>Rating : 4.5 with 985 reviews</li>
                                            <li>Property amenities : free internet, free breakfast buffet, free public parking nearby, diving, spa, pool, snorkeling, airport transportation, sun loungers</li>
                                            <li>Room features : Air conditioning, private balcony, safe, walk-in shower</li>
                                            <li>Room types : family rooms, non-smoking rooms</li>
                                        </ul>
                                    </td>
                                </tr>
                                <tr>
                                    <td></td>
                                    <td>
                                        <%--the below radioButton list of room type will be displayed once the user select for this hotel 3--%>
                                        <asp:Label ID="lblH3" runat="server" Text="Room Type" Font-Bold="true" Visible="false" />
                                        <asp:RadioButtonList ID="rblHotel3" runat="server" Visible="false" AutoPostBack="True" RepeatDirection="Horizontal" OnSelectedIndexChanged="rblHotel3_SelectedIndexChanged">
                                            <asp:ListItem>Family Room</asp:ListItem>
                                            <asp:ListItem>No-smoking Room</asp:ListItem>
                                        </asp:RadioButtonList>
                                    </td>
                                    <td>
                                        <br />
                                        <%--this label is used to display the cost of the room type of hotel 3--%>
                                        <asp:Label ID="lblroomH3" runat="server" Text="" Font-Bold="true"/>
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        </td>                 
                    </tr>
                </table>
            </div>
        </asp:Panel>

        <%--Select Room Type Button of Container 2, user click it to get the room type radio button list of the selected hotel--%>
        <div class="buttons">
            <asp:Button ID="btnSelect" runat="server" Text=" Select Room Type " BackColor="DarkGray" ForeColor="White" Font-Bold="true" Font-Size="Medium" Visible="false" OnClick="btnSelect_Click" />
        </div>
        <br /><br /><br />

        <%--Container 3 : Bookings Details & Personal Info--%>
        <asp:Panel ID="pCont2" runat="server" Visible="false">
                <div class="cont c2">
                <table>
                    <%--Hotel Booking Details--%>
                    <tr><td><h4>Hotel Booking Details</h4></td></tr>
                    <tr>
                        <td>Check-in Date </td>
                        <td><asp:TextBox ID="txtCheckIn" runat="server" Text="" ReadOnly="true" Width="130%"/></td>
                        <td style="width:15%" />
                        <td>Check-out Date </td>
                        <td><asp:TextBox ID="txtCheckOut" runat="server" Text="" ReadOnly="true" Width="130%" /></td>
                    </tr>
                    <tr>
                        <td>Hotel </td>
                        <td><asp:TextBox ID="txtHotel" runat="server" Text="" ReadOnly="true" Width="130%" /></td>
                        <td style="width:15%" />
                        <td>Room Type </td>
                        <td><asp:TextBox ID="txtRoomType" runat="server" Text="" ReadOnly="true" Width="130%" /></td>
                    </tr>
                    <tr>
                        <td>Cost </td>
                        <td><asp:TextBox ID="txtCost" runat="server" Text="" ReadOnly="true" Width="130%" /></td>
                    </tr>
                    <%--Personal Information--%>
                    <tr><td colspan="2"><br /><h4>Please fill in your personal information.</h4></td></tr>
                    <tr>
                        <td>First Name </td>
                        <td><asp:TextBox ID="txtFName" runat="server" Text="" Width="130%"/></td>
                        <td style="width:15%" />
                        <td>Last Name </td>
                        <td><asp:TextBox ID="txtLName" runat="server" Text="" Width="130%"/></td>
                    </tr>
                    <tr>
                        <td>Contact No </td>
                        <td><asp:TextBox ID="txtContactNo" runat="server" Text="" Width="130%"/></td>
                    </tr>
                    <tr>
                        <td>Email </td>
                        <td><asp:TextBox ID="txtEmail" runat="server" Text="" Width="130%"/></td>
                    </tr>
                    <tr>
                        <%--display the booking message after confirm the booking--%>
                        <td><br /><asp:Label ID="lblErrorMessage" runat="server" Text="" ForeColor="Red" Font-Bold="true"/></td>
                    </tr>
                </table> 
                </div>
            </asp:Panel>

        <%--Book button of Container 3, user clicks it after confirming the booking--%>
        <div class="buttons">
            <asp:Button ID="btnBook" runat="server" Text=" Book Now " BackColor="DarkGray" ForeColor="White" Font-Bold="true" Font-Size="Medium" Visible="false" OnClick="btnBook_Click" /><br />
        </div>
        <br /><br /><br />

        <%--footer--%>
        <div class="footer">
            <br />
            <span>CONTACT US &nbsp +60-1234-5678</span>
            <p>© Copyright 2021 | All rights reserved.</p>
        </div>
    </form>
</body>
</html>
