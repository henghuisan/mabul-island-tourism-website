using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MabulIsland
{
    public partial class HotelBooking : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //Disable all the date before current date
        protected void DateRangeCheckIn(object sender, DayRenderEventArgs e)
        {
            DateTime rangeStart = DateTime.Today;

            if (e.Day.Date < rangeStart)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }

        //Disable all the date before the selected check-in date
        protected void DateRangeCheckOut(object sender, DayRenderEventArgs e)
        {
            DateTime rangeStart = CheckInDate.SelectedDate.AddDays(1);
            CheckOutDate.SelectedDate = CheckInDate.SelectedDate;

            if (e.Day.Date < rangeStart)
            {
                e.Day.IsSelectable = false;
                e.Cell.ForeColor = System.Drawing.Color.Gray;
            }
        }

        //used for showing check-in calander after clicking the imagebutton
        protected void ibtnCheckInDate_Click(object sender, ImageClickEventArgs e)
        {
            CheckInDate.Visible = true;
        }

        //used after selecting check-in date
        protected void CheckInDate_SelectionChanged(object sender, EventArgs e)
        {
            DateTime dt = CheckInDate.SelectedDate;
            txtCheckInDate.Text = dt.ToString("dd/MM/yyy");     //change date format
            CheckInDate.Visible = false;                        //the calendar for check-in set invisible
        }

        //used for showing check-out calander after clicking the imagebutton
        protected void ibtnCheckOutDate_Click(object sender, ImageClickEventArgs e)
        {
            CheckOutDate.Visible = true;        //the calendar for check-out set visible
        }

        //used after selecting check-out date
        protected void CheckOutDate_SelectionChanged1(object sender, EventArgs e)
        {
            DateTime dt = CheckOutDate.SelectedDate;
            txtCheckOutDate.Text = dt.ToString("dd/MM/yyy");
            CheckOutDate.Visible = false;       //the calendar for check-out set visible
        }

        protected void btnGo_Click(object sender, EventArgs e)
        {
            if(!txtCheckInDate.Text.Equals("") && !txtCheckOutDate.Text.Equals(""))
            {
                pCont1.Visible = true;              //make the panel about hotel info visible
                ddlHotel.Visible = true;
                getPanel(pHotel1);                  //first hotel's info is shown by default
                btnSelect.Visible = true;
                ibtnCheckInDate.Enabled = false;    //disable imgBtn of check-in
                ibtnCheckOutDate.Enabled = false;   //disable imgBtn of check-out
                btnGo.Enabled = false;
            }
            else
            {
                return;
            }
        }

        //panel change based on the selection from hotel dropdownlist
        protected void ddlHotel_SelectedIndexChanged(object sender, EventArgs e)
        {
            switch (ddlHotel.SelectedIndex)
            {
                case 0:
                    getPanel(pHotel1);
                    break;
                case 1:
                    getPanel(pHotel2);
                    break;
                default:
                    getPanel(pHotel3);
                    break;
            }
        }

        //get the hotel panel
        protected void getPanel(Panel panel)
        {
            Panel[] pArr = new Panel[3] { pHotel1, pHotel2, pHotel3 };

            for (int i = 0; i < 3; i++)
            {
                if (panel.ID.Equals(pArr[i].ID))
                {
                    pArr[i].Visible = true;
                }
                else
                {
                    pArr[i].Visible = false;
                }
            }
        }

        //firstly used for selecting room type, then btn.txt is changed and user 
        protected void btnSelect_Click(object sender, EventArgs e)
        {
            ddlHotel.Enabled = false;

            if (btnSelect.Text.Equals(" Confirm ") && getRblIsClicked())
            {
                pCont2.Visible = true;      //open the bookings panel
                getInformation();           //show the bookings detail
                btnBook.Visible = true;     //btn of the next panel set visible
                btnSelect.Enabled = false;
            }
            switch (ddlHotel.SelectedIndex)
            {
                case 0:
                    lblH1.Visible = true;
                    getRadioBtnList(rblHotel1);
                    break;
                case 1:
                    lblH2.Visible = true;
                    getRadioBtnList(rblHotel2);
                    break;
                default:
                    lblH3.Visible = true;
                    getRadioBtnList(rblHotel3);
                    break;
            }
            btnSelect.Text = " Confirm ";
        }

        //use for function above, if return true then the next panel can be shown
        protected bool getRblIsClicked()
        {
            return rblHotel1.SelectedIndex != -1 || rblHotel2.SelectedIndex != -1 || rblHotel3.SelectedIndex != -1; //-1 means the user hasn't click the radio btn list
        }

        //used for showing the booking info after clicking confirm btn
        protected void getInformation()
        {
            txtCheckIn.Text = txtCheckInDate.Text;
            txtCheckOut.Text = txtCheckOutDate.Text;
            txtHotel.Text = ddlHotel.SelectedItem.ToString();
        }

        //used after select hotel from the dropdown list
        protected void getRadioBtnList(RadioButtonList rbl)
        {
            RadioButtonList[] rblArr = new RadioButtonList[3] { rblHotel1, rblHotel2, rblHotel3 };

            for (int i = 0; i < 3; i++)
            {
                if (rbl.ID.Equals(rblArr[i].ID))
                {
                    rblArr[i].Visible = true;
                }
                else
                {
                    rblArr[i].Visible = false;
                }
            }
        }

        //show cost after selecting the room of Hotel 1
        protected void rblHotel1_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoomType.Text = rblHotel1.SelectedItem.ToString();
            switch (rblHotel1.SelectedIndex)
            {
                case 0: lblroomH1.Text = "Cost : RM1000";
                    txtCost.Text = "RM1000";
                    break;
                case 1: lblroomH1.Text = "Cost : RM800";
                    txtCost.Text = "RM800";
                    break;
                default: lblroomH1.Text = "Cost : RM500";
                    txtCost.Text = "RM500";
                    break;
            }
        }

        //show cost after selecting the room of Hotel 2
        protected void rblHotel2_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoomType.Text = rblHotel2.SelectedItem.ToString();
            if (rblHotel2.SelectedIndex == 0)
            {
                lblroomH2.Text = "Cost : RM1350";
                txtCost.Text = "RM1350";
            }
            else
            {
                lblroomH2.Text = "Cost : RM680";
                txtCost.Text = "RM680";
            }
        }

        //show cost after selecting the room of Hotel 3
        protected void rblHotel3_SelectedIndexChanged(object sender, EventArgs e)
        {
            txtRoomType.Text = rblHotel3.SelectedItem.ToString();
            if (rblHotel3.SelectedIndex == 0)
            {
                lblroomH3.Text = "Cost : RM750";
                txtCost.Text = "RM750";
            }
            else
            {
                lblroomH3.Text = "Cost : RM450";
                txtCost.Text = "RM450";
            }
        }

        //used for showing message after booking is done
        protected void btnBook_Click(object sender, EventArgs e)
        {
            if (checkTextBox())
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Green;
                lblErrorMessage.Text = "Booking Successfully!";
            }
            else
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                lblErrorMessage.Text = "*Please fill in all the fields above.";
            }
        }

        //return true if all checkboxes are filled in
        protected bool checkTextBox()
        {
            return !txtFName.Text.Equals("") && !txtLName.Text.Equals("") && !txtEmail.Text.Equals("") && !txtContactNo.Text.Equals("");
        }

    }
}