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

namespace FrontEndWPF
{
    /// <summary>
    /// Interaction logic for Main.xaml
    /// </summary>
    public partial class Main : Window
    {
        public Main()
        {
            InitializeComponent();
        }

        private void Team_Click(object sender, RoutedEventArgs e)
        {
            new Team().Show();
            this.Close();
        }

        private void Player_Click(object sender, RoutedEventArgs e)
        {
            new Player().Show();
            this.Close();
        }


        private void Pitcher_Click(object sender, RoutedEventArgs e)
        {
            new Pitcher().Show();
            this.Close();
        }

        private void Batter_Click(object sender, RoutedEventArgs e)
        {
            new Batter().Show();
            this.Close();
        }

    }
}
