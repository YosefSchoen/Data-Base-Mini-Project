using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;


using System.Data;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;
using Oracle.ManagedDataAccess.Types;

namespace FrontEndWPF
{
    /// <summary>
    /// Interaction logic for Batter.xaml
    /// </summary>
    public partial class Batter : Window
    {
        OracleConnection myConnection = null;
        public Batter()
        {
            this.setConnection();
            InitializeComponent();
        }

        private void setConnection()
        {
            String connectionString = ConfigurationManager.ConnectionStrings["myConnectionString"].ConnectionString;
            myConnection = new OracleConnection(connectionString);

            try
            {
                myConnection.Open();
            }
            catch (Exception notOpen)
            {

            }
        }

        private void Window_Loaded(object sender, RoutedEventArgs e)
        {
            String myQuery = "SELECT * FROM Batter";
            this.updateGrid(myQuery);
        }

        private void Window_Closed(object sender, EventArgs e)
        {
            myConnection.Close();
        }

        private void updateGrid(String myQuery)
        {
            OracleCommand cmd = myConnection.CreateCommand();
            cmd.CommandText = myQuery;
            cmd.CommandType = CommandType.Text;
            OracleDataReader dr = cmd.ExecuteReader();
            DataTable dt = new DataTable();
            dt.Load(dr);
            BatterDataGrid.ItemsSource = dt.DefaultView;
            dr.Close();
        }

        private void Search_Click(object sender, RoutedEventArgs e)
        {
            String batterID = SearchBatter.Text;
            String myQuery = "BEGIN BATTERUI.FINDBATTER('" + batterID + "'); END;";
            updateGrid(myQuery);
        }

        private void BackButton_Click(object sender, RoutedEventArgs e)
        {
            new Main().Show();
            this.Close();
        }
    }
}
