﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace X04_GridLayout
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();


            btn1.Clicked += (sender, e) =>
            {
                lblResult.Text += btn1.Text;
            };

            btn2.Clicked += (sender, e) => { lblResult.Text += btn2.Text; };

        }
    }
}
