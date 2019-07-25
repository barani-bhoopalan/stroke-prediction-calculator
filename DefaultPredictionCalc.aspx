<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DefaultPredictionCalc.aspx.cs" Inherits="Stroke_Prediction_Calculator___BB.DefaultPredictionCalc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml" id="Genderddw">
<head runat="server">
    <title>Stroke Prediction Calculator</title>
    <style type="text/css">
        .auto-style2 {
            height: 64px;
        }
        .auto-style3 {
            width: 401px;
            height: 311px;
        }
        .auto-style5 {
            height: 64px;
            width: 174px;
        }
        .auto-style8 {
            width: 174px;
            height: 48px;
        }
        .auto-style9 {
            width: 117px;
            height: 48px;
        }
        .auto-style10 {
            width: 174px;
            height: 45px;
        }
        .auto-style11 {
            width: 117px;
            height: 45px;
        }
        .auto-style18 {
            width: 174px;
            height: 46px;
        }
        .auto-style19 {
            width: 117px;
            height: 46px;
        }
        .auto-style20 {
            width: 174px;
            height: 43px;
        }
        .auto-style21 {
            width: 117px;
            height: 43px;
        }
        .auto-style24 {
            width: 174px;
            height: 35px;
        }
        .auto-style25 {
            height: 35px;
        }
        .auto-style26 {
            height: 47px;
        }
        .auto-style28 {
            width: 174px;
            height: 47px;
        }
        .auto-style29 {
            width: 117px;
            height: 47px;
        }
        .auto-style30 {
            height: 62px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

             <table class="auto-style3" id="MainTable">
                 <tr>
                     <td class="auto-style8"> Gender:</td>
                     <td class="auto-style9"> <asp:DropDownList  runat="server" Height="16px" Width="175px" ToolTip="Select one gender type" ID="GenderDDW">
                <asp:ListItem>Female</asp:ListItem>
                <asp:ListItem>Male</asp:ListItem>
                <asp:ListItem>Other</asp:ListItem>
            </asp:DropDownList></td>
                 </tr>
                 <tr>
                     <td class="auto-style10">Age: </td>
                     <td class="auto-style11"><asp:textbox runat="server" MaxLength="3" ToolTip="Enter the age in digits only" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" ID="AgeTxt" TabIndex="1" Width="170px"></asp:textbox></td>
                 </tr>
                 <tr>
                     <td class="auto-style18">Hypertension:</td>
                     <td class="auto-style19">  <asp:DropDownList runat="server" ID="HypertensionDDW" Height="23px" Width="172px" ToolTip="0- No Hypertension , 1-Hypertension" TabIndex="2">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList></td>
                 </tr>
                 <tr>
                     <td class="auto-style20">Heart Disease:</td>
                     <td class="auto-style21"> <asp:DropDownList runat="server" ID="HeartDiseaseDDW" Height="23px" Width="174px" ToolTip="0 -No Heart Disease , 1 - Heart Disease" TabIndex="3">
                <asp:ListItem>0</asp:ListItem>
                <asp:ListItem>1</asp:ListItem>
            </asp:DropDownList></td>
                 </tr>
                 <tr>
                     <td class="auto-style18">Ever Married:</td>
                     <td class="auto-style19"><asp:DropDownList runat="server" ID="EverMarriedDDW" Height="22px" Width="174px" ToolTip=" Select an option to proceed" TabIndex="4">
                <asp:ListItem>Yes</asp:ListItem>
                <asp:ListItem>No</asp:ListItem>
            </asp:DropDownList></td>
                 </tr>
                 <tr>
                     <td class="auto-style28">Residential Type:</td>
                     <td class="auto-style29"><asp:DropDownList runat="server" ID="RuralDDW" Height="25px" Width="173px" ToolTip="0 -No Heart Disease , 1 - Heart Disease" TabIndex="5">
                <asp:ListItem>Rural</asp:ListItem>
                <asp:ListItem>Urban</asp:ListItem>
            </asp:DropDownList></td>
                     </tr>
                 <tr>
                     <td class="auto-style8">Average Glucose Level:</td>
                     <td class="auto-style9"><asp:textbox runat="server" MaxLength="5" ToolTip="Enter the glucose level in mg/dl units" ID="GlucoseLevelTxt" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" TabIndex="6" Width="164px"></asp:textbox>
            </td>
                 </tr>
                 <tr>
                     <td class="auto-style24">BMI:</td>
                     <td class="auto-style25">
                         <asp:TextBox runat="server" MaxLength="3" ToolTip="Enter the BMI in digits only" ID="bmiTxt" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" TabIndex="7" Width="164px"></asp:TextBox> </td>
                 </tr>
                 <tr>
                     <td class="auto-style28">Smoking Status:</td>
                     <td class="auto-style26"><asp:DropDownList runat="server" ID="SmokingStatusDDW" Height="23px" Width="170px" ToolTip="Select a smoking status" TabIndex="8">
                <asp:ListItem>formerly smoked</asp:ListItem>
                <asp:ListItem>never smoked</asp:ListItem>
                <asp:ListItem>smokes</asp:ListItem>
            </asp:DropDownList></td>
                 </tr>
                 <tr>
                     <td class="auto-style5">Physicians Comment: </td>
                     <td class="auto-style2"><asp:textbox runat="server" MaxLength="50" ToolTip="Enter the physician comment" ID="PhysiciansTxt" ErrorMessage="Only Numbers allowed" ValidationExpression="\d+" TabIndex="9" Height="43px" Width="165px"></asp:textbox> </td>
                 </tr>

                 <tr>
                <td class="auto-style30">
                <asp:button runat="server" text="Predict" OnClick="Unnamed1_Click" style="margin-left: 43px" TabIndex="10" Width="129px" />
                </td>
                     <td>
                         <asp:Button ID="Button1" runat="server" Text="Button" />
                     </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="PredictionLabel" runat="server" Text="The prediction value is : "></asp:Label>
                </td>
            </tr>

                 </table>

                    
                        
                        
        </div>
             
        
      </form>
       

      
</body>

</html>
   

 
     
    



          
     



 
     
    



