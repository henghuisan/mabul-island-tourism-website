<%@ Page Language="C#" AutoEventWireup="true" CodeFile="default.aspx.cs" Inherits="MabulIsland._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Homepage</title>
    <link href="style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <%--header--%>
        <div class="header" id="header">
            <h1><em>Explore Mabul Island</em></h1>
            <a class="menuBtn" href="HotelBooking.aspx">Bookings</a>
        </div>

        <%--Image Slider--%>
        <div style="background-color: white; height: 535px">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                <ContentTemplate>
                    <asp:Timer ID="Timer1" runat="server" Interval="2500" OnTick="Timer1_Tick"></asp:Timer>
                    <asp:Image class="img" ID="ImageSlider" runat="server" />
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <br />
        <br />

        <%--Brief Introduction about Mabul Island--%>
        <div class="Mabul-intro">
            <h2 style="text-align: center;"><em>Welcome to Mabul Island</em></h2>
            <p class="intro">
                Mabul Island is a beach island located in northeastern Semporna and is one of the most famous diving 
                spots in the world. The average traveler comes here to experience water sports such as swimming, 
                snorkeling and scuba diving. There are also a variety of holiday homes and houseboats around the island. 
                Visitors can look at all the different colors of coral, fish and starfish the ocean has to offer. 
                <br />
                <br />
                Want to know more about Mabul Island? 
                <a href="https://www.sabahtourism.com/destination/mabul-island/?locale=en" target="_blank">Click Me</a>
            </p>
        </div>
        <br />
        <br />

        <%--Link Btns for the corresponding panel--%>
        <div class="linkBtns" id="lnkBtns">
            <h2 style="text-align: center;"><em>Top Things To Do In Mabul Island</em></h2>
            <table class="tables">
                <tr>
                    <td>
                        <asp:LinkButton ID="lbtnPlay" runat="server" CssClass="stylink" OnClick="lbtnPlay_Click">PLAY</asp:LinkButton>
                    </td>
                    <td style="width: 27%" />
                    <td>
                        <asp:LinkButton ID="lbtnEat" runat="server" CssClass="stylink" OnClick="lbtnEat_Click">EAT</asp:LinkButton>
                    </td>
                    <td style="width: 27%" />
                    <td>
                        <asp:LinkButton ID="lbtnRest" runat="server" CssClass="stylink" OnClick="lbtnRest_Click">REST</asp:LinkButton>
                    </td>
                </tr>
            </table>
        </div>
        <br />

        <%--container will be displayed once the user clicks any of the link button--%>
        <div class="cont cont_acty">
            <%--title for the contents of the panel--%>
            <asp:Label ID="lblTitle" runat="server" Text="5 Activities to Do in Mabul Island" Font-Bold="true" Font-Underline="true" Font-Size="22px" ForeColor="#484B52" /><br />
            <br />
            <%--Panel 1 that shows recommended activities--%>
            <asp:Panel ID="panelPlay" runat="server" Visible="true">
                <table class="tables">
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/play1.jpg" />
                        </td>
                        <td>
                            <h3>Celebrate Regatta Lepa</h3>
                            <ul>
                                <li>Regatta Lepa is a water festival that showcases the customs and traditions of Bajau Laut (the 'Sea Gypsies').</li>
                                <li>Celebrates annually in March or April and lasts 2-3 days</li>
                                <li>Festival Highlights : Floating Parade of Colourful Lepa Boats, Lepa Boat Racing, Duck Catching Competition, Tug-of-War, Beauty Pageant, Fireworks.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Scuba Diving</h3>
                            <ul>
                                <li>Every Resort on Mabul Island offers house reef diving and daily boat trips further out into the ocean.</li>
                                <li>Diving Points : Crocodile Avenue, Froggy Lair, Panglima Reef, Coral Reef Garden, Lobster Wall, Nudibranch Centre, Eel Garden, Ray Point.</li>
                            </ul>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/play2.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/play3.jpg" />
                        </td>
                        <td>
                            <h3>Snorkeling</h3>
                            <ul>
                                <li>Snorkeling in Mabul is known for sightings of the weird and wonderful along with coral reefs and sea turtles.</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Visit the Bajau Laut Water Village</h3>
                            <ul>
                                <li>Homes on the water – the Bajau Laut way of life.</li>
                                <li>For generations, the Bajau Laut have lived in the ‘coral triangle’ – the Sulu archipelago.</li>
                                <li>The huts on land and water are called as Kubu-Kubu.</li>
                                <li>Seaweed Farming – The sustainable income of Bajau Laut community.</li>
                            </ul>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/play4.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/play5.jpg" />
                        </td>
                        <td>
                            <h3>Ocean Kayaking</h3>
                            <ul>
                                <li>Kayak rental is available all year round at approximately RM30 per hour.</li>
                                <li>Try Molokini transparent kayak to reach pristine stretches of sandy beaches, waterfront picnic areas and secret hideouts unreachable by foot.</li>
                                <li>Resorts that offer kayak rentals : Sipadan-Mabul Resort, Mabul Water Bungalows.</li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <%--Panel 2 that shows recommended restaurants--%>
            <asp:Panel ID="panelEat" runat="server" Visible="false">
                <table class="tables">
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/eat1.jpg" />
                        </td>
                        <td>
                            <h3>Summer Breeze Café</h3>
                            <ul>
                                <li>Rating : 4.5 with 11 reviews</li>
                                <li>Address : Ground Floor, Lot C1 Semporna Seafront TownShip 91308, Semporna Malaysia</li>
                                <li>Cuisines : Local and Western Food</li>
                                <li>Features : Takeout, Seating, Table Service, Reservations</li>
                                <li>Meals : Lunch, Dinner</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Buddy Bistro</h3>
                            <ul>
                                <li>Rating : 4.5 with 29 reviews</li>
                                <li>Address : Jalan Kastam Lot 5, Block A, Seafront New Township, Semporna 91308 Malaysia</li>
                                <li>Cuisines : Steakhouse, Bar, Pizza, Cafe, Grill, Pub</li>
                                <li>Features : Reservations, Seating</li>
                                <li>Meals : Dinner</li>
                            </ul>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/eat2.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/eat3.jpg" />
                        </td>
                        <td>
                            <h3>Restoran Bismillah</h3>
                            <ul>
                                <li>Rating : 4.0 with 50 reviews</li>
                                <li>Address : Jalan Tawau, Semporna 91308, Malaysia</li>
                                <li>Cuisines : Asian, Malaysian, Indian, Halal, Vegan Options</li>
                                <li>Features : Takeout, Seating, Waitstaff</li>
                                <li>Meals : Breakfast, Lunch, Dinner, Brunch</li>
                            </ul>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Fat Mother Semporna</h3>
                            <ul>
                                <li>Rating : 4.0 with 129 reviews</li>
                                <li>Address : Lot b4 Ground Floor, Seafront Township, Semporna, Malaysia</li>
                                <li>Cuisines : Chinese, Seafood, Asian</li>
                                <li>Features : Takeout, Seating, Waitstaff</li>
                                <li>Meals : Lunch, Dinner</li>
                            </ul>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/eat4.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/eat5.jpg" />
                        </td>
                        <td>
                            <h3>Ocean Treasure Live Seafood Restaurant</h3>
                            <ul>
                                <li>Rating : 3.5 with 51 reviews</li>
                                <li>Address : Ground Floor, Lot C1 | Semporna Seafront Township 91308, Semporna, Malaysia</li>
                                <li>Cuisines : Chinese, Seafood, Asian, Malaysian, Vegetarian Friendly</li>
                                <li>Features : Waitstaff, Reservations, Outdoor Seating, Seating</li>
                                <li>Meals : Lunch, Dinner</li>
                            </ul>
                        </td>
                    </tr>
                </table>
            </asp:Panel>

            <%--Panel 3 that shows recommended Spa--%>
            <asp:Panel ID="panelRest" runat="server" Visible="false">
                <table class="tables">
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/spa1.jpg" />
                        </td>
                        <td>
                            <h3>Mabul Water Bungalow</h3>
                            <p class="intro">
                                Mabul Water Bungalows is a luxury floating dive-resort 
                                on the southeastern side of Mabul island. It overlooks Sipadan
                                Island and is truly perfect for honeymooners to spend time here.
                                <br />
                                <br />
                                <a href="https://rb.gy/i4ybtu" target="_blank">Learn More</a>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Sipadan-Mabul Resort</h3>
                            <p class="intro">
                                Sipadan-Mabul Resort (SMART) is situated at Mabul Island. It has
                                45 water chalets based on Bajau architectural design, each with private
                                decks overlooking the sea.
                                <br />
                                <br />
                                <a href="https://rb.gy/hfpssr" target="_blank">Learn More</a>
                            </p>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/spa2.jpg" />
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <img class="imgActivities" src="Images/thingsToDo/spa3.jpg" />
                        </td>
                        <td>
                            <h3>Borneo Divers Mabul Resort</h3>
                            <p class="intro">
                                Borneo Divers Mabul Resort is located on a pristine stretch of white sand beach
                                on the island of Mabul. It is easy to access to the water, as well as provides 
                                for effortless shore and boat diving.
                                <br />
                                <br />
                                <a href="https://www.sipadan.com/Borneo-Divers.php" target="_blank">Learn More</a>
                            </p>
                        </td>
                    </tr>
                    <tr>
                        <td colspan="2">
                            <br />
                            <hr />
                            <br />
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <h3>Scuba Junkie Mabul Beach Resort</h3>
                            <p class="intro">
                                Scuba Junkie Mabul Beach Resort is a middle class resort offering snorkelling packages, 
                                diving packages and vacation packages. There is a snorkelling and diving point 
                                in front of the resort.
                                <br />
                                <br />
                                <a href="https://rb.gy/tqjkhv" target="_blank">Learn More</a>
                            </p>
                        </td>
                        <td style="text-align: right">
                            <img class="imgActivities" src="Images/thingsToDo/spa4.jpg" />
                        </td>
                    </tr>
                </table>
            </asp:Panel>
            <br />

            <%--previous and next buttons for changing panel--%>
            <table class="tables">
                <tr>
                    <td>
                        <asp:Button ID="btnPrevious" runat="server" Text=" < "
                            BackColor="DarkGray" ForeColor="White" Font-Bold="true"
                            Font-Size="Medium" BorderStyle="None" Style="float: left"
                            OnClick="btnPrevious_Click" />
                    </td>
                    <td>
                        <asp:Button ID="btnNext" runat="server" Text=" > "
                            BackColor="DarkGray" ForeColor="White" Font-Bold="true"
                            Font-Size="Medium" BorderStyle="None" Style="float: right"
                            OnClick="btnNext_Click" />
                    </td>
                </tr>
            </table>
        </div>

        <%--button to go up to the top of the page--%>
        <div class="goUpbtn">
            <asp:ImageMap ID="ImageMapGoUp" runat="server" ImageUrl="~/Images/GoUp.png" HotSpotMode="PostBack" OnClick="ImageMapGoUp_Click">
                <asp:CircleHotSpot AlternateText="Up" Radius="40" X="44" Y="42" />
            </asp:ImageMap>
        </div>
        <br />

        <%--footer--%>
        <div class="footer">
            <br />
            <span>CONTACT US &nbsp +60-1234-5678</span>
            <p>© Copyright 2021 | All rights reserved.</p>
        </div>
    </form>
</body>
</html>
