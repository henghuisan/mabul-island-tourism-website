using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MabulIsland
{
    public partial class _default : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {
            Page.MaintainScrollPositionOnPostBack = true; //prevent the page automatically scroll up
            
            //get the target panel after Reponse.Redirect() the page using session data
            if (Session["Panel"] != null)
            {
                getPanel(Session["Panel"].ToString());
            }       
        }
        

        //use for image slider
        protected void Timer1_Tick(object sender, EventArgs e)
        {
            Random rand = new Random();
            int i = rand.Next(1, 6);        //random generate number between 1 to 6
            ImageSlider.ImageUrl = "~/Images/Banner/banner" + i.ToString() + ".JPG";
        }

        //use for getting the panel once user click on the corresponding linkbtn 
        protected void getPanel(string panelID)
        {
            Panel[] pArr = new Panel[3] { panelPlay, panelEat, panelRest };
            String[] lblTitleTxt = new String[3] { "5 Activities to Do in Mabul Island", "5 Places that Can’t Miss to Dine Drink and Feast", "4 Spa Resorts that Can Rekindle Your Soul" };

            for (int i = 0; i < 3; i++)
            {
                if (panelID.Equals(pArr[i].ID))
                {
                    lblTitle.Text = lblTitleTxt[i];
                    pArr[i].Visible = true;
                }
                else
                {
                    pArr[i].Visible = false;
                }
            }
        }

        protected void lbtnPlay_Click(object sender, EventArgs e)
        {
            getPanel(panelPlay.ID);
        }

        protected void lbtnEat_Click(object sender, EventArgs e)
        {
            getPanel(panelEat.ID);
        }

        protected void lbtnRest_Click(object sender, EventArgs e)
        {
            getPanel(panelRest.ID);
        }

        //used to go up to the top of the page
        protected void ImageMapGoUp_Click(object sender, ImageMapEventArgs e)
        {
            Response.Redirect("default.aspx#header");
        }

        //used to change to the previous panel
        protected void btnPrevious_Click(object sender, EventArgs e)
        {
            if (lblTitle.Text.Equals("4 Spa Resorts that Can Rekindle Your Soul"))
            {
                Session["Panel"] = "panelEat";              //session saved for getting the panel after response.redirect()
                Response.Redirect("default.aspx#lnkBtns");  //redirect to the specific div using div ID
            }
            else if (lblTitle.Text.Equals("5 Places that Can’t Miss to Dine Drink and Feast"))
            {
                Session["Panel"] = "panelPlay";
                Response.Redirect("default.aspx#lnkBtns");
            }
            else if (lblTitle.Text.Equals("5 Activities to Do in Mabul Island"))
            {
                return;
            }
        }

        //used to change to the next panel
        protected void btnNext_Click(object sender, EventArgs e)
        {
            if (lblTitle.Text.Equals("5 Activities to Do in Mabul Island"))
            {
                Session["Panel"] = "panelEat";
                Response.Redirect("default.aspx#lnkBtns");
            }
            else if (lblTitle.Text.Equals("5 Places that Can’t Miss to Dine Drink and Feast"))
            {
                Session["Panel"] = "panelRest";
                Response.Redirect("default.aspx#lnkBtns");
            }
            else if (lblTitle.Text.Equals("4 Spa Resorts that Can Rekindle Your Soul"))
            {
                return;
            }

        }

    }
}