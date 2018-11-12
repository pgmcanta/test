*** Settings ***
Resource            ../Resources/Cleveland-Resource.robot
Suite Setup          Setup Browser
Suite Teardown       End suite


*** Test Cases ***
	
1.1 Open Innovation Webpage - 
	[tags]		ok
    Appstate    Innovation
	VerifyText   Technology

1.2 Goto Team section verify Dr. Morris -
	[tags]		ok
	Appstate	Innovation
	ClickText    Our Team
	VerifyText    INVENT
	ClickText 	  William
	Sleep		  5	
	VerifyText	  Case

1.3 Fill in Contact US text - 
	[tags]		ok
	Appstate	Innovation
	ClickText	Contact
	TypeText    First		   Patrick
	TypeText	Last		   Grant
	TypeText	Email		   pgrant@mcanta.com
	TypeText	Question	   How much staff time could be recovered if 10% of testing was automated?	   
	Sleep		  5