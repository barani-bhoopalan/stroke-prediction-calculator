using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using RestSharp;
using Newtonsoft.Json.Linq;

namespace Stroke_Prediction_Calculator___BB
{
    public partial class DefaultPredictionCalc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /* OutputPrediction.Enabled = false;*/
            
           
           /* OutputPrediction.Enabled = true;*/
        }

        protected void Unnamed1_Click(object sender, EventArgs e)
        {
            var client = new RestClient("https://ussouthcentral.services.azureml.net/workspaces/e68dd63f4f8948a8a82f1e3389176451/services/745ddf39f2ce4f438e580e0da1f89dd6/execute?api-version=2.0&details=true");
            var request = new RestRequest(Method.POST);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Content-Length", "639");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "ussouthcentral.services.azureml.net");
            request.AddHeader("Postman-Token", "b4cf9bc1-af7d-4083-8875-d4ff95fdc553,4cba5963-4278-4435-bad9-d175442eda95");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("User-Agent", "PostmanRuntime/7.15.2");
            request.AddHeader("Accept", "application/json");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Authorization", "Bearer YIWuZVuUAN9NiwvpVFhO9HjOfqmly5dKU7gaPhwtyWCKG+4c6oHrRqrtacgAqNg8gGbUdVmX0GqAlzcAhySuYw==");
            request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n     " +
                "   \"gender\",\r\n        \"age\",\r\n        \"hypertension\",\r\n        \"heart_disease\",\r\n      " +
                "  \"ever_married\",\r\n        \"Residence_type\",\r\n        \"avg_glucose_level\",\r\n        \"bmi\",\r\n    " +
                "    \"smoking_status\",\r\n        \"stroke\",\r\n        \"Physician's Comment\"\r\n      ],\r\n   " +
                "   \"Values\": [\r\n        [\r\n          \"" + GenderDDW.SelectedItem.Text + "\",\r\n          \"" + AgeTxt.Text + "\",\r\n     " +
                "     \"" + HypertensionDDW.SelectedItem.Text + "\",\r\n          \"" + HeartDiseaseDDW.SelectedItem.Text + "\",\r\n          \"" + EverMarriedDDW.SelectedItem.Text + "\",\r\n          \"" + RuralDDW.SelectedItem.Text + "\",\r\n    " +
                "      \"" + GlucoseLevelTxt.Text + "\",\r\n          \"" + bmiTxt.Text + "\",\r\n          \"" + SmokingStatusDDW.SelectedItem.Text + "\",\r\n          \"123\",\r\n          \"" + PhysiciansTxt.Text + "\"\r\n   " +
                "     ]\r\n        \r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);

            /*request.AddParameter("undefined", "{\r\n  \"Inputs\": {\r\n    \"input1\": {\r\n      \"ColumnNames\": [\r\n        \"gender\",\r\n        \"age\",\r\n        \"hypertension\",\r\n        \"heart_disease\",\r\n        \"ever_married\",\r\n        \"Residence_type\",\r\n        \"avg_glucose_level\",\r\n        \"bmi\",\r\n        \"smoking_status\",\r\n        \"stroke\",\r\n        \"Physician's Comment\"\r\n      ],\r\n      \"Values\": [\r\n        [\r\n          \"Female\",\r\n          \"80\",\r\n          \"0\",\r\n          \"1\",\r\n          \"No\",\r\n          \"Urban\",\r\n          \"50\",\r\n          \"120\",\r\n          \"formerly smoked\",\r\n          \"0\",\r\n          \"Healthy\"\r\n        ]\r\n        \r\n      ]\r\n    }\r\n  },\r\n  \"GlobalParameters\": {}\r\n}", ParameterType.RequestBody);*/

            IRestResponse response = client.Execute(request);
            PredictionLabel.Text = response.Content.ToString();
        }
    }
}