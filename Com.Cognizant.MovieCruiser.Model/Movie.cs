﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Com.Cognizant.MovieCruiser.Model
{
    public class Movie
    { 
            int movieId;
            public int Id
            {
                get { return movieId; }
                set { movieId = value; }
            }

            string title;
            public string Title
            {
                get { return title; }
                set { title = value; }
            }

            string boxOffice;
            public string BoxOffice
            {
                get { return boxOffice; }
                set { boxOffice = value; }
            }
            bool active;
            public bool Active
            {
                get { return active; }
                set { active = value; }
            }
            string dateOfLaunch;
            public string DateOfLaunch
            {
                get { return dateOfLaunch; }
                set { dateOfLaunch = value; }
            }
            string genre;
            public string Genre
            {
                get { return genre; }
                set { genre = value; }
            }
            bool hasTeaser;
            public bool HasTeaser
            {
                get { return hasTeaser; }
                set { hasTeaser = value; }
            }

            //Default Constructor
            public Movie()
            {

            }
            //Movie Constructor
            public Movie(int movieId, string title, string boxOffice, bool active, string dateOfLaunch, string genre, bool hasTeaser)
            {
                this.movieId = movieId;
                this.title = title;
                this.boxOffice = boxOffice;
                this.active = active;
                this.DateOfLaunch = dateOfLaunch;
                this.genre = genre;
                this.hasTeaser = hasTeaser;

            }
        }
    }

