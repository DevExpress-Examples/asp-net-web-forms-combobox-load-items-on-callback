using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DevExpress.Web;

namespace ComboBoxDelayedItemLoading {
    public partial class Default : System.Web.UI.Page {
        private const string DefaultCountryName = "United Kingdom";

        protected void Page_Load(object sender, EventArgs e) {
            if (!IsCallback) {
                cbCountries.Items.Add(DefaultCountryName);
                cbCountries.SelectedIndex = 0;
            }
        }

        protected void OnCallback(object source, CallbackEventArgsBase e) {
            List<string> counties = new List<string>(DataProvider.GetCountries());
            counties.Remove(DefaultCountryName);
            ((ASPxComboBox)source).Items.AddRange(counties);
        }
    }
}
