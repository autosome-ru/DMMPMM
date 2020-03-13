*** INTRODUCTION ***
This document describes DMMPMM structure and usage including required installation steps.

*** PREREQUISITES ***
    Pipeline itself is able to run in Linux and Windows environments.
    Ytilib release distributed on DMMPMM website includes only Windows-compatible 
    versions of stand-alone tools (SeSiMCMC and AhoPro).

0.  Install MySQL 5 and leave it on default port 3306 (otherwise you will 
    need to change the port in mysql.rb of Ytilib library).
    You can allow root connections without a password on localhost machine or
    change username and password in windows.rb(or linux.rb) of Ytilib library.
    Download bismark-adapted MySQL database dump and import the data into MySQL 
    table.
    
1.  Download and unpack Ytilib library along with its tools.
    Make sure, that you use the following directory structure:
      some_dir/ruby/ for Ytilib and ruby-based tools
      some_dir/extlz/ for external tools (SeSiMCMC and AhoPro, all included)
      some_dir/proj/dmmpmm/ for DMMPMM

--> Steps from the Ytilib installation:
2.  Install a Java 6 runtime environment (http://java.sun.com) (for Footstep Bigfoot core)
3.  Install a ruby 1.8 interpreter (http://www.ruby-lang.org/)
4.  Install a fresh version of RMagick 2 (http://rmagick.rubyforge.org/)
5.  Install any fresh gnuplot 4 (http://www.gnuplot.info/)
6.  Make gnuplot binary (wgnuplot.exe in case of Windows) available through 
    your PATH variable.
7.  Download a Drosophila genome assembly (April 2004, dm2) and put
    separate chromosome plain files (chromosome sequence without any 
    delimeters) into the some_dir/store/dmel40
    You may need additional software to make these files from .fasta.

*** USAGE ***
    To run DMMPMM you will need to type in the console
    dmmpmm.rb without any parameters. DMMPMM pipeline works as the series
    of partially-independent scripts.
    
    Each program in DMMPMM pipeline is quite self-documenting
    (you can run all of them without parameters to see what they want as 
    command line arguments, one exception is dmmpmm.rb which begins to work
    in a newly created directory if called without parameters).
    
    Feel free to use any part of DMMPMM source in your own research.
    You can adress any specific questions 
    about DMMPMM to ivan-wow-kulakovskiy-at-gmail-dot-com.
    
    Program run order (with short description) follows:
    A. dmmpmm.rb
       - creates result directory, 
       constructs Bigfoot and SeSiMCMC motif libraries
    
    B. dmmpmm_pollard.rb, dmmpmm_indata.rb, dmmpmm_xms.rb, etc.
       - data conversion programs (to use with indata folder)
       able to convert different motif file into small-BiSMark
    
    C. dmmpmm_features.rb
       - calculates thresholds for motifs, computes missing footprints 
       and other data for features table (independent run for each motif 
       collection)
       
    D. dmmpmm_simkoef.rb
       - makes a similarity table (works only for Bigfoot motif collection)
    
    E. *_html.rb
       - all these programs are converting computed data 
       into html representation

*** NOTES ***
    - dmmpmm_list tool is only useful for Bigfoot motif collection.
    - If you want this machinery to work correctly, please use the following list of 
      names for the corresponding motif collections: 
      "BE_DMEL-footprint-Bigfoot_ctrl",
      "BE_DMEL-footprint-Bigfoot",
      "BE_DMEL-footprint-Pollard", 
      "BE_DMEL-footprint-Down", 
      "NO_SOUR-curated-Bergman", 
      "BE_DMEL-footprint-SeSiMCMC", 
      "NO_SOUR-curated-Papatsenko",
      "NO_SOUR-specific-Noyes",
      "NO_SOUR-specific-Noyes_hd"