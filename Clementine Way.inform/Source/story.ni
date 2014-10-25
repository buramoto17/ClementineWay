"Clementine Way" by Brent Uramoto

When play begins:
	Say "You survived the week! It is now Friday night, and you don't have many things to do. Maybe I should call Jennifer and see if she's doing anything right now."

My Kitchen is a room. "This is where I cook my meals. It is a medium sized room with an oven and a refrigerator. The oven is in the far corner of the room, The refrigerator is on the right wall. There is a marble table in the middle of the room. My recipe locker is next to the refrigerator. The kitchen is lit by while florescent lights and a window that looks out into the yard. The Dining Room is to the west, the Bed Room is to the south, the Living room is to the east."

[Code to disable take all from Ragnarok by Marissa Takebayashi]
Rule for deciding whether all includes something: it does not.
[Code for snide remark after take all from A Day for Spelling by Mary Kiang]
[Code from Cole Damon]
Rule for printing a parser error when the latest parser error is the nothing to do error: say "You hold out your hand, close your eyes, and consentrate. You will all objects to fly to you, but nothing happens." instead.

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".
		[Exit code from Cole Damon]

[setting variables]
Oven Temp is a number that varies. Oven Temp is 0.[remember to put a period at the end of statements like these]
Story Line is a number that varies. Story Line is 0.
Clean is a number that varies. Clean is 0.
Call is a number that varies. Call is 0.
[end variables]

[Start NPC Jennifer]
Jennifer is a woman. She is nowhere.
[End NPC Jennifer]

[Tells inform to understand the term for turning]
Understand "turn [something] to [a number]" as turning it to.
Turning it to is an action applying to one thing and one number.
[From Cole Damon's code in Laboratory Escape]

[Oven description]
Oven is a closed openable container in my kitchen. It is undescribed. The description is "A standard electric oven. It is fairly new, I only bought it six months ago. The oven controls has differetent temperatures on it. 300, 350 and 400. It can be set by TURNING oven controls to a temperature [if Oven Temp is 300]Now the oven is at a hot 300ºF.[end if][if Oven Temp is 350] Now the oven is at a scorching 350ºF.[end if][if Oven Temp is 400] Now the oven is at a blistering 400ºF[end if]"

oven controls is a part of oven. It is undescribed. Oven controls can be turned to 300, 350 and 400.

[setting oven temperature statements]

Instead of turning oven controls to 300:
      now Oven Temp is 300;
      say "The oven starts to get warm, and after a few minutes, the temperature skyrockets to 300ºF."
[setting temperature at 300]

Instead of turning oven controls to 350:
	now Oven Temp is 350;
	say "The oven heats up quickly, and you watch as the temperature rises to 350ºF. You can feel some of the heat radiating off of your face."
	[setting temperature to 350]
	
Instead of turning oven controls to 400:
	now Oven Temp is 400;
	say "The oven temperature soars until it reaches 400ºF. Even standing a few feet away from it, you can feel the heat bouncing off your face."
	[setting temperature to 400]
	
Instead of taking the oven, say "Why in the world would I need to take the oven? It must weigh a ton! Besides, I need to cook the dish in there, so I shouldn't move it."
	
[end oven temperature statements]
[end oven description]

[Start recipe storage]
Recipe storage is a closed openable container in the kitchen. It is undescribed. The description is "It is a white wood storage container that I keep my recipes in.[if Recipe storage is closed] It is closed.[end if][if Recipe storage is open]It is open. There are a lot of recipies in here, but nothing of interest at the moment.[end if][If Story Line is 2] There are a bunch of interesting recipes in here, but there is one that you had intended to make for Jennifer. Ole Casserole Recipe.[end if]"

[Margret's Casserole is a thing in recipe storage. The description is "This is a dish that Jennifer and I used to make when we were kids. It is still a good recipe, in fact, I made it a month ago, and it tasted great! But I accidentally ripped the paper when I made it last time. To make matters worse, I've completely forgotten how to make it. I can only make out some writing of the scraps. 'Soup'...'oven'. Not going to be much help, but it's all I got for now."][This code is for if I have time to make the pleyer find the parts of the recipe]

Old Casserole recipe is a thing inside recipe storage. The description is "This is a dish that Jennifer and I used to make when we were kids. It is still a good recipe, in fact, I made it a month ago, and it tasted great! This is the recipe: [paragraph break] Ingredients: bacon, onions, chicken, alfredo soup. [paragraph break] Directions: turn oven on to 350 ºF. Mix bacon with onion and then mix chicken and alfredo soup. Then, put into oven for an hour."

Understand "Mix [something] with [something]" as mixing it with.
Mixing it with is an action applying to two things.

Instead of mixing Bacon with Onion:
	If Story Line is 2:
		Say "You mix the bacon and onions until it is well spread out.";
		Remove Onion from play;
		Remove Bacon from play;
		Move Chopped Ingredients to the player.
		
Instead of mixing Chicken with orange soup:
	If Story Line is 2:
		Say "You mix the chicken with the orange-colored soup until the chicken is fully mixed with the soup.";
		Remove Unlabeled can of soup from play;
		Remove orange soup from play;
		Remove Chicken from play;
		Move Soupy Mixture to player.
		
Instead of mixing Soupy Mixture with Chopped Ingredients:
	If Story Line is 2:
		Say "You put all the ingredients together and now it is ready to be baked.";
		Remove Soupy Mixture from play;
		Remove Chopped ingredients from play;
		Move Uncooked mixture to player.
		
After taking margret's casserole for the first time:
	Now Story Line is 3;
	Say "You carefully take the casserole out of the oven. It is still steaming, but it looks scrumptious.".
		
[Instead of putting Uncooked mixture into the oven:
	If oven temp is 350:
		Say "good, now we have to wait for an hour."]
		
An every turn rule:
	If Uncooked mixture is in the oven:
		If Oven Temp is 350:
			Say "You carefully put the uncooked mixture into the heated oven. Then, you set the timer for an hour and decide to take a nap. As soon as the casserole is done, you should call Jennifer. [Paragraph break] You wake up an hour later. A delicous smell floats through out the house. Time to take the casserole out.";
			Remove uncooked mixture from play;
			Move Margret's Casserole to oven;
		Otherwise:
			Say "The Oven isn't on! I need to turn it on before I can cook anything in there.";
			Move Uncooked mixture to player.
		

[End recipe storage]

Chopped Ingredients is a thing. It is edible. It is nowhere. The description is "Finely mixed Bacon and onions. Looks delicous.".

Soupy Mixture is a thing. It is edible. It is nowhere. The description is "Chicken that is mixed with soup. Looks tasty."

Uncooked Mixture is a thing. It is edible. It is nowhere. The description is "All the ingredients are mixed and ready to be baked."

Margret's Casserole is a thing. It is edible. It is nowhere. The description is "Margret's casserole is a dish that Jennifer and I made as kids. Smells wonderful!"

Pantry is a closed openable container in the kitchen. It is undescribed. The description is "The pantry is where I store all the non-perisable food items.".

Refrigerator is a closed openable container in the kitchen. it is undescribed. The description is "A plain white refrigerator. I use it to store all my perishable food.".

Bacon is a thing in the refrigerator. It is edible. The description is "Mmmmm.... Bacon!".

Chicken is a thing in the refrigerator. it is edible. The description is "Cut up chicken. Perfect for making the casserole.".

Onion is a thing in the pantry. It is edible. The description is "Some onions that had been cut up already. Perfect for the casserole."

Marble table is a supporter in the kitchen. It is undescribed. It is fixed in place. The description is "A black and white marble table. It's been here as long as my house was here."

Unlabeled can of soup is a closed openable container in the pantry. The description is "An unlabeled can of soup. The outside is made of the typical shiny corrugated tin. I wonder what's inside it.".

Orange Soup is a thing. It is inside Unlabeled can of soup. It is edible. The description is "An orange-colored soup. I wonder what it tastes like.".

[Start of Dining Room]
Dining Room is west of the Kitchen. "This is where meals are eaten. It is a small room consisting of a small wood table, 2 wood chairs, and a utensil cabinet. A glass chandelier casts a warm glow in the room. There is a window that looks out onto Clementine Way. The Kitchen is to the east."

Wood Chairs is scenery in the Dining Room. It is undescribed. The description is "Koa wood chairs that my grandparents gave to me to match the table. They are very expensive."

Dining table is scenery in the Dining Room. It is undescribed. The description is "A koa wood table that my grandparents gave to me to go along with the chairs. It is very heavy and very expensive."
[end of Dining Room]

[Start of Bedroom]
Bed Room is south of Kitchen. "This is where I sleep every night. My bed is right in front of me, the phone and my address book is on the nightstand to the left of the bed, and a desk lamp lights the room. The Kitchen is to the north."

Phone is a thing in Bed Room. It is undescribed. The description is "A regular house phone. I don't use it that often, maybe four times a week. It has a dial pad to put in numbers."
[End of Bedroom]

[Start of Living room]
Living Room is east of Kitchen."This is the living room where I sit on the couch and watch TV. My address book is here on the coffee table. [if Clean is 1] It was a mess, but now it is very organized and clean. [end if] The Street is past the front door to the north."

Coffee Table is a supporter in the Living Room. It is fixed in place. The description is "A simple glass coffee table. It always fogs up under anything that has a different temperature than the glass."

Understand "424-8475" or "call 424-8475" or "dial 424-8475" as casting 424-8475.

[Casting 424-8475 is an action applying to nothing.
Instead of casting 424-8475:
	If player is carrying phone:
		Say "The telephone rings ";[First step in making the call. Need to add conversation here later]
		Now call is 2. [This is just like talking over the phone. I move the NPC (Jennifer) into the bed room and make the player talk to her. Down below, I made an "if" statement saying that if]]
		
Casting 424-8475 is an action applying to nothing.
Instead of casting 424-8475:
	[If casting 424-8475 for the first time:]
	If player is carrying phone:
		If Story Line is 1:
			Say "Alright, so I need to ask Jennifer about her plans for tonight. What should I ask about? Dinner? Movies? Shopping? You take a deep breath and dial the number.  After a couple rings, Jennifer's voice comes over the line. 'Hello?'";
			Now call is 2;[This is just to show that player has the phone is is calling right now]
			[Continue the action.]
		If Story Line is 3:
			Say "After a couple of rings, Jennifer picks up the phone.[Paragraph break] 'Hi' says Jennifer. [paragraph break]'Hello' you say. 'I have the casserole ready.' [paragraph break] 'Ok, great, I'll be right over. See you soon!'";
			End the story finally saying "you win!".
				
[Instead of casting 424-8475 more than once:
	Say "I don't want to annoy Jennifer with multiple calls, better not call her again."]
				
			
[Code to end call to Jennifer]
Understand "hang up" or "end call" as casting end call.

Casting end call is an action applying to nothing.
Instead of casting end call:
	Now call is 1;
	Remove Jennifer from play;
	Say "'Ok, I have to go now.' You say. 'Bye!' You press the end call button and put down the phone gently." ;
	Move phone to location of the player.
[Ending the Call]	


[This is to prevent player from looking around the room and seeing Jennifer.]
An every turn rule:
	If player is carrying phone:
		If Call is 2:
			Move Jennifer to the location of the player. Jennifer is undescribed.
		
An every turn rule:
	If player is not carrying phone:
		Now call is 0
		
[Jennifer Call conversation start]
Instead of asking Jennifer about "[dinner]":
	If Story Line is 1:
		Say "'Hmm... Sure.' Says Jennifer. 'Oh! Remember that old recipie that we used to make as teens? What was it called? Umm...  Margret's Casserole!' [paragraph break] 'Yes,' you say. 'I think I still have that recipe in my recipe drawer.' [paragraph break] 'Ok, cool' responds Jennifer. I still have a lot of work to do, so could you call me back when you have it ready?' [paragraph break] 'Sure,' you say. 'I'll call you later.'";
		Now Story Line is 2;
	Otherwise:
		Say "I already asked Jennifer about dinner, and she said yes. No need to ask her again.".
		
Understand "a dinner", "meal", "dinner", and "a meal" as "[dinner]".
		
Understand "plans tonight", "this evening", "later on", "plans", and "activites" as "[tonight]".
[Code from Inform Handbook]

Instead of asking Jennifer about "[tonight]":
	If Story Line is 1:
		Say "Um, I dont think I have any plans for tonight. Why? Do you want to do something?"

[An every turn rule:
	If Story Line is 3:
		Say "oh no".]
		[This is Just code to help me make sure that the story doesn't go farther than I want it to]

[Instead of asking Jennifer about "a dinner":
	If Story Line is 1:
		Say "'Hmm... Sure.' Says Jennifer. 'Oh! Remember that old recipie that we used to make as teens? What was it called? Umm...  Margret's Casserole!' [paragraph break] 'Yes,' you say. 'I think I still have that recipe in my recipe drawer.' [paragraph break] 'Ok, cool' responds Jennifer. I still have a lot of work to do, so could you call me back when you have it ready?' [paragraph break] 'Sure,' you say. 'I'll call you later.'";
		Increase Story line by 1.
Instead of asking Jennifer about "a dinner":
	If Story Line is greater than 1:
		Say "no".[I am still having trouble making an "else" statement after the "if" statement]]

[Jennifer has a table called bottle.

Instead of asking Jennifer about something:
	let the soure be the bottle of the noun;
	if topic understood is a topic listed in source:
		if there is a turn stamp entry:
			say "[the noun] has already told you that [summary entry].";
		otherwise:
			now turn stamp entry is the turn count;
			say "[reply entry][paragraph break]";
		otherwise:
			say "[the noun] stares at you blankly."

Table of bottle
topic	reply	summary	turn stamp
"aasvogel"	"'Oh, it's a vulture.'"	"that an aasvogel is a vulture"	a number
"acaudate"	"She shrugs, mid-pour. 'Means something doesn't have a tail.'"	"that acaudate means 'tailless'"	--
"absorptiometer"	"'It's a thing that measures the solubility of gases in a liquid,' she explains gently, as to a child."	"that an absorptiometer measures solubility of gasses in a liquid"]
	

[Jennifer Call conversation end]
	
Address Book is a container in Living Room. It is fixed in place. It is undescribed. It is closed and openable. The description is "This is the address book that I keep next to my phone in case I want to call someone."[Open the address book that has multiple numbers in it. If I have time, I will make calling the other numbers something else.]

[Start phone numbers]
Jennifer's Number is a thing in Address Book. It is fixed in place. The description is "424-8475".
After examining Jennifer's Number for the first time:
	Increase Story Line by 1.
Mitch's Number is a thing in Address Book. It is fixed in place. The description is "424-5332".
Margret's Number is a thing in Address Book. It is fixed in place. The description is "424-9485".
Steve's Number is a thing in Address Book. It is fixed in place. The description is "424-7778".
[End phone numbers]

[end of living room]

[Start of Clementine Way]
Clementine Way is north of Living Room. "This is the street that runs past the front of my house. Good thing the street lights are on, otherwise, it would be pitch black. The sidewalk and asphalt are in good condition. Cool Autumn breezes make you shiver slightly. The Intersection by Jennifer's house is to the east, and my house is to the south."[Need to add more description here]
[End of Clementine Way]

[Start of Intersection]
Intersection is east of Clementine Way. "This is a well-lit intersection.  Clementine Way and Walnut street meet here in a T. Only a stop sign controls traffic in the intersection.The cool air feels nice on my face. Jennifer's house is to the south."[Need to add more description here]
[end of intersection]

[Start of Jennifer's porch]
Jennifer's Porch is south of Intersection. "I am now standing in front of Jennifer's door. She has a white medium-sized house. The porch is made of red plastic. The intersection is to the north, and Jennifer's door is to the south."[Need to add more description here]
[End of Jennifer's porch]

[Start of Jennifer's Door]
Jennifer's Door is south of Jennifer's Porch and north of Jennifer's Living Room. Jennifer's Door is a door. "It is a wood door painted red. It has a simple brass keyhole and brass knob. The plaque on the door presents the numbers '6512'"[This is supposed to be locked, but I am currently testing if all the rooms are able to be walked through]
[End of Jennifer's porch]

[Start Jennifer's Living Room]
Jennifer's Living Room is south of Jennifer's Door. "This is Jennifer's Living Room. I've only been over here once or twice. It is a fairly large room, but it has a cozy feeling to it. Jennifer's Porch is to the north, and Jennifer's Kitchen is to the south."[Need to add more description here]
[End of Jennifer's Living Room]

[Start Jennifer's kitchen]
Jennifer's Kitchen is south of Jennifer's Living Room. "This is Jennifer's kitchen. It is smaller than mine, but it has all the appliances. Jennifer's Living Room is to the north."[Need to add more description here]
[End Jennifer's kitchen]

[task for next time-create stove and refrigerator. If have time, create description for player and rest of rooms for house. Refer to Inspire map for rooms.]