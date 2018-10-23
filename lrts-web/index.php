<?php


//if(isset($_COOKIE["user"])) {
//header("Location:Data.php");}

?>
<!DOCTYPE html>
<html>
<head>
<title>Questionnaire</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="//fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i&amp;subset=cyrillic,cyrillic-ext,greek,greek-ext,latin-ext,vietnamese" rel="stylesheet">
</head>
<body>

	<div class="main">
	

<center><img src="images\LTL-Logo.png" alt="Smiley face" height="65" width="680"></center>


	
<h4 style="   text-align: center;color:#270d73;background: white;width:50%;margin:0 auto;">
Dear Participants, 
<br>

This site is designed for scientific research purposes. We aim at ``Generating Difficulty-Controlled Arabic Lexical Recognition Tests (LRTs)'' using diacritical marks. 

<br>

</h4>
	
	</div>
		<form action="Data.php" method="post"> 
		<div class="w3_agile_main_grids">

			<div class="agileits_w3layouts_main_grid">

				<div class="agile_main_grid_left">

						<h3>Your Details :</h3>

						<select id="gender" class="w3layouts_select" name='gender' onchange="change_country(this.value)" required="" >
							<option value="">Gender</option>
							<option value="Male">Male</option>
							<option value="Female">Female</option> 						
						</select>

						<select id="org-uiv" class="w3layouts_select" name='org-uiv' onchange="change_country(this.value)" required="" >
							<option value="">Mother tongue/ First language (L1)</option>
							<option value="Arabic">Arabic</option>
							<option value="English">English</option>
							<option value="French">French</option>
							<option value="Spanish">Spanish</option>
							<option value="German">German</option>
							<option value="URDU">Urdu</option>
							<option value="Persian">Persian</option>
							<option value="Malay">Malay</option>
							<option value="Berber">Berber/Amazigh</option>
							<option value="Turkish">Turkish</option>
							<option value="Chinese">Chinese</option>
							<option value="Hindi">Hindi</option>
							<option value="Portuguese">Portuguese</option>
							<option value="Bengali">Bengali</option>
							<option value="Russian">Russian</option>
							<option value="Japanese">Japanese</option>ma
							<option value="Other">Other</option>					
						</select>

					<select id="Linked-in" class="w3layouts_select" name='Linked-in' onchange="change_country(this.value)"  required=""> 
							<option value="">Your Age</option>
      
                         <option>6</option>       
                        <option>7</option>       
                       <option>8</option>       
                       <option>9</option>       
                      <option>10</option>       
                     <option>11</option>       
                     <option>12</option>       
                     <option>13</option>       
                      <option>14</option>       
                      <option>15</option>       
                     <option>16</option>       
                     <option>17</option>       
                      <option>18</option>       
                      <option>19</option>       
                     <option>20</option>       
                      <option>21</option>       
                        <option>22</option>       
                        <option>23</option>       
                        <option>24</option>       
                        <option>25</option>
                        <option>26</option> 
                        <option>27</option>
                        <option>28</option>  
                        <option>29</option>        
                        <option>30</option>

                      <option>31</option>       
                        <option>32</option>       
                        <option>33</option>       
                        <option>34</option>       
                        <option>35</option>
                        <option>36</option> 
                        <option>37</option>
                        <option>38</option>  
                        <option>39</option>        
                        <option>40</option>       
       
                      <option>41</option>       
                        <option>42</option>       
                        <option>43</option>       
                        <option>44</option>       
                        <option>45</option>
                        <option>46</option> 
                        <option>47</option>
                        <option>48</option>  
                        <option>49</option>        
                        <option>50</option>       
      
                       <option>51</option>       
                        <option>52</option>       
                        <option>53</option>       
                        <option>54</option>       
                        <option>55</option>
                        <option>56</option> 
                        <option>57</option>
                        <option>58</option>  
                        <option>59</option>        
                        <option>60</option>       
      
                     <option>61</option>
                        <option>62</option>       
                        <option>63</option>       
                        <option>64</option>       
                        <option>65</option>
                        <option>66</option> 
                        <option>67</option>
                        <option>68</option>  
                        <option>69</option>        
                        <option>70</option>       
     
                      <option>71</option>       
                        <option>72</option>       
                        <option>73</option>       
                        <option>74</option>       
                        <option>75</option>
                        <option>76</option> 
                        <option>77</option>
                        <option>78</option>  
                        <option>79</option>        
                        <option>80</option>       
 
                      <option>81</option>       
                        <option>82</option>       
                        <option>83</option>       
                        <option>84</option>       
                        <option>85</option>
                        <option>86</option> 
                        <option>87</option>
                        <option>88</option>  
                        <option>89</option>        
                        <option>90</option>       

                      <option>91</option>       
                        <option>92</option>       
                        <option>93</option>       
                        <option>94</option>       
                        <option>95</option>
                        <option>96</option> 
                        <option>97</option>
                        <option>98</option>  
                        <option>99</option>        
    
                   <option>100 or grater</option>
			          
    				</select>

						
						<select id="day" class="w3layouts_select" name='day' onchange="change_country(this.value)"  required="">
							<option value="">Day of Birth </option>
						   <option>1</option>       
                            <option>2</option>       
                           <option>3</option>       
                           <option>4</option>       
                          <option>5</option>       
                         <option>6</option>       
                        <option>7</option>       
                       <option>8</option>       
                       <option>9</option>       
                      <option>10</option>       
                     <option>11</option>       
                     <option>12</option>       
                     <option>13</option>       
                      <option>14</option>       
                      <option>15</option>       
                     <option>16</option>       
                     <option>17</option>       
                      <option>18</option>       
                      <option>19</option>       
                     <option>20</option>       
                      <option>21</option>       
                        <option>22</option>       
                        <option>23</option>       
                        <option>24</option>       
                        <option>25</option>       
                        <option>26</option>       
                       <option>27</option>       
                      <option>28</option>       
                     <option>29</option>       
                    <option>30</option>       
                   <option>31</option>    					
						</select>

												
						
					</div>
					<div class="agile_main_grid_left">
						<div class="w3_agileits_main_grid_left_grid">
						<div class="agileits_main_grid_left_l_grids">

						<h3 style="    background:  white;">Your Details :</h3>
						
						
							
						<select id="Experience" class="w3layouts_select" name='Experience' onchange="change_country(this.value)" required="" >
							<option value="">Knowledge of Arabic</option>
							<option value="NS">Native Speaker</option>
							<option value="AD">Arabic Dialect</option>
							<option value="1 year">1 years</option>
							<option value="2 years">2 years</option>
							<option value="3 years">3 years</option>
							<option value="4 years">4 years</option>
							<option value="5 years">5 years</option>
							<option value="6 years">6 years</option>
							<option value="7 years">7 years</option>
							<option value="8 years">8 years</option>
							<option value="9 years">9 years</option> 
							<option value="10 years">10 years</option> 
							<option value="11 years">11 years</option>	
							<option value="12 years">12 years</option>						
							<option value="13 years">13 years</option>						
							<option value="14 years">14 years</option>						
							<option value="15 years">15 years</option>						
							<option value="16 years">16 years</option>						
							<option value="17 years">17 years</option>						
							<option value="18 years">18 years</option>						
							<option value="19 years">19 years</option>						
							<option value="20 years">20 years</option>						
							<option value="21 years">21 years</option>						
							<option value="22 years">22 years</option>						
							<option value="23 years">23 years</option>						
							<option value="24 years">24 years</option>						
							<option value="25 years">25 years</option>						
							<option value="26-30 years">26-30 years</option>						
							<option value="Above 30 years">Above 30 years</option>	
						</select>

						<select id="Professional" class="w3layouts_select" name='Professional' onchange="change_country(this.value)" required="" >
							<option value="">Education</option>
							<option value="Pupil">Elementary School</option>
							<option value="High">High School</option>
							<option value="Diploma">Diploma</option>
							<option value="Bachelor">Bachelor</option>
							<option value="Master">Master</option>
							<option value="PhD">Doctorate</option>
							<option value="Other">Other</option>
						</select>
											
						
						
						<input type="text" name="Email" placeholder="Email (optional)" >


						</div>

						</div>
						<div class="w3_agileits_qualifications">

							<div class="card-bounding agileits"> 
								
		


									<br><input type="submit" name ='submit' value="Next">
								
							</div>
						</div>
					</div>
					
					<div class="clear"> </div>
					
			</div>
		</div>
		</form>
		<div class="agileits_copyright">
		</div>
	</div>


</body>
</html>