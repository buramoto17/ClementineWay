"Clementine Way" by Brent Uramoto

When play begins:
	Say "You survived the week! It is now Friday night, and you don't have many things to do. Maybe I should call Jennifer and see if she's doing anything right now. If she's not, then I'll ask if she wants to have dinner with me."

My Kitchen is a room. "This is where I cook my meals. It is a medium sized room with an oven and a refrigerator. The oven is in the far corner of the room, the refrigerator is on the right wall. There is a marble table in the middle of the room. My recipe locker is next to the refrigerator. The Dining Room is to the west, the Bed Room is to the south, the Living room is to the east."


[Code to disable take all from Ragnarok by Marissa Takebayashi]
Rule for deciding whether all includes something: it does not.
[Code for snide remark after take all from A Day for Spelling by Mary Kiang]
[Code from Cole Damon]
Rule for printing a parser error when the latest parser error is the nothing to do error: say "You hold out your hand, close your eyes, and concentrate. You will all objects to fly to you, but nothing happens." instead.

The description of the player is "I am dressed in casual sports wear. I have a dark blue shirt and black shorts. Nice enough to have a casual dinner."

To say exit list:
	let place be location;
	repeat with way running through directions:
		let place be the room way from the location;
		if place is a room, say " [way] ".
		[Exit code from Cole Damon]

[Setting variables]
Oven Temp is a number that varies. Oven Temp is 0. [Remember to put a period at the end of statements like these]
Story Line is a number that varies. Story Line is 0.
Clean is a number that varies. Clean is 0.
Call is a number that varies. Call is 0.
AltSL is a number that varies. AltSL is 0.
AltSL1 is a number that varies. AltSL1 is 0.
AltSL2 is a number that varies. AltSL2 is 0.
[End variables]

[Start NPC Jennifer]
Jennifer is a woman. She is nowhere.
[End NPC Jennifer]

[Tells inform to understand the term for turning]
Understand "turn [something] to [a number]" as turning it to.
Turning it to is an action applying to one thing and one number.
[From Cole Damon's code in Laboratory Escape]

[Oven description]
Cigarette Pack is a closed openable container in the kitchen. The description is "I don't smoke, but I this was the only container I could use when the bag of M and M's busted open.".

MnMs is a thing inside Cigarette Pack. It is edible. The description is "Colorful MnMs that have a lot of sugar in them.".

Oven is a closed openable container in my kitchen. It is undescribed. The description is "A standard electric oven. It is fairly new, I only bought it six months ago. The oven controls has different temperatures on it. 300, 350 and 400. It can be set by TURNING oven controls to a temperature [if Oven Temp is 300]Now the oven is at a hot 300ºF.[end if][if Oven Temp is 350] Now the oven is at a scorching 350ºF.[end if][if Oven Temp is 400] Now the oven is at a blistering 400ºF[end if]"

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
Recipe storage is a closed openable container in the kitchen. It is undescribed. The description is "It is a white wood storage container that I keep my recipes in. I call it my recipe storage.[if Recipe storage is closed] It is closed.[end if][if Recipe storage is open]It is open. There are a lot of recipes in here, but nothing of interest at the moment.[end if][If Story Line is 2] There are a bunch of interesting recipes in here, but there is one that you had intended to make for Jennifer. Ole Casserole Recipe.[end if]"

[Margret's Casserole is a thing in recipe storage. The description is "This is a dish that Jennifer and I used to make when we were kids. It is still a good recipe, in fact, I made it a month ago, and it tasted great! But I accidentally ripped the paper when I made it last time. To make matters worse, I've completely forgotten how to make it. I can only make out some writing of the scraps. 'Soup'...'oven'. Not going to be much help, but it's all I got for now."][This code is for if I have time to make the player find the parts of the recipe]

Old Casserole recipe is a thing inside recipe storage. The description is "This is a dish that Jennifer and I used to make when we were kids. It is still a good recipe, in fact, I made it a month ago, and it tasted great! This is the recipe: [paragraph break] Ingredients: bacon, onions, chicken, Alfredo soup. [paragraph break] Directions: turn oven on to 350 ºF. Mix bacon with onion and then mix chicken and white soup. Then, mix bacon and onion combination with chicken and soup combination. Then, put into oven for an hour."

Understand "Mix [something] with [something]" as mixing it with.
Mixing it with is an action applying to two things.

Instead of mixing Bacon with Onion:
	If Story Line is 2:
		Say "You mix the bacon and onions until it is well spread out.";
		Remove Onion from play;
		Remove Bacon from play;
		Move Chopped Ingredients to the player.
		
Instead of mixing Chicken with White soup:
	If Story Line is 2:
		Say "You mix the chicken with the white-colored soup until the chicken is fully mixed with the soup.";
		Remove unlabeled can of soup from play;
		Remove white soup from play;
		Remove Chicken from play;
		Move Soupy Mixture to player.
		
Instead of mixing Soupy Mixture with Chopped Ingredients:
	If Story Line is 2:
		Say "You put all the ingredients together and now it is ready to be baked.";
		Remove Soupy Mixture from play;
		Remove Chopped ingredients from play;
		Move uncooked mixture to player.
		
After taking Margret's casserole for the first time:
	Now Story Line is 3;
	Say "You carefully take the casserole out of the oven. It is still steaming, but it looks scrumptious.".
		
[Instead of putting uncooked mixture into the oven:
	If oven temp is 350:
		Say "good, now we have to wait for an hour."]
		
An every turn rule:
	If uncooked mixture is in the oven:
		If Oven Temp is 350:
			Say "You carefully put the uncooked mixture into the heated oven. Then, you set the timer for an hour and decide to take a nap. As soon as the casserole is done, you should call Jennifer. [Paragraph break] You wake up an hour later. A delicious smell floats through out the house. Time to take the casserole out.";
			Remove uncooked mixture from play;
			Move Margret's Casserole to oven;
		Otherwise:
			Say "The Oven isn't on! I need to turn it on before I can cook anything in there.";
			Move uncooked mixture to player.
		

[End recipe storage]

Chopped Ingredients is a thing. It is edible. It is nowhere. The description is "Finely mixed Bacon and onions. Looks delicious.".

Soupy Mixture is a thing. It is edible. It is nowhere. The description is "Chicken that is mixed with soup. Looks tasty."

Uncooked Mixture is a thing. It is edible. It is nowhere. The description is "All the ingredients are mixed and ready to be baked."

Margret's Casserole is a thing. It is edible. It is nowhere. The description is "Margret's casserole is a dish that Jennifer and I made as kids. Smells wonderful!"

Pantry is a closed openable container in the kitchen. The description is "The pantry is where I store all the non-perishable food items.".

Refrigerator is a closed openable container in the kitchen. The description is "A plain white refrigerator. I use it to store all my perishable food.".

Bacon is a thing in the refrigerator. It is edible. The description is "Mmmmm.... Bacon!".

Chicken is a thing in the refrigerator. it is edible. The description is "Cut up chicken. Perfect for making the casserole.".

Onion is a thing in the pantry. It is edible. The description is "Some onions that had been cut up already. Perfect for the casserole."

Marble table is a supporter in the kitchen. It is undescribed. It is fixed in place. The description is "A black and white marble table. It's been here as long as my house was here."

Unlabeled can of soup is a closed openable container in the pantry. The description is "An unlabeled can of soup. The outside is made of the typical shiny corrugated tin. I wonder what's inside it.".

White Soup is a thing. It is inside unlabeled can of soup. It is edible. The description is "A white, creamy soup. I wonder what it tastes like.".

[Start of Dining Room]
Dining Room is west of the Kitchen. "This is where meals are eaten. It is a small room consisting of a small wood table, and 2 wood chairs. A glass chandelier casts a warm glow in the room. The Kitchen is to the east."

chandelier is scenery in the dining room. The description is "A glass chandelier that was given to me by my brother. It looks nice in the dining room."

Wood Chairs is scenery in the Dining Room. It is undescribed. The description is "Koa wood chairs that my grandparents gave to me to match the table. They are very expensive."

Dining table is scenery in the Dining Room. It is undescribed. The description is "A koa wood table that my grandparents gave to me to go along with the chairs. It is very heavy and very expensive."
[end of Dining Room]

[Start of Bedroom]
Bed Room is south of Kitchen. "This is where I sleep every night. My bed is right in front of me, the phone and my address book is on the nightstand to the left of the bed, and a desk lamp lights the room. The Kitchen is to the north."

Phone is a thing in Bed Room. The description is "A regular house phone. I don't use it that often, maybe four times a week. It has a dial pad to put in numbers."
[End of Bedroom]

[Start of Living room]
Living Room is east of Kitchen. "This is the living room where I sit on the couch and watch TV. My address book is here on the coffee table. The Street is past the front door to the north."

Coffee Table is a supporter in the Living Room. It is fixed in place. The description is "A simple glass coffee table. It always fogs up under anything that has a different temperature than the glass."



[Casting 424-8475 is an action applying to nothing.
Instead of casting 424-8475:
	If player is carrying phone:
		Say "The telephone rings ";[First step in making the call. Need to add conversation here later]
		Now call is 2. [This is just like talking over the phone. I move the NPC (Jennifer) into the bed room and make the player talk to her. Down below, I made an "if" statement saying that if]]
				
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
		Say "'Hmm... Sure.' Says Jennifer. 'Oh! Remember that old recipe that we used to make as teens? What was it called? Umm...  Margret's Casserole!' [paragraph break] 'Yes,' you say. 'I think I still have that recipe in my recipe drawer.' [paragraph break] 'Ok, cool' responds Jennifer. I still have a lot of work to do, so could you call me back when you have it ready?' [paragraph break] 'Sure,' you say. 'I'll call you later.'";
		Now Story Line is 2;
	Otherwise:
		Say "I already asked Jennifer about dinner, and she said yes. No need to ask her again.".
		
Understand "a dinner", "meal", "dinner", and "a meal" as "[dinner]".
		
Understand "plans tonight", "this evening", "later on", "plans", and "activities" as "[tonight]".
[Code from Inform Handbook]

Instead of asking Jennifer about "[tonight]":
	If Story Line is 1:
		Say "Um, I don't think I have any plans for tonight. Why? Do you want to do something?"

[An every turn rule:
	If Story Line is 3:
		Say "oh no".]
		[This is Just code to help me make sure that the story doesn't go farther than I want it to]

[Instead of asking Jennifer about "a dinner":
	If Story Line is 1:
		Say "'Hmm... Sure.' Says Jennifer. 'Oh! Remember that old recipe that we used to make as teens? What was it called? Umm...  Margret's Casserole!' [paragraph break] 'Yes,' you say. 'I think I still have that recipe in my recipe drawer.' [paragraph break] 'Ok, cool' responds Jennifer. I still have a lot of work to do, so could you call me back when you have it ready?' [paragraph break] 'Sure,' you say. 'I'll call you later.'";
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
	
Address Book is a container in Living Room. It is closed and openable. The description is "This is the address book that I keep next to my phone in case I want to call someone."[Open the address book that has multiple numbers in it. If I have time, I will make calling the other numbers something else.]

[Start phone numbers]
Jennifer's Number is a thing in Address Book. It is fixed in place. The description is "424-8475".
After examining Jennifer's Number for the first time:
	now Story Line is 1.
Mitch's Number is a thing in Address Book. It is fixed in place. The description is "424-5332".
After examining Mitch's Number for the first time:
	now AltSL is 1.
Page's Number is a thing in Address Book. It is fixed in place. The description is "424-9485".
After examining Page's number for the first time:
	now AltSL1 is 1.
Steve's Number is a thing in Address Book. It is fixed in place. The description is "424-7778".
After examining Steve's number for the first time:
	now AltSL2 is 1.
[End phone numbers]

Understand "424-8475" or "call 424-8475" or "dial 424-8475" as casting 424-8475.
Casting 424-8475 is an action applying to nothing.
Instead of casting 424-8475:
	[If casting 424-8475 for the first time:]
	If player is carrying phone:
		If Story Line is 1:
			Say "Alright, so I need to ask Jennifer about her plans for tonight. What should I ask about? Dinner? Movies? Shopping? You take a deep breath and dial the number.  After a couple rings, Jennifer's voice comes over the line. 'Hello?'";
			Now call is 2;[This is just to show that player has the phone is calling right now]
			[Continue the action.]
		If Story Line is 2:
			Say "[If Margret's Casserole is nowhere]I haven't finished making the casserole yet! Jennifer asked me to make it first, then call her.[End if][If Margret's Casserole is in oven] I probably should take the casserole out of the oven first.";
		If Story Line is 3:
			Say "The phone rings and rings until the answering machine picks up. That seems suspicious. I called her only an hour ago. Maybe I should go check on her.";
			Now Story Line is 4;
	If player is not carrying phone:
		Say "I don't have anything to call with!"

Understand "424-5332" or "call 424-5332" or "dial 424-5332" as casting 424-5332.
Casting 424-5332 is an action applying to nothing.
Instead of casting 424-5332:
	If AltSL is 1:
		If player is carrying phone:
			Say "Mitch picks up the phone. [paragraph break] 'Hey man, what's up?' He asks. [paragraph break] 'Nothing much' you say. 'Want to go do something tonight?' [paragraph break] 'Sure' He says. [paragraph break] You come back from a long fun night, but you feel like something is still missing.";
			End the story finally saying " Maybe there was someone else that you wanted to spend the night with?";
		If player is not carrying phone:
			Say "I don't have anything to call with!"
			
Understand "424-9485" or "call 424-9485" or "dial 424-9485" as casting 424-9485.
Casting 424-9485 is an action applying to nothing.
Instead of casting 424-9485:
	If AltSL1 is 1:
		If player is carrying phone:
			Say "Page picks up the phone. [paragraph break] 'Hiya! what's up?' She asks. [paragraph break] 'Nothing much' you say. 'Want to go do something tonight?' [paragraph break] 'Definitely!' She replies. [paragraph break] You come back from a long fun night, but you feel like something is still missing.";
			End the story finally saying " Maybe there was someone else that you wanted to spend the night with?";
		If player is not carrying phone:
			Say "I don't have anything to call with!"
			
Understand "424-7778" or "call 424-7778" or "dial 424-7778" as casting 424-7778.
Casting 424-7778 is an action applying to nothing.
Instead of casting 424-7778:
	If AltSL2 is 1:
		If player is carrying phone:
			Say "Steve picks up the phone. [paragraph break] 'Hey! what's up?' He asks. [paragraph break] 'Nothing much' you say. 'Want to go do something tonight?' [paragraph break] 'Why not?' He says. [paragraph break] You come back from a long fun night, but you feel like something is still missing.";
			End the story finally saying " Maybe there was someone else that you wanted to spend the night with?";
		If player is not carrying phone:
			Say "I don't have anything to call with!"
		
[end of living room]

[Start of Clementine Way]
Clementine Way is north of Living Room. "This is the street that runs past the front of my house. Good thing the streetlights are on, otherwise, it would be pitch black. The sidewalk and asphalt are in good condition. Cool autumn breezes make you shiver slightly. The Intersection by Jennifer's house is to the east, and my house is to the south.".[Need to add more description here]

An every turn rule:
	If player is in Clementine Way:
		If Story Line is less than 3:
			Say "[If Story Line is 0]Where am I going? I haven't even contacted anybody yet.[end if][if Story Line is 2]I haven't finished making the casserole yet![end if]";
			Move player to Living Room.
[End of Clementine Way]

[Start of Intersection]
Intersection is east of Clementine Way. "This is a well-lit intersection.  Clementine Way and Walnut street meet here in a T. Only a stop sign controls traffic in the intersection. The cool air feels nice on my face. Jennifer's house is to the south."[Need to add more description here]
[end of intersection]

[Start of Jennifer's porch]
Jennifer's Porch is south of Intersection. "I am now standing in front of Jennifer's door. She has a white medium-sized house. The porch is made of red plastic. [If story Line is 3] I go and knock on the door and call her name, but there is no response. The lights are still on, and the water is not running. I need to find a way inside. I know Jennifer keeps a secret key around here somewhere...[end if] The intersection is to the north, and Jennifer's door is to the south."[Need to add more description here]
[End of Jennifer's porch]

[Start of Jennifer's Door]
Jennifer's Door is south of Jennifer's Porch and north of Jennifer's Living Room. Jennifer's Door is a door. It is locked. "It is a wood door painted red. It has a simple brass keyhole and brass knob. The plaque on the door presents the numbers '6512'".[This is supposed to be locked, but I am currently testing if all the rooms are able to be walked through]

Jennifer's Key unlocks Jennifer's Door. Jennifer's Key is in Little Shed. The description is "It is a small silver key that says 'front door' on it."
[End of Jennifer's porch]


[Start Jennifer's Living Room]
Jennifer's Living Room is south of Jennifer's Door. "This is Jennifer's Living Room. I've only been over here once or twice. It is a fairly large room, but it has a cozy feeling to it. Jennifer's Porch is to the north."[Need to add more description here]

An every turn rule:
	If player is in Jennifer's Living room:
		If Story Line is 4:
			Say "You see Jennifer passed out on the rug. At first you think that she is just sleeping, but then you notice a bottle of insulin and a bottle of glucose next to her! Maybe I should ask her about if she is ok, about the insulin bottle or the glucose bottle?"

[[paragraph break] "]

Understand "if she is ok", "ok", "if she is alright", and "alright" as "[ok]"

Instead of asking Jennifer about "[ok]":
	If Story Line is 4:
		Say "'Hey Jennifer, are you okay?!' You ask.[paragraph break] Jennifer groans. 'Thank goodness you came by. I am low on blood sugar and I ran out of glucose.' She says.".
	
Understand "the insulin bottle", "insulin" and "insulin bottle" as "[insulin]"

Instead of asking Jennifer about "[insulin]":
	If Story Line is 4:
		Say "I use this insulin to bring down my blood sugar. I have some of it, but it's not the medicine I need right now.".
		
Bottle of insulin is a thing in Jennifer's living room. The description is "A half-full bottle of insulin. It is used by diabetics to lower their blood sugar. [If Story Line is 4]Jennifer doesn't need this right now.[end if]".

Understand "Glucose", "the Glucose" and "Glucose bottle" as "[glucose]".

Instead of asking Jennifer about "[glucose]":
	If Story Line is 4:
		Say "I use glucose to keep my blood sugar up. I just ran out, and I don't have anything sweet right now. Anything with sugar will help me to get my blood sugar back up.";
		now Story Line is 5.
		
An every turn rule:
	If player is carrying Cigarette Pack:
		If Story Line is 5:
			now Story Line is 6.
			
An every turn rule:
	If player is carrying MnMs:
		If Story Line is 5:
			now Story Line is 6.
			
Instead of giving MnMs to Jennifer:
	If Story Line is 6:
		Say "Jennifer gladly takes the MnMs and eats them. After a few minutes, she sits up and thanks you. 'Thanks for coming over. I was in a tight spot. Did you find my key in the shed? I put a key in there for emergencies. So, are we going to have dinner?'[paragraph break] You lead Jennifer back to your house and serve Margret's Casserole for dinner.";
		now Story Line is 7.

Bottle of Glucose is a thing in Jennifer's Living Room. The description is "An empty bottle. The label says that it contains glucose, but there is nothing inside the bottle."



[End of Jennifer's Living Room]

[Start Jennifer's Garden]
Jennifer's Garden is west of Jennifer's Porch. "This is Jennifer's Garden. There is a little shed here that looks like it holds all sorts of stuff. The garden consits of a small flower bed off to the left and a vegetable patch to the right."[Need to add more description here]

Little Shed is a closed openable container in Jennifer's Garden. It is locked. The description is "A small brown wooden shed. The planks on the side are smooth with white paint. [If Story Line is 3] A small turn dial lock holds the door in place."

Turn Dial Lock is a thing in Jennifer's garden. Turn Dial Lock can be turned to 6512. The description is "A simple turn dial lock that holds the doors to the shed closed. The dial can be spun all the way to 9000. [If Story Line is 3]I wonder if there is anything that would help me find the right number for this lock.[End if][If Story Line is 4]it is unlocked.[end if]".

Instead of turning Turn Dial lock to 6512:
	now Story Line is 4;
	Say "with a satisfying click, the lock opens, and you pull open the doors of the shed. To your surprise, the shed is empty except for a key that is dangling by a string in the middle of the shed.";
	now Little Shed is unlocked;
	now Little Shed is open;
	move Jennifer to Jennifer's Living room.
	
	
[End Jennifer's Garden]

An every turn rule:
	If Story Line is 7:
		Move player to Dining Room;
		Move Jennifer to Dining Room;
		End the story finally saying "you win!".

[task for next time-create stove and refrigerator. If have time, create description for player and rest of rooms for house. Refer to Inspire map for rooms.]

[Shortest way to win]

[e, open address book, x Jennifer's number, w, s, take phone, 424-8475, ask Jennifer about dinner, n, take cigarette pack open refrigerator, take chicken, take bacon, open pantry, take onion, take unlabeled can of soup, open unlabeled can of soup, mix bacon with onion, mix chicken with white soup, mix soupy mixture with chopped ingredients, turn oven controls to 350, open oven, put uncooked mixture in oven, take Margret's casserole, call 424-8475, e, n, e, s, e, turn turn dial lock to 6512, take key, w,  unlock Jennifer's door, open Jennifer's door, s, ask Jennifer about glucose, open cigarette pack, give MnMs to Jennifer]
