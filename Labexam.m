x = 0:0.0001:10;f = 10*cos (x);subplot (3,1,1);plot (f);xlabel ("time");ylabel ("amplitude");title ("Mayukh & 1904428");y = diff (f);subplot (3,1,2);plot (y);xlabel ("time");ylabel ("amplitude");title ("Mayukh & 1904428");z = diff (y);subplot (3,1,3);plot (z);xlabel ("time");ylabel ("amplitude");title ("Mayukh & 1904428");