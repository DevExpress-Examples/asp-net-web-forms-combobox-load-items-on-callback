<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ComboBoxDelayedItemLoading.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <script type="text/javascript">
            function OnDropDown(s, e) {
                if(!s.countriesLoaded) {
                    s.countriesLoaded = true;
                    cbCountries.PerformCallback();
                }
            }
        </script>
</head>

<body>
    <form id="form1" runat="server">
        <div>
            <dx:ASPxComboBox ID="cbCountries" runat="server" OnCallback="OnCallback" EnableIncrementalFiltering="True">
                <ClientSideEvents DropDown="OnDropDown" />
            </dx:ASPxComboBox>
        </div>
    </form>
</body>
</html>
